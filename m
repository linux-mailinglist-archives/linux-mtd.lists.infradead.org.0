Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A5613500C
	for <lists+linux-mtd@lfdr.de>; Thu,  9 Jan 2020 00:38:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W03UR+g8vTiv7uEChvXHkVWxPerwioAT50J7/HNdXwc=; b=VphZspR9mArW34
	ZVF2jdpXGSyVpV95BQpSCdUN+7XT3IwZS2V/tmvFOG/V/2zW4aIVwiGXSQPzvnq9Ku5UAZ06///5L
	KCHcQA3sSiXtrR6aIb76naKUdYtqacvLvm5xZRYW9i6MY4A6IVXcMMC0vgg/unj29CRUCQj9h0EIx
	Yy0ZzJR3KX/St7scWBxLvKMHWhmYCepKPFFFHlXhFqtbsV4jeE3ZR4xoUKlIWx8PZyylJPC1DNusJ
	FPQ82SPyO6vqQ2wvchFmphq4u+R0pZmhVpJ1QppfeJtbtX4GJyB5/d1tACQo9+1Z31HKKC13kgqrG
	DEjHOmrwtmcel5rk+IGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipKu3-00030m-Al; Wed, 08 Jan 2020 23:38:19 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipKtI-0002SR-Rq
 for linux-mtd@lists.infradead.org; Wed, 08 Jan 2020 23:37:35 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id B063F23E25;
 Thu,  9 Jan 2020 00:37:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1578526650;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0VGmVgb3PVHV5TM9YlD521Iijzqf5Jh1+OjA5PQBei4=;
 b=oa+3fPg0kNSHfLFB3llQKOuf3874wDvoBLvKtD1RTzcXP664rRM0qvPArj5ZiKxeSUTRjb
 WJb9GTjM9n/B3RXyT9f6GIPtVVRNLMaYqJw0+wczKJYXHsCsOuAF9bsO1Jj39eAoqAkcGB
 aZOrF/5pYTJnHSIY2nWrDA3GV6eNLos=
From: Michael Walle <michael@walle.cc>
To: linux-mtd@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] mtd: spi-nor: implement OTP support for Winbond flashes
Date: Thu,  9 Jan 2020 00:36:54 +0100
Message-Id: <20200108233654.29027-3-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200108233654.29027-1-michael@walle.cc>
References: <20200108233654.29027-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++
X-Spam-Level: ****
X-Rspamd-Server: web
X-Spam-Status: No, score=4.90
X-Spam-Score: 4.90
X-Rspamd-Queue-Id: B063F23E25
X-Spamd-Result: default: False [4.90 / 15.00]; ARC_NA(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 R_MISSING_CHARSET(2.50)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 MIME_GOOD(-0.10)[text/plain];
 FREEMAIL_ENVRCPT(0.00)[gmail.com]; BROKEN_CONTENT_TYPE(1.50)[];
 DKIM_SIGNED(0.00)[]; RCPT_COUNT_SEVEN(0.00)[10];
 MID_CONTAINS_FROM(1.00)[]; NEURAL_HAM(-0.00)[-0.721];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c::/31, country:DE];
 FREEMAIL_CC(0.00)[microchip.com, bootlin.com, nod.at, ti.com, gmail.com,
 imgtec.com, walle.cc]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_153733_194933_26A62113 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Rahul Bedarkar <rahul.bedarkar@imgtec.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>,
 Rahul Bedarkar <rahulbedarkar89@gmail.com>, Michael Walle <michael@walle.cc>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Use the new OTP ops to implement OTP access on Winbond flashes. Most
Winbond flashes provides up to four different OTP areas ("Security
Registers"). Newer flashes uses the first OTP area for SFDP data. Thus,
this only handles the last three areas and leave the first untouched.

This was tested on a Winbond W25Q32JW. Please note, that there is a
variant of the W25Q32JW which reuses the same JEDEC ID as the W25Q32FW
which could support all four OTP areas. But because we cannot distiguish
between these two, the driver only uses three areas on the W25Q32FW.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 drivers/mtd/spi-nor/spi-nor.c | 132 ++++++++++++++++++++++++++++++++++
 include/linux/mtd/spi-nor.h   |  14 ++++
 2 files changed, 146 insertions(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 5eabaec70508..99d365cb63b1 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -2641,17 +2641,20 @@ static const struct flash_info spi_nor_ids[] = {
 		"w25q16dw", INFO(0xef6015, 0, 64 * 1024,  32,
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
+			OTP_INFO(256, 3, 0x1000, 0x1000)
 	},
 	{
 		"w25q16jwim", INFO(0xef8015, 0, 64 * 1024,  32,
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
+			OTP_INFO(256, 3, 0x1000, 0x1000)
 	},
 	{ "w25x32", INFO(0xef3016, 0, 64 * 1024,  64, SECT_4K) },
 	{
 		"w25q16jv-im/jm", INFO(0xef7015, 0, 64 * 1024,  32,
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
+			OTP_INFO(256, 3, 0x1000, 0x1000)
 	},
 	{ "w25q20cl", INFO(0xef4012, 0, 64 * 1024,  4, SECT_4K) },
 	{ "w25q20bw", INFO(0xef5012, 0, 64 * 1024,  4, SECT_4K) },
@@ -2661,16 +2664,19 @@ static const struct flash_info spi_nor_ids[] = {
 		"w25q32dw", INFO(0xef6016, 0, 64 * 1024,  64,
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
+			OTP_INFO(256, 3, 0x1000, 0x1000)
 	},
 	{
 		"w25q32jv", INFO(0xef7016, 0, 64 * 1024,  64,
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
+			OTP_INFO(256, 3, 0x1000, 0x1000)
 	},
 	{
 		"w25q32jwim", INFO(0xef8016, 0, 64 * 1024,  64,
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
+			OTP_INFO(256, 3, 0x1000, 0x1000)
 	},
 	{ "w25x64", INFO(0xef3017, 0, 64 * 1024, 128, SECT_4K) },
 	{ "w25q64", INFO(0xef4017, 0, 64 * 1024, 128, SECT_4K) },
@@ -2678,26 +2684,31 @@ static const struct flash_info spi_nor_ids[] = {
 		"w25q64dw", INFO(0xef6017, 0, 64 * 1024, 128,
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
+			OTP_INFO(256, 3, 0x1000, 0x1000)
 	},
 	{
 		"w25q64jwim", INFO(0xef8017, 0, 64 * 1024, 128,
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
+			OTP_INFO(256, 3, 0x1000, 0x1000)
 	},
 	{
 		"w25q128fw", INFO(0xef6018, 0, 64 * 1024, 256,
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
+			OTP_INFO(256, 3, 0x1000, 0x1000)
 	},
 	{
 		"w25q128jv", INFO(0xef7018, 0, 64 * 1024, 256,
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
+			OTP_INFO(256, 3, 0x1000, 0x1000)
 	},
 	{
 		"w25q128jwim", INFO(0xef8018, 0, 64 * 1024, 256,
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
+			OTP_INFO(256, 3, 0x1000, 0x1000)
 	},
 	{ "w25q80", INFO(0xef5014, 0, 64 * 1024,  16, SECT_4K) },
 	{ "w25q80bl", INFO(0xef4014, 0, 64 * 1024,  16, SECT_4K) },
@@ -4645,6 +4656,125 @@ static int spi_nor_setup(struct spi_nor *nor,
 	return nor->params.setup(nor, hwcaps);
 }
 
+static int winbond_otp_read(struct spi_nor *nor, loff_t addr, uint64_t len,
+			    u8 *buf)
+{
+	u8 addr_width, read_opcode, read_dummy;
+	enum spi_nor_protocol read_proto;
+	int ret;
+
+	read_opcode = nor->read_opcode;
+	addr_width = nor->addr_width;
+	read_dummy = nor->read_dummy;
+	read_proto = nor->read_proto;
+
+	nor->read_opcode = SPINOR_OP_WB_RSECR;
+	nor->addr_width = 3;
+	nor->read_dummy = 8;
+	nor->read_proto = SNOR_PROTO_1_1_1;
+
+	ret = spi_nor_read_raw(nor, addr, len, buf);
+
+	nor->read_opcode = read_opcode;
+	nor->addr_width = addr_width;
+	nor->read_dummy = read_dummy;
+	nor->read_proto = read_proto;
+
+	return ret;
+}
+
+static int winbond_otp_write(struct spi_nor *nor, loff_t addr, uint64_t len,
+			     u8 *buf)
+{
+	u8 addr_width, program_opcode;
+	enum spi_nor_protocol write_proto;
+	int ret;
+
+	program_opcode = nor->program_opcode;
+	addr_width = nor->addr_width;
+	write_proto = nor->write_proto;
+
+	nor->program_opcode = SPINOR_OP_WB_PSECR;
+	nor->addr_width = 3;
+	nor->write_proto = SNOR_PROTO_1_1_1;
+
+	/*
+	 * We only support a write to one single page. For now all winbond
+	 * flashes only have one page per OTP region.
+	 */
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		goto out;
+
+	ret = spi_nor_write_data(nor, addr, len, buf);
+	if (ret < 0)
+		goto out;
+
+	ret = spi_nor_wait_till_ready(nor);
+
+out:
+	nor->program_opcode = program_opcode;
+	nor->addr_width = addr_width;
+	nor->write_proto = write_proto;
+
+	return ret;
+}
+
+static int _winbond_otp_lock_bit(unsigned int region)
+{
+	static const int lock_bits[] = { SR2_WB_LB1, SR2_WB_LB2, SR2_WB_LB3 };
+
+	if (region >= ARRAY_SIZE(lock_bits))
+		return -EINVAL;
+
+	return lock_bits[region];
+}
+
+static int winbond_otp_lock(struct spi_nor *nor, unsigned int region)
+{
+	int lock_bit;
+	u8 sr2;
+	int ret;
+
+	lock_bit = _winbond_otp_lock_bit(region);
+	if (lock_bit < 0)
+		return lock_bit;
+
+	ret = spi_nor_read_cr(nor, &sr2);
+	if (ret)
+		return ret;
+
+	/* check if its already locked */
+	if (sr2 & lock_bit)
+		return 0;
+
+	return spi_nor_write_16bit_cr_and_check(nor, sr2 | lock_bit);
+}
+
+static int winbond_otp_is_locked(struct spi_nor *nor, unsigned int region)
+{
+	int lock_bit;
+	u8 sr2;
+	int ret;
+
+	lock_bit = _winbond_otp_lock_bit(region);
+	if (lock_bit < 0)
+		return lock_bit;
+
+	ret = spi_nor_read_cr(nor, &sr2);
+	if (ret)
+		return ret;
+
+	return (sr2 & lock_bit);
+}
+
+static const struct spi_nor_otp_ops winbond_otp_ops = {
+	.read = winbond_otp_read,
+	.write = winbond_otp_write,
+	.lock = winbond_otp_lock,
+	.is_locked = winbond_otp_is_locked,
+};
+
 static void atmel_set_default_init(struct spi_nor *nor)
 {
 	nor->flags |= SNOR_F_HAS_LOCK;
@@ -4681,6 +4811,8 @@ static void st_micron_set_default_init(struct spi_nor *nor)
 static void winbond_set_default_init(struct spi_nor *nor)
 {
 	nor->params.set_4byte = winbond_set_4byte;
+	if (nor->params.otp_info.n_otps)
+		nor->params.otp_ops = &winbond_otp_ops;
 }
 
 /**
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index e427dcd72f79..cc847ed06ef3 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -121,6 +121,20 @@
 #define SPINOR_OP_RD_EVCR      0x65    /* Read EVCR register */
 #define SPINOR_OP_WD_EVCR      0x61    /* Write EVCR register */
 
+/* Used for Winbond flashes only. */
+#define SPINOR_OP_WB_ESECR	0x44	/* Erase Security registers */
+#define SPINOR_OP_WB_PSECR	0x42	/* Program Security registers */
+#define SPINOR_OP_WB_RSECR	0x48	/* Read Security registers */
+
+/*
+ * Warning: LB0 (and thus the security register 0) is used for the SFDP
+ * data on all newer flashes.
+ */
+#define SR2_WB_LB0		BIT(2)	/* Security Register Lock Bit 0 */
+#define SR2_WB_LB1		BIT(3)	/* Security Register Lock Bit 1 */
+#define SR2_WB_LB2		BIT(4)	/* Security Register Lock Bit 2 */
+#define SR2_WB_LB3		BIT(5)	/* Security Register Lock Bit 3 */
+
 /* Status Register bits. */
 #define SR_WIP			BIT(0)	/* Write in progress */
 #define SR_WEL			BIT(1)	/* Write enable latch */
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
