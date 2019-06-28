Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8015926A
	for <lists+linux-mtd@lfdr.de>; Fri, 28 Jun 2019 06:16:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/pb4n1Gbkm/Z4x2jJXqtPaNpK8MSXBqXDVzw2t1/SAA=; b=UAA
	hDMOSvJylVymaCDQUjf9RrT/B5y/4AeUwPb9V98/CyV1z6f+w1n2CQobJcQlZNpl3DbaNtZoYjeSq
	ST2Hwig0cDYZuj9x5+3PdwBVLDdqZpS0wVV9GSNjUxsY2nMBN++5QPP2/cqb7W5sR+u1kvQyBVmxV
	8ucPItq/H56SpNJ+uD/0Ae2oqhqnB8aB6NbO5CoO20XZfOPd1uz4r8sQU8Ysh/8AeoZXa2VHNc2gt
	No/X5kjwKKP3P5McS2BQmmviP2BUh6/fL0gQ/ReVjUrRT7j4lepNLMh1VClfQSymuqNyaCczK8If1
	axRHofPL4bxqnQid/pDuErjoqMoQkmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgiJC-0008Mt-EE; Fri, 28 Jun 2019 04:16:22 +0000
Received: from smtp2207-205.mail.aliyun.com ([121.197.207.205])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgiIo-0008FW-J3
 for linux-mtd@lists.infradead.org; Fri, 28 Jun 2019 04:16:01 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.08664834|-1; CH=green;
 DM=CONTINUE|CONTINUE|true|0.11304-0.0102429-0.876717; FP=0|0|0|0|0|-1|-1|-1;
 HT=e02c03301; MF=liaoweixiong@allwinnertech.com; NM=1; PH=DS; RN=15; RT=15;
 SR=0; TI=SMTPD_---.Er4GNk4_1561695320; 
Received: from
 PC-liaoweixiong.allwinnertech.com(mailfrom:liaoweixiong@allwinnertech.com
 fp:SMTPD_---.Er4GNk4_1561695320)
 by smtp.aliyun-inc.com(10.147.41.143);
 Fri, 28 Jun 2019 12:15:53 +0800
From: liaoweixiong <liaoweixiong@allwinnertech.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Frieder Schrempf <frieder.schrempf@exceet.de>,
 Peter Pan <peterpandong@micron.com>,
 Jeff Kletsky <git-commits@allycomm.com>,
 Schrempf Frieder <frieder.schrempf@kontron.De>
Subject: [PATCH v3] mtd: spinand: read return badly if the last page has
 bitflips
Date: Fri, 28 Jun 2019 12:14:46 +0800
Message-Id: <1561695286-19265-1-git-send-email-liaoweixiong@allwinnertech.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_211559_321067_D03EF11B 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: liaoweixiong <liaoweixiong@allwinnertech.com>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

In case of the last page containing bitflips (ret > 0),
spinand_mtd_read() will return that number of bitflips for the last
page. But to me it looks like it should instead return max_bitflips like
it does when the last page read returns with 0.

Signed-off-by: Weixiong Liao <liaoweixiong@allwinnertech.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
Cc: stable@vger.kernel.org
Fixes: 7529df465248 ("mtd: nand: Add core infrastructure to support SPI NANDs")
---
Changes since v2:
- Resend this patch with Cc and Fixes tags.

Changes since v1:
- More accurate description for this patch
---

 drivers/mtd/nand/spi/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/spi/core.c b/drivers/mtd/nand/spi/core.c
index 556bfdb..6b9388d 100644
--- a/drivers/mtd/nand/spi/core.c
+++ b/drivers/mtd/nand/spi/core.c
@@ -511,12 +511,12 @@ static int spinand_mtd_read(struct mtd_info *mtd, loff_t from,
 		if (ret == -EBADMSG) {
 			ecc_failed = true;
 			mtd->ecc_stats.failed++;
-			ret = 0;
 		} else {
 			mtd->ecc_stats.corrected += ret;
 			max_bitflips = max_t(unsigned int, max_bitflips, ret);
 		}
 
+		ret = 0;
 		ops->retlen += iter.req.datalen;
 		ops->oobretlen += iter.req.ooblen;
 	}
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
