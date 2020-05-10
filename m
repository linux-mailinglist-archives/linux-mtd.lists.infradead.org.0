Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3751CCAC5
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 14:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pLC2bC+h5/M3HUIe4YLP3iqnXhchAQztvpCQFUE0z10=; b=jCAiFpaJfD/zh+
	G3lFlOygpTStbCG04KSTkLTm17jACnDqckMyEWsaXMmKwpAiZ3XIN6BcJ9hiswbHRCyec0oruF9VV
	H0r7brgmjDKSsW9qed8KhR0ErzdopIszIMY3FtHkdyIfKxKGqH4dX7tOWlrooU2CW/kL1Mp4Flj/T
	Rkel45h3u+3DtnGj6s5O1ATaKgJ5cJzQtmVAF5vntCyAZMCnGOz2wkdeVqSpP4F+KESR4N70ZT9P/
	5cyqMSo5BFjC+vQ3jdITjxLLAGkq5CIut7JpYu1qmm6ea0i7uBcf4Q6LgibvBtX0p8Q3wsJ9N56vv
	PBfVNssALDqIOyWJPYSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXkrd-00084x-VU; Sun, 10 May 2020 12:15:25 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXkov-00054O-Pd
 for linux-mtd@lists.infradead.org; Sun, 10 May 2020 12:12:39 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id A776C2000E;
 Sun, 10 May 2020 12:12:35 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 08/62] mtd: rawnand: cs553x: Stop using nand_release()
Date: Sun, 10 May 2020 14:11:26 +0200
Message-Id: <20200510121220.18042-9-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200510121220.18042-1-miquel.raynal@bootlin.com>
References: <20200510121220.18042-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_051238_019605_FA4F0D29 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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

This helper is not very useful and very often people get confused:
they use nand_release() instead of nand_cleanup().

Let's stop using nand_release() by calling mtd_device_unregister() and
nand_cleanup() directly.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/cs553x_nand.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/cs553x_nand.c b/drivers/mtd/nand/raw/cs553x_nand.c
index e2322cee3229..98f13e4c634c 100644
--- a/drivers/mtd/nand/raw/cs553x_nand.c
+++ b/drivers/mtd/nand/raw/cs553x_nand.c
@@ -315,6 +315,7 @@ static void __exit cs553x_cleanup(void)
 		struct mtd_info *mtd = cs553x_mtd[i];
 		struct nand_chip *this;
 		void __iomem *mmio_base;
+		int ret;
 
 		if (!mtd)
 			continue;
@@ -323,8 +324,9 @@ static void __exit cs553x_cleanup(void)
 		mmio_base = this->legacy.IO_ADDR_R;
 
 		/* Release resources, unregister device */
-		nand_release(this);
-		kfree(mtd->name);
+		ret = mtd_device_unregister(mtd);
+		WARN_ON(ret);
+		nand_cleanup(this);
 		cs553x_mtd[i] = NULL;
 
 		/* unmap physical address */
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
