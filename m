Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E148712CBFD
	for <lists+linux-mtd@lfdr.de>; Mon, 30 Dec 2019 03:53:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JYSADwXA6GORPpRl0jESYyNCzbKN8Z7pQtn02dznFXo=; b=X3KixnCOXlkQlJ
	AQd9Ac+jCIxYxHv6jjtVdIGe/lJhxObhzx3uNaYr6cjhrTdLsT7EK6s+lE9ySjz5SP8C3h8cG8ewT
	wn9sXbjaq7J6rhUFi6ZlCPZ8fEzhAT99Cv/34C8A9xYKXc0UcWW+h2eoFpWu/DuPwob+HqxBdkl3I
	rqnE4SHuCYlvrHZuX54AzRh8kquSc2OslB+WVzUW5JhvcFGQOadhuexC668/jnuAs/Q+ScJcSVScJ
	SJmd/e0wUjkXRLA6re0I0mxPQEsDO+oEqchJxp133IRVljcqEDajqZ0aHfAL9OrGxMQja9LzCacjp
	NymxUprYkduUC20VbH2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1illBP-0003tm-Ia; Mon, 30 Dec 2019 02:53:27 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1illBE-0003t0-UJ
 for linux-mtd@lists.infradead.org; Mon, 30 Dec 2019 02:53:18 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 1B6937ABC077D7266686;
 Mon, 30 Dec 2019 10:53:05 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Mon, 30 Dec 2019
 10:52:58 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>,
 <frieder.schrempf@kontron.de>, <masonccyang@mxic.com.tw>,
 <allison@lohutok.net>, <yuehaibing@huawei.com>, <tglx@linutronix.de>
Subject: [PATCH -next] mtd: rawnand: macronix: Use match_string() helper to
 simplify the code
Date: Mon, 30 Dec 2019 10:52:17 +0800
Message-ID: <20191230025217.30812-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_185317_138990_D7CCE428 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 drivers/mtd/nand/raw/nand_macronix.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_macronix.c b/drivers/mtd/nand/raw/nand_macronix.c
index 58511ae..5619289 100644
--- a/drivers/mtd/nand/raw/nand_macronix.c
+++ b/drivers/mtd/nand/raw/nand_macronix.c
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
