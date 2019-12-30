Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A2F12D24B
	for <lists+linux-mtd@lfdr.de>; Mon, 30 Dec 2019 17:52:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=msy6C2QEb43pGkB/XYvtVs++xB8gdjpcu/6Yom7n5i8=; b=ecC8ZFyRAsA1ch
	kcElwsd45mcjHCWaOBT2O+BkAXw7UJ8F5+fjF1kninRpef/RdwJLC+wfFyWKfB5b5JtQ7+muIKaB4
	VU+TbDjo76h4E4yr7Yn4/trIGAn9lwlVgtLUlevtvmKSB/v5wRUfoFbfhrpHncsh291HbIaVR8Y4r
	GuwDNgxxDwOgmzZhjt9BX4m/ZWGjUDZ5k0t3OTnWJfThSRBJhHGTc12wyCQe80O6CIUrbNgBRt9Au
	eBbtNI0RZQ/wRwitvaVO4MTL+6l6UE47FrLFyqBS+o/xmMuxQTXMMedm0YUvo1zWeGlss9yJPa8io
	rwbxh1pW7a28d9lhWe0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilyGy-0003T5-5G; Mon, 30 Dec 2019 16:52:04 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilyGd-0003J5-GS
 for linux-mtd@lists.infradead.org; Mon, 30 Dec 2019 16:51:45 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id B9EAEC000E;
 Mon, 30 Dec 2019 16:51:37 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 7/8] mtd: cmdlinepart: Add an slc option to use SLC mode on a
 part
Date: Mon, 30 Dec 2019 17:51:28 +0100
Message-Id: <20191230165129.11925-8-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191230165129.11925-1-miquel.raynal@bootlin.com>
References: <20191230165129.11925-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_085143_693377_6FDB66B5 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Boris Brezillon <boris.brezillon@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Boris Brezillon <boris.brezillon@bootlin.com>

Add a new option to set the MTD_MLC_IN_SLC_MODE flag.

Signed-off-by: Boris Brezillon <boris.brezillon@bootlin.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/parsers/cmdlinepart.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/parsers/cmdlinepart.c b/drivers/mtd/parsers/cmdlinepart.c
index c86f2db8c882..089fdf83b088 100644
--- a/drivers/mtd/parsers/cmdlinepart.c
+++ b/drivers/mtd/parsers/cmdlinepart.c
@@ -9,7 +9,7 @@
  *
  * mtdparts=<mtddef>[;<mtddef]
  * <mtddef>  := <mtd-id>:<partdef>[,<partdef>]
- * <partdef> := <size>[@<offset>][<name>][ro][lk]
+ * <partdef> := <size>[@<offset>][<name>][ro][lk][slc]
  * <mtd-id>  := unique name used in mapping driver/device (mtd->name)
  * <size>    := standard linux memsize OR "-" to denote all remaining space
  *              size is automatically truncated at end of device
@@ -92,7 +92,7 @@ static struct mtd_partition * newpart(char *s,
 	int name_len;
 	unsigned char *extra_mem;
 	char delim;
-	unsigned int mask_flags;
+	unsigned int mask_flags, add_flags;
 
 	/* fetch the partition size */
 	if (*s == '-') {
@@ -109,6 +109,7 @@ static struct mtd_partition * newpart(char *s,
 
 	/* fetch partition name and flags */
 	mask_flags = 0; /* this is going to be a regular partition */
+	add_flags = 0;
 	delim = 0;
 
 	/* check for offset */
@@ -152,6 +153,12 @@ static struct mtd_partition * newpart(char *s,
 		s += 2;
 	}
 
+	/* if slc is found use emulated SLC mode on this partition*/
+	if (!strncmp(s, "slc", 3)) {
+		add_flags |= MTD_MLC_IN_SLC_MODE;
+		s += 3;
+	}
+
 	/* test if more partitions are following */
 	if (*s == ',') {
 		if (size == SIZE_REMAINING) {
@@ -184,6 +191,7 @@ static struct mtd_partition * newpart(char *s,
 	parts[this_part].size = size;
 	parts[this_part].offset = offset;
 	parts[this_part].mask_flags = mask_flags;
+	parts[this_part].add_flags = add_flags;
 	if (name)
 		strlcpy(extra_mem, name, name_len + 1);
 	else
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
