Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07488E6F1A
	for <lists+linux-mtd@lfdr.de>; Mon, 28 Oct 2019 10:31:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=z+sBTfAMp1xZ9rrzHiw2E+HdH47zthTBd++Q6dju3rQ=; b=CwvpSXFyPafEzcB4ik3DsJW8Xc
	NQhbDS9UjQqkmaJdbP6DMUTJ/8kMXtasTrhVSPaJiWvPzyNxZFbFIR0PkGZnuYilcvf06o089TeIy
	QbZjAbjAYj0s8J6d+1dTCGGC0f6S7ws3Y0hodwvhO/2n/ikdXFarHVFrkuL0cQkHc+Z2smCKBHA0A
	cJF3lyrtMLbE+MNELgvaEhFzKbTAR6hXSjq5HsqB8DBf9xP7411NhAcm2cgzyBbBk6b/uUhaw3YzM
	9YMa1xC/jBSGeVCqK9Ledh49pd07VZMxVt19A4y9bQTKcoc7OW4TfNKaY4myQfpf2AIrotkO5fDwC
	eXTg7BOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP1Mj-0002fN-SB; Mon, 28 Oct 2019 09:31:09 +0000
Received: from twhmllg4.macronix.com ([211.75.127.132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP1Ly-00022L-Iu
 for linux-mtd@lists.infradead.org; Mon, 28 Oct 2019 09:30:25 +0000
Received: from localhost.localdomain ([172.17.195.96])
 by TWHMLLG4.macronix.com with ESMTP id x9S9TQPN013435;
 Mon, 28 Oct 2019 17:29:27 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
From: Mason Yang <masonccyang@mxic.com.tw>
To: miquel.raynal@bootlin.com, richard@nod.at, marek.vasut@gmail.com,
 dwmw2@infradead.org, bbrezillon@kernel.org,
 computersforpeace@gmail.com, vigneshr@ti.com
Subject: [PATCH v2 1/4] mtd: rawnand: Add support manufacturer specific
 lock/unlock operatoin
Date: Mon, 28 Oct 2019 17:55:24 +0800
Message-Id: <1572256527-5074-2-git-send-email-masonccyang@mxic.com.tw>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1572256527-5074-1-git-send-email-masonccyang@mxic.com.tw>
References: <1572256527-5074-1-git-send-email-masonccyang@mxic.com.tw>
X-MAIL: TWHMLLG4.macronix.com x9S9TQPN013435
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_023022_909129_4F01B66A 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.127.132 listed in list.dnswl.org]
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
Cc: juliensu@mxic.com.tw, masonccyang@mxic.com.tw,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Add nand_lock() & nand_unlock() for manufacturer specific lock & unlock
operation while the device supports Block Protection function.

Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
---
 drivers/mtd/nand/raw/nand_base.c | 32 ++++++++++++++++++++++++++++++--
 include/linux/mtd/rawnand.h      |  3 +++
 2 files changed, 33 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 5c2c30a..5e318ff 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -4356,6 +4356,34 @@ static void nand_shutdown(struct mtd_info *mtd)
 	nand_suspend(mtd);
 }
 
+/**
+ * nand_lock - [MTD Interface] Lock the NAND flash
+ * @mtd: MTD device structure
+ */
+static int nand_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+
+	if (!chip->_lock)
+		return -ENOTSUPP;
+
+	return chip->_lock(chip, ofs, len);
+}
+
+/**
+ * nand_unlock - [MTD Interface] Unlock the NAND flash
+ * @mtd: MTD device structure
+ */
+static int nand_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+
+	if (!chip->_unlock)
+		return -ENOTSUPP;
+
+	return chip->_unlock(chip, ofs, len);
+}
+
 /* Set default functions */
 static void nand_set_defaults(struct nand_chip *chip)
 {
@@ -5782,8 +5810,8 @@ static int nand_scan_tail(struct nand_chip *chip)
 	mtd->_read_oob = nand_read_oob;
 	mtd->_write_oob = nand_write_oob;
 	mtd->_sync = nand_sync;
-	mtd->_lock = NULL;
-	mtd->_unlock = NULL;
+	mtd->_lock = nand_lock;
+	mtd->_unlock = nand_unlock;
 	mtd->_suspend = nand_suspend;
 	mtd->_resume = nand_resume;
 	mtd->_reboot = nand_shutdown;
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 4ab9bcc..2430ecd 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1136,6 +1136,9 @@ struct nand_chip {
 		const struct nand_manufacturer *desc;
 		void *priv;
 	} manufacturer;
+
+	int (*_lock)(struct nand_chip *chip, loff_t ofs, uint64_t len);
+	int (*_unlock)(struct nand_chip *chip, loff_t ofs, uint64_t len);
 };
 
 extern const struct mtd_ooblayout_ops nand_ooblayout_sp_ops;
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
