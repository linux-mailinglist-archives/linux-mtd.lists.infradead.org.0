Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A521E12D2BA
	for <lists+linux-mtd@lfdr.de>; Mon, 30 Dec 2019 18:31:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lO873i98W8Goz+GyDSMFds6N+k9d47VYEW7oOJyi3AQ=; b=rB18pUuylVZAvx
	5MU81VwUZTr6OjgUHqMDWTVEmUy7fr2J7bUlPsEXIjj4AGmlp/MVVrE8AVn97xTW7hOea9AuePmCU
	EgC+U01jENxkTc4paWReQjqjC8M3QipWZGFosfsrUn08xqtnwCU6MkzzUTpWULhnU3z+UywLsAa5k
	1AaAVO0ZX/oUY+57/RT4Uh6KS75ZN2rcn1E3AyMW5ZkiJoQJaqxzWLommtPABI7XY9+n0nJ6ype0O
	3afDgYa9H4KmNo3JHeNClhSRB3clbCvmAHd5N5hlqtpuhWwWtJs6m41E+w7Jsuz976wYUpLmvPsXF
	wnmNjvJLtfrS3CBJafXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilyt6-0005Aw-QQ; Mon, 30 Dec 2019 17:31:28 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilysv-0005AN-Fx
 for linux-mtd@lists.infradead.org; Mon, 30 Dec 2019 17:31:18 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id B9B42E0004;
 Mon, 30 Dec 2019 17:31:10 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 2/2] mtd: onenand: Rename omap2 driver to avoid a build warning
Date: Mon, 30 Dec 2019 18:31:03 +0100
Message-Id: <20191230173103.14084-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191230173103.14084-1-miquel.raynal@bootlin.com>
References: <20191230173103.14084-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_093117_673127_09121D87 
X-CRM114-Status: UNSURE (   9.57  )
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

As previously reported by Sudip Mukherjee for the Samsung driver, the
omap2 onenand driver is called omap2.c in our directory and omap2.c in
the tty/serial/ directory. If both drivers are compiled as modules, it
would produce the following warning:

        warning: same module names found:
            drivers/tty/serial/omap2.ko
            drivers/mtd/nand/onenand/omap2.ko

Rename the onenand omap2 driver so that it fits the folder's
convention: onenand_omap2.c.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/onenand/Makefile                     | 2 +-
 drivers/mtd/nand/onenand/{omap2.c => onenand_omap2.c} | 0
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename drivers/mtd/nand/onenand/{omap2.c => onenand_omap2.c} (100%)

diff --git a/drivers/mtd/nand/onenand/Makefile b/drivers/mtd/nand/onenand/Makefile
index 0f2f460adbe4..a0761c7e0288 100644
--- a/drivers/mtd/nand/onenand/Makefile
+++ b/drivers/mtd/nand/onenand/Makefile
@@ -8,7 +8,7 @@ obj-$(CONFIG_MTD_ONENAND)		+= onenand.o
 
 # Board specific.
 obj-$(CONFIG_MTD_ONENAND_GENERIC)	+= generic.o
-obj-$(CONFIG_MTD_ONENAND_OMAP2)		+= omap2.o
+obj-$(CONFIG_MTD_ONENAND_OMAP2)		+= onenand_omap2.o
 obj-$(CONFIG_MTD_ONENAND_SAMSUNG)       += onenand_samsung.o
 
 onenand-objs = onenand_base.o onenand_bbt.o
diff --git a/drivers/mtd/nand/onenand/omap2.c b/drivers/mtd/nand/onenand/onenand_omap2.c
similarity index 100%
rename from drivers/mtd/nand/onenand/omap2.c
rename to drivers/mtd/nand/onenand/onenand_omap2.c
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
