Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 598CB1E701F
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 01:17:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HhD5p137LG2IpfM3Wm6+6gbWMRUOPs7awB0M/+v8z+U=; b=dxE6Aakuo92X1F
	nl+YfKG2YMmOcKj4cSi8plpJj6yVyF5Yrt2fyl4vzXPBd9ZrWbPOEFIbEuapVJLE6hxBjH/kHEQQ1
	/sjkuiwFfMrUkAg5F2G910hBxw+7ssZ2MhoINi0H7q4Dvdd+UjaicFTbD5NeRBUz518L1VAlDB7vp
	trVix/IQjh69kdsM41uGsMrqEagkOUZDZyNnHQJ9YaCuINh6yPrX2oj/c7x6bZwVwEEMqVUPx9pgT
	D6VQy7u/ONxXnByc6TGIRAkrHea3GfordhDzhTQfClQj/MBdPnKyzZdg1o2sXnyGJInN2p2YFLziL
	V6u03aszATdsTucUuvnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeRll-0006Ei-NW; Thu, 28 May 2020 23:17:01 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeRl8-00063k-Cm
 for linux-mtd@lists.infradead.org; Thu, 28 May 2020 23:16:24 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 45392240004;
 Thu, 28 May 2020 23:16:16 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v6 01/30] mtd: rawnand: Use unsigned types for nand_chip
 unsigned values
Date: Fri, 29 May 2020 01:15:43 +0200
Message-Id: <20200528231612.8958-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200528231612.8958-1-miquel.raynal@bootlin.com>
References: <20200528231612.8958-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_161622_571953_B6EA17D0 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Rickard Andersson <rickaran@axis.com>, Michal Simek <monstr@monstr.eu>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

page_shift, phys_erase_shift, bbt_erase_shift, chip_shift, pagemask,
subpagesize and badblockbits are all positive values, so declare
them as unsigned.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 include/linux/mtd/rawnand.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 65b1c1c18b41..830f2d08937f 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1110,11 +1110,11 @@ struct nand_chip {
 	unsigned int options;
 	unsigned int bbt_options;
 
-	int page_shift;
-	int phys_erase_shift;
-	int bbt_erase_shift;
-	int chip_shift;
-	int pagemask;
+	unsigned int page_shift;
+	unsigned int phys_erase_shift;
+	unsigned int bbt_erase_shift;
+	unsigned int chip_shift;
+	unsigned int pagemask;
 	u8 *data_buf;
 
 	struct {
@@ -1122,10 +1122,10 @@ struct nand_chip {
 		int page;
 	} pagecache;
 
-	int subpagesize;
+	unsigned int subpagesize;
 	int onfi_timing_mode_default;
 	unsigned int badblockpos;
-	int badblockbits;
+	unsigned int badblockbits;
 
 	struct nand_id id;
 	struct nand_parameters parameters;
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
