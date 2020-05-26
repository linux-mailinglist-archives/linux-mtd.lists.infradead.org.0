Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3E81C52C8
	for <lists+linux-mtd@lfdr.de>; Tue,  5 May 2020 12:14:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F7+ugVSm6SpOJo3Xmol+VDG+IPY5GccJVLUD+YTgLho=; b=tq8NI1wBnbs1O+
	ciA8H2vJF3LMhSKIrgTraI9m4mcd95aVYneXNyrjRAfH3bdZTyX1eWMYc1dWhshnKirttVdasCKbz
	sA1MVPWWBB2SbxgHvGZKiXxh5mWDAoklpZ8uhQYMEqBNn2awM3ZIHElu2OXSmBQiJixhXVdWKK+jR
	SZnHBuLVP8mINZX1VThYh0O4fCsPK6Anmwr+s8cGJoWd9vrWuvMNihtS+btuOTM9Br3GyJ5r4PRaj
	qfkWqvHPyyj+ejD76NIAaYiAR6YPY3zux11wtBy10iiF6ZlXeGvxdotvmV4ZbtYwv0xzME9fKwP34
	Yfse1Yar6pnei28EoUJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVuaw-0007MP-Td; Tue, 05 May 2020 10:14:34 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVuaN-00075O-Ik
 for linux-mtd@lists.infradead.org; Tue, 05 May 2020 10:14:01 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:d3ea:1c7:41fd:3038])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 29DC62A1988;
 Tue,  5 May 2020 11:13:58 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 Lubomir Rintel <lkundrak@v3.sk>
Subject: [PATCH v2 01/19] mtd: rawnand: Propage CS selection to sub operations
Date: Tue,  5 May 2020 12:13:35 +0200
Message-Id: <20200505101353.1776394-2-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.3
In-Reply-To: <20200505101353.1776394-1-boris.brezillon@collabora.com>
References: <20200505101353.1776394-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_031359_744278_86647A73 
X-CRM114-Status: GOOD (  14.32  )
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
Cc: Richard Weinberger <richard@nod.at>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Some controller using the instruction parse infrastructure might need
to know which CS a specific sub-operation is targeting. Let's propagate
this information.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
Changes in v2:
* Add R-b
---
 drivers/mtd/nand/raw/nand_base.c | 3 ++-
 include/linux/mtd/rawnand.h      | 2 ++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 3a0e85ebcbe3..1cb5cf7a049a 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -2119,7 +2119,7 @@ static void nand_op_parser_trace(const struct nand_op_parser_ctx *ctx)
 	char *prefix = "      ";
 	unsigned int i;
 
-	pr_debug("executing subop:\n");
+	pr_debug("executing subop (CS%d):\n", ctx->subop.cs);
 
 	for (i = 0; i < ctx->ninstrs; i++) {
 		instr = &ctx->instrs[i];
@@ -2183,6 +2183,7 @@ int nand_op_parser_exec_op(struct nand_chip *chip,
 			   const struct nand_operation *op, bool check_only)
 {
 	struct nand_op_parser_ctx ctx = {
+		.subop.cs = op->cs,
 		.subop.instrs = op->instrs,
 		.instrs = op->instrs,
 		.ninstrs = op->ninstrs,
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index e26a87b0fbd9..c92de1fa4eaf 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -702,6 +702,7 @@ struct nand_op_instr {
 
 /**
  * struct nand_subop - a sub operation
+ * @cs: the CS line to select for this NAND sub-operation
  * @instrs: array of instructions
  * @ninstrs: length of the @instrs array
  * @first_instr_start_off: offset to start from for the first instruction
@@ -718,6 +719,7 @@ struct nand_op_instr {
  * controller driver.
  */
 struct nand_subop {
+	unsigned int cs;
 	const struct nand_op_instr *instrs;
 	unsigned int ninstrs;
 	unsigned int first_instr_start_off;
-- 
2.25.3


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
