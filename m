Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3162B15C571
	for <lists+linux-mtd@lfdr.de>; Thu, 13 Feb 2020 17:00:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0WOOKbr3fY+CzhS62HXZAMucxZT18mDqPrkoQhMqzAI=; b=ZwMARz2l/zW7kBPI+YaAvQiaM
	TQQvNNmDMVPcq/HN51cbUviIODBQ8zlPjBA2KfMqdmASUwKPfswfOt7wB8WYSN1EwV5K4SAb3vusW
	XnVi8DLm5NPAAhVu/onVZ8XimQ99mKQd5UkxFbyumOFfoSj0m/5b+YmHnno9flyvOOv+HxmjacXVE
	sDrfXa2f6J/JI9s8jhL/VaOqK6Pu7X3trEFdb7l9lnfZ5qjD8Tch5cY4bX6JyyKtTyqvhiapvrNzv
	ew0GYslvnKZvN6iUbAfkwraATP6yX/bCP3rZmUyQnXgRB4SWkIykJb6jGb7vfMo893QEW0g4oWBL6
	pCNhP1xDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2GuZ-0005RZ-H3; Thu, 13 Feb 2020 16:00:19 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2GuO-0004QL-Se
 for linux-mtd@lists.infradead.org; Thu, 13 Feb 2020 16:00:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1581609597; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hKHM1LLd2kw1H2DbCciw093znb7hI7otiCLo2ytrM78=;
 b=L8hgdqgmegXgPYbuJLjCDY1uTsvfBKgKiU9v5dSPsqsE5jTY8xFj4uSKeJVdVt6waoOlnJ
 uy802fwGcz+Q9e3qlpdEGMSB+FQSSUL6hEBSBE3OGUZ3Mrd0Fg0zkx4DVnH6HdPexWXXaO
 0B0W57g4XQQ4g0I2WPCZOpfYH8ijKbg=
Date: Thu, 13 Feb 2020 12:59:44 -0300
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH] mtd: rawnand: ingenic: Allow to compile test the new
 Ingenic driver
To: Miquel Raynal <miquel.raynal@bootlin.com>
Message-Id: <1581609584.3.1@crapouillou.net>
In-Reply-To: <20200117212225.18004-1-miquel.raynal@bootlin.com>
References: <20200117212225.18004-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_080009_225595_EA4168C1 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Richard Weinberger <richard@nod.at>,
 Harvey Hunt <harveyhuntnexus@gmail.com>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Miquel, sorry for responding so late.


Le ven., janv. 17, 2020 at 22:22, Miquel Raynal =

<miquel.raynal@bootlin.com> a =E9crit :
> This driver has no arch-specific instructions so we should be able to
> compile it with any compiler.
> =

> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Looks good to me.
Reviewed-by: Paul Cercueil <paul@crapouillou.net>

> ---
>  drivers/mtd/nand/raw/ingenic/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/mtd/nand/raw/ingenic/Kconfig =

> b/drivers/mtd/nand/raw/ingenic/Kconfig
> index e30feb56b650..485abfa3f80b 100644
> --- a/drivers/mtd/nand/raw/ingenic/Kconfig
> +++ b/drivers/mtd/nand/raw/ingenic/Kconfig
> @@ -1,7 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  config MTD_NAND_JZ4780
>  	tristate "JZ4780 NAND controller"
> -	depends on JZ4780_NEMC
> +	depends on JZ4780_NEMC || COMPILE_TEST
>  	help
>  	  Enables support for NAND Flash connected to the NEMC on JZ4780 SoC
>  	  based boards, using the BCH controller for hardware error =

> correction.
> --
> 2.20.1
> =




______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
