Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A8E1CD213
	for <lists+linux-mtd@lfdr.de>; Mon, 11 May 2020 08:49:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ilf4j0u2WGN2OMlvCDLt7Z69UzGbnwgg0y1hdH5+UlI=; b=l8mev8wFCPQPd/
	ZJYCFsi4nmdTaNAf4nuKzW60fPc/UAdJQ/Eskkh4VLvV8UmG1MfgNN57b6ZpINu8QAZkJNTeBWPX6
	RMsPMnY2b5ia/1G4BRFA7H3DAz25lWtvu3RFY+vnsblovd8dPwWht3oLp7ojc3VOTRZg1Yb4CnSsi
	GkddekRwVTYGm5fIsBLFGugBL9zgMyb6JK2rBWRi+PW0MXLCgktJf/1HCxnVMtclzC/fHUcPmY6Gb
	nCjID08YYcRo1DmOZ8gVOw7qyQR2w1O5f9ZRWmc2ykLPGDztXCHeXbG9D8at71iXPg6Hg8C4THyrN
	AtQ/vkLtiRp3plibnDsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY2G3-0003GC-RI; Mon, 11 May 2020 06:49:47 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY2Ft-0003EO-O7
 for linux-mtd@lists.infradead.org; Mon, 11 May 2020 06:49:39 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 5CAB62A08E4;
 Mon, 11 May 2020 07:49:25 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	linux-mtd@lists.infradead.org
Subject: [PATCH v2 1/3] mtd: rawnand: Add a NAND_NO_BBM_QUIRK flag
Date: Mon, 11 May 2020 08:49:15 +0200
Message-Id: <20200511064917.6255-1-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_234937_918096_950AC693 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Richard Weinberger <richard@nod.at>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Some controllers with embedded ECC engines override the BBM marker with
data or ECC bytes, thus making bad block detection through bad block
marker impossible. Let's flag those chips so the core knows it shouldn't
check the BBM and consider all blocks good.

This should allow us to get rid of two implementers of the
legacy.block_bad() hook.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
Changes in v2:
* Use the BIT() macro
* Rebase on top of nand/next
---
 drivers/mtd/nand/raw/nand_base.c | 3 +++
 include/linux/mtd/rawnand.h      | 8 ++++++++
 2 files changed, 11 insertions(+)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 771762eff9c4..4a7587df15cb 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -395,6 +395,9 @@ static int nand_block_bad(struct nand_chip *chip, loff_t ofs)
 
 static int nand_isbad_bbm(struct nand_chip *chip, loff_t ofs)
 {
+	if (chip->options & NAND_NO_BBM_QUIRK)
+		return 0;
+
 	if (chip->legacy.block_bad)
 		return chip->legacy.block_bad(chip, ofs);
 
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 18b5b4381a66..15fbc590a603 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -221,6 +221,14 @@ enum nand_ecc_algo {
 #define NAND_BBM_SECONDPAGE	BIT(25)
 #define NAND_BBM_LASTPAGE	BIT(26)
 
+/*
+ * Some controllers with pipelined ECC engines override the BBM marker with
+ * data or ECC bytes, thus making bad block detection through bad block marker
+ * impossible. Let's flag those chips so the core knows it shouldn't check the
+ * BBM and consider all blocks good.
+ */
+#define NAND_NO_BBM_QUIRK	BIT(27)
+
 /* Cell info constants */
 #define NAND_CI_CHIPNR_MSK	0x03
 #define NAND_CI_CELLTYPE_MSK	0x0C
-- 
2.25.3


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
