Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F8E16FB07
	for <lists+linux-mtd@lfdr.de>; Wed, 26 Feb 2020 10:39:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bdMQ1oLQ/1qowG7XqB5e8mYqI4wCqTofBXkdlPLqU5E=; b=VTHtUyHVLenGk8
	CXWs1tor8GLWFglhr7tmlNxZ3MdughiqoXXEBsETb5gMc9QVpYXOBdsZjsb8BKFxd9M5CITAg1SOj
	deLsWkoRtLGSF+pogjUCV/sWbfDlY9NaW5FyI1PSjSPmlk7icfgXWNkxA7EEZAZEeeFLfi+qT/CLT
	5CGrjdk5dQl+GrK9LkZ2x9yYuxcSneBCEX9C7HbQfQyTIVbndNlZwzrmS8xXLVTQu2upLFE4OfRbu
	65YfrwQagPcyN3htKmZWffVRdhnzb+eLA+Af5P4b/uAvSMzDGTnh9nz5AZgJ3YRQXw5OmfUSFy/dH
	Z1GQ4jXPI7P5JjGy4PtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6tAD-0002lX-T4; Wed, 26 Feb 2020 09:39:33 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6t8T-0001Oa-9N
 for linux-mtd@lists.infradead.org; Wed, 26 Feb 2020 09:37:47 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01Q9bdv2019797;
 Wed, 26 Feb 2020 03:37:39 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582709859;
 bh=y87/V7I5zHb8iyPROpfrmWQgIDTgx7YSXRab81S5ydQ=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=dGKYuUekGnlAQmBS0P73h9oiGmCI1KzMzEY4yzwUFrV//cwZNz9fMNEI5+giZaotJ
 gp6m/ODrSrxp4k5tqxEiKaFJ2zNt10UNGqvZPt87bf7E0psyI8LneSxjacf/LXq7ES
 YVfdgzZ9NUgOWgFJTy05qV4kZ7BQxWK65kjouB2o=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01Q9bdo1086843;
 Wed, 26 Feb 2020 03:37:39 -0600
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 26
 Feb 2020 03:37:38 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 26 Feb 2020 03:37:38 -0600
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01Q9b4AC110613;
 Wed, 26 Feb 2020 03:37:35 -0600
From: Pratyush Yadav <p.yadav@ti.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, Vignesh
 Raghavendra <vigneshr@ti.com>, Mark Brown <broonie@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 07/11] mtd: spi-nor: get command opcode extension type from
 BFPT
Date: Wed, 26 Feb 2020 15:06:59 +0530
Message-ID: <20200226093703.19765-8-p.yadav@ti.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226093703.19765-1-p.yadav@ti.com>
References: <20200226093703.19765-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_013745_464932_176848B8 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-mtd@lists.infradead.org, Pratyush Yadav <p.yadav@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Some devices in DTR mode expect an extra command byte called the
extension. The extension can either be same as the opcode, bitwise
inverse of the opcode, or another additional byte forming a 16-byte
opcode. Get the extension type from the BFPT. For now, only flashes with
"repeat" and "inverse" extensions are supported.

As of JESD216D.01, BFPT is 20 DWORDs, so update the table size to
reflect that.

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 30 +++++++++++++++++++++++++++---
 1 file changed, 27 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 6102520550a1..c86c1537f76e 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -79,11 +79,11 @@ struct sfdp_header {
 /* Basic Flash Parameter Table */
 
 /*
- * JESD216 rev B defines a Basic Flash Parameter Table of 16 DWORDs.
- * They are indexed from 1 but C arrays are indexed from 0.
+ * JESD216 rev D defines a Basic Flash Parameter Table of 20 DWORDs. They are
+ * indexed from 1 but C arrays are indexed from 0.
  */
 #define BFPT_DWORD(i)		((i) - 1)
-#define BFPT_DWORD_MAX		16
+#define BFPT_DWORD_MAX		20
 
 /* The first version of JESD216 defined only 9 DWORDs. */
 #define BFPT_DWORD_MAX_JESD216			9
@@ -148,6 +148,12 @@ struct sfdp_header {
 #define BFPT_DWORD15_QER_SR2_BIT1_NO_RD		(0x4UL << 20)
 #define BFPT_DWORD15_QER_SR2_BIT1		(0x5UL << 20) /* Spansion */
 
+#define BFPT_DWORD18_CMD_EXT_MASK		GENMASK(30, 29)
+#define BFPT_DWORD18_CMD_EXT_REP		(0x0UL << 29) /* Repeat */
+#define BFPT_DWORD18_CMD_EXT_INV		(0x1UL << 29) /* Invert */
+#define BFPT_DWORD18_CMD_EXT_RES		(0x2UL << 29) /* Reserved */
+#define BFPT_DWORD18_CMD_EXT_16B		(0x3UL << 29) /* 16-bit opcode */
+
 struct sfdp_bfpt {
 	u32	dwords[BFPT_DWORD_MAX];
 };
@@ -3867,6 +3873,24 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
 		return -EINVAL;
 	}
 
+	/* 8D-8D-8D command extension. */
+	switch (bfpt.dwords[BFPT_DWORD(18)] & BFPT_DWORD18_CMD_EXT_MASK) {
+	case BFPT_DWORD18_CMD_EXT_REP:
+		nor->cmd_ext = SPI_MEM_EXT_REPEAT;
+		break;
+
+	case BFPT_DWORD18_CMD_EXT_INV:
+		nor->cmd_ext = SPI_MEM_EXT_INVERT;
+		break;
+
+	case BFPT_DWORD18_CMD_EXT_RES:
+		return -EINVAL;
+
+	case BFPT_DWORD18_CMD_EXT_16B:
+		dev_err(nor->dev, "16-bit opcodes not supported\n");
+		return -ENOTSUPP;
+	}
+
 	return spi_nor_post_bfpt_fixups(nor, bfpt_header, &bfpt, params);
 }
 
-- 
2.25.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
