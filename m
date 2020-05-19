Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A5F1DA353
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 23:15:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3rfuPgH/ouAvFtYtC7OdgiEIQxPcMRG3DOIe27WmNM0=; b=rhdsn7MQYPT+bXglnGjyrnpxg
	SntNHnP9vKA/aL8Vp20b4cacqMUc/3+PTTn8MmkncZwIgtq9yZzE3YOq4HNXTBnJZXlihJzl/X4YX
	G+IdQH6H9y/40KE+LWjN6AxrRH4hvpXGN1ALf/Xp1t58LkcarVz0A+kW3R+lDVs8l5atSRRAFBJjf
	xxwDORqu4PmSmkQflX6ywofDSHunti/YKXfLMpZVHzM5Nx8lYNEXSGCzKii3xvARhcq1YtyI/gH3y
	G8CHl5xDsEA4VNqZyfdmUVGYWVYC/vtpbfIOLlTcwNABTVOBiCkZ+jOpb3OA8OP4EvASmm7nBGdgH
	tFuPIPTfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb9aP-0006kH-Ko; Tue, 19 May 2020 21:15:41 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb9aG-0006js-4U
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 21:15:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1589922930; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mtrpXjFC1Y8gSgOpr/X9Ejsg5okIDIdG8WWwu4d06ew=;
 b=LquIhs1Pxf4ADptkwCQKEIXgcZ1yyz8Z7roOVmux3s9Tn/owFmfSw5qq3IV6zMyHbWTZ0b
 UFTSPUbFISMXMCZ1qVJRUqtSZ5FSiQaAmvkbB//YtqiT3IrNuW9jIizm0BjZP3Xsn4UfRS
 j/rLBusujkluVSKGA3dPvjOTp6rXhsY=
Date: Tue, 19 May 2020 23:15:20 +0200
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH] mtd: rawnand: ingenic: Convert the driver to exec_op()
To: Boris Brezillon <boris.brezillon@collabora.com>
Message-Id: <KDKLAQ.4DRTL98VT0JT1@crapouillou.net>
In-Reply-To: <20200519193558.77f4c3d7@collabora.com>
References: <20200518165640.312220-1-boris.brezillon@collabora.com>
 <G7GJAQ.0VIFSQUDMC9H2@crapouillou.net>
 <20200518212422.23316760@collabora.com>
 <FN2LAQ.2U7L7XR4D02L@crapouillou.net>
 <20200519170130.77543c8e@collabora.com>
 <0H3LAQ.G5DAMEP9GDQC2@crapouillou.net>
 <20200519193558.77f4c3d7@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_141532_561126_F24F2F50 
X-CRM114-Status: GOOD (  22.21  )
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

Hi Boris,

Le mar. 19 mai 2020 =E0 19:35, Boris Brezillon =

<boris.brezillon@collabora.com> a =E9crit :
> On Tue, 19 May 2020 17:10:12 +0200
> Paul Cercueil <paul@crapouillou.net> wrote:
> =

>>  Le mar. 19 mai 2020 =E0 17:01, Boris Brezillon
>>  <boris.brezillon@collabora.com> a =E9crit :
>>  > On Tue, 19 May 2020 16:52:27 +0200
>>  > Paul Cercueil <paul@crapouillou.net> wrote:
>>  >
>>  >>  Hi Boris,
>>  >>
>>  >>  Le lun. 18 mai 2020 =E0 21:24, Boris Brezillon
>>  >>  <boris.brezillon@collabora.com> a =E9crit :
>>  >>  > On Mon, 18 May 2020 19:50:04 +0200
>>  >>  > Paul Cercueil <paul@crapouillou.net> wrote:
>>  >>  >
>>  >>  >>  Hi Boris,
>>  >>  >>
>>  >>  >>  Le lun. 18 mai 2020 =E0 18:56, Boris Brezillon
>>  >>  >>  <boris.brezillon@collabora.com> a =E9crit :
>>  >>  >>  > Let's convert the driver to exec_op() to have one less =

>> driver
>>  >>  >> relying
>>  >>  >>  > on the legacy interface.
>>  >>  >>
>>  >>  >>  Great work, thanks for that.
>>  >>  >>
>>  >>  >>  However it does not work :( nand_scan() returns error -145.
>>  >>  >
>>  >>  > Looks like the R/B signal is inverted. Can you try with the
>>  >>  > following diff applied?
>>  >>
>>  >>  Still doesn't work properly. I get -ENODEV in nand_detect(), at =

>> the
>>  >>  "second ID read did not match..." pr_info().
>>  >>
>>  >>  The R/B signal doesn't seem to be the primary cause, if I use
>>  >>  nand_soft_waitrdy() it doesn't work any better.
>>  >
>>  > Well, it does solve the ETIMEDOUT issue, so we're one step further
>>  > ;-).
>>  > Can you print the returned ID?
>> =

>>  It reads 00/00, so it doesn't seem to be able to read any data.
>> =

>>  >>
>>  >>  One thing I noticed that jz4780_nemc_assert() is called with
>>  >>  assert=3Dtrue unconditionally, while before it was called with =

>> (ctrl &
>>  >>  NAND_NCE), whatever that is. Whether or not that's a problem, I
>>  >> have no
>>  >>  idea.
>>  >
>>  > Yes, we really want to assert the CE signal unconditionally here, =

>> but
>>  > maybe we should add a delay after asserting it/before =

>> de-asserting it.
>> =

>>  I added some udelay() here and there, unfortunately it didn't change
>>  anything.
> =

> Can you try with this diff? It's basically the same as before except
> there's an additional fix (s/cmd_offset/addr_offset/ in the address
> emission path).

Oops, I'm sorry I didn't even spot that.

With the diff below, it works, so:
Tested-by: Paul Cercueil <paul@crapouillou.net>

Thank you for the patch.

Cheers,
-Paul

> =

> --->8---
> diff --git a/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c =

> b/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
> index dcecd54af20b..2668135f2d26 100644
> --- a/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
> +++ b/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
> @@ -249,6 +249,26 @@ static int ingenic_nand_attach_chip(struct =

> nand_chip *chip)
>         return 0;
>  }
> =

> +static int ingenic_nand_gpio_waitrdy(struct gpio_desc *gpiod,
> +                                    unsigned long timeout_ms)
> +{
> +       /*
> +        * Wait until R/B pin indicates chip is ready or timeout =

> occurs.
> +        * +1 below is necessary because if we are now in the last =

> fraction
> +        * of jiffy and msecs_to_jiffies is 1 then we will wait only =

> that
> +        * small jiffy fraction - possibly leading to false timeout.
> +       */
> +       timeout_ms =3D jiffies + msecs_to_jiffies(timeout_ms) + 1;
> +       do {
> +               if (!gpiod_get_value_cansleep(gpiod))
> +                       return 0;
> +
> +               cond_resched();
> +       } while (time_before(jiffies, timeout_ms));
> +
> +       return !gpiod_get_value_cansleep(gpiod) ? 0 : -ETIMEDOUT;
> +};
> +
>  static int ingenic_nand_exec_instr(struct nand_chip *chip,
>                                    struct ingenic_nand_cs *cs,
>                                    const struct nand_op_instr *instr)
> @@ -265,7 +285,7 @@ static int ingenic_nand_exec_instr(struct =

> nand_chip *chip,
>         case NAND_OP_ADDR_INSTR:
>                 for (i =3D 0; i < instr->ctx.addr.naddrs; i++)
>                         writeb(instr->ctx.addr.addrs[i],
> -                              cs->base + nfc->soc_info->cmd_offset);
> +                              cs->base + nfc->soc_info->addr_offset);
>                 return 0;
>         case NAND_OP_DATA_IN_INSTR:
>                 if (instr->ctx.data.force_8bit ||
> @@ -294,8 +314,8 @@ static int ingenic_nand_exec_instr(struct =

> nand_chip *chip,
>                         return nand_soft_waitrdy(chip,
>                                                  =

> instr->ctx.waitrdy.timeout_ms);
> =

> -               return nand_gpio_waitrdy(chip, nand->busy_gpio,
> -                                        =

> instr->ctx.waitrdy.timeout_ms);
> +               return ingenic_nand_gpio_waitrdy(nand->busy_gpio,
> +                                                =

> instr->ctx.waitrdy.timeout_ms);
>         default:
>                 break;
>         }
> @@ -322,6 +342,9 @@ static int ingenic_nand_exec_op(struct nand_chip =

> *chip,
>                 ret =3D ingenic_nand_exec_instr(chip, cs, =

> &op->instrs[i]);
>                 if (ret)
>                         break;
> +
> +               if (op->instrs[i].delay_ns)
> +                       ndelay(op->instrs[i].delay_ns);
>         }
>         jz4780_nemc_assert(nfc->dev, cs->bank, false);
> =




______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
