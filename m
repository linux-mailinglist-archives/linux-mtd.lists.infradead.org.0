Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE14CB812E
	for <lists+linux-mtd@lfdr.de>; Thu, 19 Sep 2019 21:07:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4fFv8jqkcJCCrTmZSKAt/B1NNpssczcU6SJaHJhwP3M=; b=XepLsiNwL/NClw
	1MZ5OXnSOWx93iR6yQogXxQV3wADon7o8iRYC+z6NvppOtoptn0E4tNIPOop0BLJ2IEDq9o1c3jUw
	mGQtxUl2PEAmDjc//Kgqo3UXopFoYEQWSphjNUbQEYg7nQA6LwLiP0udrOKUZuB88NrP8g/Yo7E7P
	DQv5sdatEBGkbVMEXNRPQ4z825Ie3M75eSHjD6Bo8v0be5XZMMpjweXl2sYTaCODYhCNXpwGJXxI4
	AF8ADPiWotXhnDAz8vcN5p9KqoNQQ8IC/W4OqMyiWFZ4605oi6ggFMe+HRI7hdMfKxYKDROweQ6ka
	ULY1XL2Eyf2O6SyEhqRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB1mG-0001Vo-AQ; Thu, 19 Sep 2019 19:07:40 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB1lx-0001Vi-Qn
 for linux-mtd@bombadil.infradead.org; Thu, 19 Sep 2019 19:07:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tpWXZjED3MwaN7yurBgF9wOQYpX5dGh5EHCyFDC3lcM=; b=ENDF1iKvOZBSfELH7StPGY6tAd
 yR8y2P1Tyw12fjTjCtly0yI3BBK4yh759f0xb7rJBZZ7RtLs6ACUzlm80OYD3g9K3ZRxeuAnadz5i
 QlkLNB9vh6WQReb1v6mgE0KVEpW1AwxEIb09UakRO0AuS2T1M7/+Ks8txqd3nyj2ZGfnd7Uj2fq7c
 kJIFqGQKPh3KNP9wGxEFfvWKvG+j//QHmVZo175UlRdUZuREzIOPGtI9u6gpm0w84zGYx+ybN0Gzo
 TBDyQc8OEAWLKA7O8tfs07haUux7Y9wyNqPyD1k4wBMlqRBIxRnrz2sKLFP8932b7rMCCZvhAAkVi
 rx/xWnsQ==;
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by merlin.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB1lu-0001Mi-Vd
 for linux-mtd@lists.infradead.org; Thu, 19 Sep 2019 19:07:20 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 839D9240008;
 Thu, 19 Sep 2019 19:06:30 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH] mtd: Initialize all parameters of mtd_oob_ops
Date: Thu, 19 Sep 2019 21:06:21 +0200
Message-Id: <20190919190621.4686-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
Cc: linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Most of the time the ooboffs parameter of the mtd_oob_ops structure
was initialized only when needed. Since the introduction of the
SPI-NAND subsystem, this parameter is transferred into
nand_page_io_req structure automatically and may be used by any
SPI-NAND user.

Before this happens, initialize all the structure parameters when they
are created in mtdchar.c.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/mtdchar.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/mtdchar.c b/drivers/mtd/mtdchar.c
index 975aed94f06c..b841008a9eb7 100644
--- a/drivers/mtd/mtdchar.c
+++ b/drivers/mtd/mtdchar.c
@@ -174,7 +174,7 @@ static ssize_t mtdchar_read(struct file *file, char __user *buf, size_t count,
 			break;
 		case MTD_FILE_MODE_RAW:
 		{
-			struct mtd_oob_ops ops;
+			struct mtd_oob_ops ops = {};
 
 			ops.mode = MTD_OPS_RAW;
 			ops.datbuf = kbuf;
@@ -268,7 +268,7 @@ static ssize_t mtdchar_write(struct file *file, const char __user *buf, size_t c
 
 		case MTD_FILE_MODE_RAW:
 		{
-			struct mtd_oob_ops ops;
+			struct mtd_oob_ops ops = {};
 
 			ops.mode = MTD_OPS_RAW;
 			ops.datbuf = kbuf;
@@ -350,7 +350,7 @@ static int mtdchar_writeoob(struct file *file, struct mtd_info *mtd,
 	uint32_t __user *retp)
 {
 	struct mtd_file_info *mfi = file->private_data;
-	struct mtd_oob_ops ops;
+	struct mtd_oob_ops ops = {};
 	uint32_t retlen;
 	int ret = 0;
 
@@ -394,7 +394,7 @@ static int mtdchar_readoob(struct file *file, struct mtd_info *mtd,
 	uint32_t __user *retp)
 {
 	struct mtd_file_info *mfi = file->private_data;
-	struct mtd_oob_ops ops;
+	struct mtd_oob_ops ops = {};
 	int ret = 0;
 
 	if (length > 4096)
@@ -587,7 +587,7 @@ static int mtdchar_write_ioctl(struct mtd_info *mtd,
 		struct mtd_write_req __user *argp)
 {
 	struct mtd_write_req req;
-	struct mtd_oob_ops ops;
+	struct mtd_oob_ops ops = {};
 	const void __user *usr_data, *usr_oob;
 	int ret;
 
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
