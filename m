Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0045A213C0
	for <lists+linux-mtd@lfdr.de>; Fri, 17 May 2019 08:32:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=f1xMhBPzfyhVhJ8aI/YvrpahAipOYqUsTRpqK76m6KI=; b=Cmg
	lFaade2VQETiRAnK7M2olroM4HgYkwqN1PP5vBs4gf7gqTVTmsggsKiKub1xBjfUtSTepoW4nwytP
	jrmxZ1gIPgB4eoYNakyLvqkGIWIcl+9adYLxuSYU5cFB0I4u02MOgPAcKjGVt+HnuXRKLQVRc4L3N
	rByTec2Mmu4RvWU2n1xail8wZayO7MBlXwAUMWEVoXrQZ2228WFi3eqG5OLi3u3xK76g/DUdItRHj
	6rhPQAsKUSqWc9404nW3Qt8VZcPjCoi+E80WoMszK4tAopOLTO5YvrEVeHeUIUDxNCxwzpJVVFerM
	mqXM9HYBtG0tLji2C0bRbnGZBEq4V+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRWQB-0002UQ-A0; Fri, 17 May 2019 06:32:47 +0000
Received: from [122.147.135.201] (helo=TWHMLLG3.macronix.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRWQ3-0002St-2x
 for linux-mtd@lists.infradead.org; Fri, 17 May 2019 06:32:40 +0000
Received: from localhost.localdomain ([172.17.195.96])
 by TWHMLLG3.macronix.com with ESMTP id x4H6Vf60076140;
 Fri, 17 May 2019 14:31:41 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
From: Mason Yang <masonccyang@mxic.com.tw>
To: bbrezillon@kernel.org, marek.vasut@gmail.com, linux-kernel@vger.kernel.org,
 miquel.raynal@bootlin.com, richard@nod.at, dwmw2@infradead.org,
 computersforpeace@gmail.com, linux-mtd@lists.infradead.org,
 vigneshr@ti.com, frieder.schrempf@kontron.de
Subject: [PATCH v2] mtd: rawnand: Add Macronix NAND read retry support
Date: Fri, 17 May 2019 14:53:21 +0800
Message-Id: <1558076001-29579-1-git-send-email-masonccyang@mxic.com.tw>
X-Mailer: git-send-email 1.9.1
X-MAIL: TWHMLLG3.macronix.com x4H6Vf60076140
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_233239_399106_880AFF17 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [122.147.135.201 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: juliensu@mxic.com.tw, masonccyang@mxic.com.tw, zhengxunli@mxic.com.tw
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Add support for Macronix NAND read retry.

Macronix NANDs support specific read operation for data recovery,
which can be enabled/disabled with a SET/GET_FEATURE.
Driver checks byte 167 of Vendor Blocks in ONFI parameter page table
to see if this high-reliability function is supported.

Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
---
 drivers/mtd/nand/raw/nand_macronix.c | 57 ++++++++++++++++++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/drivers/mtd/nand/raw/nand_macronix.c b/drivers/mtd/nand/raw/nand_macronix.c
index e287e71..1a4dc92 100644
--- a/drivers/mtd/nand/raw/nand_macronix.c
+++ b/drivers/mtd/nand/raw/nand_macronix.c
@@ -17,6 +17,62 @@
 
 #include "internals.h"
 
+#define MACRONIX_READ_RETRY_BIT BIT(0)
+#define MACRONIX_READ_RETRY_MODE 6
+
+struct nand_onfi_vendor_macronix {
+	u8 reserved[1];
+	u8 reliability_func;
+} __packed;
+
+/*
+ * Macronix NANDs support using SET/GET_FEATURES to enter/exit read retry mode
+ */
+static int macronix_nand_setup_read_retry(struct nand_chip *chip, int mode)
+{
+	u8 feature[ONFI_SUBFEATURE_PARAM_LEN];
+	int ret, feature_addr = ONFI_FEATURE_ADDR_READ_RETRY;
+
+	if (chip->parameters.supports_set_get_features &&
+	    test_bit(feature_addr, chip->parameters.set_feature_list) &&
+	    test_bit(feature_addr, chip->parameters.get_feature_list)) {
+		feature[0] = mode;
+		ret =  nand_set_features(chip, feature_addr, feature);
+		if (ret)
+			pr_err("Failed to set read retry moded:%d\n", mode);
+
+		ret =  nand_get_features(chip, feature_addr, feature);
+		if (ret || feature[0] != mode)
+			pr_err("Failed to verify read retry moded:%d(%d)\n",
+			       mode, feature[0]);
+	}
+
+	return ret;
+}
+
+static void macronix_nand_onfi_init(struct nand_chip *chip)
+{
+	struct nand_parameters *p = &chip->parameters;
+	struct nand_onfi_vendor_macronix *mxic;
+
+	if (!p->onfi)
+		return;
+
+	mxic = (struct nand_onfi_vendor_macronix *)p->onfi->vendor;
+	if ((mxic->reliability_func & MACRONIX_READ_RETRY_BIT) == 0)
+		return;
+
+	chip->read_retries = MACRONIX_READ_RETRY_MODE;
+	chip->setup_read_retry = macronix_nand_setup_read_retry;
+
+	if (p->supports_set_get_features) {
+		bitmap_set(p->set_feature_list,
+			   ONFI_FEATURE_ADDR_READ_RETRY, 1);
+		bitmap_set(p->get_feature_list,
+			   ONFI_FEATURE_ADDR_READ_RETRY, 1);
+	}
+}
+
 /*
  * Macronix AC series does not support using SET/GET_FEATURES to change
  * the timings unlike what is declared in the parameter page. Unflag
@@ -65,6 +121,7 @@ static int macronix_nand_init(struct nand_chip *chip)
 		chip->options |= NAND_BBM_FIRSTPAGE | NAND_BBM_SECONDPAGE;
 
 	macronix_nand_fix_broken_get_timings(chip);
+	macronix_nand_onfi_init(chip);
 
 	return 0;
 }
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
