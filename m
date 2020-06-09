Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 602F01F3AFD
	for <lists+linux-mtd@lfdr.de>; Tue,  9 Jun 2020 14:47:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gX1tksl0CHDO1LH8AKSWustbp65haTmzmOfeovkSLmI=; b=HLlxs/MgHj/5Mx
	kEelHH0nXERnJCy06bAqiIY2L7ad+1O5eee2J5036/EGItfByouTPYDwsbCYJCw2xCQtCvqSkEE8+
	prErGjC7VOQBoKv3zQBgjNUzoMhWy3d0x6A/amyF3vbiu2Ak/HfCeuYIKsvnGia6uOyX7ALdqvWsm
	3HAAInuWYJ2vrGme6R/FYX9mgpoBUXgxg2LgsXim0Ls4Zyi52mkLvGwIDfILBuyM2q+D69/ff1rKi
	wgwBv/z5k0l0Y0w9i2GIO07eEzcRz6biBfSGvcS8WxthbCYl/5Q1q9kVz1WlKfVRTdrrejigJh02H
	9QP9hw3yimB2YmrlfFDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jidfC-0001m8-A9; Tue, 09 Jun 2020 12:47:34 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jideD-00010y-IT
 for linux-mtd@lists.infradead.org; Tue, 09 Jun 2020 12:46:34 +0000
Received: from Q.local (cpc89242-aztw30-2-0-cust488.18-1.cable.virginm.net
 [86.31.129.233])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6D4B21314;
 Tue,  9 Jun 2020 14:46:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1591706784;
 bh=k2d6Fgi2DgTc07BY1d7t3Uj5hqRkZW7TQacEh7wmTzg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WFGsSysaYs+5unqI2BUTf63py99p8e6AsjzRDMPr/wx2ZOkReZbwRY72uyNfMcphz
 C5o/B9a1Gl/4fq7clChpv0yA0dkgMyCFVsiUfhNlzSB2skBccLhn0BOnanRGLgBB9B
 GMDi8Czfb+rWvc2bfNBYWfEib1hdQn3Vri9kHj9Y=
From: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH 04/17] drivers: mtd: nand: raw: Fix trivial spelling
Date: Tue,  9 Jun 2020 13:45:57 +0100
Message-Id: <20200609124610.3445662-5-kieran.bingham+renesas@ideasonboard.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200609124610.3445662-1-kieran.bingham+renesas@ideasonboard.com>
References: <20200609124610.3445662-1-kieran.bingham+renesas@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_054633_757678_FE7394BC 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Wenwen Wang <wenwen@cs.uga.edu>, Jiri Kosina <trivial@kernel.org>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Richard Weinberger <richard@nod.at>, open list <linux-kernel@vger.kernel.org>,
 linux-renesas-soc@vger.kernel.org,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 "open list:NAND FLASH SUBSYSTEM" <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The word 'descriptor' is misspelled throughout the tree.

Fix it up accordingly:
    decriptors -> descriptors

Signed-off-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
---
 drivers/mtd/nand/raw/mxc_nand.c | 2 +-
 drivers/mtd/nand/raw/nand_bbt.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/mxc_nand.c b/drivers/mtd/nand/raw/mxc_nand.c
index 59554c187e01..81659c09770a 100644
--- a/drivers/mtd/nand/raw/mxc_nand.c
+++ b/drivers/mtd/nand/raw/mxc_nand.c
@@ -1432,7 +1432,7 @@ static int mxc_nand_get_features(struct nand_chip *chip, int addr,
 }
 
 /*
- * The generic flash bbt decriptors overlap with our ecc
+ * The generic flash bbt descriptors overlap with our ecc
  * hardware, so define some i.MX specific ones.
  */
 static uint8_t bbt_pattern[] = { 'B', 'b', 't', '0' };
diff --git a/drivers/mtd/nand/raw/nand_bbt.c b/drivers/mtd/nand/raw/nand_bbt.c
index 96045d60471e..344a24fd2ca8 100644
--- a/drivers/mtd/nand/raw/nand_bbt.c
+++ b/drivers/mtd/nand/raw/nand_bbt.c
@@ -1226,7 +1226,7 @@ static int nand_scan_bbt(struct nand_chip *this, struct nand_bbt_descr *bd)
 		return -ENOMEM;
 
 	/*
-	 * If no primary table decriptor is given, scan the device to build a
+	 * If no primary table descriptor is given, scan the device to build a
 	 * memory based bad block table.
 	 */
 	if (!td) {
-- 
2.25.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
