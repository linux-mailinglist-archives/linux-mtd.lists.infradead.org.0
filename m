Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8DE1B37D5
	for <lists+linux-mtd@lfdr.de>; Wed, 22 Apr 2020 08:50:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JYI4CboxiXbRBiRciPgfR0SJQijxR16fhfCOUKMW4Fw=; b=QJK0cEhLdEWqXg
	krGdbDV0Hs945DGQmfV2dv4AZjcMF28no33XzZYPaU6EAXj2zU4lVGHjrXy35xKt0IwiF3Xg2YrKC
	pC51OYFVetz6H0fUP5U/32qLYFygSVFNGmiq1PrQ6Lary+qBAoYSThpMeqCd4aIvKk3H4L9obEQL2
	oULB9W9lrFSCvPggNd8N6yD9F0QDORzMer2cDVYzpGJGNrbwhDYLAUnp3tLcMvrIxjb4JDPuqUK3P
	Vh8WntVD3dzAbQy01tGT80Am9qoRjiiECIJlnIioZkDSoUMjho3A3zp3+f2EIRoxbd8nBWdFLYMdI
	ddNobgWH3iXZpIkFm2Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR9D7-0000R8-Ro; Wed, 22 Apr 2020 06:50:17 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR9Cn-0000QI-Ez
 for linux-mtd@lists.infradead.org; Wed, 22 Apr 2020 06:49:58 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 2B1402A1914;
 Wed, 22 Apr 2020 07:49:56 +0100 (BST)
Date: Wed, 22 Apr 2020 08:49:52 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 3/8] mtd: rawnand: onfi: Fix redundancy detection check
Message-ID: <20200422084952.5018f600@collabora.com>
In-Reply-To: <20200421164637.8086-4-miquel.raynal@bootlin.com>
References: <20200421164637.8086-1-miquel.raynal@bootlin.com>
 <20200421164637.8086-4-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_234957_633035_DAF3503E 
X-CRM114-Status: GOOD (  19.10  )
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
Cc: Michal Simek <monstr@monstr.eu>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 21 Apr 2020 18:46:32 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> During ONFI detection, the CRC derived from the parameter page and the
> CRC supposed to be at the end of the parameter page are compared. If
> they do not match, the second then the third copies of the page are
> tried.
> 
> The current implementation compares the newly derived CRC with the CRC
> contained in the first page only. So if this particular CRC area has
> been corrupted, then the detection will fail for a wrong reason.
> 
> Fix this issue by checking the derived CRC against the right one.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/nand/raw/nand_onfi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/nand/raw/nand_onfi.c b/drivers/mtd/nand/raw/nand_onfi.c
> index 0b879bd0a68c..8fe8d7bdd203 100644
> --- a/drivers/mtd/nand/raw/nand_onfi.c
> +++ b/drivers/mtd/nand/raw/nand_onfi.c
> @@ -173,7 +173,7 @@ int nand_onfi_detect(struct nand_chip *chip)
>  		}
>  
>  		if (onfi_crc16(ONFI_CRC_BASE, (u8 *)&p[i], 254) ==
> -				le16_to_cpu(p->crc)) {
> +		    le16_to_cpu(p[i].crc)) {
>  			if (i)
>  				memcpy(p, &p[i], sizeof(*p));
>  			break;


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
