Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9599512D58C
	for <lists+linux-mtd@lfdr.de>; Tue, 31 Dec 2019 02:39:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fi2oDzHlfBMBx8AQZXz97fA0Hbx0Sfvf5PVirOLOWyU=; b=cYiQOkxsK1CPXE
	lQKHSMZHgy6dZFDqBq1Bk4Fjfs+j9ermvzEyT8PXPpGbNNp8J/+8YTgaJ+L9GbUTiKe4DcwXff0lL
	NjnSKXlddh7+6pexC1s03EokvdHLkAkkH8CIBO6GhiKTC4Rkowihk0nxkFyl8j7HoktGRSCPpPVKq
	Ev2VPIczk6wwSr0hb1LxgH3CYVLhKRn5BqMPp97nNdXGuQXcxP6yvwR/yi3hPOid9h7q5R9RVmxeH
	fPWXW2EpWkl9d4BVdglV7eybOAfMXbhBXDlaT/CMXg9uUbD0tg6Xo99ewc3j9cst1O/Gq3bRsmX3g
	Swa+4e+6r9P/KU8HBteQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im6VO-0007Hv-M0; Tue, 31 Dec 2019 01:39:30 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im6VF-0007H2-AY
 for linux-mtd@lists.infradead.org; Tue, 31 Dec 2019 01:39:23 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 5A18395829D6679F5D19;
 Tue, 31 Dec 2019 09:39:14 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Tue, 31 Dec 2019
 09:39:04 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>,
 <frieder.schrempf@kontron.de>, <masonccyang@mxic.com.tw>,
 <allison@lohutok.net>, <yuehaibing@huawei.com>, <tglx@linutronix.de>
Subject: [PATCH v2 -next] mtd: rawnand: macronix: Use match_string() helper to
 simplify the code
Date: Tue, 31 Dec 2019 09:36:48 +0800
Message-ID: <20191231013648.19124-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <20191230025217.30812-1-yuehaibing@huawei.com>
References: <20191230025217.30812-1-yuehaibing@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_173921_524072_56A6D52C 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

match_string() returns the array index of a matching string.
Use it instead of the open-coded implementation.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
v2: change type of variable 'i' to int
---
 drivers/mtd/nand/raw/nand_macronix.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_macronix.c b/drivers/mtd/nand/raw/nand_macronix.c
index 58511ae..3ff7ce0 100644
--- a/drivers/mtd/nand/raw/nand_macronix.c
+++ b/drivers/mtd/nand/raw/nand_macronix.c
@@ -59,7 +59,7 @@ static void macronix_nand_onfi_init(struct nand_chip *chip)
  */
 static void macronix_nand_fix_broken_get_timings(struct nand_chip *chip)
 {
-	unsigned int i;
+	int i;
 	static const char * const broken_get_timings[] = {
 		"MX30LF1G18AC",
 		"MX30LF1G28AC",
@@ -80,12 +80,9 @@ static void macronix_nand_fix_broken_get_timings(struct nand_chip *chip)
 	if (!chip->parameters.supports_set_get_features)
 		return;
 
-	for (i = 0; i < ARRAY_SIZE(broken_get_timings); i++) {
-		if (!strcmp(broken_get_timings[i], chip->parameters.model))
-			break;
-	}
-
-	if (i == ARRAY_SIZE(broken_get_timings))
+	i = match_string(broken_get_timings, ARRAY_SIZE(broken_get_timings),
+			 chip->parameters.model);
+	if (i < 0)
 		return;
 
 	bitmap_clear(chip->parameters.get_feature_list,
-- 
2.7.4



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
