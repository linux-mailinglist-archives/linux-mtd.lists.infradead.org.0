Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D447C1E1473
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 20:40:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=spPofxkODn9yv94nSmmp9HDLFmxOynk2gBHYSPWaEFY=; b=EejzQ0Kf077n9o
	fy0TyulsAel1PAHrlICmt7lIhuyhmVGM54ALJjeE8cY1CKof/div1tEH1VvzjLxkhNtqit6FWLPun
	ECg6znAUvd5oRCfgGiECAlDDRS0P5xvcLSzLkmf/BgJp6YkjCNcds9tFBQKCjv2A2QAnXhWIFcRao
	YKWQQ9AQVbRnXanmKeb/B3BpDZUtAYMkq+sBn1J+tgFvZdSASsWb4Rha5AkJxW+C8WYgqoQvNzAbv
	ir4w64TvIhJu2fwIa1ZJJSnLqZKzJYyMCsJI9VwoHUh0+J9y9YAxa8cJEdWM1dg/3jb1IoaN3tKum
	rtY5dXxm7UMeu/6s8eYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdI1a-00084N-AV; Mon, 25 May 2020 18:40:34 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdI1N-00083l-IL
 for linux-mtd@lists.infradead.org; Mon, 25 May 2020 18:40:23 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 3B1CD2A1899;
 Mon, 25 May 2020 19:40:20 +0100 (BST)
Date: Mon, 25 May 2020 20:40:17 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v4 05/19] mtd: rawnand: Declare the nand_manufacturer
 structure out of nand_chip
Message-ID: <20200525204017.7876c4ba@collabora.com>
In-Reply-To: <20200525174239.11349-6-miquel.raynal@bootlin.com>
References: <20200525174239.11349-1-miquel.raynal@bootlin.com>
 <20200525174239.11349-6-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_114022_318302_A4EF53F2 
X-CRM114-Status: GOOD (  19.20  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Rickard Andersson <rickaran@axis.com>, Richard Weinberger <richard@nod.at>,
 linux-mtd@lists.infradead.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 25 May 2020 19:42:25 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Now that struct nand_manufacturer type is free, use it to store the
> nand_manufacturer_desc and the manufacturer's private data.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

I'm honestly not convinced this brings any value, but it's also
harmless, so

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  include/linux/mtd/rawnand.h | 20 ++++++++++++--------
>  1 file changed, 12 insertions(+), 8 deletions(-)
> 
> diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
> index d8492d966b40..2a9b5d5b315b 100644
> --- a/include/linux/mtd/rawnand.h
> +++ b/include/linux/mtd/rawnand.h
> @@ -1043,10 +1043,21 @@ struct nand_chip_ops {
>  	int (*setup_read_retry)(struct nand_chip *chip, int retry_mode);
>  };
>  
> +/**
> + * struct nand_manufacturer - NAND manufacturer structure
> + * @desc: The manufacturer description
> + * @priv: Private information for the manufacturer driver
> + */
> +struct nand_manufacturer {
> +	const struct nand_manufacturer_desc *desc;
> +	void *priv;
> +};
> +
>  /**
>   * struct nand_chip - NAND Private Flash Chip Data
>   * @base:		Inherit from the generic NAND device
>   * @ops:		NAND chip operations
> + * @manufacturer:	Manufacturer information
>   * @legacy:		All legacy fields/hooks. If you develop a new driver,
>   *			don't even try to use any of these fields/hooks, and if
>   *			you're modifying an existing driver that is using those
> @@ -1106,13 +1117,11 @@ struct nand_chip_ops {
>   *			structure which is shared among multiple independent
>   *			devices.
>   * @priv:		[OPTIONAL] pointer to private chip data
> - * @manufacturer:	[INTERN] Contains manufacturer information
> - * @manufacturer.desc:	[INTERN] Contains manufacturer's description
> - * @manufacturer.priv:	[INTERN] Contains manufacturer private information
>   */
>  
>  struct nand_chip {
>  	struct nand_device base;
> +	struct nand_manufacturer manufacturer;
>  	struct nand_chip_ops ops;
>  	struct nand_legacy legacy;
>  
> @@ -1161,11 +1170,6 @@ struct nand_chip {
>  	struct nand_bbt_descr *badblock_pattern;
>  
>  	void *priv;
> -
> -	struct {
> -		const struct nand_manufacturer_desc *desc;
> -		void *priv;
> -	} manufacturer;
>  };
>  
>  extern const struct mtd_ooblayout_ops nand_ooblayout_sp_ops;


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
