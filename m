Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6575710AAA7
	for <lists+linux-mtd@lfdr.de>; Wed, 27 Nov 2019 07:22:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3uePrILY3e3oK8LZqdppGsfsbIUz03vmdU8P4XqT48c=; b=IZRU1gLRErC1b/
	tggHjPxCJ+f5ZnkLRN7Fk2TAiZN+koo1tNZH9BHzzBhdDbvo6gMnUDJn7nQao1S3pja0ngsZD9pkO
	EBmNGGOQJxTMR023oL+V9vlzU5eq6mqvG0BtTkyaFR+SBp7A2TjbRuEZyvIoS1RbBnrO99dWcVUYQ
	32IRoUKC8U2m53UlEo3GK1s4NuDzmKEj3ajap/FEAdq3Oo2dbJWGhlQvRuEcVXMSj0+HOcrq7y3wA
	6cSkObRM2rq/ermzz+utbq2EQQCpWnZR5+sW8Zk3xCr/i4M49oo+c5tpeuBjeGXp5ilIgxji0Zbb2
	CdClWUG1GfuVS0GZXDnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZqiW-0004VO-P1; Wed, 27 Nov 2019 06:22:24 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZqiP-0004U0-1B
 for linux-mtd@lists.infradead.org; Wed, 27 Nov 2019 06:22:18 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id E07D67B1CFB1DC994B8D;
 Wed, 27 Nov 2019 14:22:04 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS408-HUB.china.huawei.com (10.3.19.208) with Microsoft SMTP Server id
 14.3.439.0; Wed, 27 Nov 2019 14:21:54 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: Richard Weinberger <richard@nod.at>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Sascha Hauer <s.hauer@pengutronix.de>, "Vignesh
 Raghavendra" <vigneshr@ti.com>
Subject: [PATCH -next] mtd: ubi: wl: remove set but not used variable 'prev_e'
Date: Wed, 27 Nov 2019 06:20:02 +0000
Message-ID: <20191127062002.23746-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_222217_230353_2498A974 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: linux-mtd@lists.infradead.org, kernel-janitors@vger.kernel.org,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Fixes gcc '-Wunused-but-set-variable' warning:

drivers/mtd/ubi/wl.c: In function 'find_wl_entry':
drivers/mtd/ubi/wl.c:322:27: warning:
 variable 'prev_e' set but not used [-Wunused-but-set-variable]

It's not used any more now, so remove it.

Fixes: f9c34bb52997 ("ubi: Fix producing anchor PEBs")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/mtd/ubi/wl.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index 5d77a38dba54..837d690a8c60 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -319,7 +319,7 @@ static struct ubi_wl_entry *find_wl_entry(struct ubi_device *ubi,
 					  struct rb_root *root, int diff)
 {
 	struct rb_node *p;
-	struct ubi_wl_entry *e, *prev_e = NULL;
+	struct ubi_wl_entry *e;
 	int max;
 
 	e = rb_entry(rb_first(root), struct ubi_wl_entry, u.rb);
@@ -334,7 +334,6 @@ static struct ubi_wl_entry *find_wl_entry(struct ubi_device *ubi,
 			p = p->rb_left;
 		else {
 			p = p->rb_right;
-			prev_e = e;
 			e = e1;
 		}
 	}




______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
