Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D568716243E
	for <lists+linux-mtd@lfdr.de>; Tue, 18 Feb 2020 11:06:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+S13pd5lKJyvVp4GZpeWUBQnG3Z3auwG1pfP534ExR0=; b=SGBhTPxfvbB+Mo
	TSlU1MDUOFUJLbvWa5sW4WFM+ngzQfkx9IRGMpPocWcksQh7kziLObsO7i534o2ezh8iLzlNplCFP
	CWmI+pKtthbST2F7XK6uqJlDBU2yu4F+1pX/s08vMcuNdHwH7kK26lZsQGGPGQ7udzKO73DN+kV6F
	dHBM5ZTxSpcKCirprPaVQLDPr5+eSMr46JuEMp4sz8WndDLr4L+klpuRlSc9RXSlQMJ97NjVp9SC5
	USFjJHO++qgC83yRn9g/ITyBpf87CwDzWW+ocNDfqtLyRFHNujjJyZ+KgvDmwlQbu6aCllJFRwzlS
	gp1EcST4wXnwPrfV4/dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3zlU-00050T-1H; Tue, 18 Feb 2020 10:06:04 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3zl5-0004bK-Bc
 for linux-mtd@lists.infradead.org; Tue, 18 Feb 2020 10:05:41 +0000
Received: from sntmail12r.snt-is.com (unknown [10.203.32.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id 7E93667A5A8;
 Tue, 18 Feb 2020 11:05:36 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail12r.snt-is.com
 (10.203.32.182) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Tue, 18 Feb
 2020 11:05:36 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1913.005; Tue, 18 Feb 2020 11:05:36 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Boris Brezillon <bbrezillon@kernel.org>, Schrempf Frieder
 <frieder.schrempf@kontron.de>, Jeff Kletsky <git-commits@allycomm.com>,
 liaoweixiong <liaoweixiong@allwinnertech.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>
Subject: [PATCH v3 3/3] mtd: spinand: Do not erase the block before writing a
 bad block marker
Thread-Topic: [PATCH v3 3/3] mtd: spinand: Do not erase the block before
 writing a bad block marker
Thread-Index: AQHV5kL2fn0Iiu4Eq0WB3PT4XCneCA==
Date: Tue, 18 Feb 2020 10:05:35 +0000
Message-ID: <20200218100432.32433-4-frieder.schrempf@kontron.de>
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
X-SnT-MailScanner-ID: 7E93667A5A8.ADBEE
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
X-CRM114-CacheID: sfid-20200218_020539_738243_566868B3 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.208.41.68 listed in list.dnswl.org]
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

Currently when marking a block, we use spinand_erase_op() to erase
the block before writing the marker to the OOB area. Doing so without
waiting for the operation to finish can lead to the marking failing
silently and no bad block marker being written to the flash.

In fact we don't need to do an erase at all before writing the BBM.
The ECC is disabled for raw accesses to the OOB data and we don't
need to work around any issues with chips reporting ECC errors as it
is known to be the case for raw NAND.

Fixes: 7529df465248 ("mtd: nand: Add core infrastructure to support SPI NANDs")
Cc: stable@vger.kernel.org
Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
Changes in v3:
 * Fix the subject line and the commit message
 * Add Boris' R-b tag

Changes in v2:
 * Instead of waiting for the erase operation to finish, just don't
   do an erase at all, as it is not needed.
 * Update the commit message
---
 drivers/mtd/nand/spi/core.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/mtd/nand/spi/core.c b/drivers/mtd/nand/spi/core.c
index a94287884453..8dda51bbdd11 100644
--- a/drivers/mtd/nand/spi/core.c
+++ b/drivers/mtd/nand/spi/core.c
@@ -613,7 +613,6 @@ static int spinand_markbad(struct nand_device *nand, const struct nand_pos *pos)
 	};
 	int ret;
 
-	/* Erase block before marking it bad. */
 	ret = spinand_select_target(spinand, pos->target);
 	if (ret)
 		return ret;
@@ -622,8 +621,6 @@ static int spinand_markbad(struct nand_device *nand, const struct nand_pos *pos)
 	if (ret)
 		return ret;
 
-	spinand_erase_op(spinand, pos);
-
 	return spinand_write_page(spinand, &req);
 }
 
-- 
2.17.1

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
