Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FCF1B3875
	for <lists+linux-mtd@lfdr.de>; Wed, 22 Apr 2020 09:08:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GU685FrK5pgpbw8QAUMg6HtsGItw2+Uh+kYTSQ0EoJM=; b=gr2mAxCoASGL0k
	cp8HOdWb3XOBtFITJYnoxyZt7yW+svDSPstqBbo/wTJq+thmxK95lE2lRxawuMVZ4cIBAQg72AVP5
	FSKOq9ZQ2EDhBfPHeah4+2PrcoRJU2Yp/debRiN32XAmCyaho2ybf47pfsJzZFxVGpbTpaxYbOz7Q
	IKNupQ66shq69SPT1U/7wUCGT4UVXOTzar9Rr8Q5OLOyAlmxa4rTYMe2XEGsT5KKjWxin/KEkyeB5
	NngNUvfcPOusJC8N56QvImPyHB/8pwO+Zeuw+7C5JX006sJM25D9rpTAn7mAV2Xz6uVKvOX5Tt3cS
	2Pm2lL4IIv6ilaFNdSYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR9UW-0000vr-PP; Wed, 22 Apr 2020 07:08:16 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR9UP-0000v7-Hs
 for linux-mtd@lists.infradead.org; Wed, 22 Apr 2020 07:08:10 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 54BB32A0F90;
 Wed, 22 Apr 2020 08:08:08 +0100 (BST)
Date: Wed, 22 Apr 2020 09:08:04 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 3/6] mtd: rawnand: marvell: Use nand_cleanup() when the
 device is not yet registered
Message-ID: <20200422090804.2cd26fa6@collabora.com>
In-Reply-To: <20200421164857.8255-4-miquel.raynal@bootlin.com>
References: <20200421164857.8255-1-miquel.raynal@bootlin.com>
 <20200421164857.8255-4-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_000809_721137_03F86F04 
X-CRM114-Status: GOOD (  17.31  )
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 21 Apr 2020 18:48:54 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Do not call nand_release() while the MTD device has not been
> registered, use nand_cleanup() instead.
> 
> Fixes: 02f26ecf8c77 ("mtd: nand: add reworked Marvell NAND controller driver")
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/nand/raw/marvell_nand.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/nand/raw/marvell_nand.c b/drivers/mtd/nand/raw/marvell_nand.c
> index 7906bd3fc8cb..350949b34eee 100644
> --- a/drivers/mtd/nand/raw/marvell_nand.c
> +++ b/drivers/mtd/nand/raw/marvell_nand.c
> @@ -2664,7 +2664,7 @@ static int marvell_nand_chip_init(struct device *dev, struct marvell_nfc *nfc,
>  		ret = mtd_device_register(mtd, NULL, 0);
>  	if (ret) {
>  		dev_err(dev, "failed to register mtd device: %d\n", ret);
> -		nand_release(chip);
> +		nand_cleanup(chip);
>  		return ret;
>  	}
>  


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
