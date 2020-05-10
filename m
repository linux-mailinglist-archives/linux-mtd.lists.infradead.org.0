Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EEBA1CCAEB
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 14:23:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4NFRgJ4c3GWr4eHt9ww8r8rTlsXGCVp9siMs3hLOEqQ=; b=phUivtBFApoP4N
	LKQL5pfGjIEKLm4EtdE+jMj0v23qYrtU7/OLjUhxsC+aBIC1k0bTv5dPupyj8clcJBnLXirmGVDEn
	6Yf7hIHFvr194HayaqVQQREYb8NXvdOM89Unczn98CuPbtNesH1Jn00TV2xieHTxdLDUERLnGRRxJ
	1nT9R0W8UjMXrmrnnjgzp4p29/0fPHR3ZDFB/SXk02n37jdJkm353UUwrbr9ZVXYFusJilIlCSn3j
	4D338WKMOd0QhyNzxjGwfAxOErsV0DSLp04lOqEb7xQPWkj2KbAKqSCIFoehi2uN1b/PY5uYJgySf
	FHEL+g3J+SGEB/syrQmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXkzm-0002q9-C0; Sun, 10 May 2020 12:23:50 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXkpM-0005V3-7D
 for linux-mtd@lists.infradead.org; Sun, 10 May 2020 12:13:06 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id E139D2000E;
 Sun, 10 May 2020 12:13:01 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 40/62] mtd: rawnand: pasemi: Fix the probe error path
Date: Sun, 10 May 2020 14:11:58 +0200
Message-Id: <20200510121220.18042-41-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200510121220.18042-1-miquel.raynal@bootlin.com>
References: <20200510121220.18042-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_051304_515248_26311EBA 
X-CRM114-Status: GOOD (  12.15  )
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

nand_cleanup() is supposed to be called on error after a successful
call to nand_scan() to free all NAND resources.

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
 drivers/mtd/nand/raw/pasemi_nand.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/pasemi_nand.c b/drivers/mtd/nand/raw/pasemi_nand.c
index 9cfe7395172a..be40b2f32237 100644
--- a/drivers/mtd/nand/raw/pasemi_nand.c
+++ b/drivers/mtd/nand/raw/pasemi_nand.c
@@ -146,7 +146,7 @@ static int pasemi_nand_probe(struct platform_device *ofdev)
 	if (mtd_device_register(pasemi_nand_mtd, NULL, 0)) {
 		dev_err(dev, "Unable to register MTD device\n");
 		err = -ENODEV;
-		goto out_lpc;
+		goto out_cleanup_nand;
 	}
 
 	dev_info(dev, "PA Semi NAND flash at %pR, control at I/O %x\n", &res,
@@ -154,6 +154,8 @@ static int pasemi_nand_probe(struct platform_device *ofdev)
 
 	return 0;
 
+out_cleanup:
+	nand_cleanup(chip);
  out_lpc:
 	release_region(lpcctl, 4);
  out_ior:
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
