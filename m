Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26858162433
	for <lists+linux-mtd@lfdr.de>; Tue, 18 Feb 2020 11:05:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OoypDFdsWAu1IpCzxLeToD3m7KuFsPu+xCMQUO5bjiU=; b=Ar9k9Dnnlbnw9E
	VsuqTReoMANstJAL/AvSlcA5nVfr+3RY5sF2vw3TCrdjTyg770n7TjN65lZCaCBkakI3BGJnqo3QR
	JaIIsIH0Qn0c+RK+h1DVpJBAzkCp4Y8JepTNwd6+mujaU8XSylGgojYG/zUip+lyHd36wEmOxe2p5
	MZe6clghBQjnWj+cVGJZGEoM+EU+VcSP2GfieCQIAsD056TeTeG0GpihkpjvkwUV1TbUq0NNOi0bV
	abM7bfGFLnHMr9EsDEoMsWLbS6fvsM8z0Uvxm3b0pbGFmMBQzgDGDvfyA1lUgesQ4l6K/8Bf8IJKd
	t48V7ABM56IqFV/K4LAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3zl3-0004Mu-5M; Tue, 18 Feb 2020 10:05:37 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3zkl-0004FH-1d
 for linux-mtd@lists.infradead.org; Tue, 18 Feb 2020 10:05:20 +0000
Received: from sntmail10s.snt-is.com (unknown [10.203.32.183])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id A7C0967A8CD;
 Tue, 18 Feb 2020 11:05:15 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail10s.snt-is.com
 (10.203.32.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Tue, 18 Feb
 2020 11:05:15 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1913.005; Tue, 18 Feb 2020 11:05:15 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Boris Brezillon <bbrezillon@kernel.org>, Schrempf Frieder
 <frieder.schrempf@kontron.de>, Jeff Kletsky <git-commits@allycomm.com>,
 liaoweixiong <liaoweixiong@allwinnertech.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>
Subject: [PATCH v3 1/3] mtd: spinand: Stop using spinand->oobbuf for buffering
 bad block markers
Thread-Topic: [PATCH v3 1/3] mtd: spinand: Stop using spinand->oobbuf for
 buffering bad block markers
Thread-Index: AQHV5kLqOs6Lg5M1+0KLGm4PvWQSng==
Date: Tue, 18 Feb 2020 10:05:14 +0000
Message-ID: <20200218100432.32433-2-frieder.schrempf@kontron.de>
References: <20200218100432.32433-1-frieder.schrempf@kontron.de>
In-Reply-To: <20200218100432.32433-1-frieder.schrempf@kontron.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: A7C0967A8CD.AE4D8
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: bbrezillon@kernel.org, git-commits@allycomm.com,
 liaoweixiong@allwinnertech.com, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 richard@nod.at, stable@vger.kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_020519_453784_CC040830 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.208.41.69 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Frieder Schrempf <frieder.schrempf@kontron.de>

For reading and writing the bad block markers, spinand->oobbuf is
currently used as a buffer for the marker bytes. During the
underlying read and write operations to actually get/set the content
of the OOB area, the content of spinand->oobbuf is reused and changed
by accessing it through spinand->oobbuf and/or spinand->databuf.

This is a flaw in the original design of the SPI NAND core and at the
latest from 13c15e07eedf ("mtd: spinand: Handle the case where
PROGRAM LOAD does not reset the cache") on, it results in not having
the bad block marker written at all, as the spinand->oobbuf is
cleared to 0xff after setting the marker bytes to zero.

To fix it, we now just store the two bytes for the marker on the
stack and let the read/write operations copy it from/to the page
buffer later.

Fixes: 7529df465248 ("mtd: nand: Add core infrastructure to support SPI NANDs")
Cc: stable@vger.kernel.org
Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
Changes in v3:
 * Correct "SPI MEM" to "SPI NAND" in commit message

Changes in v2:
 * Incorporate small improvements proposed by Boris
 * Add Boris' R-b tag
---
 drivers/mtd/nand/spi/core.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/nand/spi/core.c b/drivers/mtd/nand/spi/core.c
index 89f6beefb01c..de36cd7a5d7e 100644
--- a/drivers/mtd/nand/spi/core.c
+++ b/drivers/mtd/nand/spi/core.c
@@ -568,18 +568,18 @@ static int spinand_mtd_write(struct mtd_info *mtd, loff_t to,
 static bool spinand_isbad(struct nand_device *nand, const struct nand_pos *pos)
 {
 	struct spinand_device *spinand = nand_to_spinand(nand);
+	u8 marker[2] = { };
 	struct nand_page_io_req req = {
 		.pos = *pos,
-		.ooblen = 2,
+		.ooblen = sizeof(marker),
 		.ooboffs = 0,
-		.oobbuf.in = spinand->oobbuf,
+		.oobbuf.in = marker,
 		.mode = MTD_OPS_RAW,
 	};
 
-	memset(spinand->oobbuf, 0, 2);
 	spinand_select_target(spinand, pos->target);
 	spinand_read_page(spinand, &req, false);
-	if (spinand->oobbuf[0] != 0xff || spinand->oobbuf[1] != 0xff)
+	if (marker[0] != 0xff || marker[1] != 0xff)
 		return true;
 
 	return false;
@@ -603,11 +603,12 @@ static int spinand_mtd_block_isbad(struct mtd_info *mtd, loff_t offs)
 static int spinand_markbad(struct nand_device *nand, const struct nand_pos *pos)
 {
 	struct spinand_device *spinand = nand_to_spinand(nand);
+	u8 marker[2] = { };
 	struct nand_page_io_req req = {
 		.pos = *pos,
 		.ooboffs = 0,
-		.ooblen = 2,
-		.oobbuf.out = spinand->oobbuf,
+		.ooblen = sizeof(marker),
+		.oobbuf.out = marker,
 	};
 	int ret;
 
@@ -622,7 +623,6 @@ static int spinand_markbad(struct nand_device *nand, const struct nand_pos *pos)
 
 	spinand_erase_op(spinand, pos);
 
-	memset(spinand->oobbuf, 0, 2);
 	return spinand_write_page(spinand, &req);
 }
 
-- 
2.17.1

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
