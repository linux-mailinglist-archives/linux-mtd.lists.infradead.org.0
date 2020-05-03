Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9F61C2DBE
	for <lists+linux-mtd@lfdr.de>; Sun,  3 May 2020 17:56:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pZbY8EBHU6BEaZvjXCZ+qpPz1bPr9UypjppHO2ksSYc=; b=loinXHNyywqMJZ
	eG51Do9r6WU9IOmG0cL0lSfztVcv7i6laVlOD05gkzRxCJdDyikvixfqzcXR/HdZQRq+A2byoCARY
	lTkt23DIz1PtYaCPoN7uv/UE4Pmjnrj5PXNxk+vGsl0TG68c1b/auVfzcHcabRZodE6CSZR7lXNsb
	G8UwAaXzhzSIXm7vf5ml/NUAKCVfrOAhVJewc8JQQBWL/95jP2VW9MkOCNOZZEhUj6c7tFcpexquz
	yAtfew5M4qyOTaE4EOU8FRXgfLDpgciLaFjEOLM0X770u2ZPyCD1jznoaTPB1d+iRk2hvX2oW1D7M
	j9f/Uj9kiLoc+qWxZ83A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVGyS-0006mo-Uw; Sun, 03 May 2020 15:56:12 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVGwF-0002ih-AE
 for linux-mtd@lists.infradead.org; Sun, 03 May 2020 15:53:56 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id C81F5240006;
 Sun,  3 May 2020 15:53:52 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 8/8] ubi: Relax the 'no MLC' rule and allow MLCs operating
 in SLC mode
Date: Sun,  3 May 2020 17:53:41 +0200
Message-Id: <20200503155341.16712-9-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200503155341.16712-1-miquel.raynal@bootlin.com>
References: <20200503155341.16712-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_085355_500927_B867C594 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Maxime Ripard <maxime@cerno.tech>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Boris Brezillon <bbrezillon@kernel.org>

The MTD layer provides an SLC mode (purely software emulation of SLC
behavior) addressing the paired-pages corruption issue, which was the
main reason for refusing attaching MLC NANDs to UBI.

Relax this rule and allow partitions that have the
MTD_EMULATE_SLC_ON_MLC flag set to be attached.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Acked-by: Richard Weinberger <richard@nod.at>
---
 drivers/mtd/ubi/build.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index 12c02342149c..e85b04e9716b 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -867,8 +867,11 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 	 * Both UBI and UBIFS have been designed for SLC NAND and NOR flashes.
 	 * MLC NAND is different and needs special care, otherwise UBI or UBIFS
 	 * will die soon and you will lose all your data.
+	 * Relax this rule if the partition we're attaching to operates in SLC
+	 * mode.
 	 */
-	if (mtd->type == MTD_MLCNANDFLASH) {
+	if (mtd->type == MTD_MLCNANDFLASH &&
+	    !(mtd->flags & MTD_SLC_ON_MLC_EMULATION)) {
 		pr_err("ubi: refuse attaching mtd%d - MLC NAND is not supported\n",
 			mtd->index);
 		return -EINVAL;
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
