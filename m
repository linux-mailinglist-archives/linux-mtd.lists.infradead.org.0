Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7F4145D40
	for <lists+linux-mtd@lfdr.de>; Wed, 22 Jan 2020 21:43:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3vQ2VNqOTMc6C6dAyV5Wrwq5FmHRVVPuuTlgwKAEigQ=; b=T0AMjN2ny778JTpKaGHC+kY2EH
	xXbWgSU8MKFH3Ksqfy+pssTCmF972p54vq196eSE2qlEy1C3C5s0o+UbgYHAuJZiGNlq+oNk9dmil
	1RVmdFmJH0njoncxwtPZcLNeBPNstn0c1Uoo914zwaSl5e1S0hzrWRjdSQm5BU0q1SsEVxqKyorVC
	BeQ1MnI4MMrRaV/ItQnx+DKwKSzivYL95wGkCJwlu7oiMwvNywSqg8apo1f/x8IFuaUxBBUMK+5Eq
	UyfW7Yfxr4rcT7bIFJ5nP4VLim1HOezs3W6vfjs5uhBjw8cPvqdynvJ8kWMSBhdTl3G0Vkuh/2LpH
	Um3jpmrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuMqQ-0002ho-Ol; Wed, 22 Jan 2020 20:43:22 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuMqG-0002hQ-Ov
 for linux-mtd@lists.infradead.org; Wed, 22 Jan 2020 20:43:14 +0000
Received: by mail-wr1-x441.google.com with SMTP id b6so604519wrq.0
 for <linux-mtd@lists.infradead.org>; Wed, 22 Jan 2020 12:43:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8GNCVQlwUlyuxQhYZFPmQG6zlgf3TW2kEo49ea++nkw=;
 b=SprCVq15k9EEBFjO31lx4xqWmDifQzO3GHqF3MyCk2gd3QCZQezhP/PUFPr8zgVXlp
 r8Tpysy8meejq6RQG3VPt+gphyIR9hwd0AHwchLXoBpSyUUlqRdiAlhuIrBGy0f/7OCs
 j/vW7lijm6NeFsggRozBdxwOw0aEz43FhEFwdbE/cQN8fEmaXNbtkox9OsJcdO0kN5CF
 I/PFkNHHqdEx1YJVB/Pu0jlmRRFmp/kG/UnLNEa0fRpepd9yJFWyOe0pLDafcxzUBl6o
 61QM+m6iLQlZnvK+gTdBdIusDXm3AQwEQz/Mo4EmoJ7xtt5Yt4fD0oMS46TgGkvMP2HE
 5K7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8GNCVQlwUlyuxQhYZFPmQG6zlgf3TW2kEo49ea++nkw=;
 b=iOJyH8NYqjqvulfTvQHDfN21Kxc50Tk57OFC7V5aswjY6OrJoYrQincb5tko4WdgzG
 Zi59jZpUW6p7ZGH6pBLHwQV1L/+huLiGBIajxGfDQZeTKEFfGbr+M0KPfnALxSYHOydJ
 lRkfbhy43cSoqo1ldCTEL1PmbQrvJRm2WKAjIEUaR7YYMOPTEi4FnrPPnyPXecMvgRs/
 zYK5HmTKOK8Lq0gvEgZrG1XxcweuIKb2S9dNWf40xf5ItdNe9NH4AH/Yu1Y6e3b9oaMT
 LS1kBp9RKfsFTjL5YFf1rzU6yNiIAiZYmbbCiA2eP8P9hMwe4T8fwFMNHIL+Eyi+XhK9
 1pXg==
X-Gm-Message-State: APjAAAUVZBjF3EHDN5tVvmV/e0zD6CEHSWI0PjpyGsTaJOuTNjd7jz+N
 8UV3vfQYPiw6o8wVZr88uuc=
X-Google-Smtp-Source: APXvYqzpmoZT/MtJvHVofxIYdTP+s1Zt0XnmOxllWULgE+Ov4zFBZEHAFj7OVvLhkKl8k7EeaU45dA==
X-Received: by 2002:adf:f491:: with SMTP id l17mr14085373wro.149.1579725791114; 
 Wed, 22 Jan 2020 12:43:11 -0800 (PST)
Received: from mail.broadcom.com ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id x132sm6216302wmg.0.2020.01.22.12.43.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 12:43:10 -0800 (PST)
From: Kamal Dasu <kdasu.kdev@gmail.com>
To: linux-kernel@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paulburton@kernel.org>,
 James Hogan <jhogan@kernel.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>
Subject: [PATCH V3 3/3] mtd: rawnand: brcmnand: Add support for flash-edu for
 dma transfers
Date: Wed, 22 Jan 2020 15:41:11 -0500
Message-Id: <20200122204111.47554-3-kdasu.kdev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200122204111.47554-1-kdasu.kdev@gmail.com>
References: <20200122204111.47554-1-kdasu.kdev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_124312_815175_5093FCD5 
X-CRM114-Status: GOOD (  20.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kdasu.kdev[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linaro-mm-sig@lists.linaro.org, bcm-kernel-feedback-list@broadcom.com,
 linux-mtd@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Legacy mips soc platforms that have controller v5.0 and 6.0 use
flash-edu block for dma transfers. This change adds support for
nand dma transfers using the EDU block.

Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
---
 drivers/mtd/nand/raw/brcmnand/brcmnand.c | 296 ++++++++++++++++++++++-
 1 file changed, 290 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
index 1a66b1cd51c0..61347607f1da 100644
--- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
+++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
@@ -102,6 +102,45 @@ struct brcm_nand_dma_desc {
 #define NAND_CTRL_RDY			(INTFC_CTLR_READY | INTFC_FLASH_READY)
 #define NAND_POLL_STATUS_TIMEOUT_MS	100
 
+#define EDU_CMD_WRITE          0x00
+#define EDU_CMD_READ           0x01
+#define EDU_STATUS_ACTIVE      BIT(0)
+#define EDU_ERR_STATUS_ERRACK  BIT(0)
+#define EDU_DONE_MASK		GENMASK(1, 0)
+
+#define EDU_CONFIG_MODE_NAND   BIT(0)
+#define EDU_CONFIG_SWAP_BYTE   BIT(1)
+#ifdef CONFIG_CPU_BIG_ENDIAN
+#define EDU_CONFIG_SWAP_CFG     EDU_CONFIG_SWAP_BYTE
+#else
+#define EDU_CONFIG_SWAP_CFG     0
+#endif
+
+/* edu registers */
+enum edu_reg {
+	EDU_CONFIG = 0,
+	EDU_DRAM_ADDR,
+	EDU_EXT_ADDR,
+	EDU_LENGTH,
+	EDU_CMD,
+	EDU_STOP,
+	EDU_STATUS,
+	EDU_DONE,
+	EDU_ERR_STATUS,
+};
+
+static const u16  edu_regs[] = {
+	[EDU_CONFIG] = 0x00,
+	[EDU_DRAM_ADDR] = 0x04,
+	[EDU_EXT_ADDR] = 0x08,
+	[EDU_LENGTH] = 0x0c,
+	[EDU_CMD] = 0x10,
+	[EDU_STOP] = 0x14,
+	[EDU_STATUS] = 0x18,
+	[EDU_DONE] = 0x1c,
+	[EDU_ERR_STATUS] = 0x20,
+};
+
 /* flash_dma registers */
 enum flash_dma_reg {
 	FLASH_DMA_REVISION = 0,
@@ -167,6 +206,8 @@ enum {
 	BRCMNAND_HAS_WP				= BIT(3),
 };
 
+struct brcmnand_host;
+
 struct brcmnand_controller {
 	struct device		*dev;
 	struct nand_controller	controller;
@@ -185,17 +226,32 @@ struct brcmnand_controller {
 
 	int			cmd_pending;
 	bool			dma_pending;
+	bool                    edu_pending;
 	struct completion	done;
 	struct completion	dma_done;
+	struct completion       edu_done;
 
 	/* List of NAND hosts (one for each chip-select) */
 	struct list_head host_list;
 
+	/* EDU info, per-transaction */
+	const u16               *edu_offsets;
+	void __iomem            *edu_base;
+	unsigned int            edu_irq;
+	int                     edu_count;
+	u64                     edu_dram_addr;
+	u32                     edu_ext_addr;
+	u32                     edu_cmd;
+	u32                     edu_config;
+
 	/* flash_dma reg */
 	const u16		*flash_dma_offsets;
 	struct brcm_nand_dma_desc *dma_desc;
 	dma_addr_t		dma_pa;
 
+	int (*dma_trans)(struct brcmnand_host *host, u64 addr, u32 *buf,
+			 u32 len, u8 dma_cmd);
+
 	/* in-memory cache of the FLASH_CACHE, used only for some commands */
 	u8			flash_cache[FC_BYTES];
 
@@ -216,6 +272,7 @@ struct brcmnand_controller {
 	u32			nand_cs_nand_xor;
 	u32			corr_stat_threshold;
 	u32			flash_dma_mode;
+	u32                     flash_edu_mode;
 	bool			pio_poll_mode;
 };
 
@@ -657,6 +714,22 @@ static inline void brcmnand_write_fc(struct brcmnand_controller *ctrl,
 	__raw_writel(val, ctrl->nand_fc + word * 4);
 }
 
+static inline void edu_writel(struct brcmnand_controller *ctrl,
+			      enum edu_reg reg, u32 val)
+{
+	u16 offs = ctrl->edu_offsets[reg];
+
+	brcmnand_writel(val, ctrl->edu_base + offs);
+}
+
+static inline u32 edu_readl(struct brcmnand_controller *ctrl,
+			    enum edu_reg reg)
+{
+	u16 offs = ctrl->edu_offsets[reg];
+
+	return brcmnand_readl(ctrl->edu_base + offs);
+}
+
 static void brcmnand_clear_ecc_addr(struct brcmnand_controller *ctrl)
 {
 
@@ -926,6 +999,16 @@ static inline bool has_flash_dma(struct brcmnand_controller *ctrl)
 	return ctrl->flash_dma_base;
 }
 
+static inline bool has_edu(struct brcmnand_controller *ctrl)
+{
+	return ctrl->edu_base;
+}
+
+static inline bool use_dma(struct brcmnand_controller *ctrl)
+{
+	return has_flash_dma(ctrl) || has_edu(ctrl);
+}
+
 static inline void disable_ctrl_irqs(struct brcmnand_controller *ctrl)
 {
 	if (ctrl->pio_poll_mode)
@@ -1299,6 +1382,52 @@ static int write_oob_to_regs(struct brcmnand_controller *ctrl, int i,
 	return tbytes;
 }
 
+static void brcmnand_edu_init(struct brcmnand_controller *ctrl)
+{
+	/* initialize edu */
+	edu_writel(ctrl, EDU_ERR_STATUS, 0);
+	edu_readl(ctrl, EDU_ERR_STATUS);
+	edu_writel(ctrl, EDU_DONE, 0);
+	edu_writel(ctrl, EDU_DONE, 0);
+	edu_writel(ctrl, EDU_DONE, 0);
+	edu_writel(ctrl, EDU_DONE, 0);
+	edu_readl(ctrl, EDU_DONE);
+}
+
+/* edu irq */
+static irqreturn_t brcmnand_edu_irq(int irq, void *data)
+{
+	struct brcmnand_controller *ctrl = data;
+
+	if (ctrl->edu_count) {
+		ctrl->edu_count--;
+		while (!(edu_readl(ctrl, EDU_DONE) & EDU_DONE_MASK))
+			udelay(1);
+		edu_writel(ctrl, EDU_DONE, 0);
+		edu_readl(ctrl, EDU_DONE);
+	}
+
+	if (ctrl->edu_count) {
+		ctrl->edu_dram_addr += FC_BYTES;
+		ctrl->edu_ext_addr += FC_BYTES;
+
+		edu_writel(ctrl, EDU_DRAM_ADDR, (u32)ctrl->edu_dram_addr);
+		edu_readl(ctrl, EDU_DRAM_ADDR);
+		edu_writel(ctrl, EDU_EXT_ADDR, ctrl->edu_ext_addr);
+		edu_readl(ctrl, EDU_EXT_ADDR);
+
+		mb(); /* flush previous writes */
+		edu_writel(ctrl, EDU_CMD, ctrl->edu_cmd);
+		edu_readl(ctrl, EDU_CMD);
+
+		return IRQ_HANDLED;
+	}
+
+	complete(&ctrl->edu_done);
+
+	return IRQ_HANDLED;
+}
+
 static irqreturn_t brcmnand_ctlrdy_irq(int irq, void *data)
 {
 	struct brcmnand_controller *ctrl = data;
@@ -1307,6 +1436,16 @@ static irqreturn_t brcmnand_ctlrdy_irq(int irq, void *data)
 	if (ctrl->dma_pending)
 		return IRQ_HANDLED;
 
+	/* check if you need to piggy back on the ctrlrdy irq */
+	if (ctrl->edu_pending) {
+		if (irq == ctrl->irq && ((int)ctrl->edu_irq >= 0))
+	/* Discard interrupts while using dedicated edu irq */
+			return IRQ_HANDLED;
+
+	/* no registered edu irq, call handler */
+		return brcmnand_edu_irq(irq, data);
+	}
+
 	complete(&ctrl->done);
 	return IRQ_HANDLED;
 }
@@ -1644,6 +1783,83 @@ static void brcmnand_write_buf(struct nand_chip *chip, const uint8_t *buf,
 	}
 }
 
+/**
+ *  Kick EDU engine
+ */
+static int brcmnand_edu_trans(struct brcmnand_host *host, u64 addr, u32 *buf,
+			      u32 len, u8 cmd)
+{
+	struct brcmnand_controller *ctrl = host->ctrl;
+	unsigned long timeo = msecs_to_jiffies(200);
+	int ret = 0;
+	int dir = (cmd == CMD_PAGE_READ ? DMA_FROM_DEVICE : DMA_TO_DEVICE);
+	u8 edu_cmd = (cmd == CMD_PAGE_READ ? EDU_CMD_READ : EDU_CMD_WRITE);
+	unsigned int trans = len >> FC_SHIFT;
+	dma_addr_t pa;
+
+	pa = dma_map_single(ctrl->dev, buf, len, dir);
+	if (dma_mapping_error(ctrl->dev, pa)) {
+		dev_err(ctrl->dev, "unable to map buffer for EDU DMA\n");
+		return -ENOMEM;
+	}
+
+	ctrl->edu_pending = true;
+	mb(); /* flush previous writes */
+
+	ctrl->edu_dram_addr = pa;
+	ctrl->edu_ext_addr = addr;
+	ctrl->edu_cmd = edu_cmd;
+	ctrl->edu_count = trans;
+
+	edu_writel(ctrl, EDU_DRAM_ADDR, (u32)ctrl->edu_dram_addr);
+	edu_readl(ctrl,  EDU_DRAM_ADDR);
+	edu_writel(ctrl, EDU_EXT_ADDR, ctrl->edu_ext_addr);
+	edu_readl(ctrl, EDU_EXT_ADDR);
+	edu_writel(ctrl, EDU_LENGTH, FC_BYTES);
+	edu_readl(ctrl, EDU_LENGTH);
+
+	/* Start edu engine */
+	mb(); /* flush previous writes */
+	edu_writel(ctrl, EDU_CMD, ctrl->edu_cmd);
+	edu_readl(ctrl, EDU_CMD);
+
+	if (wait_for_completion_timeout(&ctrl->edu_done, timeo) <= 0) {
+		dev_err(ctrl->dev,
+			"timeout waiting for EDU; status %#x, error status %#x\n",
+			edu_readl(ctrl, EDU_STATUS),
+			edu_readl(ctrl, EDU_ERR_STATUS));
+	}
+
+	dma_unmap_single(ctrl->dev, pa, len, dir);
+
+	/* for program page check NAND status */
+	if (((brcmnand_read_reg(ctrl, BRCMNAND_INTFC_STATUS) &
+	      INTFC_FLASH_STATUS) & NAND_STATUS_FAIL) &&
+	    edu_cmd == EDU_CMD_WRITE) {
+		dev_info(ctrl->dev, "program failed at %llx\n",
+			 (unsigned long long)addr);
+		ret = -EIO;
+	}
+
+	/* Make sure the EDU status is clean */
+	if (edu_readl(ctrl, EDU_STATUS) & EDU_STATUS_ACTIVE)
+		dev_warn(ctrl->dev, "EDU still active: %#x\n",
+			 edu_readl(ctrl, EDU_STATUS));
+
+	if (unlikely(edu_readl(ctrl, EDU_ERR_STATUS) & EDU_ERR_STATUS_ERRACK)) {
+		dev_warn(ctrl->dev, "EDU RBUS error at addr %llx\n",
+			 (unsigned long long)addr);
+		ret = -EIO;
+	}
+
+	ctrl->edu_pending = false;
+	brcmnand_edu_init(ctrl);
+	edu_writel(ctrl, EDU_STOP, 0); /* force stop */
+	edu_readl(ctrl, EDU_STOP);
+
+	return ret;
+}
+
 /**
  * Construct a FLASH_DMA descriptor as part of a linked list. You must know the
  * following ahead of time:
@@ -1850,9 +2066,11 @@ static int brcmnand_read(struct mtd_info *mtd, struct nand_chip *chip,
 try_dmaread:
 	brcmnand_clear_ecc_addr(ctrl);
 
-	if (has_flash_dma(ctrl) && !oob && flash_dma_buf_ok(buf)) {
-		err = brcmnand_dma_trans(host, addr, buf, trans * FC_BYTES,
-					     CMD_PAGE_READ);
+	if (ctrl->dma_trans && !oob && flash_dma_buf_ok(buf)) {
+		err = ctrl->dma_trans(host, addr, buf,
+				      trans * FC_BYTES,
+				      CMD_PAGE_READ);
+
 		if (err) {
 			if (mtd_is_bitflip_or_eccerr(err))
 				err_addr = addr;
@@ -1988,10 +2206,12 @@ static int brcmnand_write(struct mtd_info *mtd, struct nand_chip *chip,
 	for (i = 0; i < ctrl->max_oob; i += 4)
 		oob_reg_write(ctrl, i, 0xffffffff);
 
-	if (has_flash_dma(ctrl) && !oob && flash_dma_buf_ok(buf)) {
-		if (brcmnand_dma_trans(host, addr, (u32 *)buf,
-					mtd->writesize, CMD_PROGRAM_PAGE))
+	if (use_dma(ctrl) && !oob && flash_dma_buf_ok(buf)) {
+		if (ctrl->dma_trans(host, addr, (u32 *)buf, mtd->writesize,
+				    CMD_PROGRAM_PAGE))
+
 			ret = -EIO;
+
 		goto out;
 	}
 
@@ -2494,6 +2714,8 @@ static int brcmnand_suspend(struct device *dev)
 
 	if (has_flash_dma(ctrl))
 		ctrl->flash_dma_mode = flash_dma_readl(ctrl, FLASH_DMA_MODE);
+	else if (has_edu(ctrl))
+		ctrl->edu_config = edu_readl(ctrl, EDU_CONFIG);
 
 	return 0;
 }
@@ -2508,6 +2730,14 @@ static int brcmnand_resume(struct device *dev)
 		flash_dma_writel(ctrl, FLASH_DMA_ERROR_STATUS, 0);
 	}
 
+	if (has_edu(ctrl))
+		ctrl->edu_config = edu_readl(ctrl, EDU_CONFIG);
+	else {
+		edu_writel(ctrl, EDU_CONFIG, ctrl->edu_config);
+		edu_readl(ctrl, EDU_CONFIG);
+		brcmnand_edu_init(ctrl);
+	}
+
 	brcmnand_write_reg(ctrl, BRCMNAND_CS_SELECT, ctrl->nand_cs_nand_select);
 	brcmnand_write_reg(ctrl, BRCMNAND_CS_XOR, ctrl->nand_cs_nand_xor);
 	brcmnand_write_reg(ctrl, BRCMNAND_CORR_THRESHOLD,
@@ -2553,6 +2783,52 @@ MODULE_DEVICE_TABLE(of, brcmnand_of_match);
 /***********************************************************************
  * Platform driver setup (per controller)
  ***********************************************************************/
+static int brcmnand_edu_setup(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct brcmnand_controller *ctrl = dev_get_drvdata(&pdev->dev);
+	struct resource *res;
+	int ret;
+
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "flash-edu");
+	if (res) {
+		ctrl->edu_base = devm_ioremap_resource(dev, res);
+		if (IS_ERR(ctrl->edu_base))
+			return PTR_ERR(ctrl->edu_base);
+
+		ctrl->edu_offsets = edu_regs;
+
+		edu_writel(ctrl, EDU_CONFIG, EDU_CONFIG_MODE_NAND |
+			   EDU_CONFIG_SWAP_CFG);
+		edu_readl(ctrl, EDU_CONFIG);
+
+		/* initialize edu */
+		brcmnand_edu_init(ctrl);
+
+		ctrl->edu_irq = platform_get_irq_optional(pdev, 1);
+		if ((int)ctrl->edu_irq < 0) {
+			dev_warn(dev,
+				 "FLASH EDU enabled, using ctlrdy irq\n");
+		} else {
+			ret = devm_request_irq(dev, ctrl->edu_irq,
+					       brcmnand_edu_irq, 0,
+					       "brcmnand-edu", ctrl);
+			if (ret < 0) {
+				dev_err(ctrl->dev, "can't allocate IRQ %d: error %d\n",
+					ctrl->edu_irq, ret);
+				return ret;
+			}
+
+			dev_info(dev, "FLASH EDU enabled using irq %u\n",
+				 ctrl->edu_irq);
+		}
+
+		/* set the appropriate edu transfer function to call */
+		ctrl->dma_trans = brcmnand_edu_trans;
+	}
+
+	return 0;
+}
 
 int brcmnand_probe(struct platform_device *pdev, struct brcmnand_soc *soc)
 {
@@ -2578,6 +2854,7 @@ int brcmnand_probe(struct platform_device *pdev, struct brcmnand_soc *soc)
 
 	init_completion(&ctrl->done);
 	init_completion(&ctrl->dma_done);
+	init_completion(&ctrl->edu_done);
 	nand_controller_init(&ctrl->controller);
 	ctrl->controller.ops = &brcmnand_controller_ops;
 	INIT_LIST_HEAD(&ctrl->host_list);
@@ -2623,6 +2900,7 @@ int brcmnand_probe(struct platform_device *pdev, struct brcmnand_soc *soc)
 				ctrl->reg_offsets[BRCMNAND_FC_BASE];
 	}
 
+	ctrl->dma_trans = NULL;
 	/* FLASH_DMA */
 	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "flash-dma");
 	if (res) {
@@ -2665,6 +2943,12 @@ int brcmnand_probe(struct platform_device *pdev, struct brcmnand_soc *soc)
 		}
 
 		dev_info(dev, "enabling FLASH_DMA\n");
+		/* set the appropriate flash dma transfer function to call */
+		ctrl->dma_trans = brcmnand_dma_trans;
+	} else	{
+		ret = brcmnand_edu_setup(pdev);
+		if (ret < 0)
+			goto err;
 	}
 
 	/* Disable automatic device ID config, direct addressing */
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
