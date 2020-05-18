Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 295D11D7E30
	for <lists+linux-mtd@lfdr.de>; Mon, 18 May 2020 18:19:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RvbEKxRyeOf0f7Uq9rzqbfkVPxqnZwNM1cZq8NOebao=; b=nTQDOwPj/TbgZl
	LAASMN+NJblTH3e/CQvhBVLYwz1OkaWdYhXgBnm4iB5supPp/om/+LjI3l1EzNlEjgMxl0HA20b/m
	emtPhKY4cjNdPlta0ZxNKG8Ws75WsvaMNczd8CQsy0IPy5CWvezfS1fVfb6YgIyKeNVQBDLqcjlT6
	S2EI+yjbksfdHScDEUmI0pHZALD8ZKCUJgitTEzleDsxsHaywN+97jJgIYpUXeWhqQWiT2Gl326Ix
	7DL70c4xMi8xnSB7ediDJhkkFX7MyALsrjovQ1I4OXhEnXdMjwWffwchRDNGECGbuZBR2vBarQjrX
	PV0Z/gWdwHSkEL3YzVtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaiUN-0008T7-E3; Mon, 18 May 2020 16:19:39 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaiSp-0006pm-Gy
 for linux-mtd@lists.infradead.org; Mon, 18 May 2020 16:18:05 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id A923A2A0A89;
 Mon, 18 May 2020 17:18:00 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: [PATCH v3 6/6] mtd: rawnand: atmel: Get rid of the legacy interface
 implementation
Date: Mon, 18 May 2020 18:17:54 +0200
Message-Id: <20200518161754.302415-7-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200518161754.302415-1-boris.brezillon@collabora.com>
References: <20200518161754.302415-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_091803_844285_B68DFA35 
X-CRM114-Status: GOOD (  17.99  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Richard Weinberger <richard@nod.at>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Now that exec_op() is implemented, we can get rid of all the legacy
hooks.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
Changes in v3:
* Add R-b

Changes in v2:
* New patch
---
 drivers/mtd/nand/raw/atmel/nand-controller.c | 198 +------------------
 1 file changed, 1 insertion(+), 197 deletions(-)

diff --git a/drivers/mtd/nand/raw/atmel/nand-controller.c b/drivers/mtd/nand/raw/atmel/nand-controller.c
index 301ff1275057..9c7f8c616f01 100644
--- a/drivers/mtd/nand/raw/atmel/nand-controller.c
+++ b/drivers/mtd/nand/raw/atmel/nand-controller.c
@@ -417,133 +417,6 @@ static int atmel_nand_dma_transfer(struct atmel_nand_controller *nc,
 	return -EIO;
 }
 
-static u8 atmel_nand_read_byte(struct nand_chip *chip)
-{
-	struct atmel_nand *nand = to_atmel_nand(chip);
-
-	return ioread8(nand->activecs->io.virt);
-}
-
-static void atmel_nand_write_byte(struct nand_chip *chip, u8 byte)
-{
-	struct atmel_nand *nand = to_atmel_nand(chip);
-
-	if (chip->options & NAND_BUSWIDTH_16)
-		iowrite16(byte | (byte << 8), nand->activecs->io.virt);
-	else
-		iowrite8(byte, nand->activecs->io.virt);
-}
-
-static void atmel_nand_read_buf(struct nand_chip *chip, u8 *buf, int len)
-{
-	struct atmel_nand *nand = to_atmel_nand(chip);
-	struct atmel_nand_controller *nc;
-
-	nc = to_nand_controller(chip->controller);
-
-	/*
-	 * If the controller supports DMA, the buffer address is DMA-able and
-	 * len is long enough to make DMA transfers profitable, let's trigger
-	 * a DMA transfer. If it fails, fallback to PIO mode.
-	 */
-	if (nc->dmac && virt_addr_valid(buf) &&
-	    len >= MIN_DMA_LEN &&
-	    !atmel_nand_dma_transfer(nc, buf, nand->activecs->io.dma, len,
-				     DMA_FROM_DEVICE))
-		return;
-
-	if (chip->options & NAND_BUSWIDTH_16)
-		ioread16_rep(nand->activecs->io.virt, buf, len / 2);
-	else
-		ioread8_rep(nand->activecs->io.virt, buf, len);
-}
-
-static void atmel_nand_write_buf(struct nand_chip *chip, const u8 *buf, int len)
-{
-	struct atmel_nand *nand = to_atmel_nand(chip);
-	struct atmel_nand_controller *nc;
-
-	nc = to_nand_controller(chip->controller);
-
-	/*
-	 * If the controller supports DMA, the buffer address is DMA-able and
-	 * len is long enough to make DMA transfers profitable, let's trigger
-	 * a DMA transfer. If it fails, fallback to PIO mode.
-	 */
-	if (nc->dmac && virt_addr_valid(buf) &&
-	    len >= MIN_DMA_LEN &&
-	    !atmel_nand_dma_transfer(nc, (void *)buf, nand->activecs->io.dma,
-				     len, DMA_TO_DEVICE))
-		return;
-
-	if (chip->options & NAND_BUSWIDTH_16)
-		iowrite16_rep(nand->activecs->io.virt, buf, len / 2);
-	else
-		iowrite8_rep(nand->activecs->io.virt, buf, len);
-}
-
-static int atmel_nand_dev_ready(struct nand_chip *chip)
-{
-	struct atmel_nand *nand = to_atmel_nand(chip);
-
-	return gpiod_get_value(nand->activecs->rb.gpio);
-}
-
-static void atmel_nand_select_chip(struct nand_chip *chip, int cs)
-{
-	struct atmel_nand *nand = to_atmel_nand(chip);
-
-	if (cs < 0 || cs >= nand->numcs) {
-		nand->activecs = NULL;
-		chip->legacy.dev_ready = NULL;
-		return;
-	}
-
-	nand->activecs = &nand->cs[cs];
-
-	if (nand->activecs->rb.type == ATMEL_NAND_GPIO_RB)
-		chip->legacy.dev_ready = atmel_nand_dev_ready;
-}
-
-static int atmel_hsmc_nand_dev_ready(struct nand_chip *chip)
-{
-	struct atmel_nand *nand = to_atmel_nand(chip);
-	struct atmel_hsmc_nand_controller *nc;
-	u32 status;
-
-	nc = to_hsmc_nand_controller(chip->controller);
-
-	regmap_read(nc->base.smc, ATMEL_HSMC_NFC_SR, &status);
-
-	return status & ATMEL_HSMC_NFC_SR_RBEDGE(nand->activecs->rb.id);
-}
-
-static void atmel_hsmc_nand_select_chip(struct nand_chip *chip, int cs)
-{
-	struct mtd_info *mtd = nand_to_mtd(chip);
-	struct atmel_nand *nand = to_atmel_nand(chip);
-	struct atmel_hsmc_nand_controller *nc;
-
-	nc = to_hsmc_nand_controller(chip->controller);
-
-	atmel_nand_select_chip(chip, cs);
-
-	if (!nand->activecs)
-		return;
-
-	if (nand->activecs->rb.type == ATMEL_NAND_NATIVE_RB)
-		chip->legacy.dev_ready = atmel_hsmc_nand_dev_ready;
-
-	regmap_update_bits(nc->base.smc, ATMEL_HSMC_NFC_CFG,
-			   ATMEL_HSMC_NFC_CFG_PAGESIZE_MASK |
-			   ATMEL_HSMC_NFC_CFG_SPARESIZE_MASK |
-			   ATMEL_HSMC_NFC_CFG_RSPARE |
-			   ATMEL_HSMC_NFC_CFG_WSPARE,
-			   ATMEL_HSMC_NFC_CFG_PAGESIZE(mtd->writesize) |
-			   ATMEL_HSMC_NFC_CFG_SPARESIZE(mtd->oobsize) |
-			   ATMEL_HSMC_NFC_CFG_RSPARE);
-}
-
 static int atmel_nfc_exec_op(struct atmel_hsmc_nand_controller *nc, bool poll)
 {
 	u8 *addrs = nc->op.addrs;
@@ -594,53 +467,6 @@ static int atmel_nfc_exec_op(struct atmel_hsmc_nand_controller *nc, bool poll)
 	return ret;
 }
 
-static void atmel_hsmc_nand_cmd_ctrl(struct nand_chip *chip, int dat,
-				     unsigned int ctrl)
-{
-	struct atmel_nand *nand = to_atmel_nand(chip);
-	struct atmel_hsmc_nand_controller *nc;
-
-	nc = to_hsmc_nand_controller(chip->controller);
-
-	if (ctrl & NAND_ALE) {
-		if (nc->op.naddrs == ATMEL_NFC_MAX_ADDR_CYCLES)
-			return;
-
-		nc->op.addrs[nc->op.naddrs++] = dat;
-	} else if (ctrl & NAND_CLE) {
-		if (nc->op.ncmds > 1)
-			return;
-
-		nc->op.cmds[nc->op.ncmds++] = dat;
-	}
-
-	if (dat == NAND_CMD_NONE) {
-		nc->op.cs = nand->activecs->id;
-		atmel_nfc_exec_op(nc, true);
-	}
-}
-
-static void atmel_nand_cmd_ctrl(struct nand_chip *chip, int cmd,
-				unsigned int ctrl)
-{
-	struct atmel_nand *nand = to_atmel_nand(chip);
-	struct atmel_nand_controller *nc;
-
-	nc = to_nand_controller(chip->controller);
-
-	if ((ctrl & NAND_CTRL_CHANGE) && nand->activecs->csgpio) {
-		if (ctrl & NAND_NCE)
-			gpiod_set_value(nand->activecs->csgpio, 0);
-		else
-			gpiod_set_value(nand->activecs->csgpio, 1);
-	}
-
-	if (ctrl & NAND_ALE)
-		writeb(cmd, nand->activecs->io.virt + nc->caps->ale_offs);
-	else if (ctrl & NAND_CLE)
-		writeb(cmd, nand->activecs->io.virt + nc->caps->cle_offs);
-}
-
 static void atmel_nand_data_in(struct atmel_nand *nand, void *buf,
 			       unsigned int len, bool force_8bit)
 {
@@ -1721,19 +1547,9 @@ static void atmel_nand_init(struct atmel_nand_controller *nc,
 	mtd->dev.parent = nc->dev;
 	nand->base.controller = &nc->base;
 
-	chip->legacy.cmd_ctrl = atmel_nand_cmd_ctrl;
-	chip->legacy.read_byte = atmel_nand_read_byte;
-	chip->legacy.write_byte = atmel_nand_write_byte;
-	chip->legacy.read_buf = atmel_nand_read_buf;
-	chip->legacy.write_buf = atmel_nand_write_buf;
-	chip->legacy.select_chip = atmel_nand_select_chip;
-
 	if (!nc->mck || !nc->caps->ops->setup_data_interface)
 		chip->options |= NAND_KEEP_TIMINGS;
 
-	/* Some NANDs require a longer delay than the default one (20us). */
-	chip->legacy.chip_delay = 40;
-
 	/*
 	 * Use a bounce buffer when the buffer passed by the MTD user is not
 	 * suitable for DMA.
@@ -1772,18 +1588,6 @@ static void atmel_smc_nand_init(struct atmel_nand_controller *nc,
 				   smc_nc->ebi_csa->nfd0_on_d16);
 }
 
-static void atmel_hsmc_nand_init(struct atmel_nand_controller *nc,
-				 struct atmel_nand *nand)
-{
-	struct nand_chip *chip = &nand->base;
-
-	atmel_nand_init(nc, nand);
-
-	/* Overload some methods for the HSMC controller. */
-	chip->legacy.cmd_ctrl = atmel_hsmc_nand_cmd_ctrl;
-	chip->legacy.select_chip = atmel_hsmc_nand_select_chip;
-}
-
 static int atmel_nand_controller_remove_nand(struct atmel_nand *nand)
 {
 	struct nand_chip *chip = &nand->base;
@@ -2568,7 +2372,7 @@ static const struct atmel_nand_controller_ops atmel_hsmc_nc_ops = {
 	.probe = atmel_hsmc_nand_controller_probe,
 	.remove = atmel_hsmc_nand_controller_remove,
 	.ecc_init = atmel_hsmc_nand_ecc_init,
-	.nand_init = atmel_hsmc_nand_init,
+	.nand_init = atmel_nand_init,
 	.setup_data_interface = atmel_hsmc_nand_setup_data_interface,
 	.exec_op = atmel_hsmc_nand_exec_op,
 };
-- 
2.25.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
