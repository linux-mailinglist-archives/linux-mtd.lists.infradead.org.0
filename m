Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9ECD1E097E
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 11:01:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Um2Ps68qO+Gc5cVIIvywphwkym3VZoSl6IAMXviENxI=; b=Y+OrAZmnZqKZ0y
	D1UfWvq5LjcXfJhKJbE6CuXcBRkjo+ePt29Z7UBR0SkBRdI+tRgM2RJaVzA9gnsD17EdMlnaNmo6y
	oCbkT+wtyNen5fF0F7pnBIovYcfm+QN0Ttu9L9iMqIuXftMppUTvNVuBcnk3D9endypap+O8TzI9a
	x6Bf7BcOxZSVRw0FzO+aLgz6mlh079loXn1qRhw77pj6w5CD4gOEbQ+ODD8l7h3S9JjU0amMQ3v7K
	RCpJPDVt/C5QS8dmFiBgh/BhBrfarNjw4kfAwMdv7o9tOMKLVmJrQLq64T/7HqwS8PcTFvC4M/WbQ
	lbay497a0mB6Gy4AFPZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd8yt-0000g9-Lo; Mon, 25 May 2020 09:01:11 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd8wu-0004VU-OJ
 for linux-mtd@lists.infradead.org; Mon, 25 May 2020 08:59:10 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id E844A240008;
 Mon, 25 May 2020 08:59:02 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 06/17] mtd: rawnand: nandsim: Remove debugfs entries at
 unload time
Date: Mon, 25 May 2020 10:58:40 +0200
Message-Id: <20200525085851.17682-7-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200525085851.17682-1-miquel.raynal@bootlin.com>
References: <20200525085851.17682-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_015908_959841_F261E088 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Boris Brezillon <boris.brezillon@collabora.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Create a ns_debugfs_remove() helper for that and call it in
ns_cleanup_module().

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nandsim.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/mtd/nand/raw/nandsim.c b/drivers/mtd/nand/raw/nandsim.c
index c8e9c70a6641..a439949945f7 100644
--- a/drivers/mtd/nand/raw/nandsim.c
+++ b/drivers/mtd/nand/raw/nandsim.c
@@ -520,6 +520,11 @@ static int ns_debugfs_create(struct nandsim *ns)
 	return 0;
 }
 
+static void ns_debugfs_remove(struct nandsim *ns)
+{
+	debugfs_remove_recursive(ns->dent);
+}
+
 /*
  * Allocate array of page pointers, create slab allocation for an array
  * and initialize the array by NULL pointers.
@@ -2398,6 +2403,7 @@ static void __exit ns_cleanup_module(void)
 	struct nandsim *ns = nand_get_controller_data(chip);
 	int i;
 
+	ns_debugfs_remove(ns);
 	ns_free(ns);    /* Free nandsim private resources */
 	nand_release(chip); /* Unregister driver */
 	for (i = 0;i < ARRAY_SIZE(ns->partitions); ++i)
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
