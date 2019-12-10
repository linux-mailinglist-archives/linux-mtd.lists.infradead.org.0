Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B33611916E
	for <lists+linux-mtd@lfdr.de>; Tue, 10 Dec 2019 21:02:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=05MAxTlsnf2DRcqaWAAnVKlgtWgiGNSKMgzBLJjjWF4=; b=IM0vbpo7BRc1Ir
	MvT5sTEZ2ptrLZeyeKEwIXi6+hWuK3ZXmKyXszv/YzpWr2cT3kaSx1SP/2oZwKuJvUsUHYBZXYj4b
	BONrV46Cc6nLQ5J5By7L/YynxoLgCVd7fyW5vEio7CS3Pw3mvLOYal4QZNrkPiH01S3nac/h8EIEJ
	c/zzLeOwjJJhQpV99MrTCjwX9JblJUHI4+yMCJhO1eKsjczdmXzrqVBstfpAVc4Wsyy3yK1BBsEWh
	HUCVOXBJJGzBOm97iMkBt9FHWZst5/aemtiRc+0B4YD+y2U6woE9V2YF/rBzdjKYXkw0IYNMc5Tev
	ZHMS/fI2O1nhzAGNXbRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieliC-0004mT-Qq; Tue, 10 Dec 2019 20:02:24 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ielgw-0003oc-CX
 for linux-mtd@lists.infradead.org; Tue, 10 Dec 2019 20:01:14 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MRSdf-1iQ6xB0jJ7-00NPmT; Tue, 10 Dec 2019 21:00:40 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Piotr Sroka <piotrs@cadence.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH] mtd: rawnand: cadence: fix address space mixup
Date: Tue, 10 Dec 2019 20:59:55 +0100
Message-Id: <20191210200014.949529-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:txJklOowuSRLj0koCfpHwgfGy1GnDaqSKN+I1klemQktVt55+vk
 bZmUdtxS4iQFjc1FoYZvgb+xJpGxxHn78pz0xmXekGDzvWH/CDrOP9kmh5qorGelqV+XNCH
 GL0HstVAgcyk9+C45VfS3sCwsxgwEz+uipE//D1XPjAXt/JSEhsGM8hC7nLKGHmbvlwmnFB
 Oa4HqVUMw0L7GwerspFbg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mbiYpSZ6SPE=:3HvWkAOW/EugY9Lv84f9OP
 B3UlxY8qECwn2z8cz0Fae2n9XvtANC5HTx0fQDIYopO5GyCmQqW2/PLTNapJ1iSi6oM3KaudH
 23TjgcsKuOAkLpIdL0BPE0vHjzNgd9Iggv6Pv1tWUg7Vk+QYGQBmyTTbtCaEOiuAODfjQKIzz
 Yc/p7TbIMQbqS1Bvgfh60f3Wkw4Uy3VA6e3AfepxrO760XhG0gDPPYo2hsGLlesPbpurhx0G7
 7WzwnEP0OeYu+TzOcPi143Ox66qi4O83RihWTZ9IgMjtNd3Iyd6LgZrLkDb43naCuDGm5wVZm
 5yTm/+PVhIGbGYbw2qMoqYzetq9BhTQkYCV8Pxq2rCfRMbgAhPTDIrznCXRqdKrS2yBfNxqIy
 gFJbArlc88EqB6ZywlBJ2XSIKKga8g8qi4IgziLSO5AjryXBuxLcJ97BDU+CRsWabsIH3wFeC
 ZSGWWrj01TMIN71IFJOcr6ihdqzK+FH29qG+NWtI/8u/8QqkE15HXr3FW6dYoz+Yt37Kf+SMw
 b3SlMEVJ9Gp0+bOjDh1hS0M48CYQllItcJWlSk1DzPimvUYzuGyx5pFQYgsoPcZUfddDFZXOo
 FvMb1CA8VVu0niNGJEzm3AqWmQhRbznNprA7/3dBXZEBDLJceYPkewJjnouNsdNWGUHDPujbY
 FGTxRm5vKVI+9D67wmCaEdAhiE2lgUPZgc7isZ4kcmLbYiNwmdNvRNlJzn/edCcGThI+XlPxj
 A96xDoHaLxaBxp93eQxBavi0XtBjs7txOn7iDq6D5yjob7MDshpLwYAmL5NuSoilwPyruTZ7P
 ldecQ1xGWZnkZ1egU1Y7F9yW0hSEaVGstioKeupCfPTTQG5omSNmywcCa4pC7EvjS4YvE8ZAF
 yEI7JSi/Elqr1KAqL1XQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_120106_733310_B0114D28 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kbuild test robot <lkp@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@lip6.fr>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

dma_addr_t and pointers can are not interchangeable, and can
be different sizes:

drivers/mtd/nand/raw/cadence-nand-controller.c: In function 'cadence_nand_cdma_transfer':
drivers/mtd/nand/raw/cadence-nand-controller.c:1283:12: error: cast to pointer from integer of different size [-Werror=int-to-pointer-cast]
            (void *)dma_buf, (void *)dma_ctrl_dat,
            ^
drivers/mtd/nand/raw/cadence-nand-controller.c:1283:29: error: cast to pointer from integer of different size [-Werror=int-to-pointer-cast]
            (void *)dma_buf, (void *)dma_ctrl_dat,
                             ^

Use dma_addr_t consistently here, which cleans up a couple of casts
as a side-effect.

Fixes: ec4ba01e894d ("mtd: rawnand: Add new Cadence NAND driver to MTD subsystem")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 .../mtd/nand/raw/cadence-nand-controller.c    | 21 ++++++++-----------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/mtd/nand/raw/cadence-nand-controller.c b/drivers/mtd/nand/raw/cadence-nand-controller.c
index 3a36285a8d8a..5a2d7e7ffaee 100644
--- a/drivers/mtd/nand/raw/cadence-nand-controller.c
+++ b/drivers/mtd/nand/raw/cadence-nand-controller.c
@@ -402,7 +402,7 @@ struct cadence_nand_cdma_desc {
 	u16 rsvd2;
 
 	/* System/host memory address required for data DMA commands. */
-	u64 memory_pointer;
+	u64 memory_addr;
 
 	/* Status of operation. */
 	u32 status;
@@ -416,7 +416,7 @@ struct cadence_nand_cdma_desc {
 	u32 rsvd4;
 
 	/* Control data pointer. */
-	u64 ctrl_data_ptr;
+	u64 ctrl_data_addr;
 };
 
 /* Interrupt status. */
@@ -914,8 +914,8 @@ static void cadence_nand_get_caps(struct cdns_nand_ctrl *cdns_ctrl)
 /* Prepare CDMA descriptor. */
 static void
 cadence_nand_cdma_desc_prepare(struct cdns_nand_ctrl *cdns_ctrl,
-			       char nf_mem, u32 flash_ptr, char *mem_ptr,
-			       char *ctrl_data_ptr, u16 ctype)
+			       char nf_mem, u32 flash_ptr, dma_addr_t mem_addr,
+			       dma_addr_t ctrl_data_addr, u16 ctype)
 {
 	struct cadence_nand_cdma_desc *cdma_desc = cdns_ctrl->cdma_desc;
 
@@ -931,13 +931,13 @@ cadence_nand_cdma_desc_prepare(struct cdns_nand_ctrl *cdns_ctrl,
 	cdma_desc->command_flags |= CDMA_CF_DMA_MASTER;
 	cdma_desc->command_flags  |= CDMA_CF_INT;
 
-	cdma_desc->memory_pointer = (uintptr_t)mem_ptr;
+	cdma_desc->memory_addr = mem_addr;
 	cdma_desc->status = 0;
 	cdma_desc->sync_flag_pointer = 0;
 	cdma_desc->sync_arguments = 0;
 
 	cdma_desc->command_type = ctype;
-	cdma_desc->ctrl_data_ptr = (uintptr_t)ctrl_data_ptr;
+	cdma_desc->ctrl_data_addr = ctrl_data_addr;
 }
 
 static u8 cadence_nand_check_desc_error(struct cdns_nand_ctrl *cdns_ctrl,
@@ -1280,8 +1280,7 @@ cadence_nand_cdma_transfer(struct cdns_nand_ctrl *cdns_ctrl, u8 chip_nr,
 	}
 
 	cadence_nand_cdma_desc_prepare(cdns_ctrl, chip_nr, page,
-				       (void *)dma_buf, (void *)dma_ctrl_dat,
-				       ctype);
+				       dma_buf, dma_ctrl_dat, ctype);
 
 	status = cadence_nand_cdma_send_and_wait(cdns_ctrl, thread_nr);
 
@@ -1358,10 +1357,8 @@ static int cadence_nand_erase(struct nand_chip *chip, u32 page)
 	int status;
 	u8 thread_nr = cdns_chip->cs[chip->cur_cs];
 
-	cadence_nand_cdma_desc_prepare(cdns_ctrl,
-				       cdns_chip->cs[chip->cur_cs],
-				       page, NULL, NULL,
-				       CDMA_CT_ERASE);
+	cadence_nand_cdma_desc_prepare(cdns_ctrl, cdns_chip->cs[chip->cur_cs],
+				       page, 0, 0, CDMA_CT_ERASE);
 	status = cadence_nand_cdma_send_and_wait(cdns_ctrl, thread_nr);
 	if (status) {
 		dev_err(cdns_ctrl->dev, "erase operation failed\n");
-- 
2.20.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
