Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26449B5E25
	for <lists+linux-mtd@lfdr.de>; Wed, 18 Sep 2019 09:33:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=53ldT00awGdS2W10koTICNCB/wZpy9RzOyTevbKOyBU=; b=BQO
	LW9jyhZGeZ5Pwl/1AWyD2K5QXkQL8OrN0edKepJxgSPmlIqSdWOD5Q9oco3fFYf3nogNMwiAnySMj
	bZk+Tq1oorGNuysXoc2kU7y3PuM/gSRmzys8W3kBwEGRJG2USnD/bUHRg7ZdwX4jrkNO++5yl0g6x
	iUHnfU7zbPTMm0Jr795kCanqFL5l8WIeIaguTfVVUJuC2pJ0nD5lyB5cLsSCTts17vnAUxkEQ0VEQ
	7GeFnsD/LQe4ASoGLzI65ixeP7eHWR0tM5o8JpT1Pqgd1HPr1vaapPEztFvDrrpc5b70nbuUgdzEe
	MvjBc3zMd0uSDEy4RNtSlA5Pmk/PEdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAUT0-0001Za-9s; Wed, 18 Sep 2019 07:33:34 +0000
Received: from twhmllg3.macronix.com ([122.147.135.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUSg-0001Xh-0s
 for linux-mtd@lists.infradead.org; Wed, 18 Sep 2019 07:33:15 +0000
Received: from localhost.localdomain ([172.17.195.96])
 by TWHMLLG3.macronix.com with ESMTP id x8I7VoOd060926;
 Wed, 18 Sep 2019 15:31:50 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
From: Mason Yang <masonccyang@mxic.com.tw>
To: miquel.raynal@bootlin.com, richard@nod.at, marek.vasut@gmail.com,
 dwmw2@infradead.org, bbrezillon@kernel.org,
 computersforpeace@gmail.com, vigneshr@ti.com
Subject: [PATCH RFC 1/3] mtd: rawnand: Add support manufacturer postponed
 initialization
Date: Wed, 18 Sep 2019 15:56:24 +0800
Message-Id: <1568793387-25199-1-git-send-email-masonccyang@mxic.com.tw>
X-Mailer: git-send-email 1.9.1
X-MAIL: TWHMLLG3.macronix.com x8I7VoOd060926
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_003314_337661_CD6C5116 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
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

Manufacturer postponed initialization is for MTD default call-back
function replacement for vendor soecific operation, i.e.,
_lock/_unlock, _suspend/_resume and so on.

Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
---
 drivers/mtd/nand/raw/internals.h |  4 ++++
 drivers/mtd/nand/raw/nand_base.c | 19 +++++++++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/drivers/mtd/nand/raw/internals.h b/drivers/mtd/nand/raw/internals.h
index cba6fe7..505dd46 100644
--- a/drivers/mtd/nand/raw/internals.h
+++ b/drivers/mtd/nand/raw/internals.h
@@ -42,6 +42,9 @@
  *	     is here to let vendor specific code release those resources.
  * @fixup_onfi_param_page: apply vendor specific fixups to the ONFI parameter
  *			   page. This is called after the checksum is verified.
+ * @post_init: postponed initialization is for MTD default call-back function
+ *	       replacement for vendor specific operation i.e., _lock/_unlock,
+ *	       _suspend/_resume and so on.
  */
 struct nand_manufacturer_ops {
 	void (*detect)(struct nand_chip *chip);
@@ -49,6 +52,7 @@ struct nand_manufacturer_ops {
 	void (*cleanup)(struct nand_chip *chip);
 	void (*fixup_onfi_param_page)(struct nand_chip *chip,
 				      struct nand_onfi_params *p);
+	void (*post_init)(struct nand_chip *chip);
 };
 
 /**
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 91f046d..7835b81 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -4619,6 +4619,21 @@ static int nand_manufacturer_init(struct nand_chip *chip)
 }
 
 /*
+ * Manufacturer postponed initialization. This function is called for all NANDs
+ * whose MTD default call-back function replacement is needed.
+ * Manufacturer drivers should put all their specific postponed initialization
+ * code in their ->post_init() hook.
+ */
+static void nand_manufacturer_post_init(struct nand_chip *chip)
+{
+	if (!chip->manufacturer.desc || !chip->manufacturer.desc->ops ||
+	    !chip->manufacturer.desc->ops->post_init)
+		return;
+
+	return chip->manufacturer.desc->ops->post_init(chip);
+}
+
+/*
  * Manufacturer cleanup. This function is called for all NANDs including
  * ONFI and JEDEC compliant ones.
  * Manufacturer drivers should put all their specific cleanup code in their
@@ -5812,6 +5827,10 @@ static int nand_scan_tail(struct nand_chip *chip)
 			goto err_nanddev_cleanup;
 	}
 
+	nand_select_target(chip, 0);
+	nand_manufacturer_post_init(chip);
+	nand_deselect_target(chip);
+
 	/* Check, if we should skip the bad block table scan */
 	if (chip->options & NAND_SKIP_BBTSCAN)
 		return 0;
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
