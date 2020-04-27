Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C9D1B987B
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 09:25:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CU2lECvofMAlqC3pQs5zkLYUIjDkoJRpZnh6zz59v8s=; b=MFIHB32Bpbe5nx
	bSZFB8sEVHdNAjgwCOOSAlalVKzx+AuPLJlzOobNBNtc6T50cSPo58RxiBuZMTbX9ZmnXvvhjNAVb
	vvNsMxGlfVpy0xQfcC95u+fgjUsZKF99z2WT4q9Oom8DRDJmddiMKBul4Hbry5HDLU4a99RNqIQd/
	rtQ830W/4pQ7njIMhxcWyGClVhU8drW4iw97ZdQ1G46GY3bXbW8/0pqdpdKeMBcv2saWSIlCvVx8f
	YbqC6nyhTxIeksu+IldTRcKX+RWjNe6nX6BJP+XxLi3dLixKa0+t4ySQoE6fzXvBkOXKUcJkUw0RT
	hCt4jJd77TQFrMghulJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSy8j-00015R-OL; Mon, 27 Apr 2020 07:25:17 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSy8S-0000oG-5H
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 07:25:01 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E20692A0E91;
 Mon, 27 Apr 2020 08:24:56 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	linux-mtd@lists.infradead.org
Subject: [PATCH 1/3] mtd: rawnand: Add a NAND_NO_BBM_QUIRK flag
Date: Mon, 27 Apr 2020 09:24:51 +0200
Message-Id: <20200427072453.375642-1-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_002500_324507_D838B504 
X-CRM114-Status: GOOD (  11.80  )
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
 drivers/mtd/nand/raw/nand_base.c | 3 +++
 include/linux/mtd/rawnand.h      | 8 ++++++++
 2 files changed, 11 insertions(+)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index f81b54634061..749ef0b40684 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -345,6 +345,9 @@ static int nand_block_bad(struct nand_chip *chip, loff_t ofs)
 
 static int nand_isbad_bbm(struct nand_chip *chip, loff_t ofs)
 {
+	if (chip->options & NAND_NO_BBM_QUIRK)
+		return 0;
+
 	if (chip->legacy.block_bad)
 		return chip->legacy.block_bad(chip, ofs);
 
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 99f4ac47c8d3..37613dd9e04b 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -222,6 +222,14 @@ enum nand_ecc_algo {
  */
 #define NAND_KEEP_TIMINGS	0x00800000
 
+/*
+ * Some controllers with pipelined ECC engines override the BBM marker with
+ * data or ECC bytes, thus making bad block detection through bad block marker
+ * impossible. Let's flag those chips so the core knows it shouldn't check the
+ * BBM and consider all blocks good.
+ */
+#define NAND_NO_BBM_QUIRK	0
+
 /* Cell info constants */
 #define NAND_CI_CHIPNR_MSK	0x03
 #define NAND_CI_CELLTYPE_MSK	0x0C
-- 
2.25.3


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
