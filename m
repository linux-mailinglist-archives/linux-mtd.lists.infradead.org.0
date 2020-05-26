Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D41A1E2FB8
	for <lists+linux-mtd@lfdr.de>; Tue, 26 May 2020 22:03:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XV0xMiOpm6saoBMeEluaZwV6+KIaghg42Em1kIFcsH8=; b=KStbv49W1vFbm1
	E8mu83Bdg1ctRTO/iqACkuJGwmSxL/KD50tE/ADErlGVUlWpzQyt6uAjJF8JW4rMc6SpN9dErVfo/
	FXbUbLQ0vEWneE2Zz4ixdonnwYH8qDZB3rca3XlMX+RaWz+9lqPvdeeCW3uxrx3i7yzS5BY3zCWOV
	rTg+ah2nUugLP3nUOK2RyW+ec3TwpFkW2tZSV124MEdQB51oL4NqWZHYD8fyfIL7uU0Sa/R5JT0q0
	Q/Mw87rZmAYpB4M0lX6tTODittWH49BXVFGzvh9l3qDSeMS8OoX8INtl4uFDM6FAMmSdapn3Pe/OP
	MjVm7DlqY6xEsPM84iPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdfmr-0006X2-Rk; Tue, 26 May 2020 20:02:57 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdfh8-0007ka-8P
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 19:57:03 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id B77F0C000A;
 Tue, 26 May 2020 19:56:59 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [RESEND v5 21/21] mtd: nand: Rename a core structure
Date: Tue, 26 May 2020 21:56:33 +0200
Message-Id: <20200526195633.11543-22-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200526195633.11543-1-miquel.raynal@bootlin.com>
References: <20200526195633.11543-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_125702_460855_5A14FED2 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Prepare the migration to a generic ECC engine by renaming the
nand_ecc_req structure into nand_ecc_props. This structure will be the
base of a wider 'nand_ecc' structure.

In nand_device, these properties are still named "eccreq" even if
"eccprops" might be more descriptive. This is just a transition step,
this field is being replaced very soon by a much wider structure. The
impact of renaming this field would be huge compared to its interest.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 include/linux/mtd/nand.h    | 8 ++++----
 include/linux/mtd/spinand.h | 2 +-
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 60d158e183ce..6add464fd18b 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -128,11 +128,11 @@ struct nand_page_io_req {
 };
 
 /**
- * struct nand_ecc_req - NAND ECC requirements
+ * struct nand_ecc_props - NAND ECC properties
  * @strength: ECC strength
- * @step_size: ECC step/block size
+ * @step_size: Number of bytes per step
  */
-struct nand_ecc_req {
+struct nand_ecc_props {
 	unsigned int strength;
 	unsigned int step_size;
 };
@@ -191,7 +191,7 @@ struct nand_ops {
 struct nand_device {
 	struct mtd_info mtd;
 	struct nand_memory_organization memorg;
-	struct nand_ecc_req eccreq;
+	struct nand_ecc_props eccreq;
 	struct nand_row_converter rowconv;
 	struct nand_bbt bbt;
 	const struct nand_ops *ops;
diff --git a/include/linux/mtd/spinand.h b/include/linux/mtd/spinand.h
index 1077c45721ff..7b78c4ba9b3e 100644
--- a/include/linux/mtd/spinand.h
+++ b/include/linux/mtd/spinand.h
@@ -309,7 +309,7 @@ struct spinand_info {
 	struct spinand_devid devid;
 	u32 flags;
 	struct nand_memory_organization memorg;
-	struct nand_ecc_req eccreq;
+	struct nand_ecc_props eccreq;
 	struct spinand_ecc_info eccinfo;
 	struct {
 		const struct spinand_op_variants *read_cache;
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
