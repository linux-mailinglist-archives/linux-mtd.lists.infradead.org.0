Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD80248AE
	for <lists+linux-mtd@lfdr.de>; Tue, 21 May 2019 09:07:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+FXe13kvpNUfa0xxWS23MopZE6upjy9+9EezD5vcAZ8=; b=LZpKgjMTFStnFe
	7Dzrp0uoe91tHazjeXMnirVPn1rgk6SPUSL0ql00Afigk5HZuNPnJMLQGUdho91Ev1DWN38QDIEQZ
	RshztNexfmsJi4CW7HWgiDEK6bDgQj3W0K0lr8i1bz1nVWWleBrotPvrpRs5EVE+X9XSTdO/J45rx
	x5hv2e0I8PpC/9s1fA6Nk0v6FIGMglaaE0IxArWYe2Pux3IOGowiIc/m9B7P9en2kz4yE0YajxZyw
	hhHwLM7BstjDaj7egX5meklJogJ16JpzmQzHSZzFTWfIgUdlt/g92d0KW0rP5Dw5ML3hLqYoYjXHt
	iHCDKLXDoM61lARNQ7yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSyrc-0002lw-IT; Tue, 21 May 2019 07:07:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSyrJ-0002bH-MC
 for linux-mtd@lists.infradead.org; Tue, 21 May 2019 07:06:51 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1hSyrH-0006cl-Hz; Tue, 21 May 2019 09:06:47 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hSyrG-0001bo-E0; Tue, 21 May 2019 09:06:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 12/14] dmaengine: mxs: Add header file to be shared with gpmi
 nand driver
Date: Tue, 21 May 2019 09:06:41 +0200
Message-Id: <20190521070643.6244-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190521070643.6244-1-s.hauer@pengutronix.de>
References: <20190521070643.6244-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_000649_961582_98555A55 
X-CRM114-Status: GOOD (  18.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: kernel@pengutronix.de, Richard Weinberger <richard@nod.at>,
 Sascha Hauer <s.hauer@pengutronix.de>, Vinod Koul <vkoul@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Han Xu <han.xu@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The mxs dma driver can do PIO transfers. A pointer to the PIO words
to transfer is passed in the struct scatterlist * argument of
dmaengine_prep_slave_sg(). It's quite ugly and non obvious to cast
u32 * to struct scatterlist * each time when calling
dmaengine_prep_slave_sg(), so add a static inline wrapper function
to be called by the user along with a description what is going on.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Acked-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/dma/mxs-dma.c                      |  1 +
 drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c | 36 +++++++++-------------
 include/linux/dma/mxs-dma.h                | 21 +++++++++++++
 3 files changed, 36 insertions(+), 22 deletions(-)
 create mode 100644 include/linux/dma/mxs-dma.h

diff --git a/drivers/dma/mxs-dma.c b/drivers/dma/mxs-dma.c
index ce92a3626ea4..62ee9328aea1 100644
--- a/drivers/dma/mxs-dma.c
+++ b/drivers/dma/mxs-dma.c
@@ -24,6 +24,7 @@
 #include <linux/of_device.h>
 #include <linux/of_dma.h>
 #include <linux/list.h>
+#include <linux/dma/mxs-dma.h>
 
 #include <asm/irq.h>
 
diff --git a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
index 87af02f34dc0..9c44d6d21d04 100644
--- a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
+++ b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
@@ -15,6 +15,7 @@
 #include <linux/of.h>
 #include <linux/of_device.h>
 #include <linux/pm_runtime.h>
+#include <linux/dma/mxs-dma.h>
 #include "gpmi-nand.h"
 #include "gpmi-regs.h"
 #include "bch-regs.h"
@@ -914,9 +915,8 @@ static int gpmi_send_command(struct gpmi_nand_data *this)
 		| BM_GPMI_CTRL0_ADDRESS_INCREMENT
 		| BF_GPMI_CTRL0_XFER_COUNT(this->command_length);
 	pio[1] = pio[2] = 0;
-	desc = dmaengine_prep_slave_sg(channel,
-					(struct scatterlist *)pio,
-					ARRAY_SIZE(pio), DMA_TRANS_NONE, 0);
+	desc = mxs_dmaengine_prep_pio(channel, pio, ARRAY_SIZE(pio),
+				      DMA_TRANS_NONE, 0);
 	if (!desc)
 		return -EINVAL;
 
@@ -988,8 +988,8 @@ static int gpmi_send_data(struct gpmi_nand_data *this, const void *buf, int len)
 		| BF_GPMI_CTRL0_ADDRESS(address)
 		| BF_GPMI_CTRL0_XFER_COUNT(len);
 	pio[1] = 0;
-	desc = dmaengine_prep_slave_sg(channel, (struct scatterlist *)pio,
-					ARRAY_SIZE(pio), DMA_TRANS_NONE, 0);
+	desc = mxs_dmaengine_prep_pio(channel, pio, ARRAY_SIZE(pio),
+				      DMA_TRANS_NONE, 0);
 	if (!desc)
 		return -EINVAL;
 
@@ -1025,9 +1025,8 @@ static int gpmi_read_data(struct gpmi_nand_data *this, void *buf, int len)
 		| BF_GPMI_CTRL0_ADDRESS(BV_GPMI_CTRL0_ADDRESS__NAND_DATA)
 		| BF_GPMI_CTRL0_XFER_COUNT(len);
 	pio[1] = 0;
-	desc = dmaengine_prep_slave_sg(channel,
-					(struct scatterlist *)pio,
-					ARRAY_SIZE(pio), DMA_TRANS_NONE, 0);
+	desc = mxs_dmaengine_prep_pio(channel, pio, ARRAY_SIZE(pio),
+				      DMA_TRANS_NONE, 0);
 	if (!desc)
 		return -EINVAL;
 
@@ -1083,10 +1082,8 @@ static int gpmi_send_page(struct gpmi_nand_data *this, dma_addr_t payload,
 	pio[4] = payload;
 	pio[5] = auxiliary;
 
-	desc = dmaengine_prep_slave_sg(channel,
-					(struct scatterlist *)pio,
-					ARRAY_SIZE(pio), DMA_TRANS_NONE,
-					DMA_CTRL_ACK);
+	desc = mxs_dmaengine_prep_pio(channel, pio, ARRAY_SIZE(pio),
+				      DMA_TRANS_NONE, DMA_CTRL_ACK);
 	if (!desc)
 		return -EINVAL;
 
@@ -1117,9 +1114,7 @@ static int gpmi_read_page(struct gpmi_nand_data *this, dma_addr_t payload,
 		| BF_GPMI_CTRL0_ADDRESS(address)
 		| BF_GPMI_CTRL0_XFER_COUNT(0);
 	pio[1] = 0;
-	desc = dmaengine_prep_slave_sg(channel,
-				(struct scatterlist *)pio, 2,
-				DMA_TRANS_NONE, 0);
+	desc = mxs_dmaengine_prep_pio(channel, pio, 2, DMA_TRANS_NONE, 0);
 	if (!desc)
 		return -EINVAL;
 
@@ -1144,10 +1139,8 @@ static int gpmi_read_page(struct gpmi_nand_data *this, dma_addr_t payload,
 	pio[3] = geo->page_size;
 	pio[4] = payload;
 	pio[5] = auxiliary;
-	desc = dmaengine_prep_slave_sg(channel,
-					(struct scatterlist *)pio,
-					ARRAY_SIZE(pio), DMA_TRANS_NONE,
-					DMA_CTRL_ACK);
+	desc = mxs_dmaengine_prep_pio(channel, pio, ARRAY_SIZE(pio),
+				      DMA_TRANS_NONE, DMA_CTRL_ACK);
 	if (!desc)
 		return -EINVAL;
 
@@ -1163,9 +1156,8 @@ static int gpmi_read_page(struct gpmi_nand_data *this, dma_addr_t payload,
 		| BF_GPMI_CTRL0_XFER_COUNT(geo->page_size);
 	pio[1] = 0;
 	pio[2] = 0; /* clear GPMI_HW_GPMI_ECCCTRL, disable the BCH. */
-	desc = dmaengine_prep_slave_sg(channel,
-				(struct scatterlist *)pio, 3,
-				DMA_TRANS_NONE, DMA_CTRL_ACK);
+	desc = mxs_dmaengine_prep_pio(channel, pio, 3, DMA_TRANS_NONE,
+				      DMA_CTRL_ACK);
 	if (!desc)
 		return -EINVAL;
 
diff --git a/include/linux/dma/mxs-dma.h b/include/linux/dma/mxs-dma.h
new file mode 100644
index 000000000000..092b2a7b92ac
--- /dev/null
+++ b/include/linux/dma/mxs-dma.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _MXS_DMA_H_
+#define _MXS_DMA_H_
+
+#include <linux/dmaengine.h>
+
+/*
+ * The mxs dmaengine can do PIO transfers. We pass a pointer to the PIO words
+ * in the second argument to dmaengine_prep_slave_sg when the direction is
+ * set to DMA_TRANS_NONE. To make this clear and to prevent users from doing
+ * the error prone casting we have this wrapper function
+ */
+static inline struct dma_async_tx_descriptor *mxs_dmaengine_prep_pio(
+        struct dma_chan *chan, u32 *pio, unsigned int npio,
+        enum dma_transfer_direction dir, unsigned long flags)
+{
+	return dmaengine_prep_slave_sg(chan, (struct scatterlist *)pio, npio,
+				       dir, flags);
+}
+
+#endif /* _MXS_DMA_H_ */
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
