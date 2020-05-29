Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0431E76E3
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 09:38:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p7nSIGDz7YvN+yIcotRAi6SV8UW3RyLG/Oa5Ws+DGv4=; b=OJCVxUwSSgmWrvECqKRvmCeqSN
	MkINrBiSf6K/qDWEoKvnT5eP9cqL+I03KjG1MwDx2tBM/3AhT1pjePG+ZrZDc2JMCtRrXhQAe/VyU
	OuTBHClvtPcstNx97RnVgnH0BEDBsblxYZEHjfPqXWh7Jsq2lxwAcj65hehz8qQyH6k0U0fGMXmtt
	Xai4N9Io/BAzCDs4hWieJg0PGpH1z9RLN+ZK7ImerUp5KWmSX687R17nao2v4RK1tEzynsl3OyHkI
	USFDePhLtdaX5we5FAp8sCpJ8XrYtII+LlTU3YVxuKbAm8XO62WtBlRgGNxaDVn316Zd5L9EKf15k
	igBOQyYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeZac-0001vV-En; Fri, 29 May 2020 07:38:02 +0000
Received: from twhmllg4.macronix.com ([122.147.135.202])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeZZW-0000qq-Ex
 for linux-mtd@lists.infradead.org; Fri, 29 May 2020 07:36:57 +0000
Received: from localhost.localdomain ([172.17.195.96])
 by TWHMLLG4.macronix.com with ESMTP id 04T7aHpx067318;
 Fri, 29 May 2020 15:36:20 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
From: Mason Yang <masonccyang@mxic.com.tw>
To: broonie@kernel.org, tudor.ambarus@microchip.com, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, boris.brezillon@collabora.com,
 matthias.bgg@gmail.com
Subject: [PATCH v4 3/7] mtd: spi-nor: sfdp: parse command sequences to change
 octal DTR mode
Date: Fri, 29 May 2020 15:36:11 +0800
Message-Id: <1590737775-4798-4-git-send-email-masonccyang@mxic.com.tw>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1590737775-4798-1-git-send-email-masonccyang@mxic.com.tw>
References: <1590737775-4798-1-git-send-email-masonccyang@mxic.com.tw>
X-MAIL: TWHMLLG4.macronix.com 04T7aHpx067318
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_003654_801189_85618145 
X-CRM114-Status: GOOD (  13.02  )
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

A set of simple command sequences is provided which can be executed
directly by the host controller to enable octal DTR mode.

Each command sequence is 8 per byte for single SPI mode.

Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
---
 drivers/mtd/spi-nor/core.h |  20 +++++++++
 drivers/mtd/spi-nor/sfdp.c | 104 +++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 124 insertions(+)

diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index a33f807..8de7f53 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -183,6 +183,23 @@ struct spi_nor_locking_ops {
 };
 
 /**
+ * struct cmd_seq_octal_dtr - command sequences to change to octal DTR mode
+ * Each command sequence is 8 per byte for single SPI mode.
+ * @len:	commmand length of each command sequence.
+ * @opcode:	command code.
+ * @addr:	address offset to device.
+ * @data:	data write to device.
+ */
+struct cmd_seq_octal_dtr {
+	u8 len;
+	u8 opcode;
+	u32 addr;
+	u8 data;
+};
+
+#define CMD_SEQ_NUM	4
+
+/**
  * struct spi_nor_flash_parameter - SPI NOR flash parameters and settings.
  * Includes legacy flash parameters and settings that can be overwritten
  * by the spi_nor_fixups hooks, or dynamically when parsing the JESD216
@@ -205,6 +222,7 @@ struct spi_nor_locking_ops {
  *                      higher index in the array, the higher priority.
  * @erase_map:		the erase map parsed from the SFDP Sector Map Parameter
  *                      Table.
+ * @cmd_seq:		command sequence to change to octal DTR mode.
  * @quad_enable:	enables SPI NOR quad mode.
  * @set_4byte_addr_mode: puts the SPI NOR in 4 byte addressing mode.
  * @convert_addr:	converts an absolute address into something the flash
@@ -232,6 +250,8 @@ struct spi_nor_flash_parameter {
 
 	struct spi_nor_erase_map        erase_map;
 
+	struct cmd_seq_octal_dtr	cmd_seq[CMD_SEQ_NUM];
+
 	int (*quad_enable)(struct spi_nor *nor);
 	int (*set_4byte_addr_mode)(struct spi_nor *nor, bool enable);
 	u32 (*convert_addr)(struct spi_nor *nor, u32 addr);
diff --git a/drivers/mtd/spi-nor/sfdp.c b/drivers/mtd/spi-nor/sfdp.c
index 27a4de4..ef19290 100644
--- a/drivers/mtd/spi-nor/sfdp.c
+++ b/drivers/mtd/spi-nor/sfdp.c
@@ -21,6 +21,7 @@
 #define SFDP_SECTOR_MAP_ID	0xff81	/* Sector Map Table */
 #define SFDP_4BAIT_ID		0xff84  /* 4-byte Address Instruction Table */
 #define SFDP_PROFILE1_ID	0xff05	/* xSPI Profile 1.0 table. */
+#define SFDP_CMD_TO_8DTR_ID	0xff0a  /* Command Sequences to Octal DTR */
 
 #define SFDP_SIGNATURE		0x50444653U
 #define SFDP_JESD216_MAJOR	1
@@ -49,6 +50,19 @@ struct xspi_dummy_cycles {
 	u8 shift;	/* Bit shift */
 };
 
+#define CMD_TO_8DTR_LEN			GENMASK(31, 24)
+#define CMD_TO_8DTR_OPCODE		GENMASK(23, 16)
+#define CMD_TO_8DTR_1_ADDR		GENMASK(15, 8)
+#define CMD_TO_8DTR_1_ADDR_DATA		GENMASK(7, 0)
+#define CMD_TO_8DTR_4_ADDR_MSB		GENMASK(15, 0)
+#define CMD_TO_8DTR_4_ADDR_LSB		GENMASK(31, 16)
+#define CMD_TO_8DTR_4_ADDR_DATA		GENMASK(15, 8)
+#define CMD_TO_8DTR_SIZE_MAX		8
+
+struct sfdp_cmd_to_8dtr {
+	u32	dwords[CMD_TO_8DTR_SIZE_MAX];
+};
+
 /* Basic Flash Parameter Table 20th DWORD, Max operation speed of device */
 struct octal_max_speed {
 	u8 idx; /* Bits value */
@@ -1219,6 +1233,91 @@ static int spi_nor_parse_profile1(struct spi_nor *nor,
 }
 
 /**
+ * spi_nor_parse_cmd_to_8dtr() - parse the command sequence to octal DTR
+ * @nor:		pointer to a 'struct spi_nor'
+ * @param_header:	command sequence to octal DTR parameter table header.
+ * @params:		pointer to the 'struct spi_nor_flash_parameter' to be.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int spi_nor_parse_cmd_to_8dtr(struct spi_nor *nor,
+				     const struct sfdp_parameter_header *header,
+				     struct spi_nor_flash_parameter *params)
+{
+	struct sfdp_cmd_to_8dtr cmd_seq;
+	u32 i, j, addr;
+	size_t len;
+	int ret;
+
+	if (header->major != SFDP_JESD216_MAJOR ||
+	    header->length < CMD_TO_8DTR_SIZE_MAX)
+		return -EINVAL;
+
+	len = min_t(size_t, sizeof(cmd_seq),
+		    header->length * sizeof(u32));
+
+	memset(&cmd_seq, 0, sizeof(cmd_seq));
+
+	addr = SFDP_PARAM_HEADER_PTP(header);
+	ret = spi_nor_read_sfdp(nor, addr, len, &cmd_seq);
+	if (ret)
+		goto out;
+
+	/* Fix endianness of the Command Sequences to octal DTR. */
+	le32_to_cpu_array(cmd_seq.dwords, CMD_TO_8DTR_SIZE_MAX);
+
+	memset(params->cmd_seq, 0, sizeof(params->cmd_seq[CMD_SEQ_NUM]));
+
+	for (i = 0, j = 0;
+	     i < CMD_SEQ_NUM && j < CMD_TO_8DTR_SIZE_MAX; i++, j += 2) {
+		params->cmd_seq[i].len = FIELD_GET(CMD_TO_8DTR_LEN,
+						   cmd_seq.dwords[j]);
+		if (!params->cmd_seq[i].len)
+			break;
+
+		switch (params->cmd_seq[i].len) {
+		case 1:
+			params->cmd_seq[i].opcode =
+				FIELD_GET(CMD_TO_8DTR_OPCODE,
+					  cmd_seq.dwords[j]);
+			break;
+
+		case 3:
+			params->cmd_seq[i].opcode =
+				FIELD_GET(CMD_TO_8DTR_OPCODE,
+					  cmd_seq.dwords[j]);
+			params->cmd_seq[i].addr =
+				FIELD_GET(CMD_TO_8DTR_1_ADDR,
+					  cmd_seq.dwords[j]);
+			params->cmd_seq[i].data =
+				FIELD_GET(CMD_TO_8DTR_1_ADDR_DATA,
+					  cmd_seq.dwords[j]);
+			break;
+
+		case 6:
+			params->cmd_seq[i].opcode =
+				FIELD_GET(CMD_TO_8DTR_OPCODE,
+					  cmd_seq.dwords[j]);
+			params->cmd_seq[i].addr =
+				FIELD_GET(CMD_TO_8DTR_4_ADDR_MSB,
+					  cmd_seq.dwords[j]) << 16 |
+				FIELD_GET(CMD_TO_8DTR_4_ADDR_LSB,
+					  cmd_seq.dwords[j + 1]);
+			params->cmd_seq[i].data =
+				FIELD_GET(CMD_TO_8DTR_4_ADDR_DATA,
+					  cmd_seq.dwords[j + 1]);
+			break;
+
+		default:
+			break;
+		}
+	}
+
+out:
+	return ret;
+}
+
+/**
  * spi_nor_parse_sfdp() - parse the Serial Flash Discoverable Parameters.
  * @nor:		pointer to a 'struct spi_nor'
  * @params:		pointer to the 'struct spi_nor_flash_parameter' to be
@@ -1323,6 +1422,11 @@ int spi_nor_parse_sfdp(struct spi_nor *nor,
 			err = spi_nor_parse_profile1(nor, param_header, params);
 			break;
 
+		case SFDP_CMD_TO_8DTR_ID:
+			err = spi_nor_parse_cmd_to_8dtr(nor,
+							param_header, params);
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
