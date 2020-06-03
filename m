Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B50D1ED16A
	for <lists+linux-mtd@lfdr.de>; Wed,  3 Jun 2020 15:52:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d78LdSldd4xnjNPBqb5U/LkM69QNewmHZccx0nuDTnU=; b=AJAKB16EChQoG3
	40jsrVMwY5DAy22UcdQpZzLvBpaJtQP7AcSFy4in+iShURfbYk2XauAKtXZ0KKfEgKglPAmEKKIxF
	5gvX/ANwihp8l06hmuAyCVtG8w7Q5/qNIBy8vVhlLoAtZ98JbXeUi0cmzHmC12jAvqVNBXTynuw+M
	YCJMK0a2t5CFwE+Zl5T4zsQhPFTauHxRfI64/hv55+KJz1fs6VS2JbS95jpD4XlIfqS3DYadCVybi
	zqj1RHZ8RDuRPH2KldAQP8JjuhyOomqJWwMjaUktV1gcc81D2qR9oprf/WnOoytoFcTJPEZidRHtt
	rexwJl3KEsgdUIHKfCGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgTo8-00061v-68; Wed, 03 Jun 2020 13:51:52 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgTlq-0001jp-D4
 for linux-mtd@lists.infradead.org; Wed, 03 Jun 2020 13:49:33 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 8CA272A3D79;
 Wed,  3 Jun 2020 14:49:28 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Anton Vorontsov <anton@enomsg.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org
Subject: [PATCH 07/10] mtd: rawnand: fsl_upm: Inherit from nand_controller
Date: Wed,  3 Jun 2020 15:49:19 +0200
Message-Id: <20200603134922.1352340-8-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200603134922.1352340-1-boris.brezillon@collabora.com>
References: <20200603134922.1352340-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_064930_590494_D4A718FA 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Explicitly inherit from nand_controller instead of relying on the
nand_chip.legacy.dummy_controller field.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/fsl_upm.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mtd/nand/raw/fsl_upm.c b/drivers/mtd/nand/raw/fsl_upm.c
index 977b7aad419b..9a63e36825d8 100644
--- a/drivers/mtd/nand/raw/fsl_upm.c
+++ b/drivers/mtd/nand/raw/fsl_upm.c
@@ -24,6 +24,7 @@
 #define FSL_UPM_WAIT_WRITE_BUFFER 0x4
 
 struct fsl_upm_nand {
+	struct nand_controller base;
 	struct device *dev;
 	struct nand_chip chip;
 	int last_ctrl;
@@ -167,6 +168,7 @@ static int fun_chip_init(struct fsl_upm_nand *fun,
 	if (!fun->rnb_gpio[0])
 		fun->chip.legacy.dev_ready = fun_chip_ready;
 
+	fun->chip.controller = &fun->base;
 	mtd->dev.parent = fun->dev;
 
 	flash_np = of_get_next_child(upm_np, NULL);
@@ -268,6 +270,7 @@ static int fun_probe(struct platform_device *ofdev)
 		fun->wait_flags = FSL_UPM_WAIT_RUN_PATTERN |
 				  FSL_UPM_WAIT_WRITE_BYTE;
 
+	nand_controller_init(&fun->base);
 	fun->dev = &ofdev->dev;
 	fun->last_ctrl = NAND_CLE;
 
-- 
2.25.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
