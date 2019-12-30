Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5CB12D2BB
	for <lists+linux-mtd@lfdr.de>; Mon, 30 Dec 2019 18:31:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AcCsnUkHCh/yHEAc3eiJcrYGE5kaYwEKsHOWopXSosc=; b=UmuZe8evZdxL5a
	/hWla1me7KAAP0dhbhhFEQ/h0YePW3tTDY9fBLVB3VRr6ooKM7GL/Nijj3HpqaLCY5UCFoP+d9VOO
	UkDtRGssXt5whehMTVm9ghPUFQYMbK45zwgKACxXAbxE2NoBHH78Hn42inNqVyPrM0O7HBi32kdOT
	z4GtU+3AbuA9788jzjuuXeQiiITgIqH95cedsZfdnDeKdoGLiMDdUwUeN40yNkgmXMYqKM4bBc4r7
	5E9CHKkCpKv/yS7BCNjWT+GEoHcudKahOmxXIhDqgdcAiG0xXvzTIfPiCJzob1ceJwi6yg9eQC297
	MOJ6SavEPkL+ndxH9fUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilytL-0005Kd-0J; Mon, 30 Dec 2019 17:31:43 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilysv-0005AM-Fy
 for linux-mtd@lists.infradead.org; Mon, 30 Dec 2019 17:31:19 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 76CCBE0002;
 Mon, 30 Dec 2019 17:31:07 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 1/2] mtd: onenand: Use a better name for samsung driver
Date: Mon, 30 Dec 2019 18:31:02 +0100
Message-Id: <20191230173103.14084-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_093117_671436_53B5DDA2 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Commit 55ed51fff224 ("{tty: serial, nand: onenand}: samsung: rename to
fix build warning") has changed the samsung.c driver to be
samsung_mtd.c in order to avoid a conflict in module names with the
tty driver.

Since the *_mtd suffix is very undescriptive, rename it to
onenand_samsung.c, following the folder's convention. Same will be
applied to the omap2 onenand driver.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/onenand/Makefile                             | 2 +-
 drivers/mtd/nand/onenand/{samsung_mtd.c => onenand_samsung.c} | 0
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename drivers/mtd/nand/onenand/{samsung_mtd.c => onenand_samsung.c} (100%)

diff --git a/drivers/mtd/nand/onenand/Makefile b/drivers/mtd/nand/onenand/Makefile
index a27b635eb23a..0f2f460adbe4 100644
--- a/drivers/mtd/nand/onenand/Makefile
+++ b/drivers/mtd/nand/onenand/Makefile
@@ -9,6 +9,6 @@ obj-$(CONFIG_MTD_ONENAND)		+= onenand.o
 # Board specific.
 obj-$(CONFIG_MTD_ONENAND_GENERIC)	+= generic.o
 obj-$(CONFIG_MTD_ONENAND_OMAP2)		+= omap2.o
-obj-$(CONFIG_MTD_ONENAND_SAMSUNG)       += samsung_mtd.o
+obj-$(CONFIG_MTD_ONENAND_SAMSUNG)       += onenand_samsung.o
 
 onenand-objs = onenand_base.o onenand_bbt.o
diff --git a/drivers/mtd/nand/onenand/samsung_mtd.c b/drivers/mtd/nand/onenand/onenand_samsung.c
similarity index 100%
rename from drivers/mtd/nand/onenand/samsung_mtd.c
rename to drivers/mtd/nand/onenand/onenand_samsung.c
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
