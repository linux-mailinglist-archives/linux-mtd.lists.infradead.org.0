Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1731D9778
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 15:17:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e2VEdF2PVDc8ZxNub/bBEEa72Ti/lT+95HR8kECJwyQ=; b=penK5LwnhMZF41
	qeNv3+qJTwXmuErMT4R3FZADdiPvFVQiEC0pwRzt2TkAhoZex5C/gPH7sM0z8bg9tPNoy0mrBYKxB
	zerTEFKn8ypM1D0dfnV6nmPqUG1zCxdwMQqbSSQlBthbpQVSqEwnoUgTFcuWuSoPGQZgQsjx/plcy
	5s9MKVz4Uj0TM5o8xJyYZKystgz8d0UmcpgKF9+UlJ3aYrdFNJYhpG7Kv3K64eeNqdNlSwn20koV6
	qGMXBj/BGyFh2IMzMrgFm6CxYmxLyEsZACbGBIB5vB8dvrGtTYk1NjbCmQieR6vVOftohaMp49LMv
	zsaZOhxFTUHEMUliII8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb27p-0006up-Vo; Tue, 19 May 2020 13:17:41 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb1sS-0002iJ-TX
 for linux-mtd@bombadil.infradead.org; Tue, 19 May 2020 13:01:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=n3d4ELJ4iBUusJ1vcD/d/OY+vvs1HUcyATbJH7rsdaM=; b=UaeKy72p0A5O86NwnmMbafhvlq
 vxm8TdnR1jlXugYCKGIMmKt38C5T6OfVxfmRYhRwlyxdP4COi7ffelLDPCKIqgCDT1ZuyUTq2zGu/
 AO0QDrqU0v/NT1cw/8gGL9xVtlSGGLAibibs8Ir/6LKAu5pFlE2kyo5CVx7XhxXYa4oO2bdv7TXlO
 krpjimVPOwmA4dQhyrFtjP5ZGHqdd1kIjKxuSeQxOqm9A+FUi8Q8NQxlTC7MsqykRyk5HdUAaOY7W
 OXRinl92dCZQorPRfE8dWKG/+zSUbsXnPvrJl4GgZJ/NcUB93jLZEf8d21oNIWSTASzl3xL88ZSj8
 FJXu+vyg==;
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb1sO-0002KL-5O
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 13:01:47 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id A1B15FF806;
 Tue, 19 May 2020 13:01:01 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 42/62] mtd: rawnand: plat_nand: Fix the probe error path
Date: Tue, 19 May 2020 15:00:15 +0200
Message-Id: <20200519130035.1883-43-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519130035.1883-1-miquel.raynal@bootlin.com>
References: <20200519130035.1883-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_140144_524220_79369F4D 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-2.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.199 listed in wl.mailspike.net]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
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
Cc: stable@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

nand_release() is supposed be called after MTD device registration.
Here, only nand_scan() happened, so use nand_cleanup() instead.

There is no real Fixes tag applying here as the use of nand_release()
in this driver predates by far the introduction of nand_cleanup() in
commit d44154f969a4 ("mtd: nand: Provide nand_cleanup() function to free NAND related resources")
which makes this change possible, hence pointing it as the commit to
fix for backporting purposes, even if this commit is not introducing
any bug.

Fixes: d44154f969a4 ("mtd: nand: Provide nand_cleanup() function to free NAND related resources")
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: stable@vger.kernel.org
---
 drivers/mtd/nand/raw/plat_nand.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/plat_nand.c b/drivers/mtd/nand/raw/plat_nand.c
index dc0f3074ddbf..3a495b233443 100644
--- a/drivers/mtd/nand/raw/plat_nand.c
+++ b/drivers/mtd/nand/raw/plat_nand.c
@@ -92,7 +92,7 @@ static int plat_nand_probe(struct platform_device *pdev)
 	if (!err)
 		return err;
 
-	nand_release(&data->chip);
+	nand_cleanup(&data->chip);
 out:
 	if (pdata->ctrl.remove)
 		pdata->ctrl.remove(pdev);
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
