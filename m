Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDCA1CD215
	for <lists+linux-mtd@lfdr.de>; Mon, 11 May 2020 08:50:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=si8JKKAxF88tXskwE7VyEOaJTIZuadXd5EjE++uBI4U=; b=tManf/T/R39wox
	h6cMborEnoxF6krwDoojcPit8X0tg5RQltBlulKXgoAv+cGHRsWyg5z4t0JgdNSCCmdmOs7sdPPAi
	vWXp2ntYWalFhXG0Wyavk4EIZT3BNQiYfNn/hPgFBoxoee9HwzDm2kFkE1PEsIfMd6LxCmdZglYLo
	j0bHa+tUBOpQanRVy7R51hjgrCa8GDL9eoyAO5rsBXunAm+IKDz8TCYqoOCGlARhuzLZqnUinoKBh
	MJMDLDkmZRs5thf8I/tr0lSXxNhvdno1wCBfXodmm81VUtU7FdnniJVkhFZd7DM8zUwpj3i8lPR6I
	PhBLpunHojBOk4ePJ2jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY2Gf-0003oo-HR; Mon, 11 May 2020 06:50:25 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY2Ft-0003EX-Ps
 for linux-mtd@lists.infradead.org; Mon, 11 May 2020 06:49:40 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E5E4A2A0E18;
 Mon, 11 May 2020 07:49:27 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	linux-mtd@lists.infradead.org
Subject: [PATCH v2 3/3] mtd: rawnand: diskonchip: Set the NAND_NO_BBM_QUIRK
 flag
Date: Mon, 11 May 2020 08:49:17 +0200
Message-Id: <20200511064917.6255-3-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.3
In-Reply-To: <20200511064917.6255-1-boris.brezillon@collabora.com>
References: <20200511064917.6255-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_234937_963867_6092ED87 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Richard Weinberger <richard@nod.at>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

We have a dummy block_bad() implementation returning 0. Let's set the
NAND_NO_BBM_QUIRK flag and let the core take care of that.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
Changes in v2:
* Add R-b
---
 drivers/mtd/nand/raw/diskonchip.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/mtd/nand/raw/diskonchip.c b/drivers/mtd/nand/raw/diskonchip.c
index c2a391ad2c35..4c3d04da4cee 100644
--- a/drivers/mtd/nand/raw/diskonchip.c
+++ b/drivers/mtd/nand/raw/diskonchip.c
@@ -776,13 +776,6 @@ static int doc200x_dev_ready(struct nand_chip *this)
 	}
 }
 
-static int doc200x_block_bad(struct nand_chip *this, loff_t ofs)
-{
-	/* This is our last resort if we couldn't find or create a BBT.  Just
-	   pretend all blocks are good. */
-	return 0;
-}
-
 static void doc200x_enable_hwecc(struct nand_chip *this, int mode)
 {
 	struct doc_priv *doc = nand_get_controller_data(this);
@@ -1578,7 +1571,6 @@ static int __init doc_probe(unsigned long physadr)
 	nand->legacy.cmd_ctrl		= doc200x_hwcontrol;
 	nand->legacy.dev_ready	= doc200x_dev_ready;
 	nand->legacy.waitfunc	= doc200x_wait;
-	nand->legacy.block_bad	= doc200x_block_bad;
 	nand->ecc.hwctl		= doc200x_enable_hwecc;
 	nand->ecc.calculate	= doc200x_calculate_ecc;
 	nand->ecc.correct	= doc200x_correct_data;
@@ -1590,7 +1582,7 @@ static int __init doc_probe(unsigned long physadr)
 	nand->ecc.options	= NAND_ECC_GENERIC_ERASED_CHECK;
 	nand->bbt_options	= NAND_BBT_USE_FLASH;
 	/* Skip the automatic BBT scan so we can run it manually */
-	nand->options		|= NAND_SKIP_BBTSCAN;
+	nand->options		|= NAND_SKIP_BBTSCAN | NAND_NO_BBM_QUIRK;
 
 	doc->physadr		= physadr;
 	doc->virtadr		= virtadr;
-- 
2.25.3


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
