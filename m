Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 762F210AE4E
	for <lists+linux-mtd@lfdr.de>; Wed, 27 Nov 2019 11:56:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hOfUtjFiI2rx/PNUG1Uk7dWbZut0BVKWtriIZuKO0CU=; b=MxaKvXZot4PrpR
	/0ViWJj5L2UpB2UtpPgxztZkT61Lda32kiKc9iUpa5Xdwa32ys4Kko0jCLk91bSRYvGrnTVD3yyx9
	vzyJAO6Rc8f865WhcOZDcKaXvzBA1D1Hwhbl1V5JiJSCy9TE8U/VQD9glZZzuVPTu/IrQY+FTo3hP
	QFqXZ8EHKjilYzFDfJiUvB2uNR4JeypMf1FsTvEeBJ+vOQmOCaaRqb7MuTESArScevXU0/aLvW4cJ
	gBrDpTlKIWgVbjJzUj3jcJeyRAQDqnlfIi1LQyFPHOQZhR0dhoO+2r5CYFSfL1GFDalkn+Yb5BVrh
	67MjoftfpLKbdvmqdxBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZuzR-0003au-3l; Wed, 27 Nov 2019 10:56:09 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZuys-00039f-VB
 for linux-mtd@lists.infradead.org; Wed, 27 Nov 2019 10:55:37 +0000
X-Originating-IP: 90.76.211.102
Received: from localhost.localdomain (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id E73BCFF80D;
 Wed, 27 Nov 2019 10:55:26 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v5 2/4] mtd: concat: Fix a comment referring to an unknown
 symbol
Date: Wed, 27 Nov 2019 11:55:20 +0100
Message-Id: <20191127105522.31445-3-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191127105522.31445-1-miquel.raynal@bootlin.com>
References: <20191127105522.31445-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_025535_143062_E0297F62 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Bernhard Frauendienst <kernel@nospam.obeliks.de>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Mark Brown <broonie@kernel.org>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Fix the comment describing what the mtd_concat_destroy() function
does. It referrers to the concat_mtd_devs symbol which has never
existed (at least not since the beginning of the Git era).

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/mtdconcat.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/mtd/mtdconcat.c b/drivers/mtd/mtdconcat.c
index cbc5925e6440..1b6428d6e13d 100644
--- a/drivers/mtd/mtdconcat.c
+++ b/drivers/mtd/mtdconcat.c
@@ -852,10 +852,7 @@ struct mtd_info *mtd_concat_create(struct mtd_info *subdev[],	/* subdevices to c
 	return &concat->mtd;
 }
 
-/*
- * This function destroys an MTD object obtained from concat_mtd_devs()
- */
-
+/* Cleans the context obtained from mtd_concat_create() */
 void mtd_concat_destroy(struct mtd_info *mtd)
 {
 	struct mtd_concat *concat = CONCAT(mtd);
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
