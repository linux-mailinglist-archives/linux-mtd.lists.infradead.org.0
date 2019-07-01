Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A64248BA
	for <lists+linux-mtd@lfdr.de>; Tue, 21 May 2019 09:08:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mM6WVD4EPu3TVfQb5+q58hnKMCh2X5atCfBwH/kHD7I=; b=WVa/kS+GbKixt7
	WFzyOV5JkKMVxs7vGap0+dUMJM73gfgL1+6jBLlQeuDQc9wLY+UobbDB5qFXB+om67k8qtEznLece
	jixlPOvuzFltJNUnGpXvQ6MzwCwpR3nnYGfvVGZ61vDOSl0AiiApHQHzGYG/dzADJOmi8SrPht7Vm
	TnUTXZOG/onmPKarSyv1y5QS8kFP/5FA4rzH05XpLenQrJsZegfCZ6ztFgrZEXVN4vhaPvABcVshw
	qe4W3fPZx5c7lB5yITwuntcBMTCyj4i4cwNbKAVLIseCPtoRaR9GfGsgvG3KLMsTkEc/KHQtDfgG2
	WTjCzrc3AKuOBVdvVm8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSysi-0004Ee-OW; Tue, 21 May 2019 07:08:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSyrZ-0002th-Ct
 for linux-mtd@lists.infradead.org; Tue, 21 May 2019 07:07:10 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1hSyrH-0006cb-Hm; Tue, 21 May 2019 09:06:47 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hSyrG-0001bK-6k; Tue, 21 May 2019 09:06:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 02/14] mtd: rawnand: fsmc: Use nand_op_trace for operation
 tracing
Date: Tue, 21 May 2019 09:06:31 +0200
Message-Id: <20190521070643.6244-3-s.hauer@pengutronix.de>
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
X-CRM114-CacheID: sfid-20190521_000706_219517_16C569DA 
X-CRM114-Status: GOOD (  12.50  )
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

Replace the different operation tracing functions with a call to
nand_op_trace.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/fsmc_nand.c | 19 ++-----------------
 1 file changed, 2 insertions(+), 17 deletions(-)

diff --git a/drivers/mtd/nand/raw/fsmc_nand.c b/drivers/mtd/nand/raw/fsmc_nand.c
index 6c7ca41354be..a6964feeec77 100644
--- a/drivers/mtd/nand/raw/fsmc_nand.c
+++ b/drivers/mtd/nand/raw/fsmc_nand.c
@@ -613,28 +613,20 @@ static int fsmc_exec_op(struct nand_chip *chip, const struct nand_operation *op,
 	for (op_id = 0; op_id < op->ninstrs; op_id++) {
 		instr = &op->instrs[op_id];
 
+		nand_op_trace("  ", instr);
+
 		switch (instr->type) {
 		case NAND_OP_CMD_INSTR:
-			pr_debug("  ->CMD      [0x%02x]\n",
-				 instr->ctx.cmd.opcode);
-
 			writeb_relaxed(instr->ctx.cmd.opcode, host->cmd_va);
 			break;
 
 		case NAND_OP_ADDR_INSTR:
-			pr_debug("  ->ADDR     [%d cyc]",
-				 instr->ctx.addr.naddrs);
-
 			for (i = 0; i < instr->ctx.addr.naddrs; i++)
 				writeb_relaxed(instr->ctx.addr.addrs[i],
 					       host->addr_va);
 			break;
 
 		case NAND_OP_DATA_IN_INSTR:
-			pr_debug("  ->DATA_IN  [%d B%s]\n", instr->ctx.data.len,
-				 instr->ctx.data.force_8bit ?
-				 ", force 8-bit" : "");
-
 			if (host->mode == USE_DMA_ACCESS)
 				fsmc_read_buf_dma(host, instr->ctx.data.buf.in,
 						  instr->ctx.data.len);
@@ -644,10 +636,6 @@ static int fsmc_exec_op(struct nand_chip *chip, const struct nand_operation *op,
 			break;
 
 		case NAND_OP_DATA_OUT_INSTR:
-			pr_debug("  ->DATA_OUT [%d B%s]\n", instr->ctx.data.len,
-				 instr->ctx.data.force_8bit ?
-				 ", force 8-bit" : "");
-
 			if (host->mode == USE_DMA_ACCESS)
 				fsmc_write_buf_dma(host,
 						   instr->ctx.data.buf.out,
@@ -658,9 +646,6 @@ static int fsmc_exec_op(struct nand_chip *chip, const struct nand_operation *op,
 			break;
 
 		case NAND_OP_WAITRDY_INSTR:
-			pr_debug("  ->WAITRDY  [max %d ms]\n",
-				 instr->ctx.waitrdy.timeout_ms);
-
 			ret = nand_soft_waitrdy(chip,
 						instr->ctx.waitrdy.timeout_ms);
 			break;
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
