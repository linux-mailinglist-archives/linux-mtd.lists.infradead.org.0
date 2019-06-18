Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C61F74A9D1
	for <lists+linux-mtd@lfdr.de>; Tue, 18 Jun 2019 20:27:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BvbkMTRjKXJlQZoJvtsHgIBCdmbVoK/LDDuIlxgRWWs=; b=iZFja/MlK+WcQNsVBzxj5QoVvc
	iLRYs8bq9ejFXk/b1eIbyjmF1QjoPDIYDI7Gts51W9T4HA4O1vSREA2j4dTRf6De1JuKYw2VBXua7
	WurA6DMeHq5Pd6ogDPqCsZ6BjQTMN048ME+S00B/lgytZcVteem+2SGy1MPzeMydCLtA+t3Px0opb
	71HXVNLZOMn7kDIp9kxUqzQm5VtJpNAvtOYEm538mwEudoJWm141I/EM1rS+2hpvU4UWczJnmAfsv
	wxbaauHGyI+r/5aqugxIlNlVf6ILS+o7dxCajeWxZj9430zlpfmvJ+6EQBUN46p8rpK77rXaiXeAb
	1WqLyvxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdIpZ-0005i8-FQ; Tue, 18 Jun 2019 18:27:41 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdIpO-0005hX-IW
 for linux-mtd@lists.infradead.org; Tue, 18 Jun 2019 18:27:32 +0000
Received: by mail-pf1-x444.google.com with SMTP id x15so8152315pfq.0
 for <linux-mtd@lists.infradead.org>; Tue, 18 Jun 2019 11:27:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=f1jztib4H2AhReDzbfPoXEq38V+b/2OjoyCgjVjM/vY=;
 b=qQN5AjlvxoOzG6zwGQCL4kP4KMEGWQWZBJwkiUejECOHE1LzLRRze29XzBsI9kIf93
 wefOzzVhaGj5tNJujkqJULJTeDydev5qgyw4XF6HkP+Ibpgb5e6/AStQywOrVor3B6/Q
 NVSTQ9Ja0CMVgNihdqI1lmDS6BApg51HwyNKsdR5c9azUL5XFNq17/aIFbk79uZiyHfF
 Gs4O7vnSFTyBoXDBJ44AMiaJCbQt5Yhz8pFgOL0ik8VWl1sTVT1QciHexbnlCrBMUC8x
 7j0OXIkL1A/A+GTeaY8OC46Xt8uiz9yxPQWCIbvQhqjdc5v2YlwMMDFfGqgiE2gYZGJ+
 DAEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=f1jztib4H2AhReDzbfPoXEq38V+b/2OjoyCgjVjM/vY=;
 b=nihcdJF1+9mlpsyblFUTrLYlnOb9UBgd20XajhMZ4SqADIKb8j3IiWwxw89S6uJj3Y
 XcgpDlH7DzUBazU2cqDA/vZYeA4Zktw2oYbhiSYXBcP+yDh+BOL/pQq0s2SA0ffMVoZE
 w5emImYCGNoNkH5ivGDxpGF5J8Ku5yWIZyK3ZC+dsIBv2spGYTpxdVg8RNljfnvjEcmj
 77hHg96jsXWJkVeQhaWvvfNj7r/cWqQdcryDkNWy72Y9Hi0tBXqC5M1zffBFgnOpFH8X
 9NuGGVvwcauDmOZ6aQbsfzFQWmNqX6bg8akMDZ8jfNo1j0cUhTty1WeIzA4HbccXP0I/
 2MFA==
X-Gm-Message-State: APjAAAVnGNlmVFkYI0ffcBCfHv55r9GqHfYFuKyKCrZSTI9PNKNyJRMu
 OJ6peSzU/uTqcCUXxJuy5CIarbfa
X-Google-Smtp-Source: APXvYqz03SVDLN2muSEnZep8XNk3L8zbZHPF+1yClksQ9xmMNrWxQpH80qjXYUyIlPzm4unlxTnPHQ==
X-Received: by 2002:a63:6883:: with SMTP id d125mr3963722pgc.281.1560882449634; 
 Tue, 18 Jun 2019 11:27:29 -0700 (PDT)
Received: from mail.broadcom.com ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id k4sm6639480pfk.42.2019.06.18.11.27.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 11:27:29 -0700 (PDT)
From: Kamal Dasu <kdasu.kdev@gmail.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH v4 2/2] mtd: nand: raw: brcmnand: When oops in progress use
 pio and interrupt polling
Date: Tue, 18 Jun 2019 14:26:43 -0400
Message-Id: <1560882420-727-2-git-send-email-kdasu.kdev@gmail.com>
X-Mailer: git-send-email 1.9.0.138.g2de3478
In-Reply-To: <1560882420-727-1-git-send-email-kdasu.kdev@gmail.com>
References: <1560882420-727-1-git-send-email-kdasu.kdev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_112730_643598_E134DB82 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kdasu.kdev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
index 8735277..27b22d6 100644
--- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
+++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
@@ -151,6 +151,7 @@ struct brcmnand_controller {
 	u32			nand_cs_nand_xor;
 	u32			corr_stat_threshold;
 	u32			flash_dma_mode;
+	bool			pio_poll_mode;
 };
 
 struct brcmnand_cfg {
@@ -815,6 +816,20 @@ static inline bool has_flash_dma(struct brcmnand_controller *ctrl)
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
@@ -1229,15 +1244,42 @@ static void brcmnand_cmd_ctrl(struct nand_chip *chip, int dat,
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
+	if (mtd->panic_write_triggered) {
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
