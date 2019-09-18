Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C2BB5E27
	for <lists+linux-mtd@lfdr.de>; Wed, 18 Sep 2019 09:34:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IRCiX5MraTkylk3a1O7T0D1cM5WjR8NyMRh8TC6PTv8=; b=By1hr9wjuCJ9s/icviFkQYi+u7
	3X5r2t4iSBjrYWAmmJhG+aIAXfOV0En2Q+BNw2auPKeuKGwDTP5hWy5OQX+gO1L7XvpogR2/IDtH1
	9LriIEOMQBkhMectb+EOSSFeMolJHxyFFoXlkgSIxeBrHR41COy0nDLJSYbkSUS7B3NtOuKt/81nI
	suWmU9ll8b8B67Un+XQ0bonYJAC2IjXEmggvYqjJZPjD4Q4367lsGbfWOZUBH2pqfukCHdH7szwWN
	09BcgzljbspiYQMv3dxBfqAnUHOm+Xi8MMtZUwBX319MJ9Km7ZzGuiQfOa7s+6WcnngHjULiF1WaE
	Gyn6YVWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAUTS-0001yk-PQ; Wed, 18 Sep 2019 07:34:02 +0000
Received: from twhmllg3.macronix.com ([122.147.135.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUSg-0001Xj-0n
 for linux-mtd@lists.infradead.org; Wed, 18 Sep 2019 07:33:16 +0000
Received: from localhost.localdomain ([172.17.195.96])
 by TWHMLLG3.macronix.com with ESMTP id x8I7VoOf060926;
 Wed, 18 Sep 2019 15:31:52 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
From: Mason Yang <masonccyang@mxic.com.tw>
To: miquel.raynal@bootlin.com, richard@nod.at, marek.vasut@gmail.com,
 dwmw2@infradead.org, bbrezillon@kernel.org,
 computersforpeace@gmail.com, vigneshr@ti.com
Subject: [PATCH RFC 3/3] mtd: rawnand: Add support Macronix power down mode
Date: Wed, 18 Sep 2019 15:56:26 +0800
Message-Id: <1568793387-25199-3-git-send-email-masonccyang@mxic.com.tw>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1568793387-25199-1-git-send-email-masonccyang@mxic.com.tw>
References: <1568793387-25199-1-git-send-email-masonccyang@mxic.com.tw>
X-MAIL: TWHMLLG3.macronix.com x8I7VoOf060926
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_003314_346344_5F0CC8A7 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: marcel.ziswiler@toradex.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, frieder.schrempf@kontron.de,
 juliensu@mxic.com.tw, linux-mtd@lists.infradead.org, tglx@linutronix.de,
 masonccyang@mxic.com.tw
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Macronix AD series support using power down command to
enter a minimum power consumption state.

MTD default _suspend/_resume function replacement by
manufacturer postponed initialization.

Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
---
 drivers/mtd/nand/raw/nand_macronix.c | 78 +++++++++++++++++++++++++++++++++++-
 1 file changed, 77 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/nand_macronix.c b/drivers/mtd/nand/raw/nand_macronix.c
index 991c636..99a7b2e 100644
--- a/drivers/mtd/nand/raw/nand_macronix.c
+++ b/drivers/mtd/nand/raw/nand_macronix.c
@@ -15,6 +15,8 @@
 #define MXIC_BLOCK_PROTECTION_ALL_LOCK 0x38
 #define MXIC_BLOCK_PROTECTION_ALL_UNLOCK 0x0
 
+#define NAND_CMD_POWER_DOWN 0xB9
+
 struct nand_onfi_vendor_macronix {
 	u8 reserved;
 	u8 reliability_func;
@@ -78,6 +80,12 @@ static void macronix_nand_onfi_init(struct nand_chip *chip)
 		"MX30UF4G28AC",
 };
 
+static const char * const nand_power_down[] = {
+		"MX30LF1G28AD",
+		"MX30LF2G28AD",
+		"MX30LF4G28AD",
+};
+
 static void macronix_nand_fix_broken_get_timings(struct nand_chip *chip)
 {
 	unsigned int i;
@@ -144,8 +152,64 @@ static int mxic_nand_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 	return ret;
 }
 
+int nand_power_down_op(struct nand_chip *chip)
+{
+	int ret;
+
+	if (nand_has_exec_op(chip)) {
+		struct nand_op_instr instrs[] = {
+			NAND_OP_CMD(NAND_CMD_POWER_DOWN, 0),
+		};
+
+		struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);
+
+		ret = nand_exec_op(chip, &op);
+		if (ret)
+			return ret;
+
+	} else {
+		chip->legacy.cmdfunc(chip, NAND_CMD_POWER_DOWN, -1, -1);
+	}
+
+	return 0;
+}
+
+static int mxic_nand_suspend(struct mtd_info *mtd)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+
+	mutex_lock(&chip->lock);
+
+	nand_select_target(chip, 0);
+	nand_power_down_op(chip);
+	nand_deselect_target(chip);
+
+	chip->suspend = 1;
+	mutex_unlock(&chip->lock);
+
+	return 0;
+}
+
+static void mxic_nand_resume(struct mtd_info *mtd)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+
+	mutex_lock(&chip->lock);
+	// toggle #CS pin to resume NAND device
+	nand_select_target(chip, 0);
+	ndelay(20);
+	nand_deselect_target(chip);
+
+	if (chip->suspend)
+		chip->suspended = 0;
+	else
+		pr_err("%s call for a chip which is not in suspended state\n",
+		       __func__);
+	mutex_unlock(&chip->lock);
+}
+
 /*
- * Macronix AC series support using SET/GET_FEATURES to change
+ * Macronix AC and AD series support using SET/GET_FEATURES to change
  * Block Protection and Unprotection.
  *
  * MTD call-back function replacement by manufacturer postponed
@@ -163,6 +227,18 @@ static void macronix_nand_post_init(struct nand_chip *chip)
 		}
 	}
 
+	for (i = 0; i < ARRAY_SIZE(nand_power_down); i++) {
+		if (!strcmp(nand_power_down[i], chip->parameters.model)) {
+			blockprotected = 1;
+			break;
+		}
+	}
+
+	if (i < ARRAY_SIZE(nand_power_down)) {
+		mtd->_suspend = mxic_nand_suspend;
+		mtd->_resume = mxic_nand_resume;
+	}
+
 	if (blockprotected && chip->parameters.supports_set_get_features) {
 		bitmap_set(chip->parameters.set_feature_list,
 			   ONFI_FEATURE_ADDR_MXIC_PROTECTION, 1);
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
