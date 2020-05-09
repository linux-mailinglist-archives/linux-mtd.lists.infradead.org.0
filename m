Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86AD51CC405
	for <lists+linux-mtd@lfdr.de>; Sat,  9 May 2020 21:18:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=29wo8Fz/zrRw53U4ZjlRFJ5Lkh/jCQTHdmJoB1t3vtE=; b=XyudhroMu8Sfmt
	3/eI7itNTfr+LD/s1GrepI3sRicN3t4jNcFiRC4OHKxGgwrNUm5UyPVVVW1nFO7FXeBOGqkRGTR9G
	kPQOvy1d1Yxxije9YogKyjkcJbyJqRcpi7SN4iLht/FxnHJvIDLEM9AQKWBNPkqOItNvw0TnqfBtz
	0B61bctPYqRzYeWrBnaR9rcuoixO8DxO4cUBJVQwsKK8zWobl+Byh1XG2vWR6prSvjvaMhwz1fsOf
	LjyQUY5hhDzveZ6YbjtwCP3BlEsu1cg0heglrXu6Enj1Kj+E62XJozeqOhy37jHR2rj30yl/xdQS3
	Iw4RL/b0BGJbxCw6BZ0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXUyz-0006oM-S8; Sat, 09 May 2020 19:17:57 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXUvt-0001qf-2x
 for linux-mtd@lists.infradead.org; Sat, 09 May 2020 19:14:46 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 953D1100007;
 Sat,  9 May 2020 19:14:42 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 11/17] mtd: rawnand: nandsim: Stop using nand_release()
Date: Sat,  9 May 2020 21:14:24 +0200
Message-Id: <20200509191431.15862-12-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200509191431.15862-1-miquel.raynal@bootlin.com>
References: <20200509191431.15862-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_121445_269637_225FF73D 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.231 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: dedekind@infradead.org, Boris Brezillon <boris.brezillon@collabora.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

nand_release() basically calls mtd_device_unregister() and
nand_cleanup(). Both helpers should be called after MTD device
registration and NAND scan, respectively. Drop nand_release() and use
the two helpers directly so that they fit the error path and the
labels there.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nandsim.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/nandsim.c b/drivers/mtd/nand/raw/nandsim.c
index 0e17d7e0fd68..48383c29a10c 100644
--- a/drivers/mtd/nand/raw/nandsim.c
+++ b/drivers/mtd/nand/raw/nandsim.c
@@ -2400,13 +2400,15 @@ static int __init ns_init_module(void)
 
 	ret = ns_debugfs_create(ns);
 	if (ret)
-		goto err_exit;
+		goto unregister_mtd;
 
         return 0;
 
+unregister_mtd:
+	WARN_ON(mtd_device_unregister(nsmtd));
 err_exit:
 	ns_free(ns);
-	nand_release(chip);
+	nand_cleanup(chip);
 error:
 	kfree(ns);
 	ns_free_lists();
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
