Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3263A1F7429
	for <lists+linux-mtd@lfdr.de>; Fri, 12 Jun 2020 08:50:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=un4fRh5h16LueGXNCPYL8D/bbeYdy8SVaUG/vWhYZoE=; b=cCvDuzpEteiolzGPWLIab978e7
	Pk32rvx9wtoeNOq11qslQtp0XUTFTi2nJV0cFgaAHDafzi9iAsfMwXie5KOoZPhc67AjVnE2QExVA
	31JnGG9cntEbv2KlglKqebuUuPr/dRDsh3bvW1pzn1NeGe+nYLrGUPo8igAMXtlNtJ34cBf1ZaEGn
	XgSiV0+sNqD5kX1ke8dgviHICf9E2ZI1VmgjKswAefs7VSDKXw/okl/v0YYPJo/OOX6hO+awAFEZt
	ju1fWtBp+qkV17X15RxygRKtQH53xW4EL0ynsoWGc9+UB9awzQSHYp99Y7ypdASWJV2mYwBJgrAfK
	WhxMINmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjdWE-00017P-Hh; Fri, 12 Jun 2020 06:50:26 +0000
Received: from alexa-out-sd-01.qualcomm.com ([199.106.114.38])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjdVq-0006qY-A2
 for linux-mtd@lists.infradead.org; Fri, 12 Jun 2020 06:50:03 +0000
Received: from unknown (HELO ironmsg05-sd.qualcomm.com) ([10.53.140.145])
 by alexa-out-sd-01.qualcomm.com with ESMTP; 11 Jun 2020 23:50:00 -0700
Received: from sivaprak-linux.qualcomm.com ([10.201.3.202])
 by ironmsg05-sd.qualcomm.com with ESMTP; 11 Jun 2020 23:49:57 -0700
Received: by sivaprak-linux.qualcomm.com (Postfix, from userid 459349)
 id 7EED821876; Fri, 12 Jun 2020 12:19:55 +0530 (IST)
From: Sivaprakash Murugesan <sivaprak@codeaurora.org>
To: miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 peter.ujfalusi@ti.com, sivaprak@codeaurora.org,
 boris.brezillon@collabora.com, architt@codeaurora.org,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V3 1/2] mtd: rawnand: qcom: avoid write to unavailable register
Date: Fri, 12 Jun 2020 12:19:48 +0530
Message-Id: <1591944589-14357-2-git-send-email-sivaprak@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591944589-14357-1-git-send-email-sivaprak@codeaurora.org>
References: <1591944589-14357-1-git-send-email-sivaprak@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_235002_413629_EBD4136B 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [199.106.114.38 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SFLASHC_BURST_CFG is only available on older ipq nand platforms, this
register has been removed when the NAND controller is moved as part of qpic
controller.

avoid register writes to this register on devices which are based on qpic
NAND controllers.

Fixes: a0637834 (mtd: nand: qcom: support for IPQ4019 QPIC NANDcontroller)
Fixes: dce84760 (mtd: nand: qcom: Support for IPQ8074 QPIC NAND controller)
Cc: stable@vger.kernel.org
Signed-off-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
---
[V3]
 * Addressed Miquel comments, added flag based on nand controller hw
   to avoid the register writes to specific ipq platforms
 drivers/mtd/nand/raw/qcom_nandc.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/qcom_nandc.c b/drivers/mtd/nand/raw/qcom_nandc.c
index f1daf33..e0c55bb 100644
--- a/drivers/mtd/nand/raw/qcom_nandc.c
+++ b/drivers/mtd/nand/raw/qcom_nandc.c
@@ -459,11 +459,13 @@ struct qcom_nand_host {
  * among different NAND controllers.
  * @ecc_modes - ecc mode for NAND
  * @is_bam - whether NAND controller is using BAM
+ * @is_qpic - whether NAND CTRL is part of qpic IP
  * @dev_cmd_reg_start - NAND_DEV_CMD_* registers starting offset
  */
 struct qcom_nandc_props {
 	u32 ecc_modes;
 	bool is_bam;
+	bool is_qpic;
 	u32 dev_cmd_reg_start;
 };
 
@@ -2774,7 +2776,8 @@ static int qcom_nandc_setup(struct qcom_nand_controller *nandc)
 	u32 nand_ctrl;
 
 	/* kill onenand */
-	nandc_write(nandc, SFLASHC_BURST_CFG, 0);
+	if (!nandc->props->is_qpic)
+		nandc_write(nandc, SFLASHC_BURST_CFG, 0);
 	nandc_write(nandc, dev_cmd_reg_addr(nandc, NAND_DEV_CMD_VLD),
 		    NAND_DEV_CMD_VLD_VAL);
 
@@ -3029,18 +3032,21 @@ static int qcom_nandc_remove(struct platform_device *pdev)
 static const struct qcom_nandc_props ipq806x_nandc_props = {
 	.ecc_modes = (ECC_RS_4BIT | ECC_BCH_8BIT),
 	.is_bam = false,
+	.is_qpic = false,
 	.dev_cmd_reg_start = 0x0,
 };
 
 static const struct qcom_nandc_props ipq4019_nandc_props = {
 	.ecc_modes = (ECC_BCH_4BIT | ECC_BCH_8BIT),
 	.is_bam = true,
+	.is_qpic = true,
 	.dev_cmd_reg_start = 0x0,
 };
 
 static const struct qcom_nandc_props ipq8074_nandc_props = {
 	.ecc_modes = (ECC_BCH_4BIT | ECC_BCH_8BIT),
 	.is_bam = true,
+	.is_qpic = true,
 	.dev_cmd_reg_start = 0x7000,
 };
 
-- 
2.7.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
