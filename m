Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1991C8778
	for <lists+linux-mtd@lfdr.de>; Thu,  7 May 2020 13:02:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y86w41R5/0E+4Lt+tUR6vGVUGcCVtqeCr+3T3V0AC7E=; b=uf72tUinA5eK2x
	iYMmFWkwHKnrB2CQlHwDAdermmTfnYfpKyLagyjGRHZvsAzmQObgitKHNRFFP+fXM+sG7LWbOFE3M
	JMJ/O0wu4IGSDzwzDbfWIjuvT9Wkx2AeabzlwArWINLdHgwhLx9lkm170VJiDvMojXGuRgeFA3H4a
	IHFbMnntXlNlrUvUC1typEzgSWnYlH65EMx8MApQ1Uf6xttbeRrelZ8bZHKB9gTIHAjMNaOu4B5RG
	Yx06mWpJBxXJxRzNGV97EXKKAYLoAU6+Yveb3mG5zbc01OanQ/YhgglHdkCy7nnNskVlpGNBUlG0K
	DsDUkUxca2AWpIvcme7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWeHy-0005hF-DD; Thu, 07 May 2020 11:02:02 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWeHH-0005Eu-9c
 for linux-mtd@lists.infradead.org; Thu, 07 May 2020 11:01:25 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 7A56520003;
 Thu,  7 May 2020 11:01:14 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 <devicetree@vger.kernel.org>, Richard Weinberger <richard@nod.at>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v3 3/8] mtd: rawnand: Ensure the number of bitflips is
 consistent
Date: Thu,  7 May 2020 13:00:29 +0200
Message-Id: <20200507110034.14736-4-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200507110034.14736-1-miquel.raynal@bootlin.com>
References: <20200507110034.14736-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_040119_489926_42099194 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [217.70.183.200 listed in bl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
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

The main NAND read page function can loop over "page reads" many times
in if the reading reports uncorrectable error(s) and if the chip
supports the read_retry feature.

In this case, the number of bitflips is summarized between
attempts. Fix this by re-initializing the entire mtd_ecc_stats object
each time we retry.

Suggested-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_base.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index dda82217e12c..25d298938aa9 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -3235,7 +3235,7 @@ static int nand_do_read_ops(struct nand_chip *chip, loff_t from,
 	oob_required = oob ? 1 : 0;
 
 	while (1) {
-		unsigned int ecc_failures = mtd->ecc_stats.failed;
+		struct mtd_ecc_stats ecc_stats = mtd->ecc_stats;
 
 		bytes = min(mtd->writesize - col, readlen);
 		aligned = (bytes == mtd->writesize);
@@ -3286,7 +3286,7 @@ static int nand_do_read_ops(struct nand_chip *chip, loff_t from,
 			 */
 			if (use_bounce_buf) {
 				if (!NAND_HAS_SUBPAGE_READ(chip) && !oob &&
-				    !(mtd->ecc_stats.failed - ecc_failures) &&
+				    !(mtd->ecc_stats.failed - ecc_stats.failed) &&
 				    (ops->mode != MTD_OPS_RAW)) {
 					chip->pagecache.page = realpage;
 					chip->pagecache.bitflips = ret;
@@ -3309,7 +3309,7 @@ static int nand_do_read_ops(struct nand_chip *chip, loff_t from,
 
 			nand_wait_readrdy(chip);
 
-			if (mtd->ecc_stats.failed - ecc_failures) {
+			if (mtd->ecc_stats.failed - ecc_stats.failed) {
 				if (retry_mode + 1 < chip->read_retries) {
 					retry_mode++;
 					ret = nand_setup_read_retry(chip,
@@ -3317,8 +3317,8 @@ static int nand_do_read_ops(struct nand_chip *chip, loff_t from,
 					if (ret < 0)
 						break;
 
-					/* Reset failures; retry */
-					mtd->ecc_stats.failed = ecc_failures;
+					/* Reset ecc_stats; retry */
+					mtd->ecc_stats = ecc_stats;
 					goto read_retry;
 				} else {
 					/* No more retry modes; real failure */
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
