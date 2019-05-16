Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6B220D44
	for <lists+linux-mtd@lfdr.de>; Thu, 16 May 2019 18:42:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ciuuzo36A2QY8ivvKwTM6vgBvjIlT+G0FP1lqJb35kM=; b=SL3aFBx8g/nf2W9kP1oExhNaDN
	kSg+1dSymeJJ/t3Gox/e9nQ4ijYgIiP3naKcnlgdcAxifSmMKw2c6hO/QzjPEhYyZrXCihqDImwTk
	s0EfPOHFFq/Smt8JQArv7oRoQaJ2dY/gV5jV1jnRDwi4D4Xd5WLqRR+amb1rDeMhZwHAU1EwWAsnU
	Zecjws55UrI8JIFeoezcMV7UhnTN3WBZit7fbCeaKn+5/tuOwFjZ4GnayEhS8KNROICOBwPu6iiJR
	BphumaM7sZrtnYVxBSxU02jc591Lxo1JtYWE/vJrYetnQ6UJRQ3o+9KuG0q9bppZWyiZoROk3pNkC
	65346q/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJSs-0000eZ-6y; Thu, 16 May 2019 16:42:42 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJSi-0000dn-Tk
 for linux-mtd@lists.infradead.org; Thu, 16 May 2019 16:42:34 +0000
Received: by mail-ed1-x543.google.com with SMTP id f37so6097016edb.13
 for <linux-mtd@lists.infradead.org>; Thu, 16 May 2019 09:42:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wa1mrjd2PehMiQ4tkO2lOhokR8tf+BLQRnMqAVbGJys=;
 b=g/z7DR9BmTxEIxCYbvmHbg6qBFLxaVwDPKWyQqTzjFpeonA3/xxh6TTSnxTVMrYPuh
 3Bb0qTQaYoaiaE1tZbJxW3yT0A6iBGhPNtkXJnX5ATbFX5oIjzk5QmBmasxxLNNDaQI9
 3IbRvhNTMBu35NaDQjVCMwsoCWW9rHVr1RelvgLuTvmT5Pa+JowucaGMTj0a5vJsF4Mh
 hl1MiRg2nhqw91tUlvpOGFK3voLLVx5IkeSObZBvAI0LUKxUP1hz4dMnq9917Fk+gesc
 XxJpOWqurq25m0TqSBw8TP4kVi8lW8HwY7rrE1mkZxb2P0kRLUSA1EvU8k/0QyJ2J+dp
 aWNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wa1mrjd2PehMiQ4tkO2lOhokR8tf+BLQRnMqAVbGJys=;
 b=kHotNZkmJ9IstwxKjuHDKLQPsvwzixF2tJKeopaRWPxsTUcq2TWVCV+zR+77cpd3BD
 l0hzIzeR+YSP4WSSGcwFu7R/JeroGgXZMv26ga7A6HcuNqnbO5jcDhXEwj/EPp6TrHZD
 AUBpE1Hi5rJDshnQZkx3JEcH0kEwCSoU7yZF0SlGxVCdEQC7iw5t14PWeXrCAbU7gaEX
 OuTE52Jh7BytMePGr5nk5vOg+VvB5+vD3qm6hQ0snpH9SbjBBakLFSA9xLdTitPqML33
 G6uj3heM/fn+6/cMz8bTCi0fUCrnSWQ9tOD0oa2NLe8/eIBvFA6kvPpWtyb7+kdnDwF7
 nLiA==
X-Gm-Message-State: APjAAAVkVdYohV4H4QNpnTzQ1sLkWO2aTsv9utzwFUc5qcbiZBPEBMDf
 ZjZiXbBhVXCcMca6MHEuhlZjdY1S
X-Google-Smtp-Source: APXvYqxVkN8VU/C2NqT5TNs/gJqQuUgvqrlRLD7rfThGYlt6/mc7Qi88kYFV9TNRC3Mkvp9j3h9MKw==
X-Received: by 2002:aa7:c645:: with SMTP id z5mr16773975edr.43.1558024951396; 
 Thu, 16 May 2019 09:42:31 -0700 (PDT)
Received: from mail.broadcom.com ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id i45sm2013709eda.67.2019.05.16.09.42.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 09:42:30 -0700 (PDT)
From: Kamal Dasu <kdasu.kdev@gmail.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH v3 2/2] mtd: nand: raw: brcmnand: When oops in progress use
 pio and interrupt polling
Date: Thu, 16 May 2019 12:41:47 -0400
Message-Id: <1558024913-26502-2-git-send-email-kdasu.kdev@gmail.com>
X-Mailer: git-send-email 1.9.0.138.g2de3478
In-Reply-To: <1558024913-26502-1-git-send-email-kdasu.kdev@gmail.com>
References: <1558024913-26502-1-git-send-email-kdasu.kdev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_094232_957152_983DF714 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kdasu.kdev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

If mtd_oops is in progress, switch to polling during NAND command
completion instead of relying on DMA/interrupts so that the mtd_oops
buffer can be completely written in the assigned NAND partition.

Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
---
 drivers/mtd/nand/raw/brcmnand/brcmnand.c | 48 ++++++++++++++++++++++++++++++--
 1 file changed, 45 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
index ce0b8ff..dca8eb8 100644
--- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
+++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
@@ -159,6 +159,7 @@ struct brcmnand_controller {
 	u32			nand_cs_nand_xor;
 	u32			corr_stat_threshold;
 	u32			flash_dma_mode;
+	bool			pio_poll_mode;
 };
 
 struct brcmnand_cfg {
@@ -823,6 +824,20 @@ static inline bool has_flash_dma(struct brcmnand_controller *ctrl)
 	return ctrl->flash_dma_base;
 }
 
+static inline void disable_ctrl_irqs(struct brcmnand_controller *ctrl)
+{
+	if (ctrl->pio_poll_mode)
+		return;
+
+	if (has_flash_dma(ctrl)) {
+		ctrl->flash_dma_base = 0;
+		disable_irq(ctrl->dma_irq);
+	}
+
+	disable_irq(ctrl->irq);
+	ctrl->pio_poll_mode = true;
+}
+
 static inline bool flash_dma_buf_ok(const void *buf)
 {
 	return buf && !is_vmalloc_addr(buf) &&
@@ -1237,15 +1252,42 @@ static void brcmnand_cmd_ctrl(struct nand_chip *chip, int dat,
 	/* intentionally left blank */
 }
 
+static bool brcmstb_nand_wait_for_completion(struct nand_chip *chip)
+{
+	struct brcmnand_host *host = nand_get_controller_data(chip);
+	struct brcmnand_controller *ctrl = host->ctrl;
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	bool err = false;
+	int sts;
+
+	if (mtd->oops_panic_write) {
+		/* switch to interrupt polling and PIO mode */
+		disable_ctrl_irqs(ctrl);
+		sts = bcmnand_ctrl_poll_status(ctrl, NAND_CTRL_RDY,
+					       NAND_CTRL_RDY, 0);
+		err = (sts < 0) ? true : false;
+	} else {
+		unsigned long timeo = msecs_to_jiffies(
+						NAND_POLL_STATUS_TIMEOUT_MS);
+		/* wait for completion interrupt */
+		sts = wait_for_completion_timeout(&ctrl->done, timeo);
+		err = (sts <= 0) ? true : false;
+	}
+
+	return err;
+}
+
 static int brcmnand_waitfunc(struct nand_chip *chip)
 {
 	struct brcmnand_host *host = nand_get_controller_data(chip);
 	struct brcmnand_controller *ctrl = host->ctrl;
-	unsigned long timeo = msecs_to_jiffies(100);
+	bool err = false;
 
 	dev_dbg(ctrl->dev, "wait on native cmd %d\n", ctrl->cmd_pending);
-	if (ctrl->cmd_pending &&
-			wait_for_completion_timeout(&ctrl->done, timeo) <= 0) {
+	if (ctrl->cmd_pending)
+		err = brcmstb_nand_wait_for_completion(chip);
+
+	if (err) {
 		u32 cmd = brcmnand_read_reg(ctrl, BRCMNAND_CMD_START)
 					>> brcmnand_cmd_shift(ctrl);
 
-- 
1.9.0.138.g2de3478


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
