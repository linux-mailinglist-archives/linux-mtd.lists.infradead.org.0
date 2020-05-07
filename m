Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8701C875D
	for <lists+linux-mtd@lfdr.de>; Thu,  7 May 2020 12:55:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=opKfEh0jgNCV31125eUmiiLJls07gptoaxsSTdIy8ng=; b=HDcSPtD3oWp+Na
	buUIS+w/WU+HgFhX6kkJS3D8XL9tgLnMuuMinyth1UGAXSsRbOplIVE1F6BkQhgerghFRracbUM7Y
	2Wj5n6oe9lG+juhr5dHQ20aX1eXFqd7Oo1B8pkpEYk6Cx05lz3DKHYyy0649qP7+2t7g/082SRqgE
	APKKKcInJtJflklbOCt9s/SGaxf4WpHsXZEawd7vIg6CYMGFF/XCO3m9sIxhqqKGs2g0RygvHTaR4
	VtkXaFPAhoThkgkn7eGDYapjTbDTwZHSkOzspadRS3n3DEgkulOVbOZCb1Bs/ITYrYBWH3+li1aH5
	Ge6cNAY8bo8Lvj/5d/uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWeBu-0000Rl-LW; Thu, 07 May 2020 10:55:46 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWe9B-0004B1-Rw
 for linux-mtd@lists.infradead.org; Thu, 07 May 2020 10:52:59 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 33772240016;
 Thu,  7 May 2020 10:52:55 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v5 10/13] mtd: rawnand: jedec: Adapt the parameter page read
 to constraint controllers
Date: Thu,  7 May 2020 12:52:38 +0200
Message-Id: <20200507105241.14299-11-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200507105241.14299-1-miquel.raynal@bootlin.com>
References: <20200507105241.14299-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_035258_047997_8AE69834 
X-CRM114-Status: GOOD (  13.11  )
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
NAND bus to trigger a parameter page read, and then do a read
operation for each page.

But there are also controllers which are not able to split the
parameter page read between the command/address cycles and the actual
data operation.

Let's use a regular PARAMETER PAGE READ operation for the first
iteration and use eithe a CHANGE READ COLUMN or a simple DATA READ
operation for the following copies, depending on what the controller
supports. The default for non-exec-op compliant drivers remains
unchanged: use a SIMPLE READ.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/nand_jedec.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_jedec.c b/drivers/mtd/nand/raw/nand_jedec.c
index 63069f1948a8..b15c42f48755 100644
--- a/drivers/mtd/nand/raw/nand_jedec.c
+++ b/drivers/mtd/nand/raw/nand_jedec.c
@@ -27,6 +27,7 @@ int nand_jedec_detect(struct nand_chip *chip)
 	struct nand_memory_organization *memorg;
 	struct nand_jedec_params *p;
 	struct jedec_ecc_info *ecc;
+	bool use_datain = false;
 	int jedec_version = 0;
 	char id[5];
 	int i, val, ret;
@@ -44,14 +45,20 @@ int nand_jedec_detect(struct nand_chip *chip)
 	if (!p)
 		return -ENOMEM;
 
-	ret = nand_read_param_page_op(chip, 0x40, NULL, 0);
-	if (ret) {
-		ret = 0;
-		goto free_jedec_param_page;
-	}
+	if (!nand_has_exec_op(chip) ||
+	    !nand_read_data_op(chip, p, sizeof(*p), true, true))
+		use_datain = true;
 
 	for (i = 0; i < JEDEC_PARAM_PAGES; i++) {
-		ret = nand_read_data_op(chip, p, sizeof(*p), true, false);
+		if (!i)
+			ret = nand_read_param_page_op(chip, 0x40, p,
+						      sizeof(*p));
+		else if (use_datain)
+			ret = nand_read_data_op(chip, p, sizeof(*p), true,
+						false);
+		else
+			ret = nand_change_read_column_op(chip, sizeof(*p) * i,
+							 p, sizeof(*p), true);
 		if (ret) {
 			ret = 0;
 			goto free_jedec_param_page;
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
