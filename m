Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 446121CCACB
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 14:16:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kkl/jrh3ohMA83vQHpBD+hBnWWL5SPUTQT5ZFlYeF0E=; b=uqZ4qvg8q0y6h8
	P/i8Zge6pccpm2TUlXMC234rA1B3bzTAM+UBaen8VHQGIyTWrIVM799Kv/ifxUYx674+9Hui//GEF
	zWpsMPjqCaVoC55Wh9eM6X+PnxAq3CUcChXyo/NLXi3usqco8M1PwKZ/K2NqkDh4SK59yo+F2Qxz7
	8XseOTRiQDlrZKhLM7LD6ayZWYwemU7ZMzfDaWFPbUATZ2BytOuTGeDIX49RCkCEXiMp7VSMLmBVA
	xI48gkSxPcx0jqCK1TeKaeqhI9FQfRsdKCrza1zUXD/BEk1+f2mG8a7G3WP++QypsdyCdDjBAhXT9
	5kM7xs/qfUTisUYlXWpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXksy-0002f3-9E; Sun, 10 May 2020 12:16:48 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXkoz-00058g-71
 for linux-mtd@lists.infradead.org; Sun, 10 May 2020 12:12:42 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 121E120003;
 Sun, 10 May 2020 12:12:38 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 12/62] mtd: rawnand: diskonchip: Fix the probe error path
Date: Sun, 10 May 2020 14:11:30 +0200
Message-Id: <20200510121220.18042-13-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200510121220.18042-1-miquel.raynal@bootlin.com>
References: <20200510121220.18042-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_051241_403129_15E93121 
X-CRM114-Status: GOOD (  12.42  )
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
Cc: Boris Brezillon <boris.brezillon@collabora.com>, stable@vger.kernel.org,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Not sure nand_cleanup() is the right function to call here but in any
case it is not nand_release(). Indeed, even a comment says that
calling nand_release() is a bit of a hack as there is no MTD device to
unregister. So switch to nand_cleanup() for now and drop this
comment.

There is no Fixes tag applying here as the use of nand_release()
in this driver predates by far the introduction of nand_cleanup() in
commit d44154f969a4 ("mtd: nand: Provide nand_cleanup() function to free NAND related resources")
which makes this change possible. However, pointing this commit as the
culprit for backporting purposes makes sense even if it did not intruce
any bug.

Fixes: d44154f969a4 ("mtd: nand: Provide nand_cleanup() function to free NAND related resources")
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: stable@vger.kernel.org
---
 drivers/mtd/nand/raw/diskonchip.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/nand/raw/diskonchip.c b/drivers/mtd/nand/raw/diskonchip.c
index c2a391ad2c35..baabc6633557 100644
--- a/drivers/mtd/nand/raw/diskonchip.c
+++ b/drivers/mtd/nand/raw/diskonchip.c
@@ -1609,13 +1609,10 @@ static int __init doc_probe(unsigned long physadr)
 		numchips = doc2001_init(mtd);
 
 	if ((ret = nand_scan(nand, numchips)) || (ret = doc->late_init(mtd))) {
-		/* DBB note: i believe nand_release is necessary here, as
+		/* DBB note: i believe nand_cleanup is necessary here, as
 		   buffers may have been allocated in nand_base.  Check with
 		   Thomas. FIX ME! */
-		/* nand_release will call mtd_device_unregister, but we
-		   haven't yet added it.  This is handled without incident by
-		   mtd_device_unregister, as far as I can tell. */
-		nand_release(nand);
+		nand_cleanup(nand);
 		goto fail;
 	}
 
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
