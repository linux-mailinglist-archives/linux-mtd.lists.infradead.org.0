Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0171DA33F
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 23:12:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8mSaAvMjySgZT4EBi+zW+CqFOiil7M9uWV4Bd39rHm4=; b=XFamsktWEFwIkRqDyhYayWz01
	L2qYlKYa2dnBiTE1NknRZ4ko33BeaTn3cBqPRRFUGIe7HjANrsA1xpDIC0SETrXdbRQNbdwbrIX80
	hY0J/Aau4Qj8o8M6vFa1r61ZLVl1ZvUANSuLVhjKd/Y32usZ7yENNFEMk9ovh6SzphLLAbSNQS5Kx
	ZDXob1F+Jp9mh6eArodscrdsAHLmi+WwYTXwXvvq7dIg6xrJIxYfjzf84vo9hvjfTd7kl+ChebM6K
	LGzFqwQuM70TIf0Uq7QKsF0GA3dDShRtPVbG/sgZ0BIQhOFH5bNMcIw0udakQiM4LzqMg7HVCeIfU
	qv36oRWuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb9XZ-0003v0-FD; Tue, 19 May 2020 21:12:45 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb9XR-0003uY-Lu
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 21:12:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1589922752; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JWcVPgw2haowFtXS0A7kNsqCqc7EWH0VAHS388n5oFE=;
 b=n4mqJHxDhgnDXeC3UPunyyXk/NePIW+2tpURAvxG2brAU5m9CyLPhx1Wp3/+Smfp84auiW
 Jm7m0Ecu9oOk0ZwNIJKRIa92/3SfFXKoI3exjSqh3VKWJJdBq7pPadw6Rt5T93sUZk2k4C
 ghA533LNlyj3w8HeVjkeg4mWlkBW+FM=
Date: Tue, 19 May 2020 23:12:21 +0200
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH] mtd: rawnand: ingenic: Convert the driver to exec_op()
To: Boris Brezillon <boris.brezillon@collabora.com>
Message-Id: <L8KLAQ.KW09884RLNR6@crapouillou.net>
In-Reply-To: <20200519192805.30fbf4fa@collabora.com>
References: <20200518165640.312220-1-boris.brezillon@collabora.com>
 <G7GJAQ.0VIFSQUDMC9H2@crapouillou.net>
 <20200518212422.23316760@collabora.com>
 <20200518213555.38e3a570@collabora.com>
 <P73LAQ.QZS4PIAER4ZK@crapouillou.net>
 <20200519192805.30fbf4fa@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_141237_908636_8132344B 
X-CRM114-Status: GOOD (  15.51  )
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



Le mar. 19 mai 2020 =E0 19:28, Boris Brezillon =

<boris.brezillon@collabora.com> a =E9crit :
> On Tue, 19 May 2020 17:04:37 +0200
> Paul Cercueil <paul@crapouillou.net> wrote:
> =

>>  Le lun. 18 mai 2020 =E0 21:35, Boris Brezillon
>>  <boris.brezillon@collabora.com> a =E9crit :
>>  > On Mon, 18 May 2020 21:24:22 +0200
>>  > Boris Brezillon <boris.brezillon@collabora.com> wrote:
>>  >
>>  >>  On Mon, 18 May 2020 19:50:04 +0200
>>  >>  Paul Cercueil <paul@crapouillou.net> wrote:
>>  >>
>>  >>  > Hi Boris,
>>  >>  >
>>  >>  > Le lun. 18 mai 2020 =E0 18:56, Boris Brezillon
>>  >>  > <boris.brezillon@collabora.com> a =E9crit :
>>  >>  > > Let's convert the driver to exec_op() to have one less =

>> driver
>>  >> relying
>>  >>  > > on the legacy interface.
>>  >>  >
>>  >>  > Great work, thanks for that.
>>  >>  >
>>  >>  > However it does not work :( nand_scan() returns error -145.
>>  >>
>>  >>  Looks like the R/B signal is inverted. Can you try with the
>>  >>  following diff applied?
>>  >
>>  > I checked the DT, and the GPIO is indeed declared GPIO_ACTIVE_LOW,
>>  > which explain why the test is inverted. Because of DT ABI =

>> stability it
>>  > might not be an option to change that, but the signal should =

>> actually
>>  > be
>>  > declared GPIO_ACTIVE_HIGH.
>> =

>>  It depends what you consider what is the active state, is it when
>>  "busy" or "ready"? ;)
> =

> True, this should really be documented in the generic binding part. As
> you probably guessed from this discussion, all other drivers (and the
> framework) is assuming "ready" is the state we're monitoring, so it's
> effectively active high.
> =

>> =

>>  I can fix it in the devicetree, and the driver would return
>>  (gpiod_get_value_cansleep(gpiod) ^ gpiod_is_active_low(gpiod)) for
>>  compatibility with the old devicetree.
> =

> Or you could read the raw value (gpiod_get_raw_value_cansleep()),
> but that still means you can't move away from the old semantics =

> without
> breaking the existing DT with the erroneous active-low. I mean,
> active-low is still valid if someone has the R/B signal inverted,
> but you can't discriminate when it's valid and when it's not.
> =

> I guess having a custom helper, and documenting that the active state
> for ingenic is BUSY would be okay. Unless you'd be willing to break
> the backward compat for the only board that has a rb-gpios property
> defined.

What I suggest, in the probe:

if (of_machine_is_compatible("qi,lb60") && =

gpiod_is_active_low(nand->busy_gpio)) {
    gpiod_toggle_active_low(nand->busy_gpio);
}

Then it's backward-compatible, would allow me to fix the rb-gpios in =

devicetree, and wouldn't require a custom nand_gpio_waitrdy() function.

Cheers,
-Paul



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
