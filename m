Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 000AA1BBA1E
	for <lists+linux-mtd@lfdr.de>; Tue, 28 Apr 2020 11:43:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=koPNZx7HtTsyKdULVoJeczrDE9W8JZkL/a83j4BzyhA=; b=XvFQkKraWhAgbf
	E7PTVgCwlCJfeSMW8jI3oG12XwhbKlWG4FEkETwYBj+2yY+0WAo18LuY3FHCdu7jZCFFR2pmIhAsZ
	oAeGmlB7aUyK7u55/oRSou6S0YJlxqbHKv/j0/qL41CZrdBVZPM7gt7wuwiLg71rEaIxizzfCwbZ2
	P5s87hjxQgPcCAwdyv6mi8X/N46v2l2Q1kZaWSzsKhhV793ZaDe34S1Q3Knp4LTno4QGTmBAWom8V
	BVe8dmAHf26TUZAxE+L5M4h5xmGVqj/8s0QsjZChdOUOwa/hAgjEqVJ8xk51QbZg3Ci2H2fAEhgn8
	5nGUjC10wZoWASwcvkyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTMmL-0008RH-VL; Tue, 28 Apr 2020 09:43:49 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTMlh-000804-0i
 for linux-mtd@lists.infradead.org; Tue, 28 Apr 2020 09:43:10 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id D7BE9C0006;
 Tue, 28 Apr 2020 09:43:06 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v3 2/9] mtd: rawnand: timings: Fix default tR_max and tCCS_min
 timings
Date: Tue, 28 Apr 2020 11:42:55 +0200
Message-Id: <20200428094302.14624-3-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200428094302.14624-1-miquel.raynal@bootlin.com>
References: <20200428094302.14624-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_024309_191550_75AD0030 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: Boris Brezillon <boris.brezillon@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

tR and tCCS are currently wrongly expressed in femtoseconds, while we
expect these values to be expressed in picoseconds. Set right
hardcoded values.

Fixes: 6a943386ee36 mtd: rawnand: add default values for dynamic timings
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/nand_timings.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_timings.c b/drivers/mtd/nand/raw/nand_timings.c
index 0061cbaf931d..36d21be3dfe5 100644
--- a/drivers/mtd/nand/raw/nand_timings.c
+++ b/drivers/mtd/nand/raw/nand_timings.c
@@ -320,10 +320,9 @@ int onfi_fill_data_interface(struct nand_chip *chip,
 		/* microseconds -> picoseconds */
 		timings->tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX;
 		timings->tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX;
-		timings->tR_max = 1000000ULL * 200000000ULL;
 
-		/* nanoseconds -> picoseconds */
-		timings->tCCS_min = 1000UL * 500000;
+		timings->tR_max = 200000000;
+		timings->tCCS_min = 500000;
 	}
 
 	return 0;
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
