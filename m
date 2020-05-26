Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BECD51CCB10
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 14:29:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ayT7vN9xJOXhy7XFrwz9RWZwkZuxHMQbTTPwSP/Tulo=; b=SYU3BbllB5O695
	Fl+Pc8zEjXAz38ut8VdiTrAI27MpIfywSQ2rUl6gQPIrtRHoMGqpNmbsQT8yJxWzORR3cmV8IcRpA
	++jf89kY1v/GzGO7caPNcuTNUBSkNQGDueieZYCbWdPyLBP+kv5MVf4sqTbv+mGOmBmoyWNgK0by/
	nUrRlCgJ296TOh6kOJgj2lN7AI2toKYR4UG8lo27rfb2sZGhHK9qzyiqZHSJCDjQ10i5P6BnYS6nM
	Jm7gv1+HUH+OI74h56s9SwOvqbKN8zgN12EZR0lmlqJrPthzlasfc7UO+o/0GkmA3aR533VmikaEG
	zVCPttiRLT4u8QXY0N6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXl5H-0001zr-UC; Sun, 10 May 2020 12:29:31 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXkpg-0005mP-OO
 for linux-mtd@lists.infradead.org; Sun, 10 May 2020 12:13:26 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 428622000A;
 Sun, 10 May 2020 12:13:22 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 62/62] mtd: rawnand: Stop using nand_release()
Date: Sun, 10 May 2020 14:12:20 +0200
Message-Id: <20200510121220.18042-63-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200510121220.18042-1-miquel.raynal@bootlin.com>
References: <20200510121220.18042-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_051325_105520_79BFA80F 
X-CRM114-Status: GOOD (  10.96  )
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This helper is not very useful and very often people get confused:
they use nand_release() instead of nand_cleanup().

Now that all drivers have been converted to do not use nand_release()
anymore, let's remove this helper.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Jonathan Corbet <corbet@lwn.net>
---
 Documentation/driver-api/mtdnand.rst |  6 ++++--
 drivers/mtd/nand/raw/nand_base.c     | 12 ------------
 include/linux/mtd/bbm.h              |  2 +-
 include/linux/mtd/rawnand.h          |  2 --
 4 files changed, 5 insertions(+), 17 deletions(-)

diff --git a/Documentation/driver-api/mtdnand.rst b/Documentation/driver-api/mtdnand.rst
index 55447659b81f..0bf8d6ec3f54 100644
--- a/Documentation/driver-api/mtdnand.rst
+++ b/Documentation/driver-api/mtdnand.rst
@@ -276,8 +276,10 @@ unregisters the partitions in the MTD layer.
     #ifdef MODULE
     static void __exit board_cleanup (void)
     {
-        /* Release resources, unregister device */
-        nand_release (mtd_to_nand(board_mtd));
+        /* Unregister device */
+        WARN_ON(mtd_device_unregister(board_mtd));
+        /* Release resources */
+        nand_cleanup(mtd_to_nand(board_mtd));
 
         /* unmap physical address */
         iounmap(baseaddr);
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index d3b3b929e038..35fe18906662 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -6116,18 +6116,6 @@ void nand_cleanup(struct nand_chip *chip)
 
 EXPORT_SYMBOL_GPL(nand_cleanup);
 
-/**
- * nand_release - [NAND Interface] Unregister the MTD device and free resources
- *		  held by the NAND device
- * @chip: NAND chip object
- */
-void nand_release(struct nand_chip *chip)
-{
-	mtd_device_unregister(nand_to_mtd(chip));
-	nand_cleanup(chip);
-}
-EXPORT_SYMBOL_GPL(nand_release);
-
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Steven J. Hill <sjhill@realitydiluted.com>");
 MODULE_AUTHOR("Thomas Gleixner <tglx@linutronix.de>");
diff --git a/include/linux/mtd/bbm.h b/include/linux/mtd/bbm.h
index 886e30441c90..d890805f5494 100644
--- a/include/linux/mtd/bbm.h
+++ b/include/linux/mtd/bbm.h
@@ -98,7 +98,7 @@ struct nand_bbt_descr {
 
 /*
  * Flag set by nand_create_default_bbt_descr(), marking that the nand_bbt_descr
- * was allocated dynamicaly and must be freed in nand_release(). Has no meaning
+ * was allocated dynamicaly and must be freed in nand_cleanup(). Has no meaning
  * in nand_chip.bbt_options.
  */
 #define NAND_BBT_DYNAMICSTRUCT	0x80000000
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 8159bd818536..3b955d4bb180 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1388,8 +1388,6 @@ void nand_wait_ready(struct nand_chip *chip);
  * sucessful nand_scan().
  */
 void nand_cleanup(struct nand_chip *chip);
-/* Unregister the MTD device and calls nand_cleanup() */
-void nand_release(struct nand_chip *chip);
 
 /*
  * External helper for controller drivers that have to implement the WAITRDY
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
