Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A86831C875B
	for <lists+linux-mtd@lfdr.de>; Thu,  7 May 2020 12:55:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uPlLHaf8ZYPxceyazwzjyDzupTMUTtoKkoMrKUmrjXY=; b=OLXugESzphq4+Z
	uRysf5hxW2iGFix+ck1eq7Pw4qUve3WlqySMy7oZs2VM3WgRyOVIMDcQnJrBnuz7dxXrHw7FjZyt6
	dZ4xbjiUACI6CLgNBFSfWFeeZ+Lab3vEZloh2f3P0XvVtIuYilR4FNoV2eZgy5LYumJqdYrEWSA0D
	w5g6e+lTVT5lUoefnrqzULtGR/jJMlP/yS2dFRmH9K+kfve5SXgp9rWFbHK01OFg1jxKzTs3FyqvT
	h3xu9JxPf58W33TfplmWQsEX5WnO36ea/gulGGoeQZX9F/ZLWCIbG2on06O20Sl0Fnd01MI8b5BMJ
	mCKWzFr//avKA9xjPIfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWeB9-0005yJ-T2; Thu, 07 May 2020 10:54:59 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWe9A-00049k-Lo
 for linux-mtd@lists.infradead.org; Thu, 07 May 2020 10:52:58 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 20477240012;
 Thu,  7 May 2020 10:52:54 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v5 09/13] mtd: rawnand: onfi: Adapt the parameter page read to
 constraint controllers
Date: Thu,  7 May 2020 12:52:37 +0200
Message-Id: <20200507105241.14299-10-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200507105241.14299-1-miquel.raynal@bootlin.com>
References: <20200507105241.14299-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_035256_861665_540BBF33 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Michal Simek <monstr@monstr.eu>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

We already know that there are controllers not able to read the three
copies of the parameter page in one go. The workaround was to first
request the controller to assert command and address cycles on the
NAND bus to trigger a parameter page read, and then do a simple read
operation for each page.

But there are also controllers which are not able to split the
parameter page read between the command/address cycles and the actual
data operation.

Let's use a regular PARAMETER PAGE READ operation for the first
iteration and use either a CHANGE READ COLUMN or a simple DATA READ
operation for the following copies, depending on what the controller
supports. The default behavior for non-exec-op compliant drivers
remains the same: DATA READ.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/nand_onfi.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_onfi.c b/drivers/mtd/nand/raw/nand_onfi.c
index e6ffbe8c9a0c..be3456627288 100644
--- a/drivers/mtd/nand/raw/nand_onfi.c
+++ b/drivers/mtd/nand/raw/nand_onfi.c
@@ -143,6 +143,7 @@ int nand_onfi_detect(struct nand_chip *chip)
 	struct nand_memory_organization *memorg;
 	struct nand_onfi_params *p = NULL, *pbuf;
 	struct onfi_params *onfi;
+	bool use_datain = false;
 	int onfi_version = 0;
 	char id[4];
 	int i, ret, val;
@@ -160,15 +161,21 @@ int nand_onfi_detect(struct nand_chip *chip)
 	if (!pbuf)
 		return -ENOMEM;
 
-	ret = nand_read_param_page_op(chip, 0, NULL, 0);
-	if (ret) {
-		ret = 0;
-		goto free_onfi_param_page;
-	}
+	if (!nand_has_exec_op(chip) ||
+	    !nand_read_data_op(chip, &pbuf[0], sizeof(*pbuf), true, true))
+		use_datain = true;
 
 	for (i = 0; i < ONFI_PARAM_PAGES; i++) {
-		ret = nand_read_data_op(chip, &pbuf[i], sizeof(*pbuf), true,
-					false);
+		if (!i)
+			ret = nand_read_param_page_op(chip, 0, &pbuf[i],
+						      sizeof(*pbuf));
+		else if (use_datain)
+			ret = nand_read_data_op(chip, &pbuf[i], sizeof(*pbuf),
+						true, false);
+		else
+			ret = nand_change_read_column_op(chip, sizeof(*pbuf) * i,
+							 &pbuf[i], sizeof(*pbuf),
+							 true);
 		if (ret) {
 			ret = 0;
 			goto free_onfi_param_page;
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
