Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0711E7B8B
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 13:19:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cPM5tsDq36y1sQ28xx4VC0qOXR5g43kl2IOHLtHGXzY=; b=DeJocIjN0rU4QA
	5HsXyta2qwUr8z2fzbAQt+LSzEdU/xfw+k6DWY2CTbgMYlbfAD5QfR8dFCsSiAggtmKMueoAmcesn
	LSsDC6fleEij2NJ43eXTlBpbKOnMdWbdvsW8Fz7vjq+o/GToPRfL+SY62eTMnUzSSxzKZBrqAOlHK
	VM4AFUI4LPJuizBNAXGnDFKEJH9ClADBy62uxNQNfydOEALn/hg5dsZADx47FKmgMGXj1whheq3PI
	/ZrdJOdpANLGgzG35gg7DHZ31n8pqRDHVZm045FX2hn13NgBWMSQOXhWuoV1PPyj6HtpnsWpgNq5L
	q7p6JYPGTtPAYMR7cNSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jed2z-0002EC-Kx; Fri, 29 May 2020 11:19:33 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jecxT-0003Wl-Lx
 for linux-mtd@lists.infradead.org; Fri, 29 May 2020 11:13:54 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id A3C42240008;
 Fri, 29 May 2020 11:13:48 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v7 20/28] mtd: rawnand: timings: Make
 onfi_fill_interface_config() a void helper
Date: Fri, 29 May 2020 13:13:14 +0200
Message-Id: <20200529111322.7184-21-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200529111322.7184-1-miquel.raynal@bootlin.com>
References: <20200529111322.7184-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_041352_014843_92C524C8 
X-CRM114-Status: GOOD (  13.06  )
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

Warn the user if the parameters are wrong but basically it would mean
there is a serious issue in the NAND core. So no need to ever check
its output, let's make this helper return void.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/internals.h    |  8 ++++----
 drivers/mtd/nand/raw/nand_base.c    |  6 ++----
 drivers/mtd/nand/raw/nand_timings.c | 18 ++++++++----------
 3 files changed, 14 insertions(+), 18 deletions(-)

diff --git a/drivers/mtd/nand/raw/internals.h b/drivers/mtd/nand/raw/internals.h
index 114c63a6a349..63c5af436901 100644
--- a/drivers/mtd/nand/raw/internals.h
+++ b/drivers/mtd/nand/raw/internals.h
@@ -84,10 +84,10 @@ int nand_bbm_get_next_page(struct nand_chip *chip, int page);
 int nand_markbad_bbm(struct nand_chip *chip, loff_t ofs);
 int nand_erase_nand(struct nand_chip *chip, struct erase_info *instr,
 		    int allowbbt);
-int onfi_fill_interface_config(struct nand_chip *chip,
-			       struct nand_interface_config *iface,
-			       enum nand_interface_type type,
-			       unsigned int timing_mode);
+void onfi_fill_interface_config(struct nand_chip *chip,
+				struct nand_interface_config *iface,
+				enum nand_interface_type type,
+				unsigned int timing_mode);
 unsigned int
 onfi_find_closest_sdr_mode(const struct nand_sdr_timings *spec_timings);
 int nand_get_features(struct nand_chip *chip, int addr, u8 *subfeature_param);
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 4fa18fb68d62..3bfd71d589cf 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -1041,10 +1041,8 @@ static int nand_choose_interface_config(struct nand_chip *chip)
 	}
 
 	for (mode = fls(modes) - 1; mode >= 0; mode--) {
-		ret = onfi_fill_interface_config(chip, &chip->interface_config,
-						 NAND_SDR_IFACE, mode);
-		if (ret)
-			continue;
+		onfi_fill_interface_config(chip, &chip->interface_config,
+					   NAND_SDR_IFACE, mode);
 
 		/*
 		 * Pass NAND_DATA_IFACE_CHECK_ONLY to only check if the
diff --git a/drivers/mtd/nand/raw/nand_timings.c b/drivers/mtd/nand/raw/nand_timings.c
index bf05b4bceaa0..1e22006c79ba 100644
--- a/drivers/mtd/nand/raw/nand_timings.c
+++ b/drivers/mtd/nand/raw/nand_timings.c
@@ -347,18 +347,18 @@ onfi_find_closest_sdr_mode(const struct nand_sdr_timings *spec_timings)
  * @type: The interface type
  * @timing_mode: The ONFI timing mode
  */
-int onfi_fill_interface_config(struct nand_chip *chip,
-			       struct nand_interface_config *iface,
-			       enum nand_interface_type type,
-			       unsigned int timing_mode)
+void onfi_fill_interface_config(struct nand_chip *chip,
+				struct nand_interface_config *iface,
+				enum nand_interface_type type,
+				unsigned int timing_mode)
 {
 	struct onfi_params *onfi = chip->parameters.onfi;
 
-	if (type != NAND_SDR_IFACE)
-		return -EINVAL;
+	if (WARN_ON(type != NAND_SDR_IFACE))
+		return;
 
-	if (timing_mode >= ARRAY_SIZE(onfi_sdr_timings))
-		return -EINVAL;
+	if (WARN_ON(timing_mode >= ARRAY_SIZE(onfi_sdr_timings)))
+		return;
 
 	*iface = onfi_sdr_timings[timing_mode];
 
@@ -378,6 +378,4 @@ int onfi_fill_interface_config(struct nand_chip *chip,
 		/* nanoseconds -> picoseconds */
 		timings->tCCS_min = 1000UL * onfi->tCCS;
 	}
-
-	return 0;
 }
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
