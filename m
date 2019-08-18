Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 035339155F
	for <lists+linux-mtd@lfdr.de>; Sun, 18 Aug 2019 09:29:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qniwEPye2Fkh92PBJhkpOmykbuE+YUPeD5AoZIBGI8Q=; b=fyH
	IsIxawZTlq5iQ5LUF4e6s74aE0QhKTSJYDnUd8Z2JpR9XZtWE0V8RhsMLujZhY/HBF6BkbC8qajak
	x1Z8YJS5lQ7I8ci/bTKnLWQpVlx/NPUGwox0oMXSMjuC6AFOnqT//PDi0Wj/xTsKanfWEawFxbt/c
	4EiTJEWBGsH5mEfpncYNz/uxGjBUggcTAWXC5pTkMKg8Zs1xi2jslaWEsmF7aRt7U2cEZBM7+eRQO
	XSxOctMArPabxSc2lx0denm37295nZCORBDs3zOORP6m6SC6BJjpodPOJCOQHpSsWihUHxpBA0FiL
	qgmHRZFA6v9PsxU5EBCMc2wkR+O/hNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzFco-0005do-Ct; Sun, 18 Aug 2019 07:29:14 +0000
Received: from mail-yb1-f193.google.com ([209.85.219.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzFcV-0005d8-JF
 for linux-mtd@lists.infradead.org; Sun, 18 Aug 2019 07:28:57 +0000
Received: by mail-yb1-f193.google.com with SMTP id x10so3324534ybs.13
 for <linux-mtd@lists.infradead.org>; Sun, 18 Aug 2019 00:28:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=o9Rkq3dkBHyl5deQARpSgyWUVR/JbkupDTFCJi/n5xw=;
 b=jGQlyFvUd+ZmgelmiC9xuRU2Mg1/ZPybMxn5RB67Rw6R9F9xtqMjSTW4E8E5z0ha6a
 aBLwUxrAYP8GC1oDfQj1Z8jJ/drzGd154Dksri0IOQvzFJWVjEjzxj1TtND2v26af4Hj
 HkfD/LGz+fl3Vbvmjay+hZ8u3/73KUaQ2ZdLJEHV1wTwKHsoO0FyhBdEYLGGMWTZt6at
 WNpyeo6RVDBaZdZhzcx3hhxGWFtSAMbc/5w3Mkqa6xqME4Z1cbTCywUD/i9G3MmoPnJb
 aODSUUZWY+YIqjA0Z3h14JQAuWCHzEO02L9BvQkLhgCi27vGT5i87MrQTdORXrxPAcRM
 rLXQ==
X-Gm-Message-State: APjAAAVz9ewDAMx2MxSY10LwShIah7VC5xrKDgrkrhHnJZPeyeUlwXI9
 Y9ZCj+oolGcOO5JwD8QG/8E=
X-Google-Smtp-Source: APXvYqyXh0ACf3uPloT7K9ye/+ewlFZvUxgDm53vVvtLuiCjKWpyMuWjKUJjNkgdC5CAlgnzSdjXBw==
X-Received: by 2002:a25:d143:: with SMTP id i64mr12704171ybg.111.1566113333214; 
 Sun, 18 Aug 2019 00:28:53 -0700 (PDT)
Received: from localhost.localdomain (24-158-240-219.dhcp.smyr.ga.charter.com.
 [24.158.240.219])
 by smtp.gmail.com with ESMTPSA id j130sm2396856ywg.31.2019.08.18.00.28.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 18 Aug 2019 00:28:52 -0700 (PDT)
From: Wenwen Wang <wenwen@cs.uga.edu>
To: Wenwen Wang <wenwen@cs.uga.edu>
Subject: [PATCH] mtd: rawnand: Fix a memory leak bug
Date: Sun, 18 Aug 2019 02:28:40 -0500
Message-Id: <1566113321-4464-1-git-send-email-wenwen@cs.uga.edu>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_002855_642261_31D0D408 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.193 listed in list.dnswl.org]
 -0.2 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wenwenict[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 Randy Dunlap <rdunlap@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 open list <linux-kernel@vger.kernel.org>, Marek Vasut <marek.vasut@gmail.com>,
 "open list:NAND FLASH SUBSYSTEM" <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, Allison Randal <allison@lohutok.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

In nand_scan_bbt(), a temporary buffer 'buf' is allocated through
vmalloc(). However, if check_create() fails, 'buf' is not deallocated,
leading to a memory leak bug. To fix this issue, free 'buf' before
returning the error.

Signed-off-by: Wenwen Wang <wenwen@cs.uga.edu>
---
 drivers/mtd/nand/raw/nand_bbt.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_bbt.c b/drivers/mtd/nand/raw/nand_bbt.c
index 2ef15ef..864a00a 100644
--- a/drivers/mtd/nand/raw/nand_bbt.c
+++ b/drivers/mtd/nand/raw/nand_bbt.c
@@ -1245,7 +1245,7 @@ static int nand_scan_bbt(struct nand_chip *this, struct nand_bbt_descr *bd)
 	buf = vmalloc(len);
 	if (!buf) {
 		res = -ENOMEM;
-		goto err;
+		goto err_free_bbt;
 	}
 
 	/* Is the bbt at a given page? */
@@ -1258,7 +1258,7 @@ static int nand_scan_bbt(struct nand_chip *this, struct nand_bbt_descr *bd)
 
 	res = check_create(this, buf, bd);
 	if (res)
-		goto err;
+		goto err_free_buf;
 
 	/* Prevent the bbt regions from erasing / writing */
 	mark_bbt_region(this, td);
@@ -1268,7 +1268,9 @@ static int nand_scan_bbt(struct nand_chip *this, struct nand_bbt_descr *bd)
 	vfree(buf);
 	return 0;
 
-err:
+err_free_buf:
+	vfree(buf);
+err_free_bbt:
 	kfree(this->bbt);
 	this->bbt = NULL;
 	return res;
-- 
2.7.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
