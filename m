Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5198D1D7E87
	for <lists+linux-mtd@lfdr.de>; Mon, 18 May 2020 18:30:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=izl/IAHWZ9cAwu5gN+YIi7ikLlEXZpP92S+FqsZX3x0=; b=eizS0k9q/yxPRW
	HXoLDiEBHsIv83yaXVaX5Cv3aKlzNEV5Z41d9cN1bh7gFFX3MNAyCwM4yquxUz35ra1R2I5ORkIsQ
	xYxN79WogjFQCn8FHyQmVwByM1sTKiYrLLVt5av6s+n1HqPS+VPOLrhn6AXDCTu89jGovsZtoQzy8
	Opd4e3tXL5Fs0E/5OCI9oEIu+ud4WWy6HwwdM/sCnCnjx452ujF4PpQXYNP8oq47qyE5OcDQIiV0E
	Cui61zBZXXOlvbolJzzfdjLPAlnYE+tvGMDuZlv0nCD25QufOmD1h6KNEKkuRFOHVR0p+81Q51w5l
	3+nSKnGpQIutyVm7sycw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaif1-0001fP-Ve; Mon, 18 May 2020 16:30:39 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaidB-0006I6-Kg
 for linux-mtd@lists.infradead.org; Mon, 18 May 2020 16:28:49 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 611642A0EEA;
 Mon, 18 May 2020 17:28:43 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 Hauke Mehrtens <hauke@hauke-m.de>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
 linux-mips@vger.kernel.org
Subject: [PATCH v2 6/8] mtd: rawnand: bcm47xx: Get rid of the legacy
 implementation
Date: Mon, 18 May 2020 18:28:35 +0200
Message-Id: <20200518162837.304471-7-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200518162837.304471-1-boris.brezillon@collabora.com>
References: <20200518162837.304471-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_092846_029578_B58DC071 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Now that exec_op() is implemented we don't need to implement all those
legacy hooks, which simplifies the code quite a bit.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
Changes in v2:
* Add R-b
---
 .../nand/raw/bcm47xxnflash/bcm47xxnflash.h    |   6 -
 .../mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c  | 315 ------------------
 2 files changed, 321 deletions(-)

diff --git a/drivers/mtd/nand/raw/bcm47xxnflash/bcm47xxnflash.h b/drivers/mtd/nand/raw/bcm47xxnflash/bcm47xxnflash.h
index 00d0974b73cb..8de0e7e0a3a4 100644
--- a/drivers/mtd/nand/raw/bcm47xxnflash/bcm47xxnflash.h
+++ b/drivers/mtd/nand/raw/bcm47xxnflash/bcm47xxnflash.h
@@ -14,12 +14,6 @@ struct bcm47xxnflash {
 	struct bcma_drv_cc *cc;
 
 	struct nand_chip nand_chip;
-
-	unsigned curr_command;
-	int curr_page_addr;
-	int curr_column;
-
-	u8 id_data[8];
 };
 
 int bcm47xxnflash_ops_bcm4706_init(struct bcm47xxnflash *b47n);
diff --git a/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c b/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c
index edf0c3d7b561..b6c5db9acac9 100644
--- a/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c
+++ b/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c
@@ -75,313 +75,10 @@ static int bcm47xxnflash_ops_bcm4706_ctl_cmd(struct bcma_drv_cc *cc, u32 code)
 	return 0;
 }
 
-static int bcm47xxnflash_ops_bcm4706_poll(struct bcma_drv_cc *cc)
-{
-	int i;
-
-	for (i = 0; i < NFLASH_READY_RETRIES; i++) {
-		if (bcma_cc_read32(cc, BCMA_CC_NFLASH_CTL) & NCTL_READY) {
-			if (bcma_cc_read32(cc, BCMA_CC_NFLASH_CTL) &
-			    BCMA_CC_NFLASH_CTL_ERR) {
-				pr_err("Error on polling\n");
-				return -EBUSY;
-			} else {
-				return 0;
-			}
-		}
-	}
-
-	pr_err("Polling timeout!\n");
-	return -EBUSY;
-}
-
-/**************************************************
- * R/W
- **************************************************/
-
-static void bcm47xxnflash_ops_bcm4706_read(struct mtd_info *mtd, uint8_t *buf,
-					   int len)
-{
-	struct nand_chip *nand_chip = mtd_to_nand(mtd);
-	struct bcm47xxnflash *b47n = nand_get_controller_data(nand_chip);
-
-	u32 ctlcode;
-	u32 *dest = (u32 *)buf;
-	int i;
-	int toread;
-
-	BUG_ON(b47n->curr_page_addr & ~nand_chip->pagemask);
-	/* Don't validate column using nand_chip->page_shift, it may be bigger
-	 * when accessing OOB */
-
-	while (len) {
-		/* We can read maximum of 0x200 bytes at once */
-		toread = min(len, 0x200);
-
-		/* Set page and column */
-		bcma_cc_write32(b47n->cc, BCMA_CC_NFLASH_COL_ADDR,
-				b47n->curr_column);
-		bcma_cc_write32(b47n->cc, BCMA_CC_NFLASH_ROW_ADDR,
-				b47n->curr_page_addr);
-
-		/* Prepare to read */
-		ctlcode = NCTL_CSA | NCTL_CMD1W | NCTL_ROW | NCTL_COL |
-			  NCTL_CMD0;
-		ctlcode |= NAND_CMD_READSTART << 8;
-		if (bcm47xxnflash_ops_bcm4706_ctl_cmd(b47n->cc, ctlcode))
-			return;
-		if (bcm47xxnflash_ops_bcm4706_poll(b47n->cc))
-			return;
-
-		/* Eventually read some data :) */
-		for (i = 0; i < toread; i += 4, dest++) {
-			ctlcode = NCTL_CSA | NCTL_DATA_CYCLES(4) | NCTL_READ;
-			if (i == toread - 4) /* Last read goes without that */
-				ctlcode &= ~NCTL_CSA;
-			if (bcm47xxnflash_ops_bcm4706_ctl_cmd(b47n->cc,
-							      ctlcode))
-				return;
-			*dest = bcma_cc_read32(b47n->cc, BCMA_CC_NFLASH_DATA);
-		}
-
-		b47n->curr_column += toread;
-		len -= toread;
-	}
-}
-
-static void bcm47xxnflash_ops_bcm4706_write(struct mtd_info *mtd,
-					    const uint8_t *buf, int len)
-{
-	struct nand_chip *nand_chip = mtd_to_nand(mtd);
-	struct bcm47xxnflash *b47n = nand_get_controller_data(nand_chip);
-	struct bcma_drv_cc *cc = b47n->cc;
-
-	u32 ctlcode;
-	const u32 *data = (u32 *)buf;
-	int i;
-
-	BUG_ON(b47n->curr_page_addr & ~nand_chip->pagemask);
-	/* Don't validate column using nand_chip->page_shift, it may be bigger
-	 * when accessing OOB */
-
-	for (i = 0; i < len; i += 4, data++) {
-		bcma_cc_write32(cc, BCMA_CC_NFLASH_DATA, *data);
-
-		ctlcode = NCTL_CSA | NCTL_DATA_CYCLES(4) | NCTL_WRITE;
-		if (i == len - 4) /* Last read goes without that */
-			ctlcode &= ~NCTL_CSA;
-		if (bcm47xxnflash_ops_bcm4706_ctl_cmd(cc, ctlcode)) {
-			pr_err("%s ctl_cmd didn't work!\n", __func__);
-			return;
-		}
-	}
-
-	b47n->curr_column += len;
-}
-
 /**************************************************
  * NAND chip ops
  **************************************************/
 
-static void bcm47xxnflash_ops_bcm4706_cmd_ctrl(struct nand_chip *nand_chip,
-					       int cmd, unsigned int ctrl)
-{
-	struct bcm47xxnflash *b47n = nand_get_controller_data(nand_chip);
-	u32 code = 0;
-
-	if (cmd == NAND_CMD_NONE)
-		return;
-
-	if (cmd & NAND_CTRL_CLE)
-		code = cmd | NCTL_CMD0;
-
-	/* nCS is not needed for reset command */
-	if (cmd != NAND_CMD_RESET)
-		code |= NCTL_CSA;
-
-	bcm47xxnflash_ops_bcm4706_ctl_cmd(b47n->cc, code);
-}
-
-/* Default nand_select_chip calls cmd_ctrl, which is not used in BCM4706 */
-static void bcm47xxnflash_ops_bcm4706_select_chip(struct nand_chip *chip,
-						  int cs)
-{
-	return;
-}
-
-static int bcm47xxnflash_ops_bcm4706_dev_ready(struct nand_chip *nand_chip)
-{
-	struct bcm47xxnflash *b47n = nand_get_controller_data(nand_chip);
-
-	return !!(bcma_cc_read32(b47n->cc, BCMA_CC_NFLASH_CTL) & NCTL_READY);
-}
-
-/*
- * Default nand_command and nand_command_lp don't match BCM4706 hardware layout.
- * For example, reading chip id is performed in a non-standard way.
- * Setting column and page is also handled differently, we use a special
- * registers of ChipCommon core. Hacking cmd_ctrl to understand and convert
- * standard commands would be much more complicated.
- */
-static void bcm47xxnflash_ops_bcm4706_cmdfunc(struct nand_chip *nand_chip,
-					      unsigned command, int column,
-					      int page_addr)
-{
-	struct mtd_info *mtd = nand_to_mtd(nand_chip);
-	struct bcm47xxnflash *b47n = nand_get_controller_data(nand_chip);
-	struct bcma_drv_cc *cc = b47n->cc;
-	u32 ctlcode;
-	int i;
-
-	if (column != -1)
-		b47n->curr_column = column;
-	if (page_addr != -1)
-		b47n->curr_page_addr = page_addr;
-
-	switch (command) {
-	case NAND_CMD_RESET:
-		nand_chip->legacy.cmd_ctrl(nand_chip, command, NAND_CTRL_CLE);
-
-		ndelay(100);
-		nand_wait_ready(nand_chip);
-		break;
-	case NAND_CMD_READID:
-		ctlcode = NCTL_CSA | NCTL_SPECADDR | NCTL_CMD1W | NCTL_CMD0;
-		ctlcode |= NAND_CMD_READID;
-		if (bcm47xxnflash_ops_bcm4706_ctl_cmd(b47n->cc, ctlcode)) {
-			pr_err("READID error\n");
-			break;
-		}
-
-		/*
-		 * Reading is specific, last one has to go without NCTL_CSA
-		 * bit. We don't know how many reads NAND subsystem is going
-		 * to perform, so cache everything.
-		 */
-		for (i = 0; i < ARRAY_SIZE(b47n->id_data); i++) {
-			ctlcode = NCTL_CSA | NCTL_READ | NCTL_DATA_CYCLES(1);
-			if (i == ARRAY_SIZE(b47n->id_data) - 1)
-				ctlcode &= ~NCTL_CSA;
-			if (bcm47xxnflash_ops_bcm4706_ctl_cmd(b47n->cc,
-							      ctlcode)) {
-				pr_err("READID error\n");
-				break;
-			}
-			b47n->id_data[i] =
-				bcma_cc_read32(b47n->cc, BCMA_CC_NFLASH_DATA)
-				& 0xFF;
-		}
-
-		break;
-	case NAND_CMD_STATUS:
-		ctlcode = NCTL_CSA | NCTL_CMD0 | NAND_CMD_STATUS;
-		if (bcm47xxnflash_ops_bcm4706_ctl_cmd(cc, ctlcode))
-			pr_err("STATUS command error\n");
-		break;
-	case NAND_CMD_READ0:
-		break;
-	case NAND_CMD_READOOB:
-		if (page_addr != -1)
-			b47n->curr_column += mtd->writesize;
-		break;
-	case NAND_CMD_ERASE1:
-		bcma_cc_write32(cc, BCMA_CC_NFLASH_ROW_ADDR,
-				b47n->curr_page_addr);
-		ctlcode = NCTL_ROW | NCTL_CMD1W | NCTL_CMD0 |
-			  NAND_CMD_ERASE1 | (NAND_CMD_ERASE2 << 8);
-		if (bcm47xxnflash_ops_bcm4706_ctl_cmd(cc, ctlcode))
-			pr_err("ERASE1 failed\n");
-		break;
-	case NAND_CMD_ERASE2:
-		break;
-	case NAND_CMD_SEQIN:
-		/* Set page and column */
-		bcma_cc_write32(cc, BCMA_CC_NFLASH_COL_ADDR,
-				b47n->curr_column);
-		bcma_cc_write32(cc, BCMA_CC_NFLASH_ROW_ADDR,
-				b47n->curr_page_addr);
-
-		/* Prepare to write */
-		ctlcode = NCTL_CSA | NCTL_ROW | NCTL_COL | NCTL_CMD0;
-		ctlcode |= NAND_CMD_SEQIN;
-		if (bcm47xxnflash_ops_bcm4706_ctl_cmd(cc, ctlcode))
-			pr_err("SEQIN failed\n");
-		break;
-	case NAND_CMD_PAGEPROG:
-		if (bcm47xxnflash_ops_bcm4706_ctl_cmd(cc, NCTL_CMD0 |
-							  NAND_CMD_PAGEPROG))
-			pr_err("PAGEPROG failed\n");
-		if (bcm47xxnflash_ops_bcm4706_poll(cc))
-			pr_err("PAGEPROG not ready\n");
-		break;
-	default:
-		pr_err("Command 0x%X unsupported\n", command);
-		break;
-	}
-	b47n->curr_command = command;
-}
-
-static u8 bcm47xxnflash_ops_bcm4706_read_byte(struct nand_chip *nand_chip)
-{
-	struct mtd_info *mtd = nand_to_mtd(nand_chip);
-	struct bcm47xxnflash *b47n = nand_get_controller_data(nand_chip);
-	struct bcma_drv_cc *cc = b47n->cc;
-	u32 tmp = 0;
-
-	switch (b47n->curr_command) {
-	case NAND_CMD_READID:
-		if (b47n->curr_column >= ARRAY_SIZE(b47n->id_data)) {
-			pr_err("Requested invalid id_data: %d\n",
-			       b47n->curr_column);
-			return 0;
-		}
-		return b47n->id_data[b47n->curr_column++];
-	case NAND_CMD_STATUS:
-		if (bcm47xxnflash_ops_bcm4706_ctl_cmd(cc,
-						      NCTL_READ |
-						      NCTL_DATA_CYCLES(1)))
-			return 0;
-		return bcma_cc_read32(cc, BCMA_CC_NFLASH_DATA) & 0xff;
-	case NAND_CMD_READOOB:
-		bcm47xxnflash_ops_bcm4706_read(mtd, (u8 *)&tmp, 4);
-		return tmp & 0xFF;
-	}
-
-	pr_err("Invalid command for byte read: 0x%X\n", b47n->curr_command);
-	return 0;
-}
-
-static void bcm47xxnflash_ops_bcm4706_read_buf(struct nand_chip *nand_chip,
-					       uint8_t *buf, int len)
-{
-	struct bcm47xxnflash *b47n = nand_get_controller_data(nand_chip);
-
-	switch (b47n->curr_command) {
-	case NAND_CMD_READ0:
-	case NAND_CMD_READOOB:
-		bcm47xxnflash_ops_bcm4706_read(nand_to_mtd(nand_chip), buf,
-					       len);
-		return;
-	}
-
-	pr_err("Invalid command for buf read: 0x%X\n", b47n->curr_command);
-}
-
-static void bcm47xxnflash_ops_bcm4706_write_buf(struct nand_chip *nand_chip,
-						const uint8_t *buf, int len)
-{
-	struct bcm47xxnflash *b47n = nand_get_controller_data(nand_chip);
-
-	switch (b47n->curr_command) {
-	case NAND_CMD_SEQIN:
-		bcm47xxnflash_ops_bcm4706_write(nand_to_mtd(nand_chip), buf,
-						len);
-		return;
-	}
-
-	pr_err("Invalid command for buf write: 0x%X\n", b47n->curr_command);
-}
-
 static int
 bcm47xxnflash_ops_bcm4706_exec_cmd_addr(struct nand_chip *chip,
 					const struct nand_subop *subop)
@@ -525,7 +222,6 @@ static const struct nand_controller_ops bcm47xxnflash_ops = {
 
 int bcm47xxnflash_ops_bcm4706_init(struct bcm47xxnflash *b47n)
 {
-	struct nand_chip *nand_chip = (struct nand_chip *)&b47n->nand_chip;
 	int err;
 	u32 freq;
 	u16 clock;
@@ -538,17 +234,6 @@ int bcm47xxnflash_ops_bcm4706_init(struct bcm47xxnflash *b47n)
 	nand_controller_init(&b47n->base);
 	b47n->base.ops = &bcm47xxnflash_ops;
 	b47n->nand_chip.controller = &b47n->base;
-	nand_chip->legacy.select_chip = bcm47xxnflash_ops_bcm4706_select_chip;
-	nand_chip->legacy.cmd_ctrl = bcm47xxnflash_ops_bcm4706_cmd_ctrl;
-	nand_chip->legacy.dev_ready = bcm47xxnflash_ops_bcm4706_dev_ready;
-	b47n->nand_chip.legacy.cmdfunc = bcm47xxnflash_ops_bcm4706_cmdfunc;
-	b47n->nand_chip.legacy.read_byte = bcm47xxnflash_ops_bcm4706_read_byte;
-	b47n->nand_chip.legacy.read_buf = bcm47xxnflash_ops_bcm4706_read_buf;
-	b47n->nand_chip.legacy.write_buf = bcm47xxnflash_ops_bcm4706_write_buf;
-	b47n->nand_chip.legacy.set_features = nand_get_set_features_notsupp;
-	b47n->nand_chip.legacy.get_features = nand_get_set_features_notsupp;
-
-	nand_chip->legacy.chip_delay = 50;
 	b47n->nand_chip.bbt_options = NAND_BBT_USE_FLASH;
 	b47n->nand_chip.ecc.mode = NAND_ECC_NONE; /* TODO: implement ECC */
 
-- 
2.25.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
