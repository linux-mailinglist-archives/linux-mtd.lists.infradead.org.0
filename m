Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D00651E6402
	for <lists+linux-mtd@lfdr.de>; Thu, 28 May 2020 16:32:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lLYy4CkpGpGHsRLcbR+qCS8qpEzl78+aOn0w7qwlXyU=; b=OiqaKniv6h50dT
	Cbq3ulLkhjuGKr4AWoOcbPMwe0oSQ3X3/mEmA0ag10YNmEJjOVpeYVsce3zOqzkKTTpRaEnK/FW2Y
	ytr3GakQS/T9x1I16HVbNXuK6E49arQVmF0Zhs+YyIKKaymQo1MOPpGxmG1mysJwTjIotdQKWGFrV
	ov5VoJvhuV4pVD7wRMZSlOEUGYaKxnmFvZex3DriHdTX+R6Vs9SEwzV+Q85GyIlXl9nZmt4OmYPbX
	98hY55P2fQ2K/xWKUQsQWCSaPrLozp5wp/HOVaM2s2ltEFhLhigM98rxRIlDgt6iYzqrwt+cJyx1t
	zYgYYRPItDrU9DkaqlUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeJa2-0003HS-54; Thu, 28 May 2020 14:32:22 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeJZa-0003B4-Vb; Thu, 28 May 2020 14:31:56 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6A0A72A0AA8;
 Thu, 28 May 2020 15:31:53 +0100 (BST)
Date: Thu, 28 May 2020 16:31:50 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v6 08/18] mtd: rawnand: Use the new ECC engine type
 enumeration
Message-ID: <20200528163150.6ad71fcc@collabora.com>
In-Reply-To: <20200528113113.9166-9-miquel.raynal@bootlin.com>
References: <20200528113113.9166-1-miquel.raynal@bootlin.com>
 <20200528113113.9166-9-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_073155_148479_64A7E946 
X-CRM114-Status: GOOD (  17.29  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>, Weijie Gao <weijie.gao@mediatek.com>,
 Paul Cercueil <paul@crapouillou.net>, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, Chuanhong Guo <gch981213@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 28 May 2020 13:31:03 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Mechanical switch from the legacy "mode" enumeration to the new
> "engine type" enumeration in drivers and board files.
> 
> The device tree parsing is also updated to return the new enumeration
> from the old strings.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

I didn't check all the changes, but I'm fine with the approach

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> diff --git a/include/linux/platform_data/mtd-davinci.h b/include/linux/platform_data/mtd-davinci.h
> index 3383101c233b..dd474dd44848 100644
> --- a/include/linux/platform_data/mtd-davinci.h
> +++ b/include/linux/platform_data/mtd-davinci.h
> @@ -60,16 +60,16 @@ struct davinci_nand_pdata {		/* platform_data */
>  	struct mtd_partition	*parts;
>  	unsigned		nr_parts;
>  
> -	/* none  == NAND_ECC_NONE (strongly *not* advised!!)
> -	 * soft  == NAND_ECC_SOFT
> -	 * else  == NAND_ECC_HW, according to ecc_bits
> +	/* none  == NAND_ECC_ENGINE_TYPE_NONE (strongly *not* advised!!)
> +	 * soft  == NAND_ECC_ENGINE_TYPE_SOFT
> +	 * else  == NAND_ECC_ENGINE_TYPE_ON_HOST, according to ecc_bits
>  	 *
>  	 * All DaVinci-family chips support 1-bit hardware ECC.
>  	 * Newer ones also support 4-bit ECC, but are awkward
>  	 * using it with large page chips.
>  	 */
> -	enum nand_ecc_mode	ecc_mode;
> -	enum nand_ecc_placement	ecc_placement;
> +	enum nand_ecc_engine_type engine_type;
> +	enum nand_ecc_placement ecc_placement;

Nitpick: if you want to use a space instead of tab, it should be done in
patch 3.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
