Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D249EAC0E0
	for <lists+linux-mtd@lfdr.de>; Fri,  6 Sep 2019 21:49:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uNh4Z0Lw23OMAtO4cR8xYXC7er+rTsFDXrPIy872Vzo=; b=Wi6
	W2NkMPxCbxAOkBxLLHSzjLnt2ezr77nGdo0or0B3ejV/uFe/fOL7I5sgrX9qQLUanawR4BvhmvLEn
	C3yYRRWtPsPp3jaIUitBKolHg4gxCPVmCz7JLNA8vtF6X6Imcu9ABT0PsjeDyngK7jduzumnuRXpU
	tpxKdG2sR1kLLNJOD62rBI4IhNughFRqsOpOPWLhfz94SkkBZ2hn29FDoe9tvaGthDyPfGwCdNPJb
	ax8jhdLU97YToD/bRRBS+F8qr6uc9tvrNNnTcU9sjA/ri8KuADKuqcFB8PXLQ+E+Uc+HwJobD2Yq3
	qTU/uR8Tms/apbf+2CjmTmofH6ckjaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6KES-0004gv-0z; Fri, 06 Sep 2019 19:49:20 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6KEK-0004gC-MG
 for linux-mtd@lists.infradead.org; Fri, 06 Sep 2019 19:49:13 +0000
Received: by mail-pg1-x544.google.com with SMTP id p3so4066207pgb.9
 for <linux-mtd@lists.infradead.org>; Fri, 06 Sep 2019 12:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=uAzFuMJFC8Qs6zalTfHoEOACCJjWE6SxXCJNlMiufmc=;
 b=RKKwKRs2N6yoI0pB2oH4Uv9SbRzRWQEW0woC725TrgQ5hhPfgqJWWtes733p+nCc4u
 ds98ZXgCub53C6qaASOae9vIW3w2C7hXik/fsEOhicdwKkxuKJcR6hWAE4HsDXbnU9U0
 5gNeKjfnE2BGZhJNJ8AAVceGHsbxrZOOpmfEkOef6xgNdcNdw/DE1xZIQ8TUu9MinI/j
 OxfwccCtnukauMPYWIs4U4jT+wlBUWnze7aTbQThbkKOBNuwJbBeouUFufFHctIO45OV
 lXZikXmPFrQJsxk871LQr1cv4vXt4Gc5+hdxl/AAKi+K5cUaYMyhCEp7HTne/9AyBaDS
 WrVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=uAzFuMJFC8Qs6zalTfHoEOACCJjWE6SxXCJNlMiufmc=;
 b=jf410L6/nwM62txYJwApBVKizEsJmn1cANUyobIayWP7qzNuVaM8KBlng9XNEh5Acx
 +Ai/SfH7g7LzPvt1R+LEdZf63xGkOaLXm8bfRT0m6m2wj6KNLbjjr1zXNac9zGlZyJMo
 uJNFW8KOrjKWta0Mz9PS7fndOBsbzEcTLutc/31eyNB4W2qFOjgLjFHp943eGvAMdSa2
 MuXSS25a8BVSEo+tB1c8xgEPZ1GuUCBG0GJk+5v61es2GZeLwO7Y1pfPhzc9LT8Gs57Y
 Lo07KjgVW0ztctfIoYgIBZpQsQR7gPV97hIUxPy16WFXXk1op9b9sIznGrxC1pnBpmoO
 DpLQ==
X-Gm-Message-State: APjAAAWB5O4+1PLcnfRxTbKALkRTDmQrAe0vmJcAgq4/nV1npy1/xezR
 Gdr37Q/o20EFnWnN4psqX7H4Pw1Z
X-Google-Smtp-Source: APXvYqzYnh/9vJNadE0cCHveRlhb7dIY5iG/blPZ0Hq8le4ixP+lhRxijP9d4wDs0X4pvqNWVypmWA==
X-Received: by 2002:a17:90a:2e15:: with SMTP id
 q21mr11395700pjd.97.1567799351470; 
 Fri, 06 Sep 2019 12:49:11 -0700 (PDT)
Received: from mail.broadcom.com ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id c127sm9830119pfb.5.2019.09.06.12.49.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Sep 2019 12:49:10 -0700 (PDT)
From: Kamal Dasu <kdasu.kdev@gmail.com>
To: kdasu.kdev@gmail.com
Subject: [PATCH 1/2] mtd: nand: brcmnand: Add support for flash-dma v0
Date: Fri,  6 Sep 2019 15:47:15 -0400
Message-Id: <20190906194719.15761-1-kdasu.kdev@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_124912_724902_D8455A6C 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kdasu.kdev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Frieder Schrempf <frieder.schrempf@kontron.de>,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This change adds support for flash dma v0.0.

Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
---
 drivers/mtd/nand/raw/brcmnand/brcmnand.c | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
index 33310b8a6eb8..1eade9dc3b0d 100644
--- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
+++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
@@ -117,6 +117,18 @@ enum flash_dma_reg {
 	FLASH_DMA_CURRENT_DESC_EXT,
 };
 
+/* flash_dma registers v0*/
+static const u16 flash_dma_regs_v0[] = {
+	[FLASH_DMA_REVISION]		= 0x00,
+	[FLASH_DMA_FIRST_DESC]		= 0x04,
+	[FLASH_DMA_CTRL]		= 0x08,
+	[FLASH_DMA_MODE]		= 0x0c,
+	[FLASH_DMA_STATUS]		= 0x10,
+	[FLASH_DMA_INTERRUPT_DESC]	= 0x14,
+	[FLASH_DMA_ERROR_STATUS]	= 0x18,
+	[FLASH_DMA_CURRENT_DESC]	= 0x1c,
+};
+
 /* flash_dma registers v1*/
 static const u16 flash_dma_regs_v1[] = {
 	[FLASH_DMA_REVISION]		= 0x00,
@@ -597,6 +609,8 @@ static void brcmnand_flash_dma_revision_init(struct brcmnand_controller *ctrl)
 	/* flash_dma register offsets */
 	if (ctrl->nand_version >= 0x0703)
 		ctrl->flash_dma_offsets = flash_dma_regs_v4;
+	else if (ctrl->nand_version == 0x0602)
+		ctrl->flash_dma_offsets = flash_dma_regs_v0;
 	else
 		ctrl->flash_dma_offsets = flash_dma_regs_v1;
 }
@@ -1673,8 +1687,11 @@ static void brcmnand_dma_run(struct brcmnand_host *host, dma_addr_t desc)
 
 	flash_dma_writel(ctrl, FLASH_DMA_FIRST_DESC, lower_32_bits(desc));
 	(void)flash_dma_readl(ctrl, FLASH_DMA_FIRST_DESC);
-	flash_dma_writel(ctrl, FLASH_DMA_FIRST_DESC_EXT, upper_32_bits(desc));
-	(void)flash_dma_readl(ctrl, FLASH_DMA_FIRST_DESC_EXT);
+	if (ctrl->nand_version > 0x0602) {
+		flash_dma_writel(ctrl, FLASH_DMA_FIRST_DESC_EXT,
+				 upper_32_bits(desc));
+		(void)flash_dma_readl(ctrl, FLASH_DMA_FIRST_DESC_EXT);
+	}
 
 	/* Start FLASH_DMA engine */
 	ctrl->dma_pending = true;
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
