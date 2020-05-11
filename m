Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5871CD4B9
	for <lists+linux-mtd@lfdr.de>; Mon, 11 May 2020 11:19:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=68h5SmmxksAzSyFfhG0+cWLGZYrABBnpmSSJeczHOsw=; b=P7j5uWoPaTu6H0
	1fM/t0FNHZRNnngjKtT8gp9/yl7qQJwu7G4HnXiecsgQYghtqeuPGp1uO4g/9S/u2zFdx4XOVzhEp
	QJ0tf088cKFL1RE/Qb5RLhoMrpdjAB+CepTgCO6I3F8s/lFRC6koCki/oZUOJX0nDyWSTEd7sNTXP
	0SEMJH1/0MJbHBkXKjRtXrqNgp+X69L+LvEOE/WLaNitkSr3aR2CKANqz412g0/558ULatsyhS4L1
	/J17rQYY6iq4VkDIf6DA1uZvkcexLfyvjY1u3Cs6CUezw288uvcj7xOsXdm3mEiQKlzAQhuxFvLzd
	GSRsTBUwLNjKCe7H5A5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY4ai-0008Qs-Vi; Mon, 11 May 2020 09:19:17 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY4aX-0008Pm-91
 for linux-mtd@lists.infradead.org; Mon, 11 May 2020 09:19:06 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id D6943FF80B;
 Mon, 11 May 2020 09:18:57 +0000 (UTC)
Date: Mon, 11 May 2020 11:18:55 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Christophe Kerello <christophe.kerello@st.com>
Subject: Re: [PATCH v4 10/10] mtd: rawnand: stm32_fmc2: get resources from
 parent node
Message-ID: <20200511111855.48216940@xps13>
In-Reply-To: <1588756279-17289-11-git-send-email-christophe.kerello@st.com>
References: <1588756279-17289-1-git-send-email-christophe.kerello@st.com>
 <1588756279-17289-11-git-send-email-christophe.kerello@st.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_021905_587878_4817E5CD 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.199 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, marex@denx.de,
 vigneshr@ti.com, gregkh@linuxfoundation.org, richard@nod.at,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, boris.brezillon@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Christophe,

Christophe Kerello <christophe.kerello@st.com> wrote on Wed, 6 May 2020
11:11:19 +0200:

> FMC2 EBI support has been added. Common resources (registers base
> and clock) are now shared between the 2 drivers. It means that the
> common resources should now be found in the parent device when EBI
> node is available.
> 
> Signed-off-by: Christophe Kerello <christophe.kerello@st.com>
> ---

[...]

> +
> +static bool stm32_fmc2_nfc_check_for_parent(struct platform_device *pdev)
> +{
> +	u32 i;
> +	int nb_resources = 0;
> +
> +	/* Count the number of resources in reg property */
> +	for (i = 0; i < pdev->num_resources; i++) {
> +		struct resource *res = &pdev->resource[i];
> +
> +		if (resource_type(res) == IORESOURCE_MEM)
> +			nb_resources++;
> +	}
> +
> +	/* Each CS needs 3 resources defined (data, cmd and addr) */
> +	if (nb_resources % 3)
> +		return false;
> +
> +	return true;
> +}

This function looks fragile. Why not just checking the compatible
string of the parent node?

> +
>  static int stm32_fmc2_nfc_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> @@ -1824,8 +1865,8 @@ static int stm32_fmc2_nfc_probe(struct platform_device *pdev)
>  	struct resource *res;
>  	struct mtd_info *mtd;
>  	struct nand_chip *chip;
> -	void __iomem *mmio;
>  	int chip_cs, mem_region, ret, irq;
> +	int num_region = 1;
>  
>  	nfc = devm_kzalloc(dev, sizeof(*nfc), GFP_KERNEL);
>  	if (!nfc)
> @@ -1834,23 +1875,19 @@ static int stm32_fmc2_nfc_probe(struct platform_device *pdev)
>  	nfc->dev = dev;
>  	nand_controller_init(&nfc->base);
>  	nfc->base.ops = &stm32_fmc2_nfc_controller_ops;
> +	nfc->has_parent = stm32_fmc2_nfc_check_for_parent(pdev);
> +	if (nfc->has_parent)
> +		num_region = 0;
>  
>  	ret = stm32_fmc2_nfc_parse_dt(nfc);
>  	if (ret)
>  		return ret;
>  
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	mmio = devm_ioremap_resource(dev, res);
> -	if (IS_ERR(mmio))
> -		return PTR_ERR(mmio);
> -
> -	nfc->regmap = devm_regmap_init_mmio(dev, mmio, &stm32_fmc2_regmap_cfg);
> -	if (IS_ERR(nfc->regmap))
> -		return PTR_ERR(nfc->regmap);
> -
> -	nfc->io_phys_addr = res->start;
> +	ret = stm32_fmc2_nfc_set_regmap_clk(pdev, nfc);
> +	if (ret)
> +		return ret;

Are you sure this driver sill works without the EBI block?

This change looks suspect.

>  
> -	for (chip_cs = 0, mem_region = 1; chip_cs < FMC2_MAX_CE;
> +	for (chip_cs = 0, mem_region = num_region; chip_cs < FMC2_MAX_CE;
>  	     chip_cs++, mem_region += 3) {
>  		if (!(nfc->cs_assigned & BIT(chip_cs)))
>  			continue;
> @@ -1888,10 +1925,6 @@ static int stm32_fmc2_nfc_probe(struct platform_device *pdev)
>  
>  	init_completion(&nfc->complete);
>  
> -	nfc->clk = devm_clk_get(dev, NULL);
> -	if (IS_ERR(nfc->clk))
> -		return PTR_ERR(nfc->clk);
> -

Same here

>  	ret = clk_prepare_enable(nfc->clk);
>  	if (ret) {
>  		dev_err(dev, "can not enable the clock\n");


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
