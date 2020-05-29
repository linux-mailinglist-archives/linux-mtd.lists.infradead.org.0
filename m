Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFAE1E76D7
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 09:37:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ajD8lI/1CzqcZh20NJ2BZnp6yp96ijG7yzRBnrUfLnA=; b=pm5CzqWhcmgSX3cudKyxBwV+dJ
	cs81R6nwQdmV6StOOCh5xupHvY5HiaYvc0rGQFga0k+I14W4y9Lrf4tXWVpzpnZvBNHWgqlCLfVY0
	6g8AO2pXIGq3kggdvqsHk5m3D6SeWo0OekstljbkO4uiAaBwdYi8uVYACvqsvurfn88OIqpldNQoy
	DiN3Eb145m2o5O86RylfG9FzOFMcLgiDOK8X/ifDbB40gohBwjtID0XZNFMGJZMyU8Igb1Zqm2JKh
	pTREdSMPrpUbvXx1k9GHsvKLwN358IL8YB+BXBAK/8bltNvYs09FOwxiH5TLa/jAjswQCvryon2JU
	E7wGmIFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeZaC-0001Sw-9Z; Fri, 29 May 2020 07:37:36 +0000
Received: from twhmllg4.macronix.com ([122.147.135.202])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeZZW-0000qr-Ev
 for linux-mtd@lists.infradead.org; Fri, 29 May 2020 07:36:57 +0000
Received: from localhost.localdomain ([172.17.195.96])
 by TWHMLLG4.macronix.com with ESMTP id 04T7aHpw067318;
 Fri, 29 May 2020 15:36:19 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
From: Mason Yang <masonccyang@mxic.com.tw>
To: broonie@kernel.org, tudor.ambarus@microchip.com, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, boris.brezillon@collabora.com,
 matthias.bgg@gmail.com
Subject: [PATCH v4 2/7] mtd: spi-nor: sfdp: parse xSPI Profile 1.0 table
Date: Fri, 29 May 2020 15:36:10 +0800
Message-Id: <1590737775-4798-3-git-send-email-masonccyang@mxic.com.tw>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1590737775-4798-1-git-send-email-masonccyang@mxic.com.tw>
References: <1590737775-4798-1-git-send-email-masonccyang@mxic.com.tw>
X-MAIL: TWHMLLG4.macronix.com 04T7aHpw067318
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_003654_796433_02858C09 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [122.147.135.202 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: juliensu@mxic.com.tw, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-mtd@lists.infradead.org,
 Mason Yang <masonccyang@mxic.com.tw>, p.yadav@ti.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

JESD251, xSPI profile 1.0 table supports octal DTR mode.
Extract information like the fast read opcode, dummy cycles for various
frequencies, the number of dummy cycles needed for a Read Status
Register command, the number of address bytes needed for a Read
Status Register command, read volatile register command and write
volatile register command.

According to BFPT 20th DWORD of octal maximum speed, driver get it's
specific dummy cycles from profile 1.0 table and then could update
it to device by their fixup hooks.

Since driver get octal DTR read opcode and then set read settings,
expose spi_nor_set_read_settings() in core.h.

Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
---
 drivers/mtd/spi-nor/core.c |   2 +-
 drivers/mtd/spi-nor/core.h |  16 +++++++
 drivers/mtd/spi-nor/sfdp.c | 106 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 123 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index 1ab4386..3799417 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -2204,7 +2204,7 @@ static int spi_nor_check(struct spi_nor *nor)
 	return 0;
 }
 
-static void
+void
 spi_nor_set_read_settings(struct spi_nor_read_command *read,
 			  u8 num_mode_clocks,
 			  u8 num_wait_states,
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index 7a36b22..a33f807 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -191,6 +191,12 @@ struct spi_nor_locking_ops {
  * @size:		the flash memory density in bytes.
  * @page_size:		the page size of the SPI NOR flash memory.
  * @octal_max_speed:	maximum operation speed of device in octal mode.
+ * @rdsr_dummy:		dummy cycles needed for Read Status Register command.
+ * @rdsr_addr_nbytes:	dummy address bytes needed for Read Status Register
+ *			command.
+ * @rd_reg_cmd:		read volatile register command for xSPI device.
+ * @wr_reg_cmd:		write volatile register command for xSPI device.
+ * @dummy_cycles:	dummy cycles used for various frequencies
  * @hwcaps:		describes the read and page program hardware
  *			capabilities.
  * @reads:		read capabilities ordered by priority: the higher index
@@ -214,6 +220,11 @@ struct spi_nor_flash_parameter {
 	u64				size;
 	u32				page_size;
 	u16				octal_max_speed;
+	u8				rdsr_dummy;
+	u8				rdsr_addr_nbytes;
+	u8				rd_reg_cmd;
+	u8				wr_reg_cmd;
+	u8				dummy_cycles;
 
 	struct spi_nor_hwcaps		hwcaps;
 	struct spi_nor_read_command	reads[SNOR_CMD_READ_MAX];
@@ -420,6 +431,11 @@ ssize_t spi_nor_write_data(struct spi_nor *nor, loff_t to, size_t len,
 
 int spi_nor_hwcaps_read2cmd(u32 hwcaps);
 u8 spi_nor_convert_3to4_read(u8 opcode);
+void spi_nor_set_read_settings(struct spi_nor_read_command *read,
+			       u8 num_mode_clocks,
+			       u8 num_wait_states,
+			       u8 opcode,
+			       enum spi_nor_protocol proto);
 void spi_nor_set_pp_settings(struct spi_nor_pp_command *pp, u8 opcode,
 			     enum spi_nor_protocol proto);
 
diff --git a/drivers/mtd/spi-nor/sfdp.c b/drivers/mtd/spi-nor/sfdp.c
index 4d13f66..27a4de4 100644
--- a/drivers/mtd/spi-nor/sfdp.c
+++ b/drivers/mtd/spi-nor/sfdp.c
@@ -20,6 +20,7 @@
 #define SFDP_BFPT_ID		0xff00	/* Basic Flash Parameter Table */
 #define SFDP_SECTOR_MAP_ID	0xff81	/* Sector Map Table */
 #define SFDP_4BAIT_ID		0xff84  /* 4-byte Address Instruction Table */
+#define SFDP_PROFILE1_ID	0xff05	/* xSPI Profile 1.0 table. */
 
 #define SFDP_SIGNATURE		0x50444653U
 #define SFDP_JESD216_MAJOR	1
@@ -27,6 +28,27 @@
 #define SFDP_JESD216A_MINOR	5
 #define SFDP_JESD216B_MINOR	6
 
+/* xSPI Profile 1.0 table (from JESD216D.01). */
+#define XSPI_PF1_DWORD1_RD_CMD                  GENMASK(15, 8)
+#define XSPI_PF1_DWORD1_RDSR_ADDR_BYTES         BIT(29)
+#define XSPI_PF1_DWORD1_RDSR_DUMMY_CYCLES       BIT(28)
+#define XSPI_PF1_DWORD2_RD_REG_CMD              GENMASK(31, 24)
+#define XSPI_PF1_DWORD2_WR_REG_CMD              GENMASK(15, 8)
+#define XSPI_PF1_DUMMY_CYCLES_DEFAULT		20
+#define XSPI_DWORD(x)   ((x) - 1)
+#define XSPI_DWORD_MAX  5
+
+struct sfdp_xspi {
+	u32 dwords[XSPI_DWORD_MAX];
+};
+
+struct xspi_dummy_cycles {
+	u16 speed_hz;	/* Speed MHz */
+	u8 dwords;	/* Dwords index */
+	u32 mask;	/* Mask */
+	u8 shift;	/* Bit shift */
+};
+
 /* Basic Flash Parameter Table 20th DWORD, Max operation speed of device */
 struct octal_max_speed {
 	u8 idx; /* Bits value */
@@ -1117,6 +1139,86 @@ static int spi_nor_parse_4bait(struct spi_nor *nor,
 }
 
 /**
+ * spi_nor_parse_profile1() - parse the xSPI Profile 1.0 table
+ * @nor:		pointer to a 'struct spi_nor'
+ * @param_header:	xspi profile 1 parameter table header
+ * @params:		pointer to the 'struct spi_nor_flash_parameter' to be.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int spi_nor_parse_profile1(struct spi_nor *nor,
+				  const struct sfdp_parameter_header *header,
+				  struct spi_nor_flash_parameter *params)
+{
+	struct sfdp_xspi pfile1;
+	u8 opcode;
+	u32 i, addr;
+	size_t len;
+	int ret;
+	static const struct xspi_dummy_cycles dummy[] = {
+		/* {MHz, Dwords index, Mask, Bit shift} */
+		{ 200, 4, GENMASK(11, 7),   7},
+		{ 166, 5, GENMASK(31, 27), 27},
+		{ 133, 5, GENMASK(21, 17), 17},
+		{ 100, 5, GENMASK(11, 7),   7},
+	};
+
+	if (header->major != SFDP_JESD216_MAJOR ||
+	    header->length < XSPI_DWORD_MAX)
+		return -EINVAL;
+
+	len = min_t(size_t, sizeof(pfile1),
+		    header->length * sizeof(u32));
+
+	memset(&pfile1, 0, sizeof(pfile1));
+
+	addr = SFDP_PARAM_HEADER_PTP(header);
+	ret = spi_nor_read_sfdp(nor, addr, len, &pfile1);
+	if (ret)
+		goto out;
+
+	/* Fix endianness of the xSPI 1.0 DWORDs. */
+	le32_to_cpu_array(pfile1.dwords, XSPI_DWORD_MAX);
+
+	/* Get 8D-8D-8D fast read opcode and dummy cycles. */
+	opcode = FIELD_GET(XSPI_PF1_DWORD1_RD_CMD,
+			   pfile1.dwords[XSPI_DWORD(1)]);
+
+	if (pfile1.dwords[XSPI_DWORD(1)] & XSPI_PF1_DWORD1_RDSR_ADDR_BYTES)
+		params->rdsr_addr_nbytes = 4;
+	else
+		params->rdsr_addr_nbytes = 0;
+
+	if (pfile1.dwords[XSPI_DWORD(1)] & XSPI_PF1_DWORD1_RDSR_DUMMY_CYCLES)
+		params->rdsr_dummy = 8;
+	else
+		params->rdsr_dummy = 4;
+
+	params->rd_reg_cmd = FIELD_GET(XSPI_PF1_DWORD2_RD_REG_CMD,
+				       pfile1.dwords[XSPI_DWORD(2)]);
+	params->wr_reg_cmd = FIELD_GET(XSPI_PF1_DWORD2_WR_REG_CMD,
+				       pfile1.dwords[XSPI_DWORD(2)]);
+
+	/* according to BFPT 20th DOWRD to get devices dummy cycles */
+	for (i = 0; i < ARRAY_SIZE(dummy); i++) {
+		if (params->octal_max_speed == dummy[i].speed_hz) {
+			params->dummy_cycles = (dummy[i].mask &
+				pfile1.dwords[XSPI_DWORD(dummy[i].dwords)]) >>
+				dummy[i].shift;
+			break;
+		}
+	}
+	if (i == ARRAY_SIZE(dummy))
+		params->dummy_cycles = XSPI_PF1_DUMMY_CYCLES_DEFAULT;
+
+	spi_nor_set_read_settings(&params->reads[SNOR_CMD_READ_8_8_8_DTR],
+				  0, params->dummy_cycles,
+				  opcode, SNOR_PROTO_8_8_8_DTR);
+out:
+	return ret;
+}
+
+/**
  * spi_nor_parse_sfdp() - parse the Serial Flash Discoverable Parameters.
  * @nor:		pointer to a 'struct spi_nor'
  * @params:		pointer to the 'struct spi_nor_flash_parameter' to be
@@ -1217,6 +1319,10 @@ int spi_nor_parse_sfdp(struct spi_nor *nor,
 			err = spi_nor_parse_4bait(nor, param_header, params);
 			break;
 
+		case SFDP_PROFILE1_ID:
+			err = spi_nor_parse_profile1(nor, param_header, params);
+			break;
+
 		default:
 			break;
 		}
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
