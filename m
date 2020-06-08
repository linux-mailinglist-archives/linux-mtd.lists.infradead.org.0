Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 161E71F16EF
	for <lists+linux-mtd@lfdr.de>; Mon,  8 Jun 2020 12:47:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iis6GkI5vSMZSfRihKMLniYtZcFx4BK/J7NlZmRAwtw=; b=EN3
	stoDNMu64v7A3IzEnK4ho/jPBA1ZCabZNE4/gIIATgfcpBz56YXVZ/0KkAB4JsL4BewhVzWURIrAh
	tW6laBniN2jdXcl6PKPvxnn+IGjLR6AwV+5vhB9Q4cmfEPUAoEYZnVoH7EQ7aytgwBiSFIe3STKhr
	3L1Enu4iNfqcstWo1Or8Yugpok6KEGTM91FzCF+Be+T1gcuF8F6CNiXd/Yi9yy7oxuhjcIllvByo4
	YCbZMvdb4oFfWubP1SZj7IzvNznvfe6PTHkfuUzrhqWOvoejd7uvp5Xqqhpp91tJw3oyeSCziM6Go
	2UfJuffVkGMwfbcIbe8HC4FdgHwa1qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiFJm-00020e-JJ; Mon, 08 Jun 2020 10:47:50 +0000
Received: from alexa-out-sd-01.qualcomm.com ([199.106.114.38])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiFJe-000202-UF
 for linux-mtd@lists.infradead.org; Mon, 08 Jun 2020 10:47:44 +0000
Received: from unknown (HELO ironmsg-SD-alpha.qualcomm.com) ([10.53.140.30])
 by alexa-out-sd-01.qualcomm.com with ESMTP; 08 Jun 2020 03:47:40 -0700
Received: from sivaprak-linux.qualcomm.com ([10.201.3.202])
 by ironmsg-SD-alpha.qualcomm.com with ESMTP; 08 Jun 2020 03:47:38 -0700
Received: by sivaprak-linux.qualcomm.com (Postfix, from userid 459349)
 id C4AA3217EC; Mon,  8 Jun 2020 16:17:35 +0530 (IST)
From: Sivaprakash Murugesan <sivaprak@codeaurora.org>
To: miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 peter.ujfalusi@ti.com, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] mtd: raw: qcom_nand: Fix register write error
Date: Mon,  8 Jun 2020 16:17:34 +0530
Message-Id: <1591613254-1065-1-git-send-email-sivaprak@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_034742_999740_16BA0E97 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [199.106.114.38 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Sivaprakash Murugesan <sivaprak@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

1. SFLASHC_BURST_CFG register is not available on all ipq nand platforms,
   it is available only on ipq8064 devices and the nand controller works
   without configuring these registers in this platform, so register
   write to this can be removed.

2. Once BAM mode is enabled register writes to NAND_CTRL should be
   performed through BAM command descriptors. The NAND BAM mode will
   be enabled by bootloaders. Check if BAM mode is already enabled and
   enable it only if not enabled already.

Signed-off-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
---
 drivers/mtd/nand/raw/qcom_nandc.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/raw/qcom_nandc.c b/drivers/mtd/nand/raw/qcom_nandc.c
index 5b11c70..7bfd93a 100644
--- a/drivers/mtd/nand/raw/qcom_nandc.c
+++ b/drivers/mtd/nand/raw/qcom_nandc.c
@@ -36,7 +36,6 @@
 #define	NAND_DEV_CMD1			0xa4
 #define	NAND_DEV_CMD2			0xa8
 #define	NAND_DEV_CMD_VLD		0xac
-#define	SFLASHC_BURST_CFG		0xe0
 #define	NAND_ERASED_CW_DETECT_CFG	0xe8
 #define	NAND_ERASED_CW_DETECT_STATUS	0xec
 #define	NAND_EBI2_ECC_BUF_CFG		0xf0
@@ -2774,14 +2773,20 @@ static int qcom_nandc_setup(struct qcom_nand_controller *nandc)
 	u32 nand_ctrl;
 
 	/* kill onenand */
-	nandc_write(nandc, SFLASHC_BURST_CFG, 0);
 	nandc_write(nandc, dev_cmd_reg_addr(nandc, NAND_DEV_CMD_VLD),
 		    NAND_DEV_CMD_VLD_VAL);
 
 	/* enable ADM or BAM DMA */
 	if (nandc->props->is_bam) {
 		nand_ctrl = nandc_read(nandc, NAND_CTRL);
-		nandc_write(nandc, NAND_CTRL, nand_ctrl | BAM_MODE_EN);
+		/* Once BAM_MODE_EN bit is set, writes to the NAND_CTRL
+		 * should be done through BAM command descriptors.
+		 * in most cases bootloader enables the bam mode we
+		 * need to set the BAM mode only if it is not set by
+		 * bootloader
+		 */
+		if (!(nand_ctrl & BAM_MODE_EN))
+			nandc_write(nandc, NAND_CTRL, nand_ctrl | BAM_MODE_EN);
 	} else {
 		nandc_write(nandc, NAND_FLASH_CHIP_SELECT, DM_EN);
 	}
-- 
2.7.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
