Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7D31CC3FE
	for <lists+linux-mtd@lfdr.de>; Sat,  9 May 2020 21:17:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ysIvjkqmqLfwRy8mkAbsAYkIGng9i/S4dENWydZ8ej8=; b=YtLVkuWHLkyg5F
	AL7YVIydVTHMOsprrCf3VVxXwqOHnqSWTezdftkt2jFKXarY3itxxJSjMGirINOMPxnDanle3aBJ7
	ylvyhp6Kp4t04PM+jBss5Za/OpQBhmtoZ4tvRHczxtvckB5R9vDqXmW23DVm9PRlEFfA/tc2M+WWN
	s0FAf/C9yYhOGrjNMCKe2J7bcoCVcgxEJg/k+ADks6qwsZHUeBhGBJyobI9Z/ZscPLzzH7mesEMDI
	/pS7Vs/DY9QDTs3vEIBipMi9htcvInBOYlYIAIWDAwiqbWuVSMnRMfeWYb2klSOTU1Ie7LQslwT0U
	fF7q6hoEGvJqRJU3zB8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXUxy-0005sc-Tt; Sat, 09 May 2020 19:16:54 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXUvq-0001o3-8K
 for linux-mtd@lists.infradead.org; Sat, 09 May 2020 19:14:43 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id EACED10000D;
 Sat,  9 May 2020 19:14:39 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 08/17] mtd: rawnand: nandsim: Free partition names on error in
 ns_init()
Date: Sat,  9 May 2020 21:14:21 +0200
Message-Id: <20200509191431.15862-9-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200509191431.15862-1-miquel.raynal@bootlin.com>
References: <20200509191431.15862-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_121442_434837_A3BE6B05 
X-CRM114-Status: GOOD (  10.50  )
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

The ns_init() function shall free the partition names allocated by
ns_get_partition_name() on error.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nandsim.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/raw/nandsim.c b/drivers/mtd/nand/raw/nandsim.c
index 7ffb46b01380..a50ffa04cc04 100644
--- a/drivers/mtd/nand/raw/nandsim.c
+++ b/drivers/mtd/nand/raw/nandsim.c
@@ -722,12 +722,14 @@ static int __init ns_init(struct mtd_info *mtd)
 	if (remains) {
 		if (parts_num + 1 > ARRAY_SIZE(ns->partitions)) {
 			NS_ERR("too many partitions.\n");
-			return -EINVAL;
+			ret = -EINVAL;
+			goto free_partition_names;
 		}
 		ns->partitions[i].name = ns_get_partition_name(i);
 		if (!ns->partitions[i].name) {
 			NS_ERR("unable to allocate memory.\n");
-			return -ENOMEM;
+			ret = -ENOMEM;
+			goto free_partition_names;
 		}
 		ns->partitions[i].offset = next_offset;
 		ns->partitions[i].size   = remains;
@@ -756,18 +758,25 @@ static int __init ns_init(struct mtd_info *mtd)
 
 	ret = ns_alloc_device(ns);
 	if (ret)
-		return ret;
+		goto free_partition_names;
 
 	/* Allocate / initialize the internal buffer */
 	ns->buf.byte = kmalloc(ns->geom.pgszoob, GFP_KERNEL);
 	if (!ns->buf.byte) {
 		NS_ERR("init_nandsim: unable to allocate %u bytes for the internal buffer\n",
 			ns->geom.pgszoob);
-		return -ENOMEM;
+		ret = -ENOMEM;
+		goto free_partition_names;
 	}
 	memset(ns->buf.byte, 0xFF, ns->geom.pgszoob);
 
 	return 0;
+
+free_partition_names:
+	for (i = 0; i < ARRAY_SIZE(ns->partitions); ++i)
+		kfree(ns->partitions[i].name);
+
+	return ret;
 }
 
 /*
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
