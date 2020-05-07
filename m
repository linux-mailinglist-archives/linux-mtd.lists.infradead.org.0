Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D851C8761
	for <lists+linux-mtd@lfdr.de>; Thu,  7 May 2020 12:56:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GRD9UKhroAxN9fjxghdpZkhrmIoQ3owje5vSJS6LwoU=; b=KL8zZOqqZdXefT
	vQMC1YJHJjhAZKArLWhpO5vTZWa7TTYeRm1afLNNqY1kWKV4ZMebV2VFzj6xh0mqDL8w2gde7h5+V
	BxcQWUuVD6HxZKyOtStE5dndSulUA5Ux8TVGUC35GlWq3OPy9tISZjI3wp2mSM/Kd8nV3aE53tJPu
	/psmy4JxVMr+/xiofB54mmkWw5ceBbA6fhOeMnvV4f3EaGjf+MlAAwW1vX1iQTM+1M9dN5r78yfy6
	aoqgHAPUfwfGQatgg1d8KoKWRYet6BQnEexwHevOEqRw5xJjm1cdbkjhC9B1H/53Fry+hwnSIzLL7
	A3q4OkRJzQ9apvf8q/0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWeCC-0000gk-3b; Thu, 07 May 2020 10:56:04 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWe9E-0004Di-1d
 for linux-mtd@lists.infradead.org; Thu, 07 May 2020 10:53:01 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 6C38124000D;
 Thu,  7 May 2020 10:52:57 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v5 12/13] mtd: rawnand: Allow controllers to overload soft ECC
 hooks
Date: Thu,  7 May 2020 12:52:40 +0200
Message-Id: <20200507105241.14299-13-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200507105241.14299-1-miquel.raynal@bootlin.com>
References: <20200507105241.14299-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_035300_247928_D97E4AA2 
X-CRM114-Status: GOOD (  10.21  )
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

Some controller drivers do not support executing regular
nand_read/write_page_raw() helpers. For that, we created
nand_monolithic_read/write_page_raw() alternatives. Let's now allow
the driver to overload the ECC ->read/write_page_raw() hooks.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/nand_base.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 065ce31fcf6b..dda82217e12c 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -5233,8 +5233,10 @@ static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 		ecc->read_page = nand_read_page_swecc;
 		ecc->read_subpage = nand_read_subpage;
 		ecc->write_page = nand_write_page_swecc;
-		ecc->read_page_raw = nand_read_page_raw;
-		ecc->write_page_raw = nand_write_page_raw;
+		if (!ecc->read_page_raw)
+			ecc->read_page_raw = nand_read_page_raw;
+		if (!ecc->write_page_raw)
+			ecc->write_page_raw = nand_write_page_raw;
 		ecc->read_oob = nand_read_oob_std;
 		ecc->write_oob = nand_write_oob_std;
 		if (!ecc->size)
@@ -5256,8 +5258,10 @@ static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 		ecc->read_page = nand_read_page_swecc;
 		ecc->read_subpage = nand_read_subpage;
 		ecc->write_page = nand_write_page_swecc;
-		ecc->read_page_raw = nand_read_page_raw;
-		ecc->write_page_raw = nand_write_page_raw;
+		if (!ecc->read_page_raw)
+			ecc->read_page_raw = nand_read_page_raw;
+		if (!ecc->write_page_raw)
+			ecc->write_page_raw = nand_write_page_raw;
 		ecc->read_oob = nand_read_oob_std;
 		ecc->write_oob = nand_write_oob_std;
 
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
