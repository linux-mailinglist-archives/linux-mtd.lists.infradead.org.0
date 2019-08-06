Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3DA582AB5
	for <lists+linux-mtd@lfdr.de>; Tue,  6 Aug 2019 07:10:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQl8udHfEFVWjiDpgon6lB7r5n9Mtb4qDH+9XUt1uYU=; b=QB/FjESLIcJRzk
	3M5E/Ei8cdcGz8iWPMhVG4g51GSzLjuiUHlOmDc4lDJCZaN087d6SPIjnwLnBxkQyAVVT/jGfwjxN
	ddrILEQJRjN7WKN36CLfFlEcJup16X0U49vglsA2mWepXsLF7d4AlySRlHIXXIZibM5sE0or1Cpxx
	/HJMLgXtSijgK+fFW0LTjOiq2ztB1J7+i6ti2E5nASIMLH/1wkJPNe+/F3Y7/eJGMVwkLCuQBOa5Z
	Kvsk1iyk7AuQKDr8V5p0+pg7oFT7csi3GYvXofKRZgJh8IrNK48qAt7ZMIkTOI3OlYkSwAXmpfXU3
	Ax8XWLTATT/OmD+i/wMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hurk9-0006YX-Dm; Tue, 06 Aug 2019 05:10:41 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hurjs-0006Oy-W5
 for linux-mtd@lists.infradead.org; Tue, 06 Aug 2019 05:10:26 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x765AKMh086990;
 Tue, 6 Aug 2019 00:10:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565068220;
 bh=tT+dmcQ2d+SCUidgnE2rvdOKs2Y1YBJ8g97zOIlDQ/Y=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=V4FOh6jCHX7ENH2CDLtFt6z7bNUpEDy/jw5nbfzapuzZi2vVrAHqvTYgL+g48AFrf
 vz3zTdC9wfBDKMpwhuBLCFw5xENT1M//cKUoHL5BrMc8XvKyMNhqjoYfNbZeMdEC6/
 78g5ZaGnncwdTipaheXFjCsBQPku6HHliQGjPS4o=
Received: from DFLE110.ent.ti.com (dfle110.ent.ti.com [10.64.6.31])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x765AKb0077539
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 6 Aug 2019 00:10:20 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 6 Aug
 2019 00:10:20 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 6 Aug 2019 00:10:20 -0500
Received: from a0132425.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x765ADXw009009; 
 Tue, 6 Aug 2019 00:10:17 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger
 <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, Tudor Ambarus
 <tudor.ambarus@microchip.com>
Subject: [PATCH v5 1/3] mtd: spi-nor: always use bounce buffer for register
 read/writes
Date: Tue, 6 Aug 2019 10:40:39 +0530
Message-ID: <20190806051041.3636-2-vigneshr@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190806051041.3636-1-vigneshr@ti.com>
References: <20190806051041.3636-1-vigneshr@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_221025_112289_4AEE550C 
X-CRM114-Status: GOOD (  21.19  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, Tomer Maimon <tmaimon77@gmail.com>,
 Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

spi-mem layer expects all buffers passed to it to be DMA'able. But
spi-nor layer mostly allocates buffers on stack for reading/writing to
registers and therefore are not DMA'able. Introduce bounce buffer to be
used to read/write to registers. This ensures that buffer passed to
spi-mem layer during register read/writes is DMA'able. With this change
nor->cmd-buf is no longer used, so drop it.

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
---
v5:
Avoid memcpy in write_sr_cr()
Fix a missing bouncebuf use for SPINOR_OP_XRDSR op.

v4:
Avoid memcpy during READID

v3: new patch

 drivers/mtd/spi-nor/spi-nor.c | 80 +++++++++++++++++++----------------
 include/linux/mtd/spi-nor.h   |  7 ++-
 2 files changed, 49 insertions(+), 38 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 03cc788511d5..7f0831be90a0 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -296,15 +296,14 @@ struct flash_info {
 static int read_sr(struct spi_nor *nor)
 {
 	int ret;
-	u8 val;
 
-	ret = nor->read_reg(nor, SPINOR_OP_RDSR, &val, 1);
+	ret = nor->read_reg(nor, SPINOR_OP_RDSR, nor->bouncebuf, 1);
 	if (ret < 0) {
 		pr_err("error %d reading SR\n", (int) ret);
 		return ret;
 	}
 
-	return val;
+	return nor->bouncebuf[0];
 }
 
 /*
@@ -315,15 +314,14 @@ static int read_sr(struct spi_nor *nor)
 static int read_fsr(struct spi_nor *nor)
 {
 	int ret;
-	u8 val;
 
-	ret = nor->read_reg(nor, SPINOR_OP_RDFSR, &val, 1);
+	ret = nor->read_reg(nor, SPINOR_OP_RDFSR, nor->bouncebuf, 1);
 	if (ret < 0) {
 		pr_err("error %d reading FSR\n", ret);
 		return ret;
 	}
 
-	return val;
+	return nor->bouncebuf[0];
 }
 
 /*
@@ -334,15 +332,14 @@ static int read_fsr(struct spi_nor *nor)
 static int read_cr(struct spi_nor *nor)
 {
 	int ret;
-	u8 val;
 
-	ret = nor->read_reg(nor, SPINOR_OP_RDCR, &val, 1);
+	ret = nor->read_reg(nor, SPINOR_OP_RDCR, nor->bouncebuf, 1);
 	if (ret < 0) {
 		dev_err(nor->dev, "error %d reading CR\n", ret);
 		return ret;
 	}
 
-	return val;
+	return nor->bouncebuf[0];
 }
 
 /*
@@ -351,8 +348,8 @@ static int read_cr(struct spi_nor *nor)
  */
 static int write_sr(struct spi_nor *nor, u8 val)
 {
-	nor->cmd_buf[0] = val;
-	return nor->write_reg(nor, SPINOR_OP_WRSR, nor->cmd_buf, 1);
+	nor->bouncebuf[0] = val;
+	return nor->write_reg(nor, SPINOR_OP_WRSR, nor->bouncebuf, 1);
 }
 
 /*
@@ -500,31 +497,31 @@ static int set_4byte(struct spi_nor *nor, bool enable)
 			 * We must clear the register to enable normal behavior.
 			 */
 			write_enable(nor);
-			nor->cmd_buf[0] = 0;
-			nor->write_reg(nor, SPINOR_OP_WREAR, nor->cmd_buf, 1);
+			nor->bouncebuf[0] = 0;
+			nor->write_reg(nor, SPINOR_OP_WREAR,
+				       nor->bouncebuf, 1);
 			write_disable(nor);
 		}
 
 		return status;
 	default:
 		/* Spansion style */
-		nor->cmd_buf[0] = enable << 7;
-		return nor->write_reg(nor, SPINOR_OP_BRWR, nor->cmd_buf, 1);
+		nor->bouncebuf[0] = enable << 7;
+		return nor->write_reg(nor, SPINOR_OP_BRWR, nor->bouncebuf, 1);
 	}
 }
 
 static int s3an_sr_ready(struct spi_nor *nor)
 {
 	int ret;
-	u8 val;
 
-	ret = nor->read_reg(nor, SPINOR_OP_XRDSR, &val, 1);
+	ret = nor->read_reg(nor, SPINOR_OP_XRDSR, nor->bouncebuf, 1);
 	if (ret < 0) {
 		dev_err(nor->dev, "error %d reading XRDSR\n", (int) ret);
 		return ret;
 	}
 
-	return !!(val & XSR_RDY);
+	return !!(nor->bouncebuf[0] & XSR_RDY);
 }
 
 static int spi_nor_sr_ready(struct spi_nor *nor)
@@ -683,7 +680,6 @@ static loff_t spi_nor_s3an_addr_convert(struct spi_nor *nor, unsigned int addr)
  */
 static int spi_nor_erase_sector(struct spi_nor *nor, u32 addr)
 {
-	u8 buf[SPI_NOR_MAX_ADDR_WIDTH];
 	int i;
 
 	if (nor->flags & SNOR_F_S3AN_ADDR_DEFAULT)
@@ -697,11 +693,12 @@ static int spi_nor_erase_sector(struct spi_nor *nor, u32 addr)
 	 * control
 	 */
 	for (i = nor->addr_width - 1; i >= 0; i--) {
-		buf[i] = addr & 0xff;
+		nor->bouncebuf[i] = addr & 0xff;
 		addr >>= 8;
 	}
 
-	return nor->write_reg(nor, nor->erase_opcode, buf, nor->addr_width);
+	return nor->write_reg(nor, nor->erase_opcode, nor->bouncebuf,
+			      nor->addr_width);
 }
 
 /**
@@ -1485,9 +1482,11 @@ static int macronix_quad_enable(struct spi_nor *nor)
  */
 static int spansion_quad_enable(struct spi_nor *nor)
 {
-	u8 sr_cr[2] = {0, CR_QUAD_EN_SPAN};
+	u8 *sr_cr = nor->bouncebuf;
 	int ret;
 
+	sr_cr[0] = 0;
+	sr_cr[1] = CR_QUAD_EN_SPAN;
 	ret = write_sr_cr(nor, sr_cr);
 	if (ret)
 		return ret;
@@ -1517,7 +1516,7 @@ static int spansion_quad_enable(struct spi_nor *nor)
  */
 static int spansion_no_read_cr_quad_enable(struct spi_nor *nor)
 {
-	u8 sr_cr[2];
+	u8 *sr_cr = nor->bouncebuf;
 	int ret;
 
 	/* Keep the current value of the Status Register. */
@@ -1548,7 +1547,7 @@ static int spansion_no_read_cr_quad_enable(struct spi_nor *nor)
 static int spansion_read_cr_quad_enable(struct spi_nor *nor)
 {
 	struct device *dev = nor->dev;
-	u8 sr_cr[2];
+	u8 *sr_cr = nor->bouncebuf;
 	int ret;
 
 	/* Check current Quad Enable bit value. */
@@ -1599,22 +1598,22 @@ static int spansion_read_cr_quad_enable(struct spi_nor *nor)
  */
 static int sr2_bit7_quad_enable(struct spi_nor *nor)
 {
-	u8 sr2;
+	u8 *sr2 = nor->bouncebuf;
 	int ret;
 
 	/* Check current Quad Enable bit value. */
-	ret = nor->read_reg(nor, SPINOR_OP_RDSR2, &sr2, 1);
+	ret = nor->read_reg(nor, SPINOR_OP_RDSR2, sr2, 1);
 	if (ret)
 		return ret;
-	if (sr2 & SR2_QUAD_EN_BIT7)
+	if (*sr2 & SR2_QUAD_EN_BIT7)
 		return 0;
 
 	/* Update the Quad Enable bit. */
-	sr2 |= SR2_QUAD_EN_BIT7;
+	*sr2 |= SR2_QUAD_EN_BIT7;
 
 	write_enable(nor);
 
-	ret = nor->write_reg(nor, SPINOR_OP_WRSR2, &sr2, 1);
+	ret = nor->write_reg(nor, SPINOR_OP_WRSR2, sr2, 1);
 	if (ret < 0) {
 		dev_err(nor->dev, "error while writing status register 2\n");
 		return -EINVAL;
@@ -1627,8 +1626,8 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
 	}
 
 	/* Read back and check it. */
-	ret = nor->read_reg(nor, SPINOR_OP_RDSR2, &sr2, 1);
-	if (!(ret > 0 && (sr2 & SR2_QUAD_EN_BIT7))) {
+	ret = nor->read_reg(nor, SPINOR_OP_RDSR2, sr2, 1);
+	if (!(ret > 0 && (*sr2 & SR2_QUAD_EN_BIT7))) {
 		dev_err(nor->dev, "SR2 Quad bit not set\n");
 		return -EINVAL;
 	}
@@ -1687,7 +1686,7 @@ static int spi_nor_spansion_clear_sr_bp(struct spi_nor *nor)
 {
 	int ret;
 	u8 mask = SR_BP2 | SR_BP1 | SR_BP0;
-	u8 sr_cr[2] = {0};
+	u8 *sr_cr =  nor->bouncebuf;
 
 	/* Check current Quad Enable bit value. */
 	ret = read_cr(nor);
@@ -2177,7 +2176,7 @@ static const struct flash_info spi_nor_ids[] = {
 static const struct flash_info *spi_nor_read_id(struct spi_nor *nor)
 {
 	int			tmp;
-	u8			id[SPI_NOR_MAX_ID_LEN];
+	u8			*id = nor->bouncebuf;
 	const struct flash_info	*info;
 
 	tmp = nor->read_reg(nor, SPINOR_OP_RDID, id, SPI_NOR_MAX_ID_LEN);
@@ -2393,9 +2392,8 @@ static int spi_nor_check(struct spi_nor *nor)
 static int s3an_nor_scan(struct spi_nor *nor)
 {
 	int ret;
-	u8 val;
 
-	ret = nor->read_reg(nor, SPINOR_OP_XRDSR, &val, 1);
+	ret = nor->read_reg(nor, SPINOR_OP_XRDSR, nor->bouncebuf, 1);
 	if (ret < 0) {
 		dev_err(nor->dev, "error %d reading XRDSR\n", (int) ret);
 		return ret;
@@ -2417,7 +2415,7 @@ static int s3an_nor_scan(struct spi_nor *nor)
 	 * The current addressing mode can be read from the XRDSR register
 	 * and should not be changed, because is a destructive operation.
 	 */
-	if (val & XSR_PAGESIZE) {
+	if (nor->bouncebuf[0] & XSR_PAGESIZE) {
 		/* Flash in Power of 2 mode */
 		nor->page_size = (nor->page_size == 264) ? 256 : 512;
 		nor->mtd.writebufsize = nor->page_size;
@@ -4121,6 +4119,16 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	nor->read_proto = SNOR_PROTO_1_1_1;
 	nor->write_proto = SNOR_PROTO_1_1_1;
 
+	/*
+	 * We need the bounce buffer early to read/write registers when going
+	 * through the spi-mem layer (buffers have to be DMA-able).
+	 */
+	nor->bouncebuf_size = PAGE_SIZE;
+	nor->bouncebuf = devm_kmalloc(dev, nor->bouncebuf_size,
+				      GFP_KERNEL);
+	if (!nor->bouncebuf)
+		return -ENOMEM;
+
 	if (name)
 		info = spi_nor_match_id(name);
 	/* Try to auto-detect if chip name wasn't specified or not found */
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index 9f57cdfcc93d..6b5956a7a65a 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -344,6 +344,9 @@ struct flash_info;
  * @mtd:		point to a mtd_info structure
  * @lock:		the lock for the read/write/erase/lock/unlock operations
  * @dev:		point to a spi device, or a spi nor controller device.
+ * @bouncebuf:		bounce buffer used when the buffer passed by the MTD
+ *                      layer is not DMA-able
+ * @bouncebuf_size:	size of the bounce buffer
  * @info:		spi-nor part JDEC MFR id and other info
  * @page_size:		the page size of the SPI NOR
  * @addr_width:		number of address bytes
@@ -356,7 +359,6 @@ struct flash_info;
  * @read_proto:		the SPI protocol for read operations
  * @write_proto:	the SPI protocol for write operations
  * @reg_proto		the SPI protocol for read_reg/write_reg/erase operations
- * @cmd_buf:		used by the write_reg
  * @erase_map:		the erase map of the SPI NOR
  * @prepare:		[OPTIONAL] do some preparations for the
  *			read/write/erase/lock/unlock operations
@@ -382,6 +384,8 @@ struct spi_nor {
 	struct mtd_info		mtd;
 	struct mutex		lock;
 	struct device		*dev;
+	u8			*bouncebuf;
+	size_t			bouncebuf_size;
 	const struct flash_info	*info;
 	u32			page_size;
 	u8			addr_width;
@@ -394,7 +398,6 @@ struct spi_nor {
 	enum spi_nor_protocol	reg_proto;
 	bool			sst_write_second;
 	u32			flags;
-	u8			cmd_buf[SPI_NOR_MAX_CMD_SIZE];
 	struct spi_nor_erase_map	erase_map;
 
 	int (*prepare)(struct spi_nor *nor, enum spi_nor_ops ops);
-- 
2.22.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
