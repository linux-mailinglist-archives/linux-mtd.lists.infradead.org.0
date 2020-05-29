Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B95E51E7B72
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 13:15:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=26rfbgpQ37tDAoL8Vd+5EoU+808rbRQOrtnTEfXVRbk=; b=VCI7vcYx59Uk2d
	KP480DK9n+Ygng1ve1eEI+2XTf/mVTNkjCeZfQSQekp2xaqVxqNKct6EALyxk86CU/wLXNGU5UdqG
	oNH3+AmK9ol3OEeMrgkmcR+L9e9rr9q6plty1/SC5pdF05SZXUa/5AAOBZ5KeyY9KloYmI/cCleo+
	dfeUpjeVpRNPrejaWquuQjMVr1gW9PBhGNRKPvERhg5+GhRMzJz+fzwcHMd+kd1ew14Gd0wcHpH07
	9IFDz2LklYbhWWFByt/+DDq1FXeeWob5ZN6zXdg+yVpHw+iaibdUwQhU/PtQX1covtdG0WQQqHKqa
	hPQ7fqKeqoCsI6n5GqGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jecz9-0006yu-5s; Fri, 29 May 2020 11:15:35 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jecxB-0003Ek-VR
 for linux-mtd@lists.infradead.org; Fri, 29 May 2020 11:13:35 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 5F15824000F;
 Fri, 29 May 2020 11:13:31 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v7 05/28] mtd: rawnand: Declare the nand_manufacturer
 structure out of nand_chip
Date: Fri, 29 May 2020 13:12:59 +0200
Message-Id: <20200529111322.7184-6-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200529111322.7184-1-miquel.raynal@bootlin.com>
References: <20200529111322.7184-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_041334_148606_7EC833BB 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Now that struct nand_manufacturer type is free, use it to store the
nand_manufacturer_desc and the manufacturer's private data.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 include/linux/mtd/rawnand.h | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 860d3c1020ef..a3dfa36a9fd5 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1043,10 +1043,21 @@ struct nand_chip_ops {
 	int (*setup_read_retry)(struct nand_chip *chip, int retry_mode);
 };
 
+/**
+ * struct nand_manufacturer - NAND manufacturer structure
+ * @desc: The manufacturer description
+ * @priv: Private information for the manufacturer driver
+ */
+struct nand_manufacturer {
+	const struct nand_manufacturer_desc *desc;
+	void *priv;
+};
+
 /**
  * struct nand_chip - NAND Private Flash Chip Data
  * @base:		Inherit from the generic NAND device
  * @ops:		NAND chip operations
+ * @manufacturer:	Manufacturer information
  * @legacy:		All legacy fields/hooks. If you develop a new driver,
  *			don't even try to use any of these fields/hooks, and if
  *			you're modifying an existing driver that is using those
@@ -1106,13 +1117,11 @@ struct nand_chip_ops {
  *			structure which is shared among multiple independent
  *			devices.
  * @priv:		[OPTIONAL] pointer to private chip data
- * @manufacturer:	[INTERN] Contains manufacturer information
- * @manufacturer.desc:	[INTERN] Contains manufacturer's description
- * @manufacturer.priv:	[INTERN] Contains manufacturer private information
  */
 
 struct nand_chip {
 	struct nand_device base;
+	struct nand_manufacturer manufacturer;
 	struct nand_chip_ops ops;
 	struct nand_legacy legacy;
 
@@ -1161,11 +1170,6 @@ struct nand_chip {
 	struct nand_bbt_descr *badblock_pattern;
 
 	void *priv;
-
-	struct {
-		const struct nand_manufacturer_desc *desc;
-		void *priv;
-	} manufacturer;
 };
 
 extern const struct mtd_ooblayout_ops nand_ooblayout_sp_ops;
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
