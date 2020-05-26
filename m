Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB1B1C2BDD
	for <lists+linux-mtd@lfdr.de>; Sun,  3 May 2020 13:41:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xyfPmlHf7sVAbox8WMisRAFCQb/AjH99zkQUDEOZpKI=; b=Hd2NW6BaTLlNp5
	p7UuSMlcEQ7goJYtaVfEMHYTElfdsGVSCdVUSllEzHL5BM8G+tQP1r1kHgRlYQmjkemG9zNtKjuZ3
	deu1iYdyBn2QlttLy4wEcs8Ba2dFbc1RtlBmnY/fiR//mW0irJgF0lH2BrJGcP0Y1FajWe6xPjrIg
	f/v4sgaIX7eEZgjGbRTxUPYmJbqwZu5O9dAaTmf7OcwbpjrCYqbUvrjlKsClMgdt93VDzGKeC6RCS
	xVD1IXQ97CYvc6hjCkqNkgyxNUgbp1Af0lgKC69UsHq+d9lCrKEmHT7Ueq5zk2OLCKII/bvEVtT5+
	Lj9E0t69JIKubZ6HB70w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVCzR-0003R2-8J; Sun, 03 May 2020 11:40:57 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVCz5-0003Gy-Rv
 for linux-mtd@lists.infradead.org; Sun, 03 May 2020 11:40:37 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 178F4FF804;
 Sun,  3 May 2020 11:40:32 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 1/3] mtd: rawnand: Add the nand_chip->erase hook
Date: Sun,  3 May 2020 13:40:27 +0200
Message-Id: <20200503114029.30257-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200503114029.30257-1-miquel.raynal@bootlin.com>
References: <20200503114029.30257-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_044036_039576_87A442D4 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
 Zoltan Szubbocsev <zszubbocsev@micron.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, tglx@linutronix.de,
 Piotr Wojtaszczyk <WojtaszczykP@cumminsallison.com>,
 Bean Huo <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

In order to solve an issue with Micron NANDs, we must be able to
overload the erase operation. With this in mind, we create a ->erase
hook in the nand_chip structure which points by default to the
currently in use nand_erase_nand() helper.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_base.c | 6 +++++-
 include/linux/mtd/rawnand.h      | 3 +++
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index c24e5e2ba130..7c7ac722d88b 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -4158,7 +4158,9 @@ static int nand_write_oob(struct mtd_info *mtd, loff_t to,
  */
 static int nand_erase(struct mtd_info *mtd, struct erase_info *instr)
 {
-	return nand_erase_nand(mtd_to_nand(mtd), instr, 0);
+	struct nand_chip *chip = mtd_to_nand(mtd);
+
+	return chip->erase(chip, instr, 0);
 }
 
 /**
@@ -4419,6 +4421,8 @@ static void nand_set_defaults(struct nand_chip *chip)
 
 	if (!chip->buf_align)
 		chip->buf_align = 1;
+
+	chip->erase = nand_erase_nand;
 }
 
 /* Sanitize ONFI strings so we can safely print them */
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 1e76196f9829..505c13f7a2ba 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1020,6 +1020,7 @@ struct nand_legacy {
  *			avoid using them.
  * @setup_read_retry:	[FLASHSPECIFIC] flash (vendor) specific function for
  *			setting the read-retry mode. Mostly needed for MLC NAND.
+ * @erase:		Raw NAND erase operation.
  * @ecc:		[BOARDSPECIFIC] ECC control structure
  * @buf_align:		minimum buffer alignment required by a platform
  * @oob_poi:		"poison value buffer," used for laying out OOB data
@@ -1089,6 +1090,8 @@ struct nand_chip {
 	struct nand_legacy legacy;
 
 	int (*setup_read_retry)(struct nand_chip *chip, int retry_mode);
+	int (*erase)(struct nand_chip *chip, struct erase_info *instr,
+		     int allowbbt);
 
 	unsigned int options;
 	unsigned int bbt_options;
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
