Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE3C54E37
	for <lists+linux-mtd@lfdr.de>; Tue, 25 Jun 2019 14:04:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=j/NoVtDePpteGWM1JGH+2rWhJSzV5SiPSSL6X0K8/8k=; b=OkZ
	EHabm0kYkEbZI3FF6UxY9qobBstDPk+lelLJfwDtJ2rQ7uzsqLXEujeJBzdvLDcMKr3udmjQikaMt
	gnaHz7SI8McZedOVWQYO0cfsA+OwnA3WztO8W2pT+pCF6f4wCUYn6lXX9lO6l9OL4VZK0ZYi+S3g1
	jN2EFG19mwCSEEG/3H7eHnxTk/S91rqeEl7Le5PYMaq5GTNjSU6SuPFbExUwuNSTgar5oA1oIFbnD
	24cJ68TAUuLXX6SpkBQWRga412t470d0EUxAo/aeZSKQZYSYTF6pzozUY4/6lln8FkLCHVCWleTpg
	03wAZ68hoLnOyaD1oiirDm8g4vYUDAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkBK-00083v-Hj; Tue, 25 Jun 2019 12:04:14 +0000
Received: from smtp2207-205.mail.aliyun.com ([121.197.207.205])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkBA-00083V-EL
 for linux-mtd@lists.infradead.org; Tue, 25 Jun 2019 12:04:05 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.09348381|-1; CH=green;
 DM=CONTINUE|CONTINUE|true|0.121591-0.0103769-0.868032;
 FP=17029885308963081405|1|1|11|0|-1|-1|-1; HT=e01l07423;
 MF=liaoweixiong@allwinnertech.com; NM=1; PH=DS; RN=15; RT=15; SR=0;
 TI=SMTPD_---.EpzBYh._1561464222; 
Received: from
 PC-liaoweixiong.allwinnertech.com(mailfrom:liaoweixiong@allwinnertech.com
 fp:SMTPD_---.EpzBYh._1561464222)
 by smtp.aliyun-inc.com(10.147.44.129);
 Tue, 25 Jun 2019 20:04:00 +0800
From: liaoweixiong <liaoweixiong@allwinnertech.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Frieder Schrempf <frieder.schrempf@exceet.de>,
 Peter Pan <peterpandong@micron.com>, Stefan Roese <sr@denx.de>,
 Jeff Kletsky <git-commits@allycomm.com>
Subject: [RESEND PATCH v2] mtd: spinand: read return badly if the last page
 has bitflips
Date: Tue, 25 Jun 2019 20:03:45 +0800
Message-Id: <1561464225-10517-1-git-send-email-liaoweixiong@allwinnertech.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050404_705544_CCBCB21B 
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
Cc: stable@vger.kernel.org
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
