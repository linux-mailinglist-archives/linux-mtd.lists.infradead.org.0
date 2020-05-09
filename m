Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5D61CC404
	for <lists+linux-mtd@lfdr.de>; Sat,  9 May 2020 21:17:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KDc4TtsREWCju3vM1/DRKV+e8ouanfVyONyXJSALnrc=; b=ho9Q8dSf8hx/+l
	qmJrZeQDsSLOZC6/3FPR8LSSqVEIpHXzT4Sr37e9hvEIPcaNIg9WOmnAZzfudpGrc3ZDOWIUY3mvL
	Px7C6in7wFLRh4GG+O8MyfNI9CW1+oO/uxe1bEDgpnWReDj77qDY1P64TAG+JcgBle8rNE5uzuvPh
	IUo7bAC1zdrv+Coc7Cw9UK7VImWJJy7d5GJaf/u48VsryI/qGBGtNfWgu5sTqDXHogSht55DSBjOW
	RBZ3FSJQ0vZ+0BKooAnHYpyB9X8ZNJZRfX0hXUtBYnpONx1RA0pqQI65ka2oCC62iAwZoCmeQI/z4
	WmY5pbxeamZ2A2Gz97RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXUyl-0006a0-PS; Sat, 09 May 2020 19:17:43 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXUvr-0001ps-QF
 for linux-mtd@lists.infradead.org; Sat, 09 May 2020 19:14:45 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id ABAEB100008;
 Sat,  9 May 2020 19:14:41 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 10/17] mtd: rawnand: nandsim: Free the partition names in
 ns_free()
Date: Sat,  9 May 2020 21:14:23 +0200
Message-Id: <20200509191431.15862-11-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200509191431.15862-1-miquel.raynal@bootlin.com>
References: <20200509191431.15862-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_121444_019519_8BBD0137 
X-CRM114-Status: GOOD (  11.19  )
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

ns_free() is the helper that is called symmetrically to ns_init() and
so should free the same objects, including the partition names.

Now, callers of ns_free() do not need to free this partition names
themselves.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nandsim.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/nand/raw/nandsim.c b/drivers/mtd/nand/raw/nandsim.c
index c71bbcde154c..0e17d7e0fd68 100644
--- a/drivers/mtd/nand/raw/nandsim.c
+++ b/drivers/mtd/nand/raw/nandsim.c
@@ -786,6 +786,11 @@ static int __init ns_init(struct mtd_info *mtd)
  */
 static void ns_free(struct nandsim *ns)
 {
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(ns->partitions); ++i)
+		kfree(ns->partitions[i].name);
+
 	kfree(ns->buf.byte);
 	ns_free_device(ns);
 
@@ -2270,7 +2275,7 @@ static int __init ns_init_module(void)
 {
 	struct nand_chip *chip;
 	struct nandsim *ns;
-	int ret, i;
+	int ret;
 
 	if (bus_width != 8 && bus_width != 16) {
 		NS_ERR("wrong bus width (%d), use only 8 or 16\n", bus_width);
@@ -2402,8 +2407,6 @@ static int __init ns_init_module(void)
 err_exit:
 	ns_free(ns);
 	nand_release(chip);
-	for (i = 0;i < ARRAY_SIZE(ns->partitions); ++i)
-		kfree(ns->partitions[i].name);
 error:
 	kfree(ns);
 	ns_free_lists();
@@ -2420,13 +2423,10 @@ static void __exit ns_cleanup_module(void)
 {
 	struct nand_chip *chip = mtd_to_nand(nsmtd);
 	struct nandsim *ns = nand_get_controller_data(chip);
-	int i;
 
 	ns_debugfs_remove(ns);
 	ns_free(ns);    /* Free nandsim private resources */
 	nand_release(chip); /* Unregister driver */
-	for (i = 0;i < ARRAY_SIZE(ns->partitions); ++i)
-		kfree(ns->partitions[i].name);
 	kfree(ns);        /* Free other structures */
 	ns_free_lists();
 }
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
