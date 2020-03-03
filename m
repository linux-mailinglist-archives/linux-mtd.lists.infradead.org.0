Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4B3177003
	for <lists+linux-mtd@lfdr.de>; Tue,  3 Mar 2020 08:23:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bm4AJE3/EzhLdao7UwVbSA7wG+bKT8qSo/9UqrHQrCk=; b=EBAbF71VqzeGR1xV+c1Qt0CEbZ
	+iEv/IEVG8oyjEUODvzKvqY5R+sbZPsRwfhcDtw5i8Nut9LLBwuYo8iOTEpTA1hAGYjDVQfAypRwE
	nZlnEyKX8AGFu2lsntJ7xkjTEb6iGrZ0dU24thUCg+SPxQbhwqfBi1x9NJi9Tz/WzZ4i5y28Cw6/W
	IzkGSVZS8SW3QN5/gcmbgWh0+0/vYVXkAEArfV9LH/wX2GuLYebbG9oJBDi5AOSiQNdZmrSlMXlJV
	5+MaLqT8h3alo/dbvde0RKWrhgup/3yTAwT48ZKhXBrzbmr0iv+9ZjkEG/5PQ85P36St61MKvG6uZ
	c3kqpEdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j91tn-0000Pp-CB; Tue, 03 Mar 2020 07:23:27 +0000
Received: from twhmllg3.macronix.com ([122.147.135.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j91sw-0008B7-SV
 for linux-mtd@lists.infradead.org; Tue, 03 Mar 2020 07:22:37 +0000
Received: from localhost.localdomain ([172.17.195.96])
 by TWHMLLG3.macronix.com with ESMTP id 0237LRLA023026;
 Tue, 3 Mar 2020 15:21:29 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
From: Mason Yang <masonccyang@mxic.com.tw>
To: miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com
Subject: [PATCH v3 1/4] mtd: rawnand: Add support manufacturer specific
 lock/unlock operation
Date: Tue,  3 Mar 2020 15:21:21 +0800
Message-Id: <1583220084-10890-2-git-send-email-masonccyang@mxic.com.tw>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1583220084-10890-1-git-send-email-masonccyang@mxic.com.tw>
References: <1583220084-10890-1-git-send-email-masonccyang@mxic.com.tw>
X-MAIL: TWHMLLG3.macronix.com 0237LRLA023026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_232235_348074_68229153 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [122.147.135.201 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: bbrezillon@kernel.org, juliensu@mxic.com.tw, s.hauer@pengutronix.de,
 yuehaibing@huawei.com, linux-kernel@vger.kernel.org, stefan@agner.ch,
 rfontana@redhat.com, linux-mtd@lists.infradead.org,
 frieder.schrempf@kontron.de, tglx@linutronix.de,
 Mason Yang <masonccyang@mxic.com.tw>, allison@lohutok.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Add nand_lock() & nand_unlock() for manufacturer specific lock & unlock
operation while the device supports Block Portection function.

Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
Reported-by: kbuild test robot <lkp@intel.com>
Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_base.c | 36 ++++++++++++++++++++++++++++++++++--
 include/linux/mtd/rawnand.h      |  5 +++++
 2 files changed, 39 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index f64e3b6..769be81 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -4360,6 +4360,38 @@ static void nand_shutdown(struct mtd_info *mtd)
 	nand_suspend(mtd);
 }
 
+/**
+ * nand_lock - [MTD Interface] Lock the NAND flash
+ * @mtd: MTD device structure
+ * @ofs: offset byte address
+ * @len: number of bytes to lock (must be a multiple of block/page size)
+ */
+static int nand_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+
+	if (!chip->lock_area)
+		return -ENOTSUPP;
+
+	return chip->lock_area(chip, ofs, len);
+}
+
+/**
+ * nand_unlock - [MTD Interface] Unlock the NAND flash
+ * @mtd: MTD device structure
+ * @ofs: offset byte address
+ * @len: number of bytes to unlock (must be a multiple of block/page size)
+ */
+static int nand_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+
+	if (!chip->unlock_area)
+		return -ENOTSUPP;
+
+	return chip->unlock_area(chip, ofs, len);
+}
+
 /* Set default functions */
 static void nand_set_defaults(struct nand_chip *chip)
 {
@@ -5786,8 +5818,8 @@ static int nand_scan_tail(struct nand_chip *chip)
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
index 4ab9bcc..bc2fa3c 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1077,6 +1077,8 @@ struct nand_legacy {
  * @manufacturer:	[INTERN] Contains manufacturer information
  * @manufacturer.desc:	[INTERN] Contains manufacturer's description
  * @manufacturer.priv:	[INTERN] Contains manufacturer private information
+ * @lock_area:		[REPLACEABLE] specific NAND chip lock operation
+ * @unlock_area:	[REPLACEABLE] specific NAND chip unlock operation
  */
 
 struct nand_chip {
@@ -1136,6 +1138,9 @@ struct nand_chip {
 		const struct nand_manufacturer *desc;
 		void *priv;
 	} manufacturer;
+
+	int (*lock_area)(struct nand_chip *chip, loff_t ofs, uint64_t len);
+	int (*unlock_area)(struct nand_chip *chip, loff_t ofs, uint64_t len);
 };
 
 extern const struct mtd_ooblayout_ops nand_ooblayout_sp_ops;
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
