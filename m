Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 002341C3675
	for <lists+linux-mtd@lfdr.de>; Mon,  4 May 2020 12:09:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YJX1AiqFYDlDCKBYr4lsLJDS1RtpDpe2m+DAoz4FAJA=; b=aNUVesq1X5WMfV
	TPmlYUPHYhv/TqAtDO935EFXcxWhybrtzl09Uri2tHVWnfgjl6UCDYh5t2/GDLGSLWhspD/NwL9/N
	G0b2Qo1/8pV4SUtBDDlDFPy0UnQL7bk+Guj3RXfFcmrRnlro4DhJjbDfiX+vO9aS5WeiqNQ8JwcG1
	UvhF9e/6gyoeJIoqMaSyJcDUJpNhMFiUqrKjC5yQhmpfnVgNVZJqqWJ7GQ7l13BEFa6kOuQMMTcGK
	P7ZD2vs6mdVoTxZyWj7LvPGTfUgOvpZE8E4t/8cJzQxqTygS6jx52dJLsvcSU4bUELR9tMwC0m5oS
	58LGnXoSrRqzqIV/PHkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVY23-0007Dy-6g; Mon, 04 May 2020 10:09:03 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVY1t-0007DU-Jd
 for linux-mtd@lists.infradead.org; Mon, 04 May 2020 10:08:54 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id EC49F24002A;
 Mon,  4 May 2020 10:05:51 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v4 06/13] mtd: rawnand: Avoid indirect access to ->data_buf()
Date: Mon,  4 May 2020 11:52:30 +0200
Message-Id: <20200504095237.1654-7-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200504095237.1654-1-miquel.raynal@bootlin.com>
References: <20200504095237.1654-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_030853_776030_1D6BDC72 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: Michal Simek <monstr@monstr.eu>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The logic in nand_do_read_ops() is to use a bufpoi variable, either
set to the original buffer, or set to a bounce buffer which in the end
happens to be chip->data_buf depending on the value of the
use_bounce_buf boolean. This is not a reason to call chip->data_buf
directly when we know that we are using the bounce buffer. Let's use
bufpoi instead to be consistent.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/nand_base.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index efde1f0fe2a9..1b7d7574dfc0 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -3243,7 +3243,7 @@ static int nand_do_read_ops(struct nand_chip *chip, loff_t from,
 					/* Invalidate page cache */
 					chip->pagecache.page = -1;
 				}
-				memcpy(buf, chip->data_buf + col, bytes);
+				memcpy(buf, bufpoi + col, bytes);
 			}
 
 			if (unlikely(oob)) {
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
