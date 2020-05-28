Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C281E7039
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 01:20:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rRlBCiPUXipRvWX+nVMlwIf6bfbY0MBx+n9TvBC58GM=; b=p+iAiIdiAGmahO
	BWVNzigVRZuiF9kO7E7H224sIkj3PEyGpAAJNql9lhPFOLu0+onsc+RwgyaKoTBuS9kOIieQAeA6M
	uq8xXWF8S92aeOonBFONvPDdD870vuvAoraz45mY8HTUzWCnMvYBiEkFwXEJUsRF5RRg7JDQll7cU
	COdFCn3ihmRrm0f50FATt4oZlbBdMnYUyM5BX8bmQuJTg+qwQBk/KPlCbFnSJ6hFDbjqkME0tCNdC
	dJcxk+KVg53DQKVlR7B9eX65PwetkAYFYAVOAhSJ/BS4wk505B0WXEXjDD8Lvb0suTBehHhpMiRJk
	P3VyniOCOk2/Rr9EoGfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeRpX-0003pO-Ej; Thu, 28 May 2020 23:20:55 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeRlM-0006HS-CY
 for linux-mtd@lists.infradead.org; Thu, 28 May 2020 23:16:38 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 7A78B240004;
 Thu, 28 May 2020 23:16:33 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v6 16/30] mtd: rawnand: timings: Use default values for
 tPROG_max and tBERS_max
Date: Fri, 29 May 2020 01:15:58 +0200
Message-Id: <20200528231612.8958-17-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200528231612.8958-1-miquel.raynal@bootlin.com>
References: <20200528231612.8958-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_161636_709345_B1D9CA37 
X-CRM114-Status: GOOD (  12.26  )
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
Cc: Rickard Andersson <rickaran@axis.com>, Michal Simek <monstr@monstr.eu>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The ONFI parameter page of a chip might define more fine grained
tPROG_max and tBERS_max. When we do not have this information, we
default to the highest possible values (they are maxima anyway).

There is no point setting these fields at runtime, so explicitly move
these defaults to the main ONFI SDR timings structure.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_timings.c | 31 ++++++++++++++++++-----------
 1 file changed, 19 insertions(+), 12 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_timings.c b/drivers/mtd/nand/raw/nand_timings.c
index 728a2dee1eed..9ff4b121ab1e 100644
--- a/drivers/mtd/nand/raw/nand_timings.c
+++ b/drivers/mtd/nand/raw/nand_timings.c
@@ -12,6 +12,13 @@
 
 #define ONFI_DYN_TIMING_MAX U16_MAX
 
+/*
+ * For non-ONFI chips we use the highest possible value for tPROG and tBERS.
+ * tR and tCCS will take the default values precised in the ONFI specification
+ * for timing mode 0, respectively 200us and 500ns.
+ *
+ * These four values are tweaked to be more accurate in the case of ONFI chips.
+ */
 static const struct nand_data_interface onfi_sdr_timings[] = {
 	/* Mode 0 */
 	{
@@ -20,6 +27,8 @@ static const struct nand_data_interface onfi_sdr_timings[] = {
 		.timings.sdr = {
 			.tCCS_min = 500000,
 			.tR_max = 200000000,
+			.tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
+			.tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
 			.tADL_min = 400000,
 			.tALH_min = 20000,
 			.tALS_min = 50000,
@@ -63,6 +72,8 @@ static const struct nand_data_interface onfi_sdr_timings[] = {
 		.timings.sdr = {
 			.tCCS_min = 500000,
 			.tR_max = 200000000,
+			.tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
+			.tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
 			.tADL_min = 400000,
 			.tALH_min = 10000,
 			.tALS_min = 25000,
@@ -106,6 +117,8 @@ static const struct nand_data_interface onfi_sdr_timings[] = {
 		.timings.sdr = {
 			.tCCS_min = 500000,
 			.tR_max = 200000000,
+			.tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
+			.tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
 			.tADL_min = 400000,
 			.tALH_min = 10000,
 			.tALS_min = 15000,
@@ -149,6 +162,8 @@ static const struct nand_data_interface onfi_sdr_timings[] = {
 		.timings.sdr = {
 			.tCCS_min = 500000,
 			.tR_max = 200000000,
+			.tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
+			.tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
 			.tADL_min = 400000,
 			.tALH_min = 5000,
 			.tALS_min = 10000,
@@ -192,6 +207,8 @@ static const struct nand_data_interface onfi_sdr_timings[] = {
 		.timings.sdr = {
 			.tCCS_min = 500000,
 			.tR_max = 200000000,
+			.tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
+			.tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
 			.tADL_min = 400000,
 			.tALH_min = 5000,
 			.tALS_min = 10000,
@@ -235,6 +252,8 @@ static const struct nand_data_interface onfi_sdr_timings[] = {
 		.timings.sdr = {
 			.tCCS_min = 500000,
 			.tR_max = 200000000,
+			.tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
+			.tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
 			.tADL_min = 400000,
 			.tALH_min = 5000,
 			.tALS_min = 10000,
@@ -357,18 +376,6 @@ int onfi_fill_data_interface(struct nand_chip *chip,
 
 		/* nanoseconds -> picoseconds */
 		timings->tCCS_min = 1000UL * onfi->tCCS;
-	} else {
-		struct nand_sdr_timings *timings = &iface->timings.sdr;
-		/*
-		 * For non-ONFI chips we use the highest possible value for
-		 * tPROG and tBERS. tR and tCCS will take the default values
-		 * precised in the ONFI specification for timing mode 0,
-		 * respectively 200us and 500ns.
-		 */
-
-		/* microseconds -> picoseconds */
-		timings->tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX;
-		timings->tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX;
 	}
 
 	return 0;
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
