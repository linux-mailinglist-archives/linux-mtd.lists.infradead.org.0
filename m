Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFDC1E7703
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 09:39:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4ge4CgpfBZhl1rMB5M/NwfE1ATiiVRCEISG3UfcAIHk=; b=e8I6C58SwsXVnz/UHE2UJz044o
	NjAv+omtnslCxux7OJOWggUNsxdifw8tseRJwInOoecV1gmR2Ses0K48O/jTE5YU1mQ0h7bt7Lo4i
	p2Cjxe0EALSYxymm6vF5vNlAjQSpPM6UCTKruIxts0oYnLF6IvalSxQO8SRKVcfv04hLpvxz/HaMs
	hzcYgpwoFKB8+NPXVSGxdNPECTtS8SnLPgKaAhmbJtRnMdxZGArq2pF4h9Uxn5+wtSNIjZrgxQKzE
	FlM2MVuPQunnMJwBRy6wCkVTS1Mckw244KVGzTr/+IbwUszyxzPQGY9RVgrUw7cEiQJDTTzie+21V
	ZY9yxh0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeZbS-0002oq-OT; Fri, 29 May 2020 07:38:54 +0000
Received: from twhmllg4.macronix.com ([122.147.135.202])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeZZl-0001Dq-HH
 for linux-mtd@lists.infradead.org; Fri, 29 May 2020 07:37:11 +0000
Received: from localhost.localdomain ([172.17.195.96])
 by TWHMLLG4.macronix.com with ESMTP id 04T7aHq3067318;
 Fri, 29 May 2020 15:36:23 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
From: Mason Yang <masonccyang@mxic.com.tw>
To: broonie@kernel.org, tudor.ambarus@microchip.com, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, boris.brezillon@collabora.com,
 matthias.bgg@gmail.com
Subject: [PATCH v4 7/7] mtd: spi-nor: macronix: Add Octal 8D-8D-8D supports
 for Macronix mx25uw51245g
Date: Fri, 29 May 2020 15:36:15 +0800
Message-Id: <1590737775-4798-8-git-send-email-masonccyang@mxic.com.tw>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1590737775-4798-1-git-send-email-masonccyang@mxic.com.tw>
References: <1590737775-4798-1-git-send-email-masonccyang@mxic.com.tw>
X-MAIL: TWHMLLG4.macronix.com 04T7aHq3067318
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_003709_877964_4D6504BB 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
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

Macronix mx25uw51245g is a SPI NOR that supports 1-1-1/8-8-8 mode.

Correct the dummy cycles to device for various frequencies
after xSPI profile 1.0 table parsed.

Enable mx25uw51245g to Octal DTR mode by executing the command sequences
to change to octal DTR mode.

Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
---
 drivers/mtd/spi-nor/macronix.c | 55 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/drivers/mtd/spi-nor/macronix.c b/drivers/mtd/spi-nor/macronix.c
index 96735d8..6c9a24c 100644
--- a/drivers/mtd/spi-nor/macronix.c
+++ b/drivers/mtd/spi-nor/macronix.c
@@ -8,6 +8,57 @@
 
 #include "core.h"
 
+#define MXIC_CR2_DUMMY_SET_ADDR 0x300
+
+/* Fixup the dummy cycles to device and setup octa_dtr_enable() */
+static void mx25uw51245g_post_sfdp_fixups(struct spi_nor *nor)
+{
+	struct spi_nor_flash_parameter *params = nor->params;
+	int ret;
+	u8 rdc, wdc;
+
+	ret = spi_nor_read_cr2(nor, MXIC_CR2_DUMMY_SET_ADDR, &rdc);
+	if (ret)
+		return;
+
+	/* Refer to dummy cycle and frequency table(MHz) */
+	switch (params->dummy_cycles) {
+	case 10:	/* 10 dummy cycles for 104 MHz */
+		wdc = 5;
+		break;
+	case 12:	/* 12 dummy cycles for 133 MHz */
+		wdc = 4;
+		break;
+	case 16:	/* 16 dummy cycles for 166 MHz */
+		wdc = 2;
+		break;
+	case 18:	/* 18 dummy cycles for 173 MHz */
+		wdc = 1;
+		break;
+	case 20:	/* 20 dummy cycles for 200 MHz */
+	default:
+		wdc = 0;
+	}
+
+	if (rdc != wdc)
+		spi_nor_write_cr2(nor, MXIC_CR2_DUMMY_SET_ADDR, &wdc);
+
+	if (params->cmd_seq[0].len) {
+		params->octal_dtr_enable = spi_nor_cmd_seq_octal_dtr;
+		params->hwcaps.mask |= SNOR_HWCAPS_READ_8_8_8_DTR;
+		params->hwcaps.mask |= SNOR_HWCAPS_PP_8_8_8_DTR;
+
+	} else {
+		params->octal_dtr_enable = NULL;
+		params->hwcaps.mask &= ~SNOR_HWCAPS_READ_8_8_8_DTR;
+		params->hwcaps.mask &= ~SNOR_HWCAPS_PP_8_8_8_DTR;
+	}
+}
+
+static struct spi_nor_fixups mx25uw51245g_fixups = {
+	.post_sfdp = mx25uw51245g_post_sfdp_fixups,
+};
+
 static int
 mx25l25635_post_bfpt_fixups(struct spi_nor *nor,
 			    const struct sfdp_parameter_header *bfpt_header,
@@ -84,6 +135,10 @@
 			      SPI_NOR_QUAD_READ) },
 	{ "mx66l1g55g",  INFO(0xc2261b, 0, 64 * 1024, 2048,
 			      SPI_NOR_QUAD_READ) },
+	{ "mx25uw51245g", INFO(0xc2813a, 0, 64 * 1024, 1024,
+			      SECT_4K | SPI_NOR_4B_OPCODES |
+			      SPI_NOR_OCTAL_DTR_READ)
+			      .fixups = &mx25uw51245g_fixups },
 };
 
 static void macronix_default_init(struct spi_nor *nor)
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
