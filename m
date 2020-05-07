Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B541C8756
	for <lists+linux-mtd@lfdr.de>; Thu,  7 May 2020 12:54:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YJX1AiqFYDlDCKBYr4lsLJDS1RtpDpe2m+DAoz4FAJA=; b=q9VDcisY0RzfPU
	HIKXPbFSj+GETBZ1NIv69xEB3Lci5z8C+Rb9JHSwMF6BjkD3uApv7BDRJOPC94fLlxDwNHoHOglMV
	7uJwt87ZNEFN0ei6VqdGMPiTnq7OAgJcArfc2s7rEZoj0qLp+mD53hhd0gwryCvSMzFzyHMeHAa0P
	rH/nwlP321kniMlBZSDBNLZB2G/xQuKE5HfW5MT0AkYhQcJ2vHf9UTxtkG29ppMjzEhF/f2okcQjS
	80VxK0jgHg/DvsYwjt3ndv4VAAIoR//xjC1XWBECBe6uu4wqobSZG+GzT1Q1gl1/V+4WOMpNaq3qz
	wt74GN+pVGgcXGq4coow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWeAf-0005UT-Sc; Thu, 07 May 2020 10:54:29 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWe97-00045p-1H
 for linux-mtd@lists.infradead.org; Thu, 07 May 2020 10:52:54 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id AD21B24001B;
 Thu,  7 May 2020 10:52:50 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v5 06/13] mtd: rawnand: Avoid indirect access to ->data_buf()
Date: Thu,  7 May 2020 12:52:34 +0200
Message-Id: <20200507105241.14299-7-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200507105241.14299-1-miquel.raynal@bootlin.com>
References: <20200507105241.14299-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_035253_243545_1F4EC3E1 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
