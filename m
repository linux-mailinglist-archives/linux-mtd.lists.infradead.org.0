Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C625C1D37FC
	for <lists+linux-mtd@lfdr.de>; Thu, 14 May 2020 19:24:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vfL1knVi4MiTwMCCNQQSyaBxTlrN3yTF8Fxxo62wAAg=; b=L3GcEFyra/+P19
	MRDzF5hRlg0UdGKdKiOpX1DkV/z7Dnk9oyxEZMzYOh/Urr5MuPYRnbJyzN3fLymMlqiHJBgbvllfZ
	opJKLAGNIHGaSbCPuGtLJWxukO1llRzXG79Gg/XPh0XY8bt+qlh83SJh2USMzjq51bjhyWG/Po9e8
	poI17XOZlhlym0eHcRN4UfK7e0UqTMr5qDxbldtAqO7FwOB34LsSpeyQkd9O7NVtiWjdmt1BsrPCB
	iNL6QFNwi90ZGsu1KQjdgJ/HFM5TVf1vC6K5ed2lo3kByurPUK0bsNse4gyOXJhaDVr5MEKA7euZu
	cUt0c8dvHeNN8dggFsKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZHaW-0005vY-EE; Thu, 14 May 2020 17:24:04 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZHTv-00059B-9T; Thu, 14 May 2020 17:17:16 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 302E924000B;
 Thu, 14 May 2020 17:17:12 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Subject: [PATCH v5 09/21] mtd: rawnand: Create a new enumeration to describe
 properly ECC types
Date: Thu, 14 May 2020 19:16:39 +0200
Message-Id: <20200514171651.24851-10-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200514171651.24851-1-miquel.raynal@bootlin.com>
References: <20200514171651.24851-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_101715_487950_074F7FD4 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: Tudor Ambarus <tudor.ambarus@microchip.com>,
 Julien Su <juliensu@mxic.com.tw>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, Chuanhong Guo <gch981213@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Now that the misleading mix between ECC engine type and OOB placement
has been addressed, add a new enumeration to properly define ECC types
(also called provider or mode).

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/nand_base.c |  7 +++++++
 include/linux/mtd/rawnand.h      | 16 ++++++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 48529c21239c..7e5a86fa38ee 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -4967,6 +4967,13 @@ static const char * const nand_ecc_modes[] = {
 	[NAND_ECC_ON_DIE]	= "on-die",
 };
 
+static const char * const nand_ecc_engine_providers[] = {
+	[NAND_ECC_ENGINE_NONE] = "none",
+	[NAND_ECC_ENGINE_SOFT] = "soft",
+	[NAND_ECC_ENGINE_CONTROLLER] = "hw",
+	[NAND_ECC_ENGINE_ON_DIE] = "on-die",
+};
+
 static const char * const nand_ecc_placement[] = {
 	[NAND_ECC_PLACEMENT_INTERLEAVED] = "interleaved",
 };
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 59021ceb9b00..0c2cfe4a5928 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -92,6 +92,22 @@ enum nand_ecc_mode {
 	NAND_ECC_ON_DIE,
 };
 
+/**
+ * enum nand_ecc_engine_type - NAND ECC engine type/provider
+ * @NAND_ECC_ENGINE_INVALID: Invalid value
+ * @NAND_ECC_ENGINE_NONE: No ECC correction
+ * @NAND_ECC_ENGINE_SOFT: Software ECC correction
+ * @NAND_ECC_ENGINE_CONTROLLER: Hardware controller ECC correction
+ * @NAND_ECC_ENGINE_ON_DIE: On chip hardware ECC correction
+ */
+enum nand_ecc_engine_type {
+	NAND_ECC_ENGINE_INVALID,
+	NAND_ECC_ENGINE_NONE,
+	NAND_ECC_ENGINE_SOFT,
+	NAND_ECC_ENGINE_CONTROLLER,
+	NAND_ECC_ENGINE_ON_DIE,
+};
+
 /**
  * enum nand_ecc_placement - NAND ECC placement
  * @NAND_ECC_PLACEMENT_FREE: The driver can decide where to put ECC bytes.
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
