Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7584350A89
	for <lists+linux-mtd@lfdr.de>; Mon, 24 Jun 2019 14:16:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vFWeNA2SARGTgLztKlHqiRNZYcED5PIhcMww4QrdirI=; b=t4G
	dt5qYC7py2llPkGvqmjf0be81eww6KYzMz0zGxWuLy1i3PbxE9pGXNZeYQAUCkGwjIO784/8FUU1Q
	XsTXpuWet27hkGBM1j9b7Wj9Coc/tJfkLRH3aK0SRt5ask3LNDzCT6fTA8nv+Xjqlv75EulUEc6c8
	goexFS/R2oH3o7AhAH9lt/tYiJFSsDFABS+SScaQsNYyriVfC4SfOtN1HSGf/nmQ8PImC+IyZQOm8
	vlrJvuOrp6SsRQXJQoFTMEWll1l6rP+c9lgvd7jrCqnJUyPgWCF/44/wq3ETQkPiD1n+POtGZfpXH
	DN1g7lTv7HXfkpz1o22dQYMPHFJMnTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfNtH-000892-6b; Mon, 24 Jun 2019 12:16:07 +0000
Received: from smtp2207-205.mail.aliyun.com ([121.197.207.205])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfNt8-00088U-N2
 for linux-mtd@lists.infradead.org; Mon, 24 Jun 2019 12:16:00 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.09668445|-1; CH=green;
 DM=CONTINUE|CONTINUE|true|0.121591-0.0103769-0.868032; FP=0|0|0|0|0|-1|-1|-1;
 HT=e02c03307; MF=liaoweixiong@allwinnertech.com; NM=1; PH=DS; RN=15; RT=15;
 SR=0; TI=SMTPD_---.EpQTmML_1561378543; 
Received: from
 PC-liaoweixiong.allwinnertech.com(mailfrom:liaoweixiong@allwinnertech.com
 fp:SMTPD_---.EpQTmML_1561378543)
 by smtp.aliyun-inc.com(10.147.41.138);
 Mon, 24 Jun 2019 20:15:54 +0800
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
Date: Mon, 24 Jun 2019 20:15:34 +0800
Message-Id: <1561378534-26119-1-git-send-email-liaoweixiong@allwinnertech.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_051558_925732_AF3DD1E2 
X-CRM114-Status: GOOD (  11.66  )
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
Acked-by: Boris Brezillon <boris.brezillon@collabora.com>
Acked-by: Frieder Schrempf <frieder.schrempf@kontron.de>
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
