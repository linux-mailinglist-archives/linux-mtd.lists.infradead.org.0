Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C4134A89
	for <lists+linux-mtd@lfdr.de>; Tue,  4 Jun 2019 16:37:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uOJV5XINOlgQ6PPXLX3qB9HijXqdN5OCj1YU2+9v7dQ=; b=URJ
	AlAjLifu2sA8tCO0gn1qta1uBBa4fBqq+3AfI8PVIc0YnWsYTxKCL/wFMV8B6/+b4hhiBeohj701P
	YPWRRfu75jxaFS7C7MhLOIYJeXGrFHJtGfTf68STHYddyoV7AWe2LXhVQQQZHf4fmiU7fgqshm5oa
	2rGlVig5dGHMMkFMJGhZV1BCgfddLpsGqCsWD4NvlZ5SRbJLHTVrdji6+wzDWBgwnsBsyv6x2Dvsx
	hgLBlotPejUiv4EH62biR5uytjPQ74ctWpTB8ughDsI26l6l/EGX0iTQerTnBN9H4YFS0XbYws6ub
	fQfkKk6Salbk4wCs1E2z8ntoPimYl8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYAZ1-0001Z0-36; Tue, 04 Jun 2019 14:37:23 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYAYu-0001W9-Hn
 for linux-mtd@lists.infradead.org; Tue, 04 Jun 2019 14:37:18 +0000
Received: by mail-pf1-x430.google.com with SMTP id x15so3019633pfq.0
 for <linux-mtd@lists.infradead.org>; Tue, 04 Jun 2019 07:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=otDo9JTAjxXUIL0wLWnsf0TMryCbgHF9GFg/VIogBAs=;
 b=kCjoVhgdZdcOvP3sZPyHTyIZ85jJnetO5gXKqNfILh57x1IyOoKasY2xq1+oWnqr9O
 /r9Bm+1nN4LFlCXnZzsQli1WhvGWny5lhx5RBZbe6CGxAslWqt+0ZOTyuKugBd+ZmBV0
 W6HakKVRh1X6jIsVuCT65dnHppF7xOh2ZvBQaVzLkjTuecQulX4y9Kj64AYCZmDVYHwf
 gy/o5wgQm1NT4XDchxHwTFkv8BLAEjDwyqbYRrWa84wgkO0wPBlv1V/NE06sy7s8cyt4
 ws4vpjKnoYQr6lTzKQ4k31QbHihv/TDa2QPSBgzz9P8tsNf4bVI28k/+cjVw/fxMyG6/
 HZmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=otDo9JTAjxXUIL0wLWnsf0TMryCbgHF9GFg/VIogBAs=;
 b=Y3593a4YkItME3I5WpuJ29+G3xUkV1ZjUs2ArHl9w63ZryjdSPgeGDoUjq1dhT+CpC
 woNH8TDWyM2YwlDeRTMd2GGfLtybAR7uy29UInJn0CXdALuFMwYrdhmvo6xEtUHfD4M0
 4LP6e0Na38qM+3jBiUDEwNTk8Dv+US72txDd7wrARWT5c3m6ilpSSVJkdCFXuJMH9fgo
 +3FVN03ZCCcmVGXqtvfMvFBIgd6p6wiRw06ndTHcWw+Q9/iG8HPM9MQRnB48G6j/Rumn
 BD87/GGkC2nAYUcbPj0FuLvv+2oXJWmYs2stMbtgCQQ0aSZ/aTTvNTpFLUt36e9UW2xn
 zKlA==
X-Gm-Message-State: APjAAAUpv2yR4IFNIm0E/KDHhLyzRgTFjCeHWQGu8+bwqKwyESMAIEZl
 WqiN4KUGYqHzCDZYssHmopV5Ecbk
X-Google-Smtp-Source: APXvYqztDa4a+0/SfVTcijqZh9u/FsWU/PgCbhPoSykbGim4IEpdZHtUKjIpGmXvgwX9fgyFt3scZQ==
X-Received: by 2002:a17:90a:4814:: with SMTP id
 a20mr38088311pjh.62.1559659032979; 
 Tue, 04 Jun 2019 07:37:12 -0700 (PDT)
Received: from mail.broadcom.com ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id m6sm24156872pjl.18.2019.06.04.07.37.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 07:37:12 -0700 (PDT)
From: Kamal Dasu <kdasu.kdev@gmail.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH v2 1/3] mtd: nand: raw: brcmnand: Refactored code to introduce
 helper functions
Date: Tue,  4 Jun 2019 10:36:29 -0400
Message-Id: <1559659013-34502-1-git-send-email-kdasu.kdev@gmail.com>
X-Mailer: git-send-email 1.9.0.138.g2de3478
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_073716_593307_74148A6E 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:430 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kdasu.kdev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Refactored NAND ECC and CMD address configuration code to use helper
functions.

Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
---
 drivers/mtd/nand/raw/brcmnand/brcmnand.c | 100 +++++++++++++++++++------------
 1 file changed, 62 insertions(+), 38 deletions(-)

diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
index ce0b8ff..c534ea8 100644
--- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
+++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
@@ -588,6 +588,54 @@ static inline void brcmnand_write_fc(struct brcmnand_controller *ctrl,
 	__raw_writel(val, ctrl->nand_fc + word * 4);
 }
 
+static void brcmnand_clear_ecc_addr(struct brcmnand_controller *ctrl)
+{
+
+	/* Clear error addresses */
+	brcmnand_write_reg(ctrl, BRCMNAND_UNCORR_ADDR, 0);
+	brcmnand_write_reg(ctrl, BRCMNAND_CORR_ADDR, 0);
+	brcmnand_write_reg(ctrl, BRCMNAND_UNCORR_EXT_ADDR, 0);
+	brcmnand_write_reg(ctrl, BRCMNAND_CORR_EXT_ADDR, 0);
+}
+
+static u64 brcmnand_get_uncorrecc_addr(struct brcmnand_controller *ctrl)
+{
+	u64 err_addr;
+
+	err_addr = brcmnand_read_reg(ctrl, BRCMNAND_UNCORR_ADDR);
+	err_addr |= ((u64)(brcmnand_read_reg(ctrl,
+					     BRCMNAND_UNCORR_EXT_ADDR)
+					     & 0xffff) << 32);
+
+	return err_addr;
+}
+
+static u64 brcmnand_get_correcc_addr(struct brcmnand_controller *ctrl)
+{
+	u64 err_addr;
+
+	err_addr = brcmnand_read_reg(ctrl, BRCMNAND_CORR_ADDR);
+	err_addr |= ((u64)(brcmnand_read_reg(ctrl,
+					     BRCMNAND_CORR_EXT_ADDR)
+					     & 0xffff) << 32);
+
+	return err_addr;
+}
+
+static void brcmnand_set_cmd_addr(struct mtd_info *mtd, u64 addr)
+{
+	struct nand_chip *chip =  mtd_to_nand(mtd);
+	struct brcmnand_host *host = nand_get_controller_data(chip);
+	struct brcmnand_controller *ctrl = host->ctrl;
+
+	brcmnand_write_reg(ctrl, BRCMNAND_CMD_EXT_ADDRESS,
+			   (host->cs << 16) | ((addr >> 32) & 0xffff));
+	(void)brcmnand_read_reg(ctrl, BRCMNAND_CMD_EXT_ADDRESS);
+	brcmnand_write_reg(ctrl, BRCMNAND_CMD_ADDRESS,
+			   lower_32_bits(addr));
+	(void)brcmnand_read_reg(ctrl, BRCMNAND_CMD_ADDRESS);
+}
+
 static inline u16 brcmnand_cs_offset(struct brcmnand_controller *ctrl, int cs,
 				     enum brcmnand_cs_reg reg)
 {
@@ -1213,9 +1261,12 @@ static void brcmnand_send_cmd(struct brcmnand_host *host, int cmd)
 {
 	struct brcmnand_controller *ctrl = host->ctrl;
 	int ret;
+	u64 cmd_addr;
+
+	cmd_addr = brcmnand_read_reg(ctrl, BRCMNAND_CMD_ADDRESS);
+
+	dev_dbg(ctrl->dev, "send native cmd %d addr 0x%llx\n", cmd, cmd_addr);
 
-	dev_dbg(ctrl->dev, "send native cmd %d addr_lo 0x%x\n", cmd,
-		brcmnand_read_reg(ctrl, BRCMNAND_CMD_ADDRESS));
 	BUG_ON(ctrl->cmd_pending != 0);
 	ctrl->cmd_pending = cmd;
 
@@ -1374,12 +1425,7 @@ static void brcmnand_cmdfunc(struct nand_chip *chip, unsigned command,
 	if (!native_cmd)
 		return;
 
-	brcmnand_write_reg(ctrl, BRCMNAND_CMD_EXT_ADDRESS,
-		(host->cs << 16) | ((addr >> 32) & 0xffff));
-	(void)brcmnand_read_reg(ctrl, BRCMNAND_CMD_EXT_ADDRESS);
-	brcmnand_write_reg(ctrl, BRCMNAND_CMD_ADDRESS, lower_32_bits(addr));
-	(void)brcmnand_read_reg(ctrl, BRCMNAND_CMD_ADDRESS);
-
+	brcmnand_set_cmd_addr(mtd, addr);
 	brcmnand_send_cmd(host, native_cmd);
 	brcmnand_waitfunc(chip);
 
@@ -1597,20 +1643,10 @@ static int brcmnand_read_by_pio(struct mtd_info *mtd, struct nand_chip *chip,
 	struct brcmnand_controller *ctrl = host->ctrl;
 	int i, j, ret = 0;
 
-	/* Clear error addresses */
-	brcmnand_write_reg(ctrl, BRCMNAND_UNCORR_ADDR, 0);
-	brcmnand_write_reg(ctrl, BRCMNAND_CORR_ADDR, 0);
-	brcmnand_write_reg(ctrl, BRCMNAND_UNCORR_EXT_ADDR, 0);
-	brcmnand_write_reg(ctrl, BRCMNAND_CORR_EXT_ADDR, 0);
-
-	brcmnand_write_reg(ctrl, BRCMNAND_CMD_EXT_ADDRESS,
-			(host->cs << 16) | ((addr >> 32) & 0xffff));
-	(void)brcmnand_read_reg(ctrl, BRCMNAND_CMD_EXT_ADDRESS);
+	brcmnand_clear_ecc_addr(ctrl);
 
 	for (i = 0; i < trans; i++, addr += FC_BYTES) {
-		brcmnand_write_reg(ctrl, BRCMNAND_CMD_ADDRESS,
-				   lower_32_bits(addr));
-		(void)brcmnand_read_reg(ctrl, BRCMNAND_CMD_ADDRESS);
+		brcmnand_set_cmd_addr(mtd, addr);
 		/* SPARE_AREA_READ does not use ECC, so just use PAGE_READ */
 		brcmnand_send_cmd(host, CMD_PAGE_READ);
 		brcmnand_waitfunc(chip);
@@ -1630,21 +1666,15 @@ static int brcmnand_read_by_pio(struct mtd_info *mtd, struct nand_chip *chip,
 					host->hwcfg.sector_size_1k);
 
 		if (!ret) {
-			*err_addr = brcmnand_read_reg(ctrl,
-					BRCMNAND_UNCORR_ADDR) |
-				((u64)(brcmnand_read_reg(ctrl,
-						BRCMNAND_UNCORR_EXT_ADDR)
-					& 0xffff) << 32);
+			*err_addr = brcmnand_get_uncorrecc_addr(ctrl);
+
 			if (*err_addr)
 				ret = -EBADMSG;
 		}
 
 		if (!ret) {
-			*err_addr = brcmnand_read_reg(ctrl,
-					BRCMNAND_CORR_ADDR) |
-				((u64)(brcmnand_read_reg(ctrl,
-						BRCMNAND_CORR_EXT_ADDR)
-					& 0xffff) << 32);
+			*err_addr = brcmnand_get_correcc_addr(ctrl);
+
 			if (*err_addr)
 				ret = -EUCLEAN;
 		}
@@ -1711,7 +1741,7 @@ static int brcmnand_read(struct mtd_info *mtd, struct nand_chip *chip,
 	dev_dbg(ctrl->dev, "read %llx -> %p\n", (unsigned long long)addr, buf);
 
 try_dmaread:
-	brcmnand_write_reg(ctrl, BRCMNAND_UNCORR_COUNT, 0);
+	brcmnand_clear_ecc_addr(ctrl);
 
 	if (has_flash_dma(ctrl) && !oob && flash_dma_buf_ok(buf)) {
 		err = brcmnand_dma_trans(host, addr, buf, trans * FC_BYTES,
@@ -1858,15 +1888,9 @@ static int brcmnand_write(struct mtd_info *mtd, struct nand_chip *chip,
 		goto out;
 	}
 
-	brcmnand_write_reg(ctrl, BRCMNAND_CMD_EXT_ADDRESS,
-			(host->cs << 16) | ((addr >> 32) & 0xffff));
-	(void)brcmnand_read_reg(ctrl, BRCMNAND_CMD_EXT_ADDRESS);
-
 	for (i = 0; i < trans; i++, addr += FC_BYTES) {
 		/* full address MUST be set before populating FC */
-		brcmnand_write_reg(ctrl, BRCMNAND_CMD_ADDRESS,
-				   lower_32_bits(addr));
-		(void)brcmnand_read_reg(ctrl, BRCMNAND_CMD_ADDRESS);
+		brcmnand_set_cmd_addr(mtd, addr);
 
 		if (buf) {
 			brcmnand_soc_data_bus_prepare(ctrl->soc, false);
-- 
1.9.0.138.g2de3478


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
