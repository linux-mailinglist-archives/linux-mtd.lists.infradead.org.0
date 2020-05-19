Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 560431D9AA6
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 17:05:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kQfFJMz0DaTMSptFi20znQPTvRv1cG/TCUjIJU0+wYA=; b=chrjtNbIM8tz50zMb0wnMFJm5
	OEjq26nYZk40m7NONqlpDLLztgotsUstuGb0PcTI+jD0iDhSTnTbpkMdCwhRps9jP/Apofy3chCMr
	8SKXWcaJD7N98Xx1PHXSLnM1Eui5lJdNk48BCsiwILAjVFj3os31NO/KvqdkX3gCsxn3ldWQQb+B6
	2BRO8jGOW6zrtKRyero6gje/i6qH0wX+Aob66NVflbAxuvLkLOiV+kiBULHsfMD/s9OUaz6flV1K/
	Ns33besE4gaOpMt8Gn5jAR3rKL+84yZ0lCYyUILo6KZJFPrI5Rks1f6B05TpEqfh+ISlaX3qTiYKJ
	dJ2NcUeag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb3nf-00023m-Ib; Tue, 19 May 2020 15:04:59 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb3nW-00023K-Om
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 15:04:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1589900688; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7wms0QtWDT5H11idpUYv/ui0qBODALODTup1Y6FLPjw=;
 b=uTc5anc8QWBrdNsOaolJhpywsyxTARoGVkU6VUb16BaA82gvmtCw7neIOcWd1P6j1EzSkN
 4KV4TZa8PgzGpFKHILbHD6PiL0uLUYYJmkBysiTblsqIiB9bMimHx9DNM7yMX9AKcemyxx
 ySbqCq/FAfT7srQJpUi8sjwu9L0qdhQ=
Date: Tue, 19 May 2020 17:04:37 +0200
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH] mtd: rawnand: ingenic: Convert the driver to exec_op()
To: Boris Brezillon <boris.brezillon@collabora.com>
Message-Id: <P73LAQ.QZS4PIAER4ZK@crapouillou.net>
In-Reply-To: <20200518213555.38e3a570@collabora.com>
References: <20200518165640.312220-1-boris.brezillon@collabora.com>
 <G7GJAQ.0VIFSQUDMC9H2@crapouillou.net>
 <20200518212422.23316760@collabora.com>
 <20200518213555.38e3a570@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_080451_211878_06F5772D 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Harvey Hunt <harveyhuntnexus@gmail.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



Le lun. 18 mai 2020 =E0 21:35, Boris Brezillon =

<boris.brezillon@collabora.com> a =E9crit :
> On Mon, 18 May 2020 21:24:22 +0200
> Boris Brezillon <boris.brezillon@collabora.com> wrote:
> =

>>  On Mon, 18 May 2020 19:50:04 +0200
>>  Paul Cercueil <paul@crapouillou.net> wrote:
>> =

>>  > Hi Boris,
>>  >
>>  > Le lun. 18 mai 2020 =E0 18:56, Boris Brezillon
>>  > <boris.brezillon@collabora.com> a =E9crit :
>>  > > Let's convert the driver to exec_op() to have one less driver =

>> relying
>>  > > on the legacy interface.
>>  >
>>  > Great work, thanks for that.
>>  >
>>  > However it does not work :( nand_scan() returns error -145.
>> =

>>  Looks like the R/B signal is inverted. Can you try with the
>>  following diff applied?
> =

> I checked the DT, and the GPIO is indeed declared GPIO_ACTIVE_LOW,
> which explain why the test is inverted. Because of DT ABI stability it
> might not be an option to change that, but the signal should actually =

> be
> declared GPIO_ACTIVE_HIGH.

It depends what you consider what is the active state, is it when =

"busy" or "ready"? ;)

I can fix it in the devicetree, and the driver would return =

(gpiod_get_value_cansleep(gpiod) ^ gpiod_is_active_low(gpiod)) for =

compatibility with the old devicetree.

Cheers,

-Paul

>> =

>>  --->8---
>>  diff --git a/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c =

>> b/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
>>  index dcecd54af20b..9206792629a8 100644
>>  --- a/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
>>  +++ b/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
>>  @@ -249,6 +249,26 @@ static int ingenic_nand_attach_chip(struct =

>> nand_chip *chip)
>>          return 0;
>>   }
>> =

>>  +static int ingenic_nand_gpio_waitrdy(struct gpio_desc *gpiod,
>>  +                                    unsigned long timeout_ms)
>>  +{
>>  +       /*
>>  +        * Wait until R/B pin indicates chip is ready or timeout =

>> occurs.
>>  +        * +1 below is necessary because if we are now in the last =

>> fraction
>>  +        * of jiffy and msecs_to_jiffies is 1 then we will wait =

>> only that
>>  +        * small jiffy fraction - possibly leading to false timeout.
>>  +       */
>>  +       timeout_ms =3D jiffies + msecs_to_jiffies(timeout_ms) + 1;
>>  +       do {
>>  +               if (!gpiod_get_value_cansleep(gpiod))
>>  +                       return 0;
>>  +
>>  +               cond_resched();
>>  +       } while (time_before(jiffies, timeout_ms));
>>  +
>>  +       return !gpiod_get_value_cansleep(gpiod) ? 0 : -ETIMEDOUT;
>>  +};
>>  +
>>   static int ingenic_nand_exec_instr(struct nand_chip *chip,
>>                                     struct ingenic_nand_cs *cs,
>>                                     const struct nand_op_instr =

>> *instr)
>>  @@ -294,8 +314,8 @@ static int ingenic_nand_exec_instr(struct =

>> nand_chip *chip,
>>                          return nand_soft_waitrdy(chip,
>>                                                   =

>> instr->ctx.waitrdy.timeout_ms);
>> =

>>  -               return nand_gpio_waitrdy(chip, nand->busy_gpio,
>>  -                                        =

>> instr->ctx.waitrdy.timeout_ms);
>>  +               return ingenic_nand_gpio_waitrdy(nand->busy_gpio,
>>  +                                                =

>> instr->ctx.waitrdy.timeout_ms);
>>          default:
>>                  break;
>>          }
>>  @@ -322,6 +342,9 @@ static int ingenic_nand_exec_op(struct =

>> nand_chip *chip,
>>                  ret =3D ingenic_nand_exec_instr(chip, cs, =

>> &op->instrs[i]);
>>                  if (ret)
>>                          break;
>>  +
>>  +               if (op->instrs[i].delay_ns)
>>  +                       ndelay(op->instrs[i].delay_ns);
>>          }
>>          jz4780_nemc_assert(nfc->dev, cs->bank, false);
>> =

> =




______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
