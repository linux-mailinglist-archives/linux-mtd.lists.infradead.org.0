Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A3F1E2FA5
	for <lists+linux-mtd@lfdr.de>; Tue, 26 May 2020 21:59:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ksnw+AzdZ/9E/yTyAlJN/PcJFEG00tsbyWtWsQjUFFo=; b=gdF8kfRrtzndBV
	dohA2C3Mzxy0+wqb2KxBboCBG1plv06751l66EQekx2J/nVQsTGea60qEIHUCR7g19mBN+pGEuQGv
	EOMx7W7a4RbxmjH2/nVLXPeL9drUW33pVQBmJesw+b1Kkx1nlzUFItTsFGCOlE1+Fg7sz2xAkO733
	2jAEAY+Hxax1azs7b6nws4M+3dRLKeSbHveqkbD6XIHQjKTUSQrBaUo+zqvuKDF/a8gadLP+4waln
	ks6CJ6pcAYldQFm2dUb2a1A1zkRLNkWvX+ORIVam1dCu3/lzuecIdqk9ktdhkS+NqC4W/JHNQUslH
	qzKus+Kpvpv5ofvsPrcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdfjN-00014R-58; Tue, 26 May 2020 19:59:21 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdfgr-0007V7-RQ
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 19:56:47 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 5B516C0008;
 Tue, 26 May 2020 19:56:43 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [RESEND v5 07/21] mtd: rawnand: Create a new enumeration to describe
 OOB placement
Date: Tue, 26 May 2020 21:56:19 +0200
Message-Id: <20200526195633.11543-8-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200526195633.11543-1-miquel.raynal@bootlin.com>
References: <20200526195633.11543-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_125646_023819_D43692EE 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>
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
index ef70ca0828c3..a4470a19c805 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -5018,6 +5018,10 @@ static const char * const nand_ecc_modes[] = {
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
index 8187056dd3a0..6eb4d91b07eb 100644
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
