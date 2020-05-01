Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4061C17FE
	for <lists+linux-mtd@lfdr.de>; Fri,  1 May 2020 16:41:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PTXf8ZWKGhTVWiHlKbCcj+AORzBFaWSLtN06hL6rsLQ=; b=Qfcw4I+YYlJ5VB
	a4lvwMmc00ONyr7z+M0zRkSWlocIPxzECbqCaSzLErvyJaNlnwi3AzVPg2QsUie91y6siQ99WwqWB
	eZPPzyNsZ8mYbtBUnJJXaE5XLXglQX0TayNrhdzIrO92Kn1i5PI64nb2h3EAvMog+KWpGbAjnqPnb
	xp2wa5enYDS+EcdgpHcKm+vXo3x0OuXOJ1A7n+Z3YHnzy2t9hrHm8od/3z3Ivf3T/pa8fuSFHUOG/
	tAIBFiqzmOIyIxHCJ1FBqErVDJe6YGGWo3n0fqOE7vSRny6rIfXe7oF1hFyT943RSnDIakBbKu3uD
	xcaIl7YUFhap60nZvGKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUWqa-0004TB-Jd; Fri, 01 May 2020 14:41:00 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUWp4-0000pP-V9
 for linux-mtd@lists.infradead.org; Fri, 01 May 2020 14:39:28 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E997E2A30CB;
 Fri,  1 May 2020 15:39:23 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org
Subject: [PATCH 1/5] mtd: rawnand: diskonchip: Make sure doc2001plus_readbuf()
 works for single byte reads
Date: Fri,  1 May 2020 16:39:13 +0200
Message-Id: <20200501143917.1388957-2-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.3
In-Reply-To: <20200501143917.1388957-1-boris.brezillon@collabora.com>
References: <20200501143917.1388957-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_073927_144751_694D33A9 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Richard Weinberger <richard@nod.at>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Single byte accesses normally go through read_byte() but we are about
to use this function in the exec_op() implementation and thus needs to
prepare for single byte reads.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/diskonchip.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/raw/diskonchip.c b/drivers/mtd/nand/raw/diskonchip.c
index 03f772a0ec2b..724493624822 100644
--- a/drivers/mtd/nand/raw/diskonchip.c
+++ b/drivers/mtd/nand/raw/diskonchip.c
@@ -550,9 +550,12 @@ static void doc2001plus_readbuf(struct nand_chip *this, u_char *buf, int len)
 	}
 
 	/* Terminate read pipeline */
-	buf[len - 2] = ReadDOC(docptr, Mplus_LastDataRead);
-	if (debug && i < 16)
-		printk("%02x ", buf[len - 2]);
+	if (len >= 2) {
+		buf[len - 2] = ReadDOC(docptr, Mplus_LastDataRead);
+		if (debug && i < 16)
+			printk("%02x ", buf[len - 2]);
+	}
+
 	buf[len - 1] = ReadDOC(docptr, Mplus_LastDataRead);
 	if (debug && i < 16)
 		printk("%02x ", buf[len - 1]);
-- 
2.25.3


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
