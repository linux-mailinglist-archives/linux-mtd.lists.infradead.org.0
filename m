Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7735B1CF34A
	for <lists+linux-mtd@lfdr.de>; Tue, 12 May 2020 13:28:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E7PQdFLPH0ujnvnFtAT+Y2Mdrj/60k9KCL5DXDWZEe8=; b=H+eYLM8ypxOX60
	YFl78BQPrW99ORLBEsAN5h+5KAU8wrvnxqxYKopyOPr/rLyU2ZCNXh+AJ0KFAJgjEnRXew4SvCczH
	PewL7SE78MJR+EK0Dtg6YMpxsYlo9K6YwMY1V3oryi2vrTfGO1nhU+DSYCbahsRzjeswN/ROLozxK
	RHINHqgzeEfNT3BFZ4vgE1w1gWiDkCmXySaQ/1vnQADRfLSBpLQB7c/gq7MZb8DOgXtssgzVkG1dV
	lxMDHkfaTMItgpTvrMXiK63MK1rM/vVlHFYBLRt+jVIQqpm57cOE5yMrFWtXHUYbdAIgQpy7dlLiT
	1G8NvJUdrFEbz7menw5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYT53-0000qM-BO; Tue, 12 May 2020 11:28:13 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYT4Q-0000MX-EV
 for linux-mtd@lists.infradead.org; Tue, 12 May 2020 11:27:37 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 6E3D9FEEF6689CC9A0A3;
 Tue, 12 May 2020 19:27:22 +0800 (CST)
Received: from localhost.localdomain (10.67.165.24) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.487.0; Tue, 12 May 2020 19:27:12 +0800
From: Yicong Yang <yangyicong@hisilicon.com>
To: <tudor.ambarus@microchip.com>, <linux-mtd@lists.infradead.org>
Subject: [RFC PATCH v2 1/2] mtd: spi-nor: Add capability to disable flash quad
 mode
Date: Tue, 12 May 2020 19:26:58 +0800
Message-ID: <1589282819-42358-2-git-send-email-yangyicong@hisilicon.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1589282819-42358-1-git-send-email-yangyicong@hisilicon.com>
References: <1589282819-42358-1-git-send-email-yangyicong@hisilicon.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.165.24]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_042734_663847_F78EE728 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: vigneshr@ti.com, sergei.shtylyov@cogentembedded.com, richard@nod.at,
 me@yadavpratyush.com, john.garry@huawei.com, linuxarm@huawei.com,
 yangyicong@hisilicon.com, alexander.sverdlin@nokia.com,
 miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Previous we didn't provide a way to disable the flash's quad mode.
Which means we cannot do some cleanup works when to remove or
poweroff the flash, like what set 4-byte address mode does in
spi_nor_restore().

Add the capability to disable the flash quad mode, by introducing
an enable flag in the flash parameters quad_enable() hooks and
related functions.

Signed-off-by: Yicong Yang <yangyicong@hisilicon.com>
---
 drivers/mtd/spi-nor/core.c | 53 ++++++++++++++++++++++++++++++++--------------
 drivers/mtd/spi-nor/core.h |  8 +++----
 2 files changed, 41 insertions(+), 20 deletions(-)

diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index cc68ea8..72e8d8b 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -1907,15 +1907,17 @@ static int spi_nor_is_locked(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 }
 
 /**
- * spi_nor_sr1_bit6_quad_enable() - Set the Quad Enable BIT(6) in the Status
+ * spi_nor_sr1_bit6_quad_enable() - Set/Unset the Quad Enable BIT(6) in the
+ *                                  Status
  * Register 1.
  * @nor:	pointer to a 'struct spi_nor'
+ * @enable:	true to enter quad mode. false to leave quad mode.
  *
  * Bit 6 of the Status Register 1 is the QE bit for Macronix like QSPI memories.
  *
  * Return: 0 on success, -errno otherwise.
  */
-int spi_nor_sr1_bit6_quad_enable(struct spi_nor *nor)
+int spi_nor_sr1_bit6_quad_enable(struct spi_nor *nor, bool enable)
 {
 	int ret;
 
@@ -1923,45 +1925,59 @@ int spi_nor_sr1_bit6_quad_enable(struct spi_nor *nor)
 	if (ret)
 		return ret;
 
-	if (nor->bouncebuf[0] & SR1_QUAD_EN_BIT6)
+	if ((enable && (nor->bouncebuf[0] & SR1_QUAD_EN_BIT6)) ||
+	    !(enable || (nor->bouncebuf[0] & SR1_QUAD_EN_BIT6)))
 		return 0;
 
-	nor->bouncebuf[0] |= SR1_QUAD_EN_BIT6;
+	if (enable)
+		nor->bouncebuf[0] |= SR1_QUAD_EN_BIT6;
+	else
+		nor->bouncebuf[0] &= ~SR1_QUAD_EN_BIT6;
 
 	return spi_nor_write_sr1_and_check(nor, nor->bouncebuf[0]);
 }
 
 /**
- * spi_nor_sr2_bit1_quad_enable() - set the Quad Enable BIT(1) in the Status
+ * spi_nor_sr2_bit1_quad_enable() - set/unset the Quad Enable BIT(1) in the
+ *                                  Status
  * Register 2.
  * @nor:       pointer to a 'struct spi_nor'.
+ * @enable:	true to enter quad mode. false to leave quad mode.
  *
  * Bit 1 of the Status Register 2 is the QE bit for Spansion like QSPI memories.
  *
  * Return: 0 on success, -errno otherwise.
  */
-int spi_nor_sr2_bit1_quad_enable(struct spi_nor *nor)
+int spi_nor_sr2_bit1_quad_enable(struct spi_nor *nor, bool enable)
 {
 	int ret;
 
 	if (nor->flags & SNOR_F_NO_READ_CR)
-		return spi_nor_write_16bit_cr_and_check(nor, SR2_QUAD_EN_BIT1);
+		return spi_nor_write_16bit_cr_and_check(nor,
+						enable ? SR2_QUAD_EN_BIT1 : 0);
 
 	ret = spi_nor_read_cr(nor, nor->bouncebuf);
 	if (ret)
 		return ret;
 
-	if (nor->bouncebuf[0] & SR2_QUAD_EN_BIT1)
+	if ((enable && (nor->bouncebuf[0] & SR2_QUAD_EN_BIT1)) ||
+	    !(enable || (nor->bouncebuf[0] & SR2_QUAD_EN_BIT1)))
 		return 0;
 
 	nor->bouncebuf[0] |= SR2_QUAD_EN_BIT1;
 
+	if (enable)
+		nor->bouncebuf[0] |= SR2_QUAD_EN_BIT1;
+	else
+		nor->bouncebuf[0] &= ~SR2_QUAD_EN_BIT1;
+
 	return spi_nor_write_16bit_cr_and_check(nor, nor->bouncebuf[0]);
 }
 
 /**
- * spi_nor_sr2_bit7_quad_enable() - set QE bit in Status Register 2.
+ * spi_nor_sr2_bit7_quad_enable() - set/unset QE bit in Status Register 2.
  * @nor:	pointer to a 'struct spi_nor'
+ * @enable:	true to enter quad mode. false to leave quad mode.
  *
  * Set the Quad Enable (QE) bit in the Status Register 2.
  *
@@ -1971,7 +1987,7 @@ int spi_nor_sr2_bit1_quad_enable(struct spi_nor *nor)
  *
  * Return: 0 on success, -errno otherwise.
  */
-int spi_nor_sr2_bit7_quad_enable(struct spi_nor *nor)
+int spi_nor_sr2_bit7_quad_enable(struct spi_nor *nor, bool enable)
 {
 	u8 *sr2 = nor->bouncebuf;
 	int ret;
@@ -1981,11 +1997,15 @@ int spi_nor_sr2_bit7_quad_enable(struct spi_nor *nor)
 	ret = spi_nor_read_sr2(nor, sr2);
 	if (ret)
 		return ret;
-	if (*sr2 & SR2_QUAD_EN_BIT7)
+	if ((enable && (*sr2 & SR2_QUAD_EN_BIT7)) ||
+	    !(enable || (*sr2 & SR2_QUAD_EN_BIT7)))
 		return 0;
 
 	/* Update the Quad Enable bit. */
-	*sr2 |= SR2_QUAD_EN_BIT7;
+	if (enable)
+		*sr2 |= SR2_QUAD_EN_BIT7;
+	else
+		*sr2 &= ~SR2_QUAD_EN_BIT7;
 
 	ret = spi_nor_write_sr2(nor, sr2);
 	if (ret)
@@ -2898,12 +2918,13 @@ static int spi_nor_init_params(struct spi_nor *nor)
 }
 
 /**
- * spi_nor_quad_enable() - enable Quad I/O if needed.
+ * spi_nor_quad_enable() - enable/disable Quad I/O if needed.
  * @nor:                pointer to a 'struct spi_nor'
+ * @enable:             true to enable quad mode. false to disable.
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int spi_nor_quad_enable(struct spi_nor *nor)
+static int spi_nor_quad_enable(struct spi_nor *nor, bool enable)
 {
 	if (!nor->params->quad_enable)
 		return 0;
@@ -2912,7 +2933,7 @@ static int spi_nor_quad_enable(struct spi_nor *nor)
 	      spi_nor_get_protocol_width(nor->write_proto) == 4))
 		return 0;
 
-	return nor->params->quad_enable(nor);
+	return nor->params->quad_enable(nor, enable);
 }
 
 /**
@@ -2936,7 +2957,7 @@ static int spi_nor_init(struct spi_nor *nor)
 {
 	int err;
 
-	err = spi_nor_quad_enable(nor);
+	err = spi_nor_quad_enable(nor, true);
 	if (err) {
 		dev_dbg(nor->dev, "quad mode not supported\n");
 		return err;
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index 6f2f6b2..719a31d 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -219,7 +219,7 @@ struct spi_nor_flash_parameter {
 
 	struct spi_nor_erase_map        erase_map;
 
-	int (*quad_enable)(struct spi_nor *nor);
+	int (*quad_enable)(struct spi_nor *nor, bool enable);
 	int (*set_4byte_addr_mode)(struct spi_nor *nor, bool enable);
 	u32 (*convert_addr)(struct spi_nor *nor, u32 addr);
 	int (*setup)(struct spi_nor *nor, const struct spi_nor_hwcaps *hwcaps);
@@ -406,9 +406,9 @@ int spi_nor_write_ear(struct spi_nor *nor, u8 ear);
 int spi_nor_wait_till_ready(struct spi_nor *nor);
 int spi_nor_lock_and_prep(struct spi_nor *nor);
 void spi_nor_unlock_and_unprep(struct spi_nor *nor);
-int spi_nor_sr1_bit6_quad_enable(struct spi_nor *nor);
-int spi_nor_sr2_bit1_quad_enable(struct spi_nor *nor);
-int spi_nor_sr2_bit7_quad_enable(struct spi_nor *nor);
+int spi_nor_sr1_bit6_quad_enable(struct spi_nor *nor, bool enable);
+int spi_nor_sr2_bit1_quad_enable(struct spi_nor *nor, bool enable);
+int spi_nor_sr2_bit7_quad_enable(struct spi_nor *nor, bool enable);
 
 int spi_nor_xread_sr(struct spi_nor *nor, u8 *sr);
 ssize_t spi_nor_read_data(struct spi_nor *nor, loff_t from, size_t len,
-- 
2.8.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
