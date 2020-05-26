Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B7A1E335A
	for <lists+linux-mtd@lfdr.de>; Wed, 27 May 2020 01:03:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oGpCceknHxXEQoYfgNIMRDQXiqXvH7hNhjbZRjlFsbc=; b=RcRW637HwR30ZK
	PDMC+O1FLsWnCNQVJPc0YEPiB1FV6P/VQAfggP0B9iSJY28/hZiUReYr9wveBwn2JkSSTfWx5sM6Z
	QYMM1emdoIpB42vz1q5KuRsuhiyML0LmcGgjqf5O8SgHBSorK1emnSFB/Xzat8i2sTGxN8F04MQVh
	XM1zcTaLjmJUgL1hypDAGJKhfLFXIYD5qEUOEzMT0aJJnS+9dDTm3YBS/Q3IIsVrLumgLK/r5s6Sr
	hdH8LNptNFI6IZnl15MOZNWlS5mM9/Ywr+VffGUdejEmBV/qDSpiXFsyHpChROJ99OPP/YcZ3egdp
	TcjJuGlc17PDm5wFzETQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdibk-0003e0-Rg; Tue, 26 May 2020 23:03:40 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdibZ-0003dc-Kd
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 23:03:30 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 5A89B2A1C39;
 Wed, 27 May 2020 00:03:28 +0100 (BST)
Date: Wed, 27 May 2020 01:03:25 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [RESEND v5 12/21] mtd: rawnand: Deprecate nand-ecc-mode in
 favor of nand-ecc-provider
Message-ID: <20200527010325.0e7213b2@collabora.com>
In-Reply-To: <20200526195633.11543-13-miquel.raynal@bootlin.com>
References: <20200526195633.11543-1-miquel.raynal@bootlin.com>
 <20200526195633.11543-13-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_160329_805745_996E2794 
X-CRM114-Status: GOOD (  16.51  )
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
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 26 May 2020 21:56:24 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Use nand-ecc-provider as the provider DT property. Fallback to
> nand-ecc-mode if the property does not exist.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  drivers/mtd/nand/raw/nand_base.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> index 69c1b7ab938e..7d17d52cdd34 100644
> --- a/drivers/mtd/nand/raw/nand_base.c
> +++ b/drivers/mtd/nand/raw/nand_base.c
> @@ -5036,7 +5036,9 @@ of_get_nand_ecc_engine_type(struct device_node *np)
>  	const char *pm;
>  	int err;
>  
> -	err = of_property_read_string(np, "nand-ecc-mode", &pm);
> +	err = of_property_read_string(np, "nand-ecc-provider", &pm);

					   "nand-ecc-engine-type"

And I'd prefer to have a different string table for that one, so we get
rid of the confusing "hw" type (which is actually "on-controller").

> +	if (err)
> +		err = of_property_read_string(np, "nand-ecc-mode", &pm);
>  	if (err)
>  		return NAND_ECC_ENGINE_INVALID;
>  


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
