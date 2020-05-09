Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9EF51CC40E
	for <lists+linux-mtd@lfdr.de>; Sat,  9 May 2020 21:19:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KgvZtkWYLV45dUMD0p0gHbA6jsZN9vuh8X5fVExU/1E=; b=VbOvD/L8D2Nezm
	hSFu449sTITffivq50OliLO5HFGaSel/7RD5xQeweoS7fB0Qpv1/wWLCWI6Qd0VVHguIyyClnk+y0
	Wg58/PBHoU68u0AlOoA+txXJoYf3f0DuwHMTWBjwwZmUX+/FP7F0WN67KYWZJQ7Zc4ZnkDqpimY8k
	vvmXJTZrQMKk/R3s6Esne4CZzRYDNy+kuJcEuIADIwfoqW0dIVri4gi917gh8Kor16MqZJQjlLVOX
	n68i8eCQ/O/pN5HAczY3gaUvkYlkUat36lbV1QcSwUUVpmoAoWyepcld5Qv3iIFPuPRXpU2sew9tE
	w6LLJVATlRzddF1u+b/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXV0C-000848-CU; Sat, 09 May 2020 19:19:12 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXUvw-0001v3-Bt
 for linux-mtd@lists.infradead.org; Sat, 09 May 2020 19:14:49 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 14572100008;
 Sat,  9 May 2020 19:14:45 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 15/17] mtd: rawnand: nandsim: Manage lists on error in
 ns_init_module()
Date: Sat,  9 May 2020 21:14:28 +0200
Message-Id: <20200509191431.15862-16-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200509191431.15862-1-miquel.raynal@bootlin.com>
References: <20200509191431.15862-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_121448_551643_DAEE0600 
X-CRM114-Status: GOOD (  11.39  )
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

Lists are filled with calls to ns_parse_weakblocks(),
ns_parse_weakpages() and ns_parse_gravepages(). Handle them in the
error path, all at the same time.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nandsim.c | 23 +++++++++++++++++++----
 1 file changed, 19 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/raw/nandsim.c b/drivers/mtd/nand/raw/nandsim.c
index e41866e49206..26d23ab5b794 100644
--- a/drivers/mtd/nand/raw/nandsim.c
+++ b/drivers/mtd/nand/raw/nandsim.c
@@ -2273,6 +2273,7 @@ static const struct nand_controller_ops ns_controller_ops = {
  */
 static int __init ns_init_module(void)
 {
+	struct list_head *pos, *n;
 	struct nand_chip *chip;
 	struct nandsim *ns;
 	int ret;
@@ -2340,11 +2341,11 @@ static int __init ns_init_module(void)
 
 	ret = ns_parse_weakpages();
 	if (ret)
-		goto error;
+		goto free_wb_list;
 
 	ret = ns_parse_gravepages();
 	if (ret)
-		goto error;
+		goto free_wp_list;
 
 	nand_controller_init(&ns->base);
 	ns->base.ops = &ns_controller_ops;
@@ -2353,7 +2354,7 @@ static int __init ns_init_module(void)
 	ret = nand_scan(chip, 1);
 	if (ret) {
 		NS_ERR("Could not scan NAND Simulator device\n");
-		goto error;
+		goto free_gp_list;
 	}
 
 	if (overridesize) {
@@ -2412,9 +2413,23 @@ static int __init ns_init_module(void)
 	kfree(erase_block_wear);
 cleanup_nand:
 	nand_cleanup(chip);
+free_gp_list:
+	list_for_each_safe(pos, n, &grave_pages) {
+		kfree(list_entry(pos, struct grave_page, list));
+		list_del(pos);
+	}
+free_wp_list:
+	list_for_each_safe(pos, n, &weak_pages) {
+		kfree(list_entry(pos, struct weak_page, list));
+		list_del(pos);
+	}
+free_wb_list:
+	list_for_each_safe(pos, n, &weak_blocks) {
+		kfree(list_entry(pos, struct weak_block, list));
+		list_del(pos);
+	}
 error:
 	kfree(ns);
-	ns_free_lists();
 
 	return ret;
 }
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
