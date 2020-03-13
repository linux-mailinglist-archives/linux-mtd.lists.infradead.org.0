Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91693184BDF
	for <lists+linux-mtd@lfdr.de>; Fri, 13 Mar 2020 16:59:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZWaY4fxu2DGXbEYBvlPjJbOcQiE7faRzG3TmIhXjEZY=; b=RA5TMDfOUcNiqq
	0O0zBz5H7+M9IpR9uUy2F9VAQjah5Yz/O0h86TKE8Ykl94rV9aLoLolZM/mCw4FbOaB0+hMW8U8u6
	KP5JrJfZIXBB85m+uvUJodxCx3Hj7MZ0CDEVe69gOH5qLGUDLR0nc1UGcbMnkInROR/yN5HuUmkzd
	4ALNkr2Za7xo2BYmdoBD4rhHOdBTDauNElsa99jfw7tPJMVblc/v9pH/qyHMG5Ysq6R3SNwPY4chs
	awcEWfNNMIM7Nvk3MmyhpzVwMmsl5NkmUSW76f7XjepjEV/8B+3h9yWvRCVTmW1ptcrhn80CgiYdp
	kcIZn/PNr+GDOEkNbafQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCmie-0004dC-LV; Fri, 13 Mar 2020 15:59:28 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCmX5-0000Im-OZ; Fri, 13 Mar 2020 15:47:33 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02DFlSwc111344;
 Fri, 13 Mar 2020 10:47:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584114448;
 bh=gDJ5RliIP25FZjm+6Odmd+Qk278xQ7CJ+hSrzysKQug=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=xw438WV3HSYVSd89T6RPoP1IA+A/r2TmSFhNLg7FYO6W5PaX89k9qkOprXb2efiqn
 FQHyRh6M+qwxPhLCMzEZiawqmGzMk1vBZGRRSG/YoGWHlAENPGIzN2UG290qOszrc6
 26JdS/EVsPyPg58FoJx4tgWpv1WAVs8vs5JtAskU=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02DFlS8H048844
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 13 Mar 2020 10:47:28 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 13
 Mar 2020 10:47:28 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 13 Mar 2020 10:47:28 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02DFkkSN034352;
 Fri, 13 Mar 2020 10:47:24 -0500
From: Pratyush Yadav <p.yadav@ti.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, Vignesh
 Raghavendra <vigneshr@ti.com>, Mark Brown <broonie@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Ludovic Desroches
 <ludovic.desroches@microchip.com>
Subject: [PATCH v3 09/12] mtd: spi-nor: enable octal DTR mode when possible
Date: Fri, 13 Mar 2020 21:16:42 +0530
Message-ID: <20200313154645.29293-10-p.yadav@ti.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200313154645.29293-1-p.yadav@ti.com>
References: <20200313154645.29293-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_084731_944449_D674AD22 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-mtd@lists.infradead.org,
 Pratyush Yadav <p.yadav@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Allow flashes to specify a hook to enable octal DTR mode. Use this hook
whenever possible to get optimal transfer speeds.

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 35 +++++++++++++++++++++++++++++++++++
 include/linux/mtd/spi-nor.h   |  2 ++
 2 files changed, 37 insertions(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 16d7516f2470..5e225d1b29f7 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -5232,6 +5232,35 @@ static void spi_nor_init_params(struct spi_nor *nor)
 	spi_nor_late_init_params(nor);
 }
 
+/** spi_nor_octal_dtr_enable() - enable Octal DTR I/O if needed
+ * @nor:                 pointer to a 'struct spi_nor'
+ * @enable:              whether to enable or disable Octal DTR
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int spi_nor_octal_dtr_enable(struct spi_nor *nor, bool enable)
+{
+	int ret;
+
+	if (!nor->params.octal_dtr_enable)
+		return 0;
+
+	if (!(spi_nor_get_protocol_width(nor->read_proto) == 8 ||
+	      spi_nor_get_protocol_width(nor->write_proto) == 8))
+		return 0;
+
+	ret = nor->params.octal_dtr_enable(nor, enable);
+	if (ret)
+		return ret;
+
+	if (enable)
+		nor->reg_proto = SNOR_PROTO_8_8_8_DTR;
+	else
+		nor->reg_proto = SNOR_PROTO_1_1_1;
+
+	return 0;
+}
+
 /**
  * spi_nor_quad_enable() - enable Quad I/O if needed.
  * @nor:                pointer to a 'struct spi_nor'
@@ -5271,6 +5300,12 @@ static int spi_nor_init(struct spi_nor *nor)
 {
 	int err;
 
+	err = spi_nor_octal_dtr_enable(nor, true);
+	if (err) {
+		dev_dbg(nor->dev, "octal mode not supported\n");
+		return err;
+	}
+
 	err = spi_nor_quad_enable(nor);
 	if (err) {
 		dev_dbg(nor->dev, "quad mode not supported\n");
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index f1db613e0320..923bd34ced84 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -544,6 +544,7 @@ struct spi_nor_locking_ops {
  *                      higher index in the array, the higher priority.
  * @erase_map:		the erase map parsed from the SFDP Sector Map Parameter
  *                      Table.
+ * @octal_dtr_enable:	enables SPI NOR octal DTR mode.
  * @quad_enable:	enables SPI NOR quad mode.
  * @set_4byte:		puts the SPI NOR in 4 byte addressing mode.
  * @convert_addr:	converts an absolute address into something the flash
@@ -567,6 +568,7 @@ struct spi_nor_flash_parameter {
 
 	struct spi_nor_erase_map        erase_map;
 
+	int (*octal_dtr_enable)(struct spi_nor *nor, bool enable);
 	int (*quad_enable)(struct spi_nor *nor);
 	int (*set_4byte)(struct spi_nor *nor, bool enable);
 	u32 (*convert_addr)(struct spi_nor *nor, u32 addr);
-- 
2.25.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
