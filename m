Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ADE01DB53B
	for <lists+linux-mtd@lfdr.de>; Wed, 20 May 2020 15:39:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lamzOboIZLixhL4YEOjHYxFtEBAauwgp9G/XLprNTsQ=; b=e45w3xyyVBBJ3Y
	AiM8b884SmIoXh2zqBoKF6jaGtu/Yp1VPHWw0itivLiHWmEmoC25cus0nz/nbdrUmGb5QmB98EpS4
	uZh7FJHpHopi4gUxgBs1T8HtJfHgBgiyTl1UZWuGDZgDwbYg+03zY6Dlks5/TplfBTysxrulfsnfN
	hwYF9DRkOqNWKWXaRahO4o0pJOWt+3je0aeSVJTj8fz7LTLMViPXyMooCxT7Fxiv7UovbGQ/a0e6N
	PblIPWzoy2JXuW48kajeYb703oaKRKT1VjzCNfXrmeNg5mhg/rfmh3Q/pvb1HwijKR3ujjya+Y7Dq
	oQbOVpORpuQ4F2BEFxBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbOwH-0008Lu-BM; Wed, 20 May 2020 13:39:17 +0000
Received: from smtp1.axis.com ([195.60.68.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbOw8-0008L1-Nm
 for linux-mtd@lists.infradead.org; Wed, 20 May 2020 13:39:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=axis.com; l=2928; q=dns/txt; s=axis-central1;
 t=1589981949; x=1621517949;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=tQIob49oErWJNjeZ07jZd7MI+DFwy7ZMLrme+zWlXKM=;
 b=ISibGjTKfHVtrxyuN44BachJ3ndP6iLQmY/Bcehbizv4t/Xvt+bw2oyN
 O56HT176yFl3+yCfxcCd5VLVcTU7EFR6yxyTmXINWdwZH4wpu9/N4PfgH
 ZgPaLAG7yqnSu3q1TDuXr+hVSx0PCQ4Kq9ySUcykJuSUvZPZYEgmhe+fB
 ZDf1cQ3x7eNBkdrY1cuR+ze/83wB/T5ESexc2xWZ2zVPP3BBmsI5VJBLT
 QM7aFdY2oS67ra0Z8hXVmfL1Ki1td4jKFLYyv+f0uSKMJw3/opRv0RCVA
 OUnYbwc+jfOWTu7/nUMuFG6P0Gbh3kgYEGJAvLM9d+rOqCmKaIY1CZgPp g==;
IronPort-SDR: Dt2IuQ2K+7ocdVezmP/K47R3V2l3BeJYVM6m8FMvFJBRe+yfA0T46qenj8u3wVqpD7hw8zVRv4
 YF/xAyvmIQ05tndulYiHoF6AVQmsTr+E698yRGDkDS1KZOEzMvNwC/YhIJHA+IaqVfyQgYdBBb
 H0E+0G2L9uPPgLbraMVmA6y2dktfP0Vp5qabNrjSojf7yP+RgxrIfFNeIvJ2GVkpQ910KX7CZS
 aQexvjJ4bJ3aRtAv6swvVvCcLQU8jwVMUXjWxKorTmr35kZnesALJWwbiNUC3iDqTBBfzOiEZ/
 eUU=
X-IronPort-AV: E=Sophos;i="5.73,414,1583190000"; 
   d="scan'208";a="8924573"
From: Rickard Andersson <rickaran@axis.com>
To: <miquel.raynal@bootlin.com>, <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 1/2] mtd: rawnand: Add a helper for testing data interface
Date: Wed, 20 May 2020 15:38:53 +0200
Message-ID: <20200520133854.25241-1-rickaran@axis.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
X-Originating-IP: [10.0.5.60]
X-ClientProxiedBy: XBOX03.axis.com (10.0.5.17) To XBOX02.axis.com (10.0.5.16)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_063909_114091_71112EAD 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.60.68.17 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: rickaran@axis.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Rickard x Andersson <rickaran@axis.com>

This helper tests the current data interface timings. If
the controller does not accept the timings then the timings
are erased and onfi mode 0 timings are chosen at a later
stage.

Signed-off-by: Rickard x Andersson <rickaran@axis.com>
---
 drivers/mtd/nand/raw/internals.h |  1 +
 drivers/mtd/nand/raw/nand_base.c | 38 ++++++++++++++++++++++++++++----------
 2 files changed, 29 insertions(+), 10 deletions(-)

diff --git a/drivers/mtd/nand/raw/internals.h b/drivers/mtd/nand/raw/internals.h
index 615677820338..7df0a8e674cb 100644
--- a/drivers/mtd/nand/raw/internals.h
+++ b/drivers/mtd/nand/raw/internals.h
@@ -100,6 +100,7 @@ int nand_read_param_page_op(struct nand_chip *chip, u8 page, void *buf,
 void nand_decode_ext_id(struct nand_chip *chip);
 void panic_nand_wait(struct nand_chip *chip, unsigned long timeo);
 void sanitize_string(uint8_t *s, size_t len);
+int nand_test_data_interface(struct nand_chip *chip);
 
 static inline bool nand_has_exec_op(struct nand_chip *chip)
 {
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index c42cbeb7e446..29e7be3811e7 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -956,6 +956,32 @@ static int nand_setup_data_interface(struct nand_chip *chip, int chipnr)
 }
 
 /**
+ * nand_test_data_interface - Check if controller can handle the current
+ * timings. Clear timings if not usable.
+ *
+ * @chip: The NAND chip
+ */
+int nand_test_data_interface(struct nand_chip *chip)
+{
+	int ret;
+	/*
+	 * Pass NAND_DATA_IFACE_CHECK_ONLY to only check if the
+	 * controller supports the requested timings.
+	 */
+	ret = chip->controller->ops->setup_data_interface(chip,
+						 NAND_DATA_IFACE_CHECK_ONLY,
+						 &chip->data_interface);
+
+	if (ret) {
+		/* The provided data interface timings did not work */
+		memset(&chip->data_interface, 0,
+		       sizeof(struct nand_data_interface));
+	}
+
+	return ret;
+}
+
+/**
  * nand_choose_data_interface - find the best data interface and timings
  * @chip: The NAND chip
  *
@@ -994,9 +1020,6 @@ static int nand_choose_data_interface(struct nand_chip *chip)
 	if (chip->parameters.onfi) {
 		modes = chip->parameters.onfi->async_timing_mode;
 	} else {
-		if (!chip->default_timing_mode)
-			return 0;
-
 		modes = GENMASK(chip->default_timing_mode, 0);
 	}
 
@@ -1005,13 +1028,8 @@ static int nand_choose_data_interface(struct nand_chip *chip)
 		if (ret)
 			continue;
 
-		/*
-		 * Pass NAND_DATA_IFACE_CHECK_ONLY to only check if the
-		 * controller supports the requested timings.
-		 */
-		ret = chip->controller->ops->setup_data_interface(chip,
-						 NAND_DATA_IFACE_CHECK_ONLY,
-						 &chip->data_interface);
+		/* Check if the controller supports the requested timings. */
+		ret = nand_test_data_interface(chip);
 		if (!ret) {
 			chip->default_timing_mode = mode;
 			break;
-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
