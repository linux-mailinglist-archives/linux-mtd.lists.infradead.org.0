Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C27C1E0A7D
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 11:29:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=phdzQQ2Y2fs2A+X9jGOKnJ3xViZ/nbcujiMmz5mrlCo=; b=NcDM7TPsBdPgna
	Of4yamNtvP5Mj/Rh5jpzVzQCk+ou+CklGzOYm1JlDYDebMcZgLnDFpWfGrl55Et7D892Ukkyv9Sw1
	Glk9TFyklN5Y96FU3qfSBhxAaiUY1+qsuHz4a+UY+EziCCd84uV0vaAnG235fMkO+dpI9T1+OhVPS
	mZDYRHCE2agbr072AAAeyFoBYlMIXyKLerjOKsYQbb1Blxt5uqZP7LTkpUE7KBoe4RTs6k0LfsULb
	YAkLQhnHeLVnCw8S0Kp9e7djn8KzIcTNywdbNqiUK/sGGPyGeoi9sZKFyQXze2gdeGCY25QR2o3ES
	531tfy1X+HD2Xq9z8jrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd9QD-0005Do-3W; Mon, 25 May 2020 09:29:25 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd9Eg-0007gX-Gj; Mon, 25 May 2020 09:17:32 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04P9HPdf095712;
 Mon, 25 May 2020 04:17:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590398245;
 bh=GBF2MWapCKmZFTAre7roOt4HKKaEU6l6dFGpC8mxpeo=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=RVVJ6FatmWE0eiJC+yfoE7m+iXYBzNnldrZ+nXWHXXjvXly0N8K5gWNPlw1sBlbmN
 m9y3SvrWUNHnRWSid+vXjLtxPSv7+76zuVTIAh/caoRe5l44N7vzzYmueAkv3zgwM1
 jmy6iB7VqOnDkn/cftOU+A96Nl9ohks/SNSQ5LBA=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04P9HPrO014295
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 25 May 2020 04:17:25 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 25
 May 2020 04:17:25 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 25 May 2020 04:17:25 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04P9FjAH034800;
 Mon, 25 May 2020 04:17:19 -0500
From: Pratyush Yadav <p.yadav@ti.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, Vignesh
 Raghavendra <vigneshr@ti.com>, Mark Brown <broonie@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Ludovic Desroches
 <ludovic.desroches@microchip.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Michal Simek <michal.simek@xilinx.com>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-spi@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>
Subject: [PATCH v9 17/19] mtd: spi-nor: core: expose spi_nor_default_setup()
 in core.h
Date: Mon, 25 May 2020 14:45:42 +0530
Message-ID: <20200525091544.17270-18-p.yadav@ti.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200525091544.17270-1-p.yadav@ti.com>
References: <20200525091544.17270-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_021730_666026_3C67EF19 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mason Yang <masonccyang@mxic.com.tw>,
 Boris Brezillon <boris.brezillon@collabora.com>, Sekhar Nori <nsekhar@ti.com>,
 Pratyush Yadav <p.yadav@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Flashes might want to add a custom setup hook to configure the flash in
the proper mode for operation. But after that, they would still want to
run the default setup hook because it selects the read, program, and
erase operations. Since there is little point in repeating all that
code, expose the spi_nor_default_setup() in core.h to
manufacturer-specific files.

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
---
 drivers/mtd/spi-nor/core.c | 4 ++--
 drivers/mtd/spi-nor/core.h | 3 +++
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index 63ab588299f4..30d9149fd17b 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -2790,8 +2790,8 @@ static int spi_nor_select_erase(struct spi_nor *nor)
 	return 0;
 }
 
-static int spi_nor_default_setup(struct spi_nor *nor,
-				 const struct spi_nor_hwcaps *hwcaps)
+int spi_nor_default_setup(struct spi_nor *nor,
+			  const struct spi_nor_hwcaps *hwcaps)
 {
 	struct spi_nor_flash_parameter *params = nor->params;
 	u32 ignored_mask, shared_mask;
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index 79ce952c0539..d37a9b1d111f 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -452,6 +452,9 @@ int spi_nor_post_bfpt_fixups(struct spi_nor *nor,
 			     const struct sfdp_bfpt *bfpt,
 			     struct spi_nor_flash_parameter *params);
 
+int spi_nor_default_setup(struct spi_nor *nor,
+			  const struct spi_nor_hwcaps *hwcaps);
+
 static struct spi_nor __maybe_unused *mtd_to_spi_nor(struct mtd_info *mtd)
 {
 	return mtd->priv;
-- 
2.26.2


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
