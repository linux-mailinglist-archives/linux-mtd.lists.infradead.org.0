Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7DE1D9403
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 12:06:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1S0EVOE0QqYBKXEgaOvLdz708QMoSKiwUC6hirsbWOU=; b=cq3rCKJHD39NlBsPI1EoVVR7IJ
	HsdpqX5EljJ3IlcWrPCULtmeacMa+ghFE8AOdelfxDIV0A71yWlCofznCE/ZsVb2gy+n9kgqWEO9n
	+YZajR6mQCuGGDMNi4CZ8/0G7C/raCN3ojOO7sqb/9/xgh3Aee8z5QV8aksn9HCAZIdPsT3WiPLkc
	1aPKe+4kGRHLyggihOkhNC5jz5O6B/FGEYEOkq2rlks7EvqSz4+GRAMB2o3TzRTUBEnMgsjuyyBH9
	ZYOUs27WOFTpQ7nStCRSg4Q/RxSPNtuFDpWPH8JavNJVMxv4FurazFbPqzb++zx+m4wNS2InFVV5R
	NJsTB5MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaz8K-0000wi-MT; Tue, 19 May 2020 10:06:00 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaz7j-0000bm-HR
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 10:05:25 +0000
Received: by mail-wm1-x342.google.com with SMTP id z72so2809450wmc.2
 for <linux-mtd@lists.infradead.org>; Tue, 19 May 2020 03:05:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=A4qhrGBB7f1ImMUQjw2ZKgOqKWcJqgmHu7USuIdXtmw=;
 b=uum8MGaBOWmx7IZeLQigPYftF+gg59cn4Vkhlmgc2cSVpDzbuJUTBBkOUq6h1BzeA5
 uESKnelvLzy6RjKDN4fyfcfOUYORGtp16yKa1KuVjeuoOtP2BiETN5PeQuzGL+LOm21M
 lj6rnDYbxELe52j9EI7dzQO2X5Hku7LNyZ7+v7n5zsq0Nf5RmhT7J3oDo0LA8AGZa/Xu
 035NdBuop4sjk6Iv2fba5CteS7diVOKlrjpFeySkQdz4lA0cwMiIZyHwyqBqqKHmbwuG
 Mq621ywww+Xl8MTLPq3oL2cDDLc+DUmXINVDP+7Cln3ymOgW0RNswjJ84T/MfIoh2g7n
 4Z/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=A4qhrGBB7f1ImMUQjw2ZKgOqKWcJqgmHu7USuIdXtmw=;
 b=bGVyyW4mZCJ3qlu6k7KajvL8x9pecd474LULtH9Hg10JUGK/QSK8WdcvbNCd9rySeO
 5oNSvifAvYipHVz4ZeyVrLmqS3NAhxtXl9dBAauWndYGvMy9jUJnkNyftblWNDuxiBfK
 lgauDdw7Mf/DMU/2bL2l0nPTsY3SzDqrS8cdl3oYn3SNNg2Ob8MfUi2F7mebcL0Wu02o
 PtNGA1kZGQtv2aZIOvjKR9jIjJmJoWP2PrOArdpZKFOJPhNlHpn6qP3EKDdEFfP19x/1
 nLTazAeSeVdERTkXYj/sZ8Aqqc+f6YceM7PlRZn034xOopjDGxdE0x9N/b92LrElOKfj
 AxvQ==
X-Gm-Message-State: AOAM531dd5vhetHWcR+eJDO/uKm3Nrq1en1MWqtK11CqyzQCxqoiLkQj
 GbiN9p/96WNwGfgciIDOdbw=
X-Google-Smtp-Source: ABdhPJws54jA0knoPNASBa9Dz1agaVtL+eMrzXCUjtVzUNBG/lL/n+ry2t+WknaLP5LBvdfweIklBw==
X-Received: by 2002:a1c:b604:: with SMTP id g4mr4505606wmf.103.1589882722336; 
 Tue, 19 May 2020 03:05:22 -0700 (PDT)
Received: from ubuntu-G3.micron.com ([165.225.86.140])
 by smtp.gmail.com with ESMTPSA id b18sm19968008wrn.82.2020.05.19.03.05.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 03:05:21 -0700 (PDT)
From: Bean Huo <huobean@gmail.com>
To: miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 s.hauer@pengutronix.de, boris.brezillon@collabora.com, derosier@gmail.com
Subject: [PATCH v5 1/5] mtd: rawnand: group all NAND specific ops into new
 nand_chip_ops
Date: Tue, 19 May 2020 12:05:03 +0200
Message-Id: <20200519100507.19323-2-huobean@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200519100507.19323-1-huobean@gmail.com>
References: <20200519100507.19323-1-huobean@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_030523_593546_A1CB089C 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [huobean[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: huobean@gmail.com, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, Bean Huo <beanhuo@micron.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Bean Huo <beanhuo@micron.com>

This patch is to create a new structure nand_chip_ops, and take all NAND
specific functions out from nand_chip and put them in this new structure.

Signed-off-by: Bean Huo <beanhuo@micron.com>
---
 drivers/mtd/nand/raw/nand_base.c     | 20 +++++++++---------
 drivers/mtd/nand/raw/nand_hynix.c    |  2 +-
 drivers/mtd/nand/raw/nand_macronix.c | 10 ++++-----
 drivers/mtd/nand/raw/nand_micron.c   |  2 +-
 include/linux/mtd/rawnand.h          | 31 +++++++++++++++++-----------
 5 files changed, 36 insertions(+), 29 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 2d2a216af120..7af21cf49290 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -3234,10 +3234,10 @@ static int nand_setup_read_retry(struct nand_chip *chip, int retry_mode)
 	if (retry_mode >= chip->read_retries)
 		return -EINVAL;
 
-	if (!chip->setup_read_retry)
+	if (!chip->ops.setup_read_retry)
 		return -EOPNOTSUPP;
 
-	return chip->setup_read_retry(chip, retry_mode);
+	return chip->ops.setup_read_retry(chip, retry_mode);
 }
 
 static void nand_wait_readrdy(struct nand_chip *chip)
@@ -4481,8 +4481,8 @@ static int nand_suspend(struct mtd_info *mtd)
 	int ret = 0;
 
 	mutex_lock(&chip->lock);
-	if (chip->suspend)
-		ret = chip->suspend(chip);
+	if (chip->ops.suspend)
+		ret = chip->ops.suspend(chip);
 	if (!ret)
 		chip->suspended = 1;
 	mutex_unlock(&chip->lock);
@@ -4500,8 +4500,8 @@ static void nand_resume(struct mtd_info *mtd)
 
 	mutex_lock(&chip->lock);
 	if (chip->suspended) {
-		if (chip->resume)
-			chip->resume(chip);
+		if (chip->ops.resume)
+			chip->ops.resume(chip);
 		chip->suspended = 0;
 	} else {
 		pr_err("%s called for a chip which is not in suspended state\n",
@@ -4530,10 +4530,10 @@ static int nand_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 {
 	struct nand_chip *chip = mtd_to_nand(mtd);
 
-	if (!chip->lock_area)
+	if (!chip->ops.lock_area)
 		return -ENOTSUPP;
 
-	return chip->lock_area(chip, ofs, len);
+	return chip->ops.lock_area(chip, ofs, len);
 }
 
 /**
@@ -4546,10 +4546,10 @@ static int nand_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 {
 	struct nand_chip *chip = mtd_to_nand(mtd);
 
-	if (!chip->unlock_area)
+	if (!chip->ops.unlock_area)
 		return -ENOTSUPP;
 
-	return chip->unlock_area(chip, ofs, len);
+	return chip->ops.unlock_area(chip, ofs, len);
 }
 
 /* Set default functions */
diff --git a/drivers/mtd/nand/raw/nand_hynix.c b/drivers/mtd/nand/raw/nand_hynix.c
index 7caedaa5b9e5..7d1be53f27f3 100644
--- a/drivers/mtd/nand/raw/nand_hynix.c
+++ b/drivers/mtd/nand/raw/nand_hynix.c
@@ -337,7 +337,7 @@ static int hynix_mlc_1xnm_rr_init(struct nand_chip *chip,
 	rr->nregs = nregs;
 	rr->regs = hynix_1xnm_mlc_read_retry_regs;
 	hynix->read_retry = rr;
-	chip->setup_read_retry = hynix_nand_setup_read_retry;
+	chip->ops.setup_read_retry = hynix_nand_setup_read_retry;
 	chip->read_retries = nmodes;
 
 out:
diff --git a/drivers/mtd/nand/raw/nand_macronix.c b/drivers/mtd/nand/raw/nand_macronix.c
index 09c254c97b5c..1472f925f386 100644
--- a/drivers/mtd/nand/raw/nand_macronix.c
+++ b/drivers/mtd/nand/raw/nand_macronix.c
@@ -130,7 +130,7 @@ static void macronix_nand_onfi_init(struct nand_chip *chip)
 		return;
 
 	chip->read_retries = MACRONIX_NUM_READ_RETRY_MODES;
-	chip->setup_read_retry = macronix_nand_setup_read_retry;
+	chip->ops.setup_read_retry = macronix_nand_setup_read_retry;
 
 	if (p->supports_set_get_features) {
 		bitmap_set(p->set_feature_list,
@@ -242,8 +242,8 @@ static void macronix_nand_block_protection_support(struct nand_chip *chip)
 	bitmap_set(chip->parameters.set_feature_list,
 		   ONFI_FEATURE_ADDR_MXIC_PROTECTION, 1);
 
-	chip->lock_area = mxic_nand_lock;
-	chip->unlock_area = mxic_nand_unlock;
+	chip->ops.lock_area = mxic_nand_lock;
+	chip->ops.unlock_area = mxic_nand_unlock;
 }
 
 static int nand_power_down_op(struct nand_chip *chip)
@@ -312,8 +312,8 @@ static void macronix_nand_deep_power_down_support(struct nand_chip *chip)
 	if (i < 0)
 		return;
 
-	chip->suspend = mxic_nand_suspend;
-	chip->resume = mxic_nand_resume;
+	chip->ops.suspend = mxic_nand_suspend;
+	chip->ops.resume = mxic_nand_resume;
 }
 
 static int macronix_nand_init(struct nand_chip *chip)
diff --git a/drivers/mtd/nand/raw/nand_micron.c b/drivers/mtd/nand/raw/nand_micron.c
index b2b047b245f4..b3485b0995ad 100644
--- a/drivers/mtd/nand/raw/nand_micron.c
+++ b/drivers/mtd/nand/raw/nand_micron.c
@@ -84,7 +84,7 @@ static int micron_nand_onfi_init(struct nand_chip *chip)
 		struct nand_onfi_vendor_micron *micron = (void *)p->onfi->vendor;
 
 		chip->read_retries = micron->read_retry_options;
-		chip->setup_read_retry = micron_nand_setup_read_retry;
+		chip->ops.setup_read_retry = micron_nand_setup_read_retry;
 	}
 
 	if (p->supports_set_get_features) {
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 0f45b6984ad1..62932cc3ed8d 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1025,6 +1025,23 @@ struct nand_legacy {
 	struct nand_controller dummy_controller;
 };
 
+/**
+ * struct nand_chip_ops - NAND Chip specific operations
+ * @suspend:           [REPLACEABLE] specific NAND device suspend operation
+ * @resume:            [REPLACEABLE] specific NAND device resume operation
+ * @lock_area:         [REPLACEABLE] specific NAND chip lock operation
+ * @unlock_area:       [REPLACEABLE] specific NAND chip unlock operation
+ * @setup_read_retry:  [FLASHSPECIFIC] flash (vendor) specific function for
+ *                     setting the read-retry mode. Mostly needed for MLC NAND.
+ */
+struct nand_chip_ops {
+	int (*suspend)(struct nand_chip *chip);
+	void (*resume)(struct nand_chip *chip);
+	int (*lock_area)(struct nand_chip *chip, loff_t ofs, u64 len);
+	int (*unlock_area)(struct nand_chip *chip, loff_t ofs, u64 len);
+	int (*setup_read_retry)(struct nand_chip *chip, int retry_mode);
+};
+
 /**
  * struct nand_chip - NAND Private Flash Chip Data
  * @base:		Inherit from the generic NAND device
@@ -1033,8 +1050,6 @@ struct nand_legacy {
  *			you're modifying an existing driver that is using those
  *			fields/hooks, you should consider reworking the driver
  *			avoid using them.
- * @setup_read_retry:	[FLASHSPECIFIC] flash (vendor) specific function for
- *			setting the read-retry mode. Mostly needed for MLC NAND.
  * @ecc:		[BOARDSPECIFIC] ECC control structure
  * @buf_align:		minimum buffer alignment required by a platform
  * @oob_poi:		"poison value buffer," used for laying out OOB data
@@ -1079,8 +1094,6 @@ struct nand_legacy {
  * @lock:		lock protecting the suspended field. Also used to
  *			serialize accesses to the NAND device.
  * @suspended:		set to 1 when the device is suspended, 0 when it's not.
- * @suspend:		[REPLACEABLE] specific NAND device suspend operation
- * @resume:		[REPLACEABLE] specific NAND device resume operation
  * @bbt:		[INTERN] bad block table pointer
  * @bbt_td:		[REPLACEABLE] bad block table descriptor for flash
  *			lookup.
@@ -1094,8 +1107,7 @@ struct nand_legacy {
  * @manufacturer:	[INTERN] Contains manufacturer information
  * @manufacturer.desc:	[INTERN] Contains manufacturer's description
  * @manufacturer.priv:	[INTERN] Contains manufacturer private information
- * @lock_area:		[REPLACEABLE] specific NAND chip lock operation
- * @unlock_area:	[REPLACEABLE] specific NAND chip unlock operation
+ * @ops:		NAND-specific operations description structure
  */
 
 struct nand_chip {
@@ -1103,8 +1115,6 @@ struct nand_chip {
 
 	struct nand_legacy legacy;
 
-	int (*setup_read_retry)(struct nand_chip *chip, int retry_mode);
-
 	unsigned int options;
 	unsigned int bbt_options;
 
@@ -1136,8 +1146,6 @@ struct nand_chip {
 
 	struct mutex lock;
 	unsigned int suspended : 1;
-	int (*suspend)(struct nand_chip *chip);
-	void (*resume)(struct nand_chip *chip);
 
 	uint8_t *oob_poi;
 	struct nand_controller *controller;
@@ -1158,8 +1166,7 @@ struct nand_chip {
 		void *priv;
 	} manufacturer;
 
-	int (*lock_area)(struct nand_chip *chip, loff_t ofs, uint64_t len);
-	int (*unlock_area)(struct nand_chip *chip, loff_t ofs, uint64_t len);
+	struct nand_chip_ops ops;
 };
 
 extern const struct mtd_ooblayout_ops nand_ooblayout_sp_ops;
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
