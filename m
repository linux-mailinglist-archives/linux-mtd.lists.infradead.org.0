Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6171E5A33
	for <lists+linux-mtd@lfdr.de>; Thu, 28 May 2020 10:03:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rpmPLBZlYoMVDb3XvLSIS+cDgnqU+6D6JkJniDkoINY=; b=DhUKiDonhaUbb3e+kX1RASjf01
	hEb0WszYwMedg0EUONPGzLrf5KMu/6WMWi7UW55J7lMcfodlSNxyY3JfXyYkIPLjQnXwVd2vuN4qq
	ZUvY2M2HScHPePROiODPuvR9YmU+0DkDVHBQPEQfE0jhd/wyJ6fbQr5+7bgnmKfGDWZZnl/hluDQp
	Z6ON+k/2LdM3J2LFNg4s10kNHzn/mi9VmU8dcJIvzyqX+xs6TCpaJIoBQmyqGpPeyny/jQQgUOqT2
	2aytqgY6nnBkarmD9ba+CAZJIRpCSlXePll1/dlaMDCvxo2WCGTUnDkk0buyUYz6MtaRRPmHircz7
	2tBYAxcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeDVV-0004pd-Lb; Thu, 28 May 2020 08:03:17 +0000
Received: from twhmllg4.macronix.com ([211.75.127.132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeDRw-00085q-SN
 for linux-mtd@lists.infradead.org; Thu, 28 May 2020 07:59:39 +0000
Received: from localhost.localdomain ([172.17.195.96])
 by TWHMLLG4.macronix.com with ESMTP id 04S7wMHm030973;
 Thu, 28 May 2020 15:58:33 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
From: Mason Yang <masonccyang@mxic.com.tw>
To: broonie@kernel.org, tudor.ambarus@microchip.com, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, boris.brezillon@collabora.com,
 matthias.bgg@gmail.com
Subject: [PATCH v3 13/14] mtd: spi-nor: core: execute command sequences to
 change octal DTR mode
Date: Thu, 28 May 2020 15:58:15 +0800
Message-Id: <1590652696-8844-14-git-send-email-masonccyang@mxic.com.tw>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1590652696-8844-1-git-send-email-masonccyang@mxic.com.tw>
References: <1590652696-8844-1-git-send-email-masonccyang@mxic.com.tw>
X-MAIL: TWHMLLG4.macronix.com 04S7wMHm030973
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_005937_254598_AE9E8EE1 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.127.132 listed in list.dnswl.org]
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
Cc: juliensu@mxic.com.tw, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-mtd@lists.infradead.org,
 Mason Yang <masonccyang@mxic.com.tw>, p.yadav@ti.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Execute command sequences to change octal DTR mode.

Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
---
 drivers/mtd/spi-nor/core.c | 71 ++++++++++++++++++++++++++++++++++++++++++++++
 drivers/mtd/spi-nor/core.h |  3 ++
 2 files changed, 74 insertions(+)

diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index a353830..caac58cd 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -425,6 +425,77 @@ int spi_nor_write_cr2(struct spi_nor *nor, u32 addr, u8 *cr2)
 }
 
 /**
+ * spi_nor_cmd_seq_octal_dtr() - command sequences to change to octal DTR mode
+ * @nor:	pointer to 'struct spi_nor'.
+ * @enable:	enable Octal DTR.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+int spi_nor_cmd_seq_octal_dtr(struct spi_nor *nor, bool enable)
+{
+	struct spi_nor_flash_parameter *p = nor->params;
+	struct cmd_seq_octal_dtr *cs = p->cmd_seq;
+	int i, ret;
+	struct spi_mem_op op;
+
+	if (!nor->spimem || !p->cmd_seq[0].len)
+		return -ENOTSUPP;
+
+	if (!enable)
+		return 0;
+
+	for (i = 0; i < CMD_SEQ_OCTAL_DTR_DWORD_LEN; i++) {
+		switch (p->cmd_seq[i].len) {
+		case 1:
+			op = (struct spi_mem_op)
+				SPI_MEM_OP(SPI_MEM_OP_CMD(cs[i].opcode, 1),
+					   SPI_MEM_OP_NO_ADDR,
+					   SPI_MEM_OP_NO_DUMMY,
+					   SPI_MEM_OP_NO_DATA);
+
+			ret = spi_mem_exec_op(nor->spimem, &op);
+			if (ret)
+				return ret;
+			break;
+
+		case 3:
+			op = (struct spi_mem_op)
+				SPI_MEM_OP(SPI_MEM_OP_CMD(cs[i].opcode, 1),
+					   SPI_MEM_OP_ADDR(1, cs[i].addr, 1),
+					   SPI_MEM_OP_NO_DUMMY,
+					   SPI_MEM_OP_DATA_OUT(1,
+							       &cs[i].data, 1));
+
+			ret = spi_mem_exec_op(nor->spimem, &op);
+			if (ret)
+				return ret;
+			break;
+
+		case 6:
+			op = (struct spi_mem_op)
+				SPI_MEM_OP(SPI_MEM_OP_CMD(cs[i].opcode, 1),
+					   SPI_MEM_OP_ADDR(4, cs[i].addr, 1),
+					   SPI_MEM_OP_NO_DUMMY,
+					   SPI_MEM_OP_DATA_OUT(1,
+							       &cs[i].data, 1));
+
+			ret = spi_mem_exec_op(nor->spimem, &op);
+			if (ret)
+				return ret;
+			break;
+
+		default:
+			dev_err(nor->dev,
+				"Error %d sequences to Octal DTR\n",
+				p->cmd_seq[i].len);
+			break;
+		}
+	}
+
+	return ret;
+}
+
+/**
  * spi_nor_read_sr() - Read the Status Register.
  * @nor:	pointer to 'struct spi_nor'.
  * @sr:		pointer to a DMA-able buffer where the value of the
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index 9b0e0ba..b47bc44d 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -199,6 +199,8 @@ struct cmd_seq_octal_dtr {
 	u8 data;
 };
 
+#define CMD_SEQ_OCTAL_DTR_DWORD_LEN	4
+
 /**
  * struct spi_nor_flash_parameter - SPI NOR flash parameters and settings.
  * Includes legacy flash parameters and settings that can be overwritten
@@ -442,6 +444,7 @@ void spi_nor_spimem_setup_op(const struct spi_nor *nor,
 int spi_nor_write_disable(struct spi_nor *nor);
 int spi_nor_read_cr2(struct spi_nor *nor, u32 addr, u8 *cr2);
 int spi_nor_write_cr2(struct spi_nor *nor, u32 addr, u8 *cr2);
+int spi_nor_cmd_seq_octal_dtr(struct spi_nor *nor, bool enable);
 int spi_nor_set_4byte_addr_mode(struct spi_nor *nor, bool enable);
 int spi_nor_write_ear(struct spi_nor *nor, u8 ear);
 int spi_nor_wait_till_ready(struct spi_nor *nor);
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
