Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 933765203A
	for <lists+linux-mtd@lfdr.de>; Tue, 25 Jun 2019 03:02:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2yuzoWOQjo7zO+Vc2Kdc9BeoH3bC3/divf2Mm8NbmJg=; b=OWc
	DNOwsqxwXya45e4z+9KIh8G05omZk7wuoVPg5rWO9rvGXNBa81xmuEBP+ansreJbk3FdcDDUsA9gA
	/H5jZgp68KGIKSdGiMppPl4OPWT0/3/wdgpTQs869NxVRvLz4NJSzBziDznuu1Osfqk4TTxWC9vzO
	McQp9wrRnmNhUzv4B7e53mr4rF65fOMZHQ6QmRl7OQG3mNLTuPbWkU2Rn+V0uwNAHzLlxu0kbf5RY
	NbsAeQbhPvhsgpLS9cJlZ7TjbmW67uoRfknOehztL986loT96m5EASY/pCE99gNzalJjCIe56IkBY
	FCtdUpIEQ8UFyA45vyNHt2gnRm12tDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfZrB-0007IT-1P; Tue, 25 Jun 2019 01:02:45 +0000
Received: from smtp2207-205.mail.aliyun.com ([121.197.207.205])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfZr2-0007IA-Ku
 for linux-mtd@lists.infradead.org; Tue, 25 Jun 2019 01:02:38 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.09668445|-1; CH=green;
 DM=CONTINUE|CONTINUE|true|0.121591-0.0103769-0.868032;
 FP=17101942903001009341|1|1|11|0|-1|-1|-1; HT=e02c03292;
 MF=liaoweixiong@allwinnertech.com; NM=1; PH=DS; RN=15; RT=15; SR=0;
 TI=SMTPD_---.EpjhFci_1561424547; 
Received: from
 PC-liaoweixiong.allwinnertech.com(mailfrom:liaoweixiong@allwinnertech.com
 fp:SMTPD_---.EpjhFci_1561424547)
 by smtp.aliyun-inc.com(10.147.40.44); Tue, 25 Jun 2019 09:02:33 +0800
From: liaoweixiong <liaoweixiong@allwinnertech.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Frieder Schrempf <frieder.schrempf@exceet.de>,
 Peter Pan <peterpandong@micron.com>, Chuanhong Guo <gch981213@gmail.com>,
 Schrempf Frieder <frieder.schrempf@kontron.De>
Subject: [RESEND PATCH v2] mtd: spinand: read return badly if the last page
 has bitflips
Date: Tue, 25 Jun 2019 09:02:29 +0800
Message-Id: <1561424549-784-1-git-send-email-liaoweixiong@allwinnertech.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_180236_848884_DAC55CB3 
X-CRM114-Status: GOOD (  12.11  )
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

Signed-off-by: liaoweixiong <liaoweixiong@allwinnertech.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
Fixes: 7529df465248 ("mtd: nand: Add core infrastructure to support SPI NANDs")
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
