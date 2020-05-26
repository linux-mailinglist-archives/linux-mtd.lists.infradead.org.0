Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA851B84D5
	for <lists+linux-mtd@lfdr.de>; Sat, 25 Apr 2020 10:45:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=22gwZznk8eBbqfz+f4KpJ50eldeis8dHzYzBz3hPYQI=; b=QGi/yFy0bU5Pzp
	rPLov150jrfhjL1t/uYll0jrsvoppRieTaoeHokScCNKw+gCJpXBO0ATR+2C556IZIaVgbE3/bWtz
	OUwAtXmRJNJ+x0RMAzP1+JZeCi2ztpF9fSo8bIIQsK9HJ+FMvb5Yyrgs2YUyVTz7CFXZOn/Bs46Ac
	Rp8pZyT8XQLElcu1n4Ar9NucgNsv71CIr6rCnQzG+sB9DGZPOUayoNEZ7V38tlkyBB/8jbLkIgWzq
	DXTObU4VNjmeAvkE48bzQ66uwZQ5MB1owAztP5c4vA6BWoU8TPwIPa2fp23ERHpxI5Aj2DfRY77oO
	CBNBEYRk0CSD5d6/NgeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSGRE-0002dC-Kj; Sat, 25 Apr 2020 08:45:28 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSGR7-0002cX-Hq
 for linux-mtd@lists.infradead.org; Sat, 25 Apr 2020 08:45:22 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 472A32A2F11;
 Sat, 25 Apr 2020 09:45:20 +0100 (BST)
Date: Sat, 25 Apr 2020 10:45:17 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 06/10] mtd: rawnand: Avoid indirect access to ->data_buf()
Message-ID: <20200425104517.59bf71dc@collabora.com>
In-Reply-To: <20200424173631.14311-7-miquel.raynal@bootlin.com>
References: <20200424173631.14311-1-miquel.raynal@bootlin.com>
 <20200424173631.14311-7-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_014521_716035_08250628 
X-CRM114-Status: GOOD (  18.15  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Michal Simek <monstr@monstr.eu>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 24 Apr 2020 19:36:27 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> The logic in nand_do_read_ops() is to use a bufpoi variable, either
> set to the original buffer, or set to a bounce buffer which in the end
> happens to be chip->data_buf depending on the value of the
> use_bounce_buf boolean. This is not a reason to call chip->data_buf
> directly when we know that we are using the bounce buffer. Let's use
> bufpoi instead to be consistent.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/nand/raw/nand_base.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> index 0e2dd4c1b44c..15a9189b2307 100644
> --- a/drivers/mtd/nand/raw/nand_base.c
> +++ b/drivers/mtd/nand/raw/nand_base.c
> @@ -3243,7 +3243,7 @@ static int nand_do_read_ops(struct nand_chip *chip, loff_t from,
>  					/* Invalidate page cache */
>  					chip->pagecache.page = -1;
>  				}
> -				memcpy(buf, chip->data_buf + col, bytes);
> +				memcpy(buf, bufpoi + col, bytes);
>  			}
>  
>  			if (unlikely(oob)) {


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
