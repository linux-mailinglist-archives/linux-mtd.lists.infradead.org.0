Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8D7248B3
	for <lists+linux-mtd@lfdr.de>; Tue, 21 May 2019 09:07:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GddE52FvMSqemkl0/NxS3OVIGLpcLNlVlqURFJLdSMw=; b=HylArITLWWlIyT
	Z1MxZQj5qF7Z+WQX1qKSO3LEHTazAeFdk+mMIUTSD8qQgiiKuNIYaelh51Ixv68YwrFauu2AD/Qi8
	aKMIZSQxtNclAewaeEpbqMqdt8oYxLqcBxFYRuBOzou65XnuWtUmAA5GsPBFgrsZR7ioM0eHwZY20
	Q5RdKYJEdyWL8fWDfQHtYWkzfT9XzuD8XvMyyoDnDalBoe/Ql26EC8/V4SAMiQrRG6siDsftbbxVg
	psdUGaPFU4UnhcA+tJG9MCzuAIl7zif0ICybX++7mt1TtlyQaOGt5kwy4e1jeDPidtHSK6H+4JnyP
	7MaqKVJoYuvSpZ1s5g5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSysB-0003ZD-HJ; Tue, 21 May 2019 07:07:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSyrR-0002i2-Cn
 for linux-mtd@lists.infradead.org; Tue, 21 May 2019 07:07:01 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1hSyrH-0006ck-Hr; Tue, 21 May 2019 09:06:47 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hSyrG-0001bl-DK; Tue, 21 May 2019 09:06:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 11/14] mtd: rawnand: gpmi: drop unnecessary flag
Date: Tue, 21 May 2019 09:06:40 +0200
Message-Id: <20190521070643.6244-12-s.hauer@pengutronix.de>
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
X-CRM114-CacheID: sfid-20190521_000657_952891_4BD4AED4 
X-CRM114-Status: GOOD (  12.74  )
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

The DMA_PREP_INTERRUPT flag is no longer needed by the mxs DMA driver,
drop it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
index c9e4a27fc07a..87af02f34dc0 100644
--- a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
+++ b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
@@ -926,8 +926,7 @@ static int gpmi_send_command(struct gpmi_nand_data *this)
 	sg_init_one(sgl, this->cmd_buffer, this->command_length);
 	dma_map_sg(this->dev, sgl, 1, DMA_TO_DEVICE);
 	desc = dmaengine_prep_slave_sg(channel,
-				sgl, 1, DMA_MEM_TO_DEV,
-				DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
+				sgl, 1, DMA_MEM_TO_DEV, DMA_CTRL_ACK);
 	if (!desc)
 		return -EINVAL;
 
@@ -997,8 +996,7 @@ static int gpmi_send_data(struct gpmi_nand_data *this, const void *buf, int len)
 	/* [2] send DMA request */
 	prepare_data_dma(this, buf, len, DMA_TO_DEVICE);
 	desc = dmaengine_prep_slave_sg(channel, &this->data_sgl,
-					1, DMA_MEM_TO_DEV,
-					DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
+					1, DMA_MEM_TO_DEV, DMA_CTRL_ACK);
 	if (!desc)
 		return -EINVAL;
 
@@ -1036,8 +1034,7 @@ static int gpmi_read_data(struct gpmi_nand_data *this, void *buf, int len)
 	/* [2] : send DMA request */
 	direct = prepare_data_dma(this, buf, len, DMA_FROM_DEVICE);
 	desc = dmaengine_prep_slave_sg(channel, &this->data_sgl,
-					1, DMA_DEV_TO_MEM,
-					DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
+					1, DMA_DEV_TO_MEM, DMA_CTRL_ACK);
 	if (!desc)
 		return -EINVAL;
 
@@ -1150,7 +1147,7 @@ static int gpmi_read_page(struct gpmi_nand_data *this, dma_addr_t payload,
 	desc = dmaengine_prep_slave_sg(channel,
 					(struct scatterlist *)pio,
 					ARRAY_SIZE(pio), DMA_TRANS_NONE,
-					DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
+					DMA_CTRL_ACK);
 	if (!desc)
 		return -EINVAL;
 
@@ -1168,8 +1165,7 @@ static int gpmi_read_page(struct gpmi_nand_data *this, dma_addr_t payload,
 	pio[2] = 0; /* clear GPMI_HW_GPMI_ECCCTRL, disable the BCH. */
 	desc = dmaengine_prep_slave_sg(channel,
 				(struct scatterlist *)pio, 3,
-				DMA_TRANS_NONE,
-				DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
+				DMA_TRANS_NONE, DMA_CTRL_ACK);
 	if (!desc)
 		return -EINVAL;
 
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
