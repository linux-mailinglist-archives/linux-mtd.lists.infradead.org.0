Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6530B81F6
	for <lists+linux-mtd@lfdr.de>; Thu, 19 Sep 2019 21:55:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hg/q/nn7DH8rcv05U1HzGtRELugh9IOkXHsoZq+f0lU=; b=XgZvRumvzmNfDL
	fQkvpmyoFpms76qLc+sVkcuQLED4GtSc3ggKmxC6oyd9/3jhA3ifdoV29ZC9TlFoYjpTNdrjoLPCd
	wce5gMjvEyaz6KgDxOnp96XQZfGuWjNXRsGYgYjzOK1ElhqtJ1zfivvlaoY/QU2Wjc3jxrbAg9mas
	ytorjM3ZSTP6DPJElPFx212535TQM3vU2QrjLW4FM60L34TlXJgWdHfxwj+yiYcVd0EcYBQSbcHpV
	vw/RVRBGV7L7n+zByfn2LIaiZlqRQ1SCfGtBHZYKdFAbnIBZpo9+fpNlzuziiiBS/79H720T41bWP
	hSbOjfdI9giohlcufKaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2WA-0007JU-7P; Thu, 19 Sep 2019 19:55:06 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB2Am-0002iJ-K4; Thu, 19 Sep 2019 19:33:02 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 0E496240004;
 Thu, 19 Sep 2019 19:32:56 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v3 34/40] mtd: spinand: Fill a default ECC provider/algorithm
Date: Thu, 19 Sep 2019 21:31:34 +0200
Message-Id: <20190919193141.7865-35-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190919193141.7865-1-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_123300_949738_71C2C694 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
Cc: Tudor Ambarus <tudor.ambarus@microchip.com>,
 Julien Su <juliensu@mxic.com.tw>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The SPI-NAND layer default is on-die ECC because until now it was the
only one supported. New SPI-NAND chip flavors might use something else
as ECC engine provider but this will always be the default if the user
does not choose explicitly something else.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/spi/core.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/spi/core.c b/drivers/mtd/nand/spi/core.c
index 5a935b7343eb..c20d57f9c11b 100644
--- a/drivers/mtd/nand/spi/core.c
+++ b/drivers/mtd/nand/spi/core.c
@@ -310,7 +310,7 @@ static struct nand_ecc_engine_ops spinand_ondie_ecc_engine_ops = {
 	.finish_io_req = spinand_ondie_ecc_finish_io_req,
 };
 
-static __maybe_unused struct nand_ecc_engine spinand_ondie_ecc_engine = {
+static struct nand_ecc_engine spinand_ondie_ecc_engine = {
 	.ops = &spinand_ondie_ecc_engine_ops,
 };
 
@@ -1098,6 +1098,10 @@ static int spinand_init(struct spinand_device *spinand)
 	if (ret)
 		goto err_manuf_cleanup;
 
+	/* SPI-NAND default ECC engine is on-die */
+	nand->ecc.defaults.provider = NAND_ON_DIE_ECC_ENGINE;
+	nand->ecc.ondie_engine = &spinand_ondie_ecc_engine;
+
 	/*
 	 * Right now, we don't support ECC, so let the whole oob
 	 * area available for the user.
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
