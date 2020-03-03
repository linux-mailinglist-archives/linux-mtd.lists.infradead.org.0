Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90623177005
	for <lists+linux-mtd@lfdr.de>; Tue,  3 Mar 2020 08:23:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BbOHa+JZqowfauFvwQrjMhSk8v6319gBnj4OPUic4LM=; b=TsxCnjbcammLD8wFWSj4TDJZHo
	HatrUJGOaxQCa9mnfr4CCXurRLlZWVLskZt1CjKF23PVBnEK3zNomBNgOToeqiCrnuyFvv9pgsENm
	+HeIgQTzo3y2KZeX4iwTx9yuCPym8LUyNPWjxn3QfgE8toTEifJuL5Erc0l5Ym0WvKG7yfzFPvWus
	B16iyrgj/1QOONI2HPtyjhtzVpCL9sSL4msB5mxmcYYSbDUR/nIyNzBTvLyKXPp40Qy2h+OLS8UXT
	IQyx0l/NV/gfRyBQt8iUyte8OnCkdy4XJL7yfEyVle1zX+LerWz7SsklmTmfGyNqQZPGL1VOH+I+0
	kqleQP1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j91u2-0000eK-Cn; Tue, 03 Mar 2020 07:23:42 +0000
Received: from twhmllg3.macronix.com ([122.147.135.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j91sw-0008BI-SX
 for linux-mtd@lists.infradead.org; Tue, 03 Mar 2020 07:22:38 +0000
Received: from localhost.localdomain ([172.17.195.96])
 by TWHMLLG3.macronix.com with ESMTP id 0237LRLB023026;
 Tue, 3 Mar 2020 15:21:30 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
From: Mason Yang <masonccyang@mxic.com.tw>
To: miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com
Subject: [PATCH v3 2/4] mtd: rawnand: Add support Macronix Block Protection
 function
Date: Tue,  3 Mar 2020 15:21:22 +0800
Message-Id: <1583220084-10890-3-git-send-email-masonccyang@mxic.com.tw>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1583220084-10890-1-git-send-email-masonccyang@mxic.com.tw>
References: <1583220084-10890-1-git-send-email-masonccyang@mxic.com.tw>
X-MAIL: TWHMLLG3.macronix.com 0237LRLB023026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_232235_356114_63F1D507 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
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

Macronix AC/AD series support using SET_FEATURES to change
Block Portection and Unprotection. By GET_FEATURES operation
to detect if block protection support.

Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
---
 drivers/mtd/nand/raw/nand_macronix.c | 72 ++++++++++++++++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/drivers/mtd/nand/raw/nand_macronix.c b/drivers/mtd/nand/raw/nand_macronix.c
index 3ff7ce0..a4cd12c 100644
--- a/drivers/mtd/nand/raw/nand_macronix.c
+++ b/drivers/mtd/nand/raw/nand_macronix.c
@@ -11,6 +11,10 @@
 #define MACRONIX_READ_RETRY_BIT BIT(0)
 #define MACRONIX_NUM_READ_RETRY_MODES 6
 
+#define ONFI_FEATURE_ADDR_MXIC_PROTECTION 0xA0
+#define MXIC_BLOCK_PROTECTION_ALL_LOCK 0x38
+#define MXIC_BLOCK_PROTECTION_ALL_UNLOCK 0x0
+
 struct nand_onfi_vendor_macronix {
 	u8 reserved;
 	u8 reliability_func;
@@ -91,6 +95,73 @@ static void macronix_nand_fix_broken_get_timings(struct nand_chip *chip)
 		     ONFI_FEATURE_ADDR_TIMING_MODE, 1);
 }
 
+/*
+ * Macronix NAND supports Block Protection by Protectoin(PT) pin;
+ * active high at power-on which protects the entire chip even the #WP is
+ * disabled. Lock/unlock protection area can be partition according to
+ * protection bits, i.e. upper 1/2 locked, upper 1/4 locked and so on.
+ */
+static int mxic_nand_lock(struct nand_chip *chip, loff_t ofs, uint64_t len)
+{
+	u8 feature[ONFI_SUBFEATURE_PARAM_LEN];
+	int ret;
+
+	feature[0] = MXIC_BLOCK_PROTECTION_ALL_LOCK;
+	nand_select_target(chip, 0);
+	ret = nand_set_features(chip, ONFI_FEATURE_ADDR_MXIC_PROTECTION,
+				feature);
+	nand_deselect_target(chip);
+	if (ret)
+		pr_err("%s all blocks failed\n", __func__);
+
+	return ret;
+}
+
+static int mxic_nand_unlock(struct nand_chip *chip, loff_t ofs, uint64_t len)
+{
+	u8 feature[ONFI_SUBFEATURE_PARAM_LEN];
+	int ret;
+
+	feature[0] = MXIC_BLOCK_PROTECTION_ALL_UNLOCK;
+	nand_select_target(chip, 0);
+	ret = nand_set_features(chip, ONFI_FEATURE_ADDR_MXIC_PROTECTION,
+				feature);
+	nand_deselect_target(chip);
+	if (ret)
+		pr_err("%s all blocks failed\n", __func__);
+
+	return ret;
+}
+
+static void macronix_nand_block_protection_support(struct nand_chip *chip)
+{
+	u8 feature[ONFI_SUBFEATURE_PARAM_LEN];
+	int ret;
+
+	bitmap_set(chip->parameters.get_feature_list,
+		   ONFI_FEATURE_ADDR_MXIC_PROTECTION, 1);
+
+	feature[0] = MXIC_BLOCK_PROTECTION_ALL_UNLOCK;
+	nand_select_target(chip, 0);
+	ret = nand_get_features(chip, ONFI_FEATURE_ADDR_MXIC_PROTECTION,
+				feature);
+	nand_deselect_target(chip);
+	if (ret || feature[0] != MXIC_BLOCK_PROTECTION_ALL_LOCK) {
+		if (ret)
+			pr_err("Block protection check failed\n");
+
+		bitmap_clear(chip->parameters.get_feature_list,
+			     ONFI_FEATURE_ADDR_MXIC_PROTECTION, 1);
+		return;
+	}
+
+	bitmap_set(chip->parameters.set_feature_list,
+		   ONFI_FEATURE_ADDR_MXIC_PROTECTION, 1);
+
+	chip->lock_area = mxic_nand_lock;
+	chip->unlock_area = mxic_nand_unlock;
+}
+
 static int macronix_nand_init(struct nand_chip *chip)
 {
 	if (nand_is_slc(chip))
@@ -98,6 +169,7 @@ static int macronix_nand_init(struct nand_chip *chip)
 
 	macronix_nand_fix_broken_get_timings(chip);
 	macronix_nand_onfi_init(chip);
+	macronix_nand_block_protection_support(chip);
 
 	return 0;
 }
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
