Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75288198E3
	for <lists+linux-mtd@lfdr.de>; Fri, 10 May 2019 09:20:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0TJs2PUYY2+03jYFRJMIt/QbB5bv9OLs7W5cLVQklIg=; b=I14
	s7q/PBVK8IWElAnIBqQHuIU/7qGeJB4ckWRcK4GqyoQUnSeTcIlPk/7mlPb4ot3TaRVuzAthzBeEC
	3RDtgXg8bApNqg7+8pOb+1bn9oGzMFqDwJ2rZXxgpT17wG1osLJmJHIVUxPgAmn54+4Xbx51W1PJ4
	76ydGfhyOPaqCfOaLU6DIY21pOylwfD6VDplHLWKrvT6wXWHOY4MJQm+p+3yfChBMXbjnFxD06Ugk
	jcbzJyNV4iXVYloE7C5Gtl0WitF4lsnmOqk/G4TQXCnP/RMFGjKmdCO/1yoVUnZ6cUs/YN9HsZ8qQ
	wt2kpryjBkFIW8oAzKaM1fYDn5Lvvbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOzpE-0004Bl-4W; Fri, 10 May 2019 07:20:12 +0000
Received: from twhmllg4.macronix.com ([122.147.135.202])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOzp6-000386-HZ
 for linux-mtd@lists.infradead.org; Fri, 10 May 2019 07:20:06 +0000
Received: from localhost.localdomain ([172.17.195.96])
 by TWHMLLG4.macronix.com with ESMTP id x4A7JHt6076937;
 Fri, 10 May 2019 15:19:17 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
From: Mason Yang <masonccyang@mxic.com.tw>
To: bbrezillon@kernel.org, marek.vasut@gmail.com, linux-kernel@vger.kernel.org,
 miquel.raynal@bootlin.com, richard@nod.at, dwmw2@infradead.org,
 computersforpeace@gmail.com, linux-mtd@lists.infradead.org
Subject: [PATCH v1] mtd: rawnand: Add Macronix NAND read retry support
Date: Fri, 10 May 2019 15:41:02 +0800
Message-Id: <1557474062-4949-1-git-send-email-masonccyang@mxic.com.tw>
X-Mailer: git-send-email 1.9.1
X-MAIL: TWHMLLG4.macronix.com x4A7JHt6076937
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_002004_855455_2DFC986D 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [122.147.135.202 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: juliensu@mxic.com.tw, masonccyang@mxic.com.tw
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Add a driver for Macronix NAND read retry.

Macronix NAND supports specfical read for data recovery and enabled
it by Set Feature.
Driver check byte 167 of Vendor Blocks in ONFI parameter page table
to see if this high reliability function is support or not.

Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
---
 drivers/mtd/nand/raw/nand_macronix.c | 52 ++++++++++++++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/drivers/mtd/nand/raw/nand_macronix.c b/drivers/mtd/nand/raw/nand_macronix.c
index 47d8cda..5cd1e5f 100644
--- a/drivers/mtd/nand/raw/nand_macronix.c
+++ b/drivers/mtd/nand/raw/nand_macronix.c
@@ -17,6 +17,57 @@
 
 #include "internals.h"
 
+#define MACRONIX_READ_RETRY_BIT BIT(0)
+#define MACRONIX_READ_RETRY_MODE 5
+
+struct nand_onfi_vendor_macronix {
+	u8 reserved[1];
+	u8 reliability_func;
+} __packed;
+
+static int macronix_nand_setup_read_retry(struct nand_chip *chip, int mode)
+{
+	u8 feature[ONFI_SUBFEATURE_PARAM_LEN] = {0};
+	int ret;
+
+	if (mode > MACRONIX_READ_RETRY_MODE)
+		mode = MACRONIX_READ_RETRY_MODE;
+
+	feature[0] = mode;
+	ret =  nand_set_features(chip, ONFI_FEATURE_ADDR_READ_RETRY, feature);
+	if (ret)
+		pr_err("set feature failed to read retry moded:%d\n", mode);
+
+	ret =  nand_get_features(chip, ONFI_FEATURE_ADDR_READ_RETRY, feature);
+	if (ret || feature[0] != mode)
+		pr_err("get feature failed to read retry moded:%d(%d)\n",
+		       mode, feature[0]);
+
+	return ret;
+}
+
+static void macronix_nand_onfi_init(struct nand_chip *chip)
+{
+	struct nand_parameters *p = &chip->parameters;
+
+	if (p->onfi) {
+		struct nand_onfi_vendor_macronix *mxic =
+				(void *)p->onfi->vendor;
+
+		if (mxic->reliability_func & MACRONIX_READ_RETRY_BIT) {
+			chip->read_retries = MACRONIX_READ_RETRY_MODE + 1;
+			chip->setup_read_retry =
+				 macronix_nand_setup_read_retry;
+			if (p->supports_set_get_features) {
+				set_bit(ONFI_FEATURE_ADDR_READ_RETRY,
+					p->set_feature_list);
+				set_bit(ONFI_FEATURE_ADDR_READ_RETRY,
+					p->get_feature_list);
+			}
+		}
+	}
+}
+
 /*
  * Macronix AC series does not support using SET/GET_FEATURES to change
  * the timings unlike what is declared in the parameter page. Unflag
@@ -65,6 +116,7 @@ static int macronix_nand_init(struct nand_chip *chip)
 		chip->bbt_options |= NAND_BBT_SCAN2NDPAGE;
 
 	macronix_nand_fix_broken_get_timings(chip);
+	macronix_nand_onfi_init(chip);
 
 	return 0;
 }
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
