Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B368E2AE5
	for <lists+linux-mtd@lfdr.de>; Thu, 24 Oct 2019 09:15:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=td4FTC2xjzh7J+raHEYR78e43bqBXcEnuPi2GiVB5+E=; b=N01vCJTfHnODEBQTku8EZfkkVZ
	+lTJmDLQD/OBQT+QdwOpzQDO/XWYrXes+zwLik0jJ8rxBKy29+0k3/fUGD0LeYb3gewdjU1w1t+28
	Br+pQg5pwwao0dBivJZIuNHeLKV1HMER+5zQJSkt/FHfzqbyPabhYoTNyXSk7WovmhwcKTQUJmeEs
	dslRw/EZK43/HB2EUTOLITXC2qZWRsr2b9sSXf+x6833KoOXr9Jq8EhDgJXVEXYcx8wFbLd0DDMqU
	HPPNi4EEBdMMWw96eGKkFOm6V/FmgFuoXV/+yCa/jaXQ0j0HWW5HnASR2YYNdEY9pvXPaVm4sIHMH
	/6W2WoTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNXLV-0003mT-1x; Thu, 24 Oct 2019 07:15:45 +0000
Received: from twhmllg4.macronix.com ([122.147.135.202])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNXKw-0002AN-9B
 for linux-mtd@lists.infradead.org; Thu, 24 Oct 2019 07:15:13 +0000
Received: from localhost.localdomain ([172.17.195.96])
 by TWHMLLG4.macronix.com with ESMTP id x9O7E52v080302;
 Thu, 24 Oct 2019 15:14:06 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
From: Mason Yang <masonccyang@mxic.com.tw>
To: miquel.raynal@bootlin.com, richard@nod.at, marek.vasut@gmail.com,
 dwmw2@infradead.org, bbrezillon@kernel.org,
 computersforpeace@gmail.com, vigneshr@ti.com, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH v4 1/2] mtd: rawnand: Add support for Macronix NAND randomizer
Date: Thu, 24 Oct 2019 15:40:06 +0800
Message-Id: <1571902807-10388-2-git-send-email-masonccyang@mxic.com.tw>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1571902807-10388-1-git-send-email-masonccyang@mxic.com.tw>
References: <1571902807-10388-1-git-send-email-masonccyang@mxic.com.tw>
X-MAIL: TWHMLLG4.macronix.com x9O7E52v080302
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_001510_595076_DABD2670 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [122.147.135.202 listed in list.dnswl.org]
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
Cc: juliensu@mxic.com.tw, devicetree@vger.kernel.org, masonccyang@mxic.com.tw,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Macronix NANDs support randomizer operation for user data scrambled,
which can be enabled with a SET_FEATURE.

User data written to the NAND device without randomizer is still readable
after randomizer function enabled.
The penalty of randomizer are subpage accesses prohibited and more time
period is needed in program operation and entering deep power-down mode.
i.e., tPROG 300us to 340us(randomizer enabled)

For more high-reliability concern, if subpage write not available with
hardware ECC and then to enable randomizer is recommended by default.
Driver checks byte 167 of Vendor Blocks in ONFI parameter page table
to see if this high-reliability function is supported. By adding a new
specific DT property in children nodes to enable randomizer function.

Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
---
 drivers/mtd/nand/raw/nand_macronix.c | 69 ++++++++++++++++++++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/drivers/mtd/nand/raw/nand_macronix.c b/drivers/mtd/nand/raw/nand_macronix.c
index 58511ae..89101fa 100644
--- a/drivers/mtd/nand/raw/nand_macronix.c
+++ b/drivers/mtd/nand/raw/nand_macronix.c
@@ -11,6 +11,14 @@
 #define MACRONIX_READ_RETRY_BIT BIT(0)
 #define MACRONIX_NUM_READ_RETRY_MODES 6
 
+#define MACRONIX_RANDOMIZER_BIT BIT(1)
+#define ONFI_FEATURE_ADDR_MXIC_RANDOMIZER 0xB0
+#define ENPGM BIT(0)
+#define RANDEN BIT(1)
+#define RANDOPT BIT(2)
+#define MACRONIX_RANDOMIZER_MODE_ENTER (ENPGM | RANDEN | RANDOPT)
+#define MACRONIX_RANDOMIZER_MODE_EXIT (RANDEN | RANDOPT)
+
 struct nand_onfi_vendor_macronix {
 	u8 reserved;
 	u8 reliability_func;
@@ -29,15 +37,76 @@ static int macronix_nand_setup_read_retry(struct nand_chip *chip, int mode)
 	return nand_set_features(chip, ONFI_FEATURE_ADDR_READ_RETRY, feature);
 }
 
+static int macronix_nand_randomizer_check_enable(struct nand_chip *chip)
+{
+	u8 feature[ONFI_SUBFEATURE_PARAM_LEN];
+	int ret;
+
+	ret = nand_get_features(chip, ONFI_FEATURE_ADDR_MXIC_RANDOMIZER,
+				feature);
+	if (ret < 0)
+		return ret;
+
+	if (feature[0])
+		return feature[0];
+
+	feature[0] = MACRONIX_RANDOMIZER_MODE_ENTER;
+	ret = nand_set_features(chip, ONFI_FEATURE_ADDR_MXIC_RANDOMIZER,
+				feature);
+	if (ret < 0)
+		return ret;
+
+	/* RANDEN and RANDOPT OTP bits are programmed */
+	feature[0] = 0x0;
+	ret = nand_prog_page_op(chip, 0, 0, feature, 1);
+	if (ret < 0)
+		return ret;
+
+	ret = nand_get_features(chip, ONFI_FEATURE_ADDR_MXIC_RANDOMIZER,
+				feature);
+	if (ret < 0)
+		return ret;
+
+	feature[0] &= MACRONIX_RANDOMIZER_MODE_EXIT;
+	ret = nand_set_features(chip, ONFI_FEATURE_ADDR_MXIC_RANDOMIZER,
+				feature);
+	if (ret < 0)
+		return ret;
+
+	return feature[0];
+}
+
 static void macronix_nand_onfi_init(struct nand_chip *chip)
 {
 	struct nand_parameters *p = &chip->parameters;
 	struct nand_onfi_vendor_macronix *mxic;
+	struct device_node *dn = nand_get_flash_node(chip);
+	int rand_otp = 0;
+	int ret;
 
 	if (!p->onfi)
 		return;
 
+	if (of_find_property(dn, "mxic,enable-randomizer-otp", NULL))
+		rand_otp = 1;
+
 	mxic = (struct nand_onfi_vendor_macronix *)p->onfi->vendor;
+	/* Subpage write is prohibited in randomizer operatoin */
+	if (rand_otp && chip->options & NAND_NO_SUBPAGE_WRITE &&
+	    mxic->reliability_func & MACRONIX_RANDOMIZER_BIT) {
+		if (p->supports_set_get_features) {
+			bitmap_set(p->set_feature_list,
+				   ONFI_FEATURE_ADDR_MXIC_RANDOMIZER, 1);
+			bitmap_set(p->get_feature_list,
+				   ONFI_FEATURE_ADDR_MXIC_RANDOMIZER, 1);
+			ret = macronix_nand_randomizer_check_enable(chip);
+			if (ret < 0)
+				pr_info("Macronix NAND randomizer failed\n");
+			else
+				pr_info("Macronix NAND randomizer enabled\n");
+		}
+	}
+
 	if ((mxic->reliability_func & MACRONIX_READ_RETRY_BIT) == 0)
 		return;
 
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
