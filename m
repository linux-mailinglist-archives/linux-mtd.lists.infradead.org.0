Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 515271CC403
	for <lists+linux-mtd@lfdr.de>; Sat,  9 May 2020 21:17:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cib+3KYyc2ehmx45W0RnAHoXBGPdZs6RTD8Yv9JCbQk=; b=vDIto7h1ngC8PL
	oINaeP47gY6vmbfUB7+UU2scsLlFDPk/6q8DdRa+QPoiMbxAOhxS/LCFLNLMblyWooloT83g1OZIp
	bP1BB6c7yq9FPSwbCdAeroiI+ntuBpny7A8D/6dwTY/S/ir3YyTPfbNjKhAkcegOoT8A52ZvsKzvD
	kbQ3QIrGx7z+G5F9YR9xKErMsae1F2HazfuxMUFKo3vp2gqjMz5APNLp4rw0Ccrl4aP/3qYkwEwPm
	2z8xehwpdaB2+D0vTpR7qeEF+DaE9EHGivPuDv7ERcTz+S7CGPWmEYKiThhqEOD/eqH3NStwu+1Fg
	n2DuOUDCkcfGLVt+uC/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXUyV-0006LI-U3; Sat, 09 May 2020 19:17:27 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXUvp-0001nh-4b
 for linux-mtd@lists.infradead.org; Sat, 09 May 2020 19:14:43 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 112C510000B;
 Sat,  9 May 2020 19:14:38 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 07/17] mtd: rawnand: nandsim: Fix the two ns_alloc_device()
 error paths
Date: Sat,  9 May 2020 21:14:20 +0200
Message-Id: <20200509191431.15862-8-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200509191431.15862-1-miquel.raynal@bootlin.com>
References: <20200509191431.15862-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_121441_325358_F2A22C69 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.231 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: dedekind@infradead.org, Boris Brezillon <boris.brezillon@collabora.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The ns_alloc_device() helper has actually two distinct path. Handle
errors in both of them.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nandsim.c | 26 +++++++++++++++++---------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/drivers/mtd/nand/raw/nandsim.c b/drivers/mtd/nand/raw/nandsim.c
index 7862c65e32ad..7ffb46b01380 100644
--- a/drivers/mtd/nand/raw/nandsim.c
+++ b/drivers/mtd/nand/raw/nandsim.c
@@ -543,12 +543,12 @@ static int __init ns_alloc_device(struct nandsim *ns)
 		if (!(cfile->f_mode & FMODE_CAN_READ)) {
 			NS_ERR("alloc_device: cache file not readable\n");
 			err = -EINVAL;
-			goto err_close;
+			goto err_close_filp;
 		}
 		if (!(cfile->f_mode & FMODE_CAN_WRITE)) {
 			NS_ERR("alloc_device: cache file not writeable\n");
 			err = -EINVAL;
-			goto err_close;
+			goto err_close_filp;
 		}
 		ns->pages_written =
 			vzalloc(array_size(sizeof(unsigned long),
@@ -556,16 +556,24 @@ static int __init ns_alloc_device(struct nandsim *ns)
 		if (!ns->pages_written) {
 			NS_ERR("alloc_device: unable to allocate pages written array\n");
 			err = -ENOMEM;
-			goto err_close;
+			goto err_close_filp;
 		}
 		ns->file_buf = kmalloc(ns->geom.pgszoob, GFP_KERNEL);
 		if (!ns->file_buf) {
 			NS_ERR("alloc_device: unable to allocate file buf\n");
 			err = -ENOMEM;
-			goto err_free;
+			goto err_free_pw;
 		}
 		ns->cfile = cfile;
+
 		return 0;
+
+err_free_pw:
+		vfree(ns->pages_written);
+err_close_filp:
+		filp_close(cfile, NULL);
+
+		return err;
 	}
 
 	ns->pages = vmalloc(array_size(sizeof(union ns_mem), ns->geom.pgnum));
@@ -580,15 +588,15 @@ static int __init ns_alloc_device(struct nandsim *ns)
 						ns->geom.pgszoob, 0, 0, NULL);
 	if (!ns->nand_pages_slab) {
 		NS_ERR("cache_create: unable to create kmem_cache\n");
-		return -ENOMEM;
+		err = -ENOMEM;
+		goto err_free_pg;
 	}
 
 	return 0;
 
-err_free:
-	vfree(ns->pages_written);
-err_close:
-	filp_close(cfile, NULL);
+err_free_pg:
+	vfree(ns->pages);
+
 	return err;
 }
 
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
