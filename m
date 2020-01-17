Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A25141385
	for <lists+linux-mtd@lfdr.de>; Fri, 17 Jan 2020 22:44:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cZuloca9F9N0w/qhXvepm6CENPmbEI4mTda7nDNRNAA=; b=koNCEv+aWQ11pT
	9gG2yFpMCvNFhj2/cj6lfYkdAFI7d+p/jmjukIGlCCZPdsuU+q3xu3hoGC3YYBTm1xj7aJkX8RU7P
	SV6ij3fSMzpyXElHushPsTzMALqta5KpiLrKgT51fChzudcwIcnR7xlLkinlz1BHQI637UXu2th7S
	ZxcN6o2wY16bDZDxk1eWeprZ+3dOVMl/5EWqKhkkK9FvZZzJ86YwLnEiSF2DAalG1IXnX71svVUv0
	W9uMNi9mjL8Bb0wsJABqvq/hvD1SohHgg32Q/9kcGe95omowmwTut80k8gbB4bWsMA9g8Ux4OOB1a
	Al7c8zzebG6QmwmOUZDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isZPq-0002Xt-IN; Fri, 17 Jan 2020 21:44:30 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isZNi-0000k0-7y
 for linux-mtd@lists.infradead.org; Fri, 17 Jan 2020 21:42:19 +0000
Received: from xps13.lan (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id F363924000C;
 Fri, 17 Jan 2020 21:42:15 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v4 07/21] mtd: rawnand: Create a new enumeration to describe
 OOB placement
Date: Fri, 17 Jan 2020 22:41:37 +0100
Message-Id: <20200117214151.20767-8-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200117214151.20767-1-miquel.raynal@bootlin.com>
References: <20200117214151.20767-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_134218_418775_A03B78B0 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Julien Su <juliensu@mxic.com.tw>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Mason Yang <masonccyang@mxic.com.tw>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

There is currently a confusion between the ECC type/mode/provider
(eg. hardware, software, on-die or none) and the ECC bytes placement.

Create a new enumeration to describe this placement.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/nand_base.c |  4 ++++
 include/linux/mtd/rawnand.h      | 12 ++++++++++++
 2 files changed, 16 insertions(+)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 7f7d704cc4f0..7b440afa1493 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -4775,6 +4775,10 @@ static const char * const nand_ecc_modes[] = {
 	[NAND_ECC_ON_DIE]	= "on-die",
 };
 
+static const char * const nand_ecc_placement[] = {
+	[NAND_ECC_PLACEMENT_INTERLEAVED] = "interleaved",
+};
+
 static int of_get_nand_ecc_mode(struct device_node *np)
 {
 	const char *pm;
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index c094408b330b..208485ee6207 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -92,6 +92,18 @@ enum nand_ecc_mode {
 	NAND_ECC_ON_DIE,
 };
 
+/**
+ * enum nand_ecc_placement - NAND ECC placement
+ * @NAND_ECC_PLACEMENT_FREE: The driver can decide where to put ECC bytes.
+ *                           Default behavior is to put them at the end of the
+ *                           OOB area.
+ * @NAND_ECC_PLACEMENT_INTERLEAVED: Syndrome layout: interleave data and OOB.
+ */
+enum nand_ecc_placement {
+	NAND_ECC_PLACEMENT_FREE,
+	NAND_ECC_PLACEMENT_INTERLEAVED,
+};
+
 enum nand_ecc_algo {
 	NAND_ECC_UNKNOWN,
 	NAND_ECC_HAMMING,
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
