Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 796D61DA6B0
	for <lists+linux-mtd@lfdr.de>; Wed, 20 May 2020 02:37:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eOBSEBF6WZGs0HVr57mSVo4dn4CXQ8jRyoCDntzVjfc=; b=ivL/VHBOyhIRSIBYEDykqHzGk
	aPQy3g7U1wOm94t3JTt4S0Z/aCh10KppVr0kE4DqveCMxUEkIYIyYlZYVcaNHc5/e/6aOvP78MKIp
	9xHPkWd8pp3iDYERElUs5Sg4G4vcxT1VbVtoFDyY8vmoyVbasb8dODRv1epw3zeNXTZW5TAElsZzB
	20uBCp0d5YPduf8da/hxT+0vFA/5aV8BMqve1rmyn6k2DFcs0YAU0jKLX2Qn1RHXwXRZnmm49ATDf
	kUg5kPdBwrBgc1oKODO/+VeUeqefPaweCfA2pNPx5tflL2xC6WNBV/tQ1Qb1MaK2/5zDLi19qLfwS
	AgdWSzt8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbCk1-0005Nu-O3; Wed, 20 May 2020 00:37:49 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbCjq-0005NK-IL
 for linux-mtd@lists.infradead.org; Wed, 20 May 2020 00:37:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1589935056; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7iIqab+wfQtImwubFe+VsXoe+2O0mZtbZrrR8rziuHM=;
 b=uxEhnDoLJmufxt4msyK/8M6MwGckUYlWkbvkbFVyB+7LnXvtPcgKOrkaWwoYWatjOk/bgi
 rWo0fFINMWYbNjWn0GZGS0nmtnNUtR9ON96Mxlk1nRnF+H9oWbZsjdAV2n3p8plm4Knjya
 j6nMbYMNs9ezhUnzDLbiWzW8nCmINmw=
Date: Wed, 20 May 2020 02:37:26 +0200
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH v2 4/4] mtd: rawnand: ingenic: Convert the driver to
 exec_op()
To: Boris Brezillon <boris.brezillon@collabora.com>
Message-Id: <EQTLAQ.CJLUJ8KELYZQ@crapouillou.net>
In-Reply-To: <20200519232454.374081-4-boris.brezillon@collabora.com>
References: <20200519232454.374081-1-boris.brezillon@collabora.com>
 <20200519232454.374081-4-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_173738_988151_CC84DCA4 
X-CRM114-Status: GOOD (  18.85  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>,
 Harvey Hunt <harveyhuntnexus@gmail.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

Le mer. 20 mai 2020 =E0 1:24, Boris Brezillon =

<boris.brezillon@collabora.com> a =E9crit :
> Let's convert the driver to exec_op() to have one less driver relying
> on the legacy interface.
> =

> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>

Tested-by: Paul Cercueil <paul@crapouillou.net>

Cheers,
-Paul

> ---
> Changes in v2:
> * Add a delay after instructions when needed
> * s/cmd_offset/addr_offset/
> =

> Paul, I didn't add your T-b since this new version follows the path
> you proposed for the R/B polarity inversion issue. Feel free to add
> it back if it still works.
> ---
>  .../mtd/nand/raw/ingenic/ingenic_nand_drv.c   | 139 =

> +++++++++++-------
>  1 file changed, 83 insertions(+), 56 deletions(-)
> =

> diff --git a/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c =

> b/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
> index e939404e1383..3659e62829f9 100644
> --- a/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
> +++ b/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
> @@ -27,9 +27,6 @@
> =

>  #define DRV_NAME	"ingenic-nand"
> =

> -/* Command delay when there is no R/B pin. */
> -#define RB_DELAY_US	100
> -
>  struct jz_soc_info {
>  	unsigned long data_offset;
>  	unsigned long addr_offset;
> @@ -49,7 +46,6 @@ struct ingenic_nfc {
>  	struct nand_controller controller;
>  	unsigned int num_banks;
>  	struct list_head chips;
> -	int selected;
>  	struct ingenic_nand_cs cs[];
>  };
> =

> @@ -142,51 +138,6 @@ static const struct mtd_ooblayout_ops =

> jz4725b_ooblayout_ops =3D {
>  	.free =3D jz4725b_ooblayout_free,
>  };
> =

> -static void ingenic_nand_select_chip(struct nand_chip *chip, int =

> chipnr)
> -{
> -	struct ingenic_nand *nand =3D to_ingenic_nand(nand_to_mtd(chip));
> -	struct ingenic_nfc *nfc =3D to_ingenic_nfc(nand->chip.controller);
> -	struct ingenic_nand_cs *cs;
> -
> -	/* Ensure the currently selected chip is deasserted. */
> -	if (chipnr =3D=3D -1 && nfc->selected >=3D 0) {
> -		cs =3D &nfc->cs[nfc->selected];
> -		jz4780_nemc_assert(nfc->dev, cs->bank, false);
> -	}
> -
> -	nfc->selected =3D chipnr;
> -}
> -
> -static void ingenic_nand_cmd_ctrl(struct nand_chip *chip, int cmd,
> -				  unsigned int ctrl)
> -{
> -	struct ingenic_nand *nand =3D to_ingenic_nand(nand_to_mtd(chip));
> -	struct ingenic_nfc *nfc =3D to_ingenic_nfc(nand->chip.controller);
> -	struct ingenic_nand_cs *cs;
> -
> -	if (WARN_ON(nfc->selected < 0))
> -		return;
> -
> -	cs =3D &nfc->cs[nfc->selected];
> -
> -	jz4780_nemc_assert(nfc->dev, cs->bank, ctrl & NAND_NCE);
> -
> -	if (cmd =3D=3D NAND_CMD_NONE)
> -		return;
> -
> -	if (ctrl & NAND_ALE)
> -		writeb(cmd, cs->base + nfc->soc_info->addr_offset);
> -	else if (ctrl & NAND_CLE)
> -		writeb(cmd, cs->base + nfc->soc_info->cmd_offset);
> -}
> -
> -static int ingenic_nand_dev_ready(struct nand_chip *chip)
> -{
> -	struct ingenic_nand *nand =3D to_ingenic_nand(nand_to_mtd(chip));
> -
> -	return gpiod_get_value_cansleep(nand->busy_gpio);
> -}
> -
>  static void ingenic_nand_ecc_hwctl(struct nand_chip *chip, int mode)
>  {
>  	struct ingenic_nand *nand =3D to_ingenic_nand(nand_to_mtd(chip));
> @@ -298,8 +249,91 @@ static int ingenic_nand_attach_chip(struct =

> nand_chip *chip)
>  	return 0;
>  }
> =

> +static int ingenic_nand_exec_instr(struct nand_chip *chip,
> +				   struct ingenic_nand_cs *cs,
> +				   const struct nand_op_instr *instr)
> +{
> +	struct ingenic_nand *nand =3D to_ingenic_nand(nand_to_mtd(chip));
> +	struct ingenic_nfc *nfc =3D to_ingenic_nfc(chip->controller);
> +	unsigned int i;
> +
> +	switch (instr->type) {
> +	case NAND_OP_CMD_INSTR:
> +		writeb(instr->ctx.cmd.opcode,
> +		       cs->base + nfc->soc_info->cmd_offset);
> +		return 0;
> +	case NAND_OP_ADDR_INSTR:
> +		for (i =3D 0; i < instr->ctx.addr.naddrs; i++)
> +			writeb(instr->ctx.addr.addrs[i],
> +			       cs->base + nfc->soc_info->addr_offset);
> +		return 0;
> +	case NAND_OP_DATA_IN_INSTR:
> +		if (instr->ctx.data.force_8bit ||
> +		    !(chip->options & NAND_BUSWIDTH_16))
> +			ioread8_rep(cs->base + nfc->soc_info->data_offset,
> +				    instr->ctx.data.buf.in,
> +				    instr->ctx.data.len);
> +		else
> +			ioread16_rep(cs->base + nfc->soc_info->data_offset,
> +				     instr->ctx.data.buf.in,
> +				     instr->ctx.data.len);
> +		return 0;
> +	case NAND_OP_DATA_OUT_INSTR:
> +		if (instr->ctx.data.force_8bit ||
> +		    !(chip->options & NAND_BUSWIDTH_16))
> +			iowrite8_rep(cs->base + nfc->soc_info->data_offset,
> +				     instr->ctx.data.buf.out,
> +				     instr->ctx.data.len);
> +		else
> +			iowrite16_rep(cs->base + nfc->soc_info->data_offset,
> +				      instr->ctx.data.buf.out,
> +				      instr->ctx.data.len);
> +		return 0;
> +	case NAND_OP_WAITRDY_INSTR:
> +		if (!nand->busy_gpio)
> +			return nand_soft_waitrdy(chip,
> +						 instr->ctx.waitrdy.timeout_ms);
> +
> +		return nand_gpio_waitrdy(chip, nand->busy_gpio,
> +					 instr->ctx.waitrdy.timeout_ms);
> +	default:
> +		break;
> +	}
> +
> +	return -EINVAL;
> +}
> +
> +static int ingenic_nand_exec_op(struct nand_chip *chip,
> +				const struct nand_operation *op,
> +				bool check_only)
> +{
> +	struct ingenic_nand *nand =3D to_ingenic_nand(nand_to_mtd(chip));
> +	struct ingenic_nfc *nfc =3D to_ingenic_nfc(nand->chip.controller);
> +	struct ingenic_nand_cs *cs;
> +	unsigned int i;
> +	int ret =3D 0;
> +
> +	if (check_only)
> +		return 0;
> +
> +	cs =3D &nfc->cs[op->cs];
> +	jz4780_nemc_assert(nfc->dev, cs->bank, true);
> +	for (i =3D 0; i < op->ninstrs; i++) {
> +		ret =3D ingenic_nand_exec_instr(chip, cs, &op->instrs[i]);
> +		if (ret)
> +			break;
> +
> +		if (op->instrs[i].delay_ns)
> +			ndelay(op->instrs[i].delay_ns);
> +	}
> +	jz4780_nemc_assert(nfc->dev, cs->bank, false);
> +
> +	return ret;
> +}
> +
>  static const struct nand_controller_ops ingenic_nand_controller_ops =

> =3D {
>  	.attach_chip =3D ingenic_nand_attach_chip,
> +	.exec_op =3D ingenic_nand_exec_op,
>  };
> =

>  static int ingenic_nand_init_chip(struct platform_device *pdev,
> @@ -339,8 +373,6 @@ static int ingenic_nand_init_chip(struct =

> platform_device *pdev,
>  		ret =3D PTR_ERR(nand->busy_gpio);
>  		dev_err(dev, "failed to request busy GPIO: %d\n", ret);
>  		return ret;
> -	} else if (nand->busy_gpio) {
> -		nand->chip.legacy.dev_ready =3D ingenic_nand_dev_ready;
>  	}
> =

>  	/*
> @@ -371,12 +403,7 @@ static int ingenic_nand_init_chip(struct =

> platform_device *pdev,
>  		return -ENOMEM;
>  	mtd->dev.parent =3D dev;
> =

> -	chip->legacy.IO_ADDR_R =3D cs->base + nfc->soc_info->data_offset;
> -	chip->legacy.IO_ADDR_W =3D cs->base + nfc->soc_info->data_offset;
> -	chip->legacy.chip_delay =3D RB_DELAY_US;
>  	chip->options =3D NAND_NO_SUBPAGE_WRITE;
> -	chip->legacy.select_chip =3D ingenic_nand_select_chip;
> -	chip->legacy.cmd_ctrl =3D ingenic_nand_cmd_ctrl;
>  	chip->ecc.mode =3D NAND_ECC_HW;
>  	chip->controller =3D &nfc->controller;
>  	nand_set_flash_node(chip, np);
> --
> 2.25.4
> =




______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
