Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F31B1C2DBF
	for <lists+linux-mtd@lfdr.de>; Sun,  3 May 2020 17:56:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XPL7Jcf0VmJnxigX4stXleEa5nhVCzy5VAb/raqvNrY=; b=fA9ofebcOZ4oz4
	64xsrkaLLIPXZAvcLnyrZ73tre1ybcuwSH5wgczdt1CCa3ZO2FdAwUKaZ1eSuliscVQ0Jp5pGnSHN
	6W5BeZZDHxzcSqp6SOwAWeaA1w8sAU//BNu8hMOOMVNJlqofGbhqFzuMtoSkGXVGxdgBJ/wTkUNe1
	ceGs6GSVcFWSKaffgBotakF6ycW8Aj6O5rDUz6naM2O9PrAcrvpDuk8qtym5zuci75ONFYRjhO6C4
	M3NpZ41fmJftRLtuvjsyg/3KTI/sR0pRCo+jDwvhzCUDnPLeact3WkDM2+Pu1Wko5vBB/YoZ3Dcv8
	v1z78FeiyqdEkzboN6Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVGyj-000730-Mh; Sun, 03 May 2020 15:56:29 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVGwE-0002hH-4P
 for linux-mtd@lists.infradead.org; Sun, 03 May 2020 15:53:55 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id B430E24000C;
 Sun,  3 May 2020 15:53:51 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 7/8] mtd: cmdlinepart: Add an slc option to use SLC mode on
 a part
Date: Sun,  3 May 2020 17:53:40 +0200
Message-Id: <20200503155341.16712-8-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200503155341.16712-1-miquel.raynal@bootlin.com>
References: <20200503155341.16712-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_085354_316160_276ACAF4 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Maxime Ripard <maxime@cerno.tech>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Boris Brezillon <boris.brezillon@bootlin.com>

Add a new option to set the MTD_SLC_ON_MLC_EMULATION flag.

Signed-off-by: Boris Brezillon <boris.brezillon@bootlin.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/parsers/cmdlinepart.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/parsers/cmdlinepart.c b/drivers/mtd/parsers/cmdlinepart.c
index c86f2db8c882..af712f1519c5 100644
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
+		add_flags |= MTD_SLC_ON_MLC_EMULATION;
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
