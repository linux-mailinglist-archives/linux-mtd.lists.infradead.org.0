Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CC41ED19D
	for <lists+linux-mtd@lfdr.de>; Wed,  3 Jun 2020 16:01:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGw6XsCSKTaCAkGPEl2GuAEBgXqqW0UGA8GYKrVqcmg=; b=mSzHeQHGT5hAkr
	jYmuUki8my2M9+ufRjCFzPWzaUr3O1ZPW7ZHDBEY2+/VJBpUvUI8o8rJTcbCC/4bUkvBk8Y35s1gD
	N0JT/xsq3E0yz8cfeJ88ou6mxtCPKCk/QRoJmXYHj19Kd+i9K3iDyqUi28/Je6Eo6XhQ7x/B+fMXF
	FzWucd79hdWdFhjD+uUCTkbziQUgvjmNVpNvhJ57QOsK+mUNcmfehWc0lm5z3ymgcRRLgEyUrMCCy
	I0w+aecDfrD8zY9jHPzJmPRxLq+UyJHwfSYUV1CdtD9Hed68r3PADUTwdi5zUoHeslnMpWrjB7peQ
	xDJ9KkNlwlqVIsf2x2Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgTxQ-00070y-4L; Wed, 03 Jun 2020 14:01:28 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgTxJ-00070G-V2
 for linux-mtd@lists.infradead.org; Wed, 03 Jun 2020 14:01:23 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 07A2D24001B;
 Wed,  3 Jun 2020 14:01:18 +0000 (UTC)
Date: Wed, 3 Jun 2020 16:01:17 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 07/10] mtd: rawnand: fsl_upm: Inherit from nand_controller
Message-ID: <20200603160117.5693606b@xps13>
In-Reply-To: <20200603134922.1352340-8-boris.brezillon@collabora.com>
References: <20200603134922.1352340-1-boris.brezillon@collabora.com>
 <20200603134922.1352340-8-boris.brezillon@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_070122_134849_A1A66779 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Michael Ellerman <mpe@ellerman.id.au>, Anton Vorontsov <anton@enomsg.org>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Boris Brezillon <boris.brezillon@collabora.com> wrote on Wed,  3 Jun
2020 15:49:19 +0200:

> Explicitly inherit from nand_controller instead of relying on the
> nand_chip.legacy.dummy_controller field.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---
>  drivers/mtd/nand/raw/fsl_upm.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/mtd/nand/raw/fsl_upm.c b/drivers/mtd/nand/raw/fsl_upm.c
> index 977b7aad419b..9a63e36825d8 100644
> --- a/drivers/mtd/nand/raw/fsl_upm.c
> +++ b/drivers/mtd/nand/raw/fsl_upm.c
> @@ -24,6 +24,7 @@
>  #define FSL_UPM_WAIT_WRITE_BUFFER 0x4
>  
>  struct fsl_upm_nand {
> +	struct nand_controller base;
>  	struct device *dev;
>  	struct nand_chip chip;
>  	int last_ctrl;
> @@ -167,6 +168,7 @@ static int fun_chip_init(struct fsl_upm_nand *fun,
>  	if (!fun->rnb_gpio[0])
>  		fun->chip.legacy.dev_ready = fun_chip_ready;
>  
> +	fun->chip.controller = &fun->base;
>  	mtd->dev.parent = fun->dev;
>  
>  	flash_np = of_get_next_child(upm_np, NULL);
> @@ -268,6 +270,7 @@ static int fun_probe(struct platform_device *ofdev)
>  		fun->wait_flags = FSL_UPM_WAIT_RUN_PATTERN |
>  				  FSL_UPM_WAIT_WRITE_BYTE;
>  
> +	nand_controller_init(&fun->base);
>  	fun->dev = &ofdev->dev;
>  	fun->last_ctrl = NAND_CLE;
>  

Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
