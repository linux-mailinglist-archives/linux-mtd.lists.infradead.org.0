Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F0AF4626
	for <lists+linux-mtd@lfdr.de>; Fri,  8 Nov 2019 12:40:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OhS6FX63j/1KjpzisDafjx3j1Jq6H+MA2dPBMKcmqzY=; b=aGK+6Jv6SLKWi8
	Y05TcdVLgWRj2KqkU4JwibdTwSoH9Q8KvAQ4sds6BVp2hJNvustDaO0HTr5yy1l5cxb0CfcgeW0N+
	qIDXD6c+7f8ld6b0kFblfIsByIHvrO7BOdZj6RmcSJ0jPz+hTTfkHGQYvm5m942ZTb3AS3Dz7EI7c
	dkgglhcdFrDN0GEPZmO91nCnitj981oUlaHAbgpcfR93hNpLf146Np5tDOr8kv+aIO5DmVeYxQicd
	Q57BP5RG2pLBULp8996dPI/AFmMhz4/MmC/z1PRQaVkNeAdQUTiBJastcYzNrd/dS69VyysD3RfVX
	fgvQE2n++zdwSW5GWYjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT2cz-0000sx-UG; Fri, 08 Nov 2019 11:40:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT2cP-0007jM-ID
 for linux-mtd@lists.infradead.org; Fri, 08 Nov 2019 11:39:59 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 453EC21D6C;
 Fri,  8 Nov 2019 11:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573213196;
 bh=ofw07OPqfVsTRQQpssHKxW1SwJBvUUdFDL1NMDfnIdA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NBiG0uBxazGFtRFuaUCFSTQ4fSHmZRCZS7LK+gtflVD1BkAARbIt7muvhwjn8YyH5
 fFE4lZvXe32ycyjjCenjcZUHOmzRbFbnUAEEXw0NkXxVWTlORWtNMFnI0qhri5oJiu
 rMslqiWrStRvpvub8bISHClF+JcjSTrQvg9fyt7g=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 082/205] mtd: rawnand: fsl_ifc: fixup SRAM init
 for newer ctrl versions
Date: Fri,  8 Nov 2019 06:35:49 -0500
Message-Id: <20191108113752.12502-82-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108113752.12502-1-sashal@kernel.org>
References: <20191108113752.12502-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_033957_651924_19D639C6 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Kurt Kanzenbach <kurt@linutronix.de>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Kurt Kanzenbach <kurt@linutronix.de>

[ Upstream commit ff8648f29fe58c2d94d32a076d2de7b92be4b485 ]

Newer versions of the IFC controller use a different method of initializing the
internal SRAM: Instead of reading from flash, a bit in the NAND configuration
register has to be set in order to trigger the self-initializing process.

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/mtd/nand/raw/fsl_ifc_nand.c | 33 +++++++++++++++++++++++------
 include/linux/fsl_ifc.h             |  2 ++
 2 files changed, 28 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/nand/raw/fsl_ifc_nand.c b/drivers/mtd/nand/raw/fsl_ifc_nand.c
index e4f5792dc5893..7e7729df78278 100644
--- a/drivers/mtd/nand/raw/fsl_ifc_nand.c
+++ b/drivers/mtd/nand/raw/fsl_ifc_nand.c
@@ -30,6 +30,7 @@
 #include <linux/mtd/partitions.h>
 #include <linux/mtd/nand_ecc.h>
 #include <linux/fsl_ifc.h>
+#include <linux/iopoll.h>
 
 #define ERR_BYTE		0xFF /* Value returned for read
 					bytes when read failed	*/
@@ -769,6 +770,27 @@ static int fsl_ifc_sram_init(struct fsl_ifc_mtd *priv)
 	uint32_t csor = 0, csor_8k = 0, csor_ext = 0;
 	uint32_t cs = priv->bank;
 
+	if (ctrl->version < FSL_IFC_VERSION_1_1_0)
+		return 0;
+
+	if (ctrl->version > FSL_IFC_VERSION_1_1_0) {
+		u32 ncfgr, status;
+		int ret;
+
+		/* Trigger auto initialization */
+		ncfgr = ifc_in32(&ifc_runtime->ifc_nand.ncfgr);
+		ifc_out32(ncfgr | IFC_NAND_NCFGR_SRAM_INIT_EN, &ifc_runtime->ifc_nand.ncfgr);
+
+		/* Wait until done */
+		ret = readx_poll_timeout(ifc_in32, &ifc_runtime->ifc_nand.ncfgr,
+					 status, !(status & IFC_NAND_NCFGR_SRAM_INIT_EN),
+					 10, IFC_TIMEOUT_MSECS * 1000);
+		if (ret)
+			dev_err(priv->dev, "Failed to initialize SRAM!\n");
+
+		return ret;
+	}
+
 	/* Save CSOR and CSOR_ext */
 	csor = ifc_in32(&ifc_global->csor_cs[cs].csor);
 	csor_ext = ifc_in32(&ifc_global->csor_cs[cs].csor_ext);
@@ -825,6 +847,7 @@ static int fsl_ifc_chip_init(struct fsl_ifc_mtd *priv)
 	struct nand_chip *chip = &priv->chip;
 	struct mtd_info *mtd = nand_to_mtd(&priv->chip);
 	u32 csor;
+	int ret;
 
 	/* Fill in fsl_ifc_mtd structure */
 	mtd->dev.parent = priv->dev;
@@ -918,13 +941,9 @@ static int fsl_ifc_chip_init(struct fsl_ifc_mtd *priv)
 		chip->ecc.algo = NAND_ECC_HAMMING;
 	}
 
-	if (ctrl->version >= FSL_IFC_VERSION_1_1_0) {
-		int ret;
-
-		ret = fsl_ifc_sram_init(priv);
-		if (ret)
-			return ret;
-	}
+	ret = fsl_ifc_sram_init(priv);
+	if (ret)
+		return ret;
 
 	/*
 	 * As IFC version 2.0.0 has 16KB of internal SRAM as compared to older
diff --git a/include/linux/fsl_ifc.h b/include/linux/fsl_ifc.h
index 3fdfede2f0f3e..5f343b796ad95 100644
--- a/include/linux/fsl_ifc.h
+++ b/include/linux/fsl_ifc.h
@@ -274,6 +274,8 @@
  */
 /* Auto Boot Mode */
 #define IFC_NAND_NCFGR_BOOT		0x80000000
+/* SRAM Initialization */
+#define IFC_NAND_NCFGR_SRAM_INIT_EN	0x20000000
 /* Addressing Mode-ROW0+n/COL0 */
 #define IFC_NAND_NCFGR_ADDR_MODE_RC0	0x00000000
 /* Addressing Mode-ROW0+n/COL0+n */
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
