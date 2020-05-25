Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A58891E13AC
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 19:47:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ik37JTLsZFkdtzymLoW9uY55k9AV2JlzWefJhmRmGqA=; b=KBoX0HKopoRtCT
	PFiaMTG0NcxKUKPEugFiThnEnXYVFGUod0g4taluGNpYns2QYDf6LQ6V1SiiP1rjVcTjbTb7X1KFi
	5Q25JK5LU5EgbEIq+qU676nUNk89rRJORth08bCTrQjy40HEYIUb9E3a23aw/+H6IlJXSIaCOStbT
	GTDukNczcN2r77JF9Slt8nUZQFB1fRd0ohiGwpoAuGnWO3MHizeyguWU6bhGe7KiI9CU9mml/CxBX
	TFhs0VuGtboxyES/peVCkkTw/sxS9EyufvJ0PuJ/Ivx2r0QRQOSpEmwUbdmYUsN6DvZANu99ElX7V
	7ZKOltXWfH0fW7HNJZSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdHCQ-0000uF-Lq; Mon, 25 May 2020 17:47:42 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdH7u-0003Ix-Md
 for linux-mtd@lists.infradead.org; Mon, 25 May 2020 17:43:04 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 4DD3F24000C;
 Mon, 25 May 2020 17:43:00 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v4 15/19] mtd: rawnand: timings: Add a helper to find the
 closest ONFI mode
Date: Mon, 25 May 2020 19:42:35 +0200
Message-Id: <20200525174239.11349-16-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200525174239.11349-1-miquel.raynal@bootlin.com>
References: <20200525174239.11349-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_104303_055881_A8645A47 
X-CRM114-Status: GOOD (  12.73  )
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
Cc: Rickard Andersson <rickaran@axis.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Vendors are allowed to provide their own set of timings. In this case,
we provide a way to derive the "closest" timing mode so that, if the
NAND controller does not support tweaking these parameters, it will be
able to configure itself anyway.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/internals.h    |  1 +
 drivers/mtd/nand/raw/nand_timings.c | 52 +++++++++++++++++++++++++++++
 2 files changed, 53 insertions(+)

diff --git a/drivers/mtd/nand/raw/internals.h b/drivers/mtd/nand/raw/internals.h
index dc84e3b55d48..ac103d8767be 100644
--- a/drivers/mtd/nand/raw/internals.h
+++ b/drivers/mtd/nand/raw/internals.h
@@ -88,6 +88,7 @@ int onfi_fill_data_interface(struct nand_chip *chip,
 			     struct nand_data_interface *iface,
 			     enum nand_data_interface_type type,
 			     int timing_mode);
+unsigned int onfi_find_equivalent_sdr_mode(const struct nand_sdr_timings *vendor_timings);
 int nand_get_features(struct nand_chip *chip, int addr, u8 *subfeature_param);
 int nand_set_features(struct nand_chip *chip, int addr, u8 *subfeature_param);
 int nand_read_page_raw_notsupp(struct nand_chip *chip, u8 *buf,
diff --git a/drivers/mtd/nand/raw/nand_timings.c b/drivers/mtd/nand/raw/nand_timings.c
index ce6bb87db2e8..7f5caa325fbe 100644
--- a/drivers/mtd/nand/raw/nand_timings.c
+++ b/drivers/mtd/nand/raw/nand_timings.c
@@ -273,6 +273,58 @@ static const struct nand_data_interface onfi_sdr_timings[] = {
 	},
 };
 
+unsigned int onfi_find_equivalent_sdr_mode(const struct nand_sdr_timings *vendor_timings)
+{
+	const struct nand_sdr_timings *onfi_timings;
+	int mode;
+
+	for (mode = ARRAY_SIZE(onfi_sdr_timings) - 1; mode > 0; mode--) {
+		onfi_timings = &onfi_sdr_timings[mode].timings.sdr;
+
+		if (vendor_timings->tCCS_min > onfi_timings->tCCS_min ||
+		    vendor_timings->tR_max < onfi_timings->tR_max ||
+		    vendor_timings->tADL_min > onfi_timings->tADL_min ||
+		    vendor_timings->tALH_min > onfi_timings->tALH_min ||
+		    vendor_timings->tALS_min > onfi_timings->tALS_min ||
+		    vendor_timings->tAR_min > onfi_timings->tAR_min ||
+		    vendor_timings->tCEA_max < onfi_timings->tCEA_max ||
+		    vendor_timings->tCEH_min > onfi_timings->tCEH_min ||
+		    vendor_timings->tCH_min > onfi_timings->tCH_min ||
+		    vendor_timings->tCHZ_max < onfi_timings->tCHZ_max ||
+		    vendor_timings->tCLH_min > onfi_timings->tCLH_min ||
+		    vendor_timings->tCLR_min > onfi_timings->tCLR_min ||
+		    vendor_timings->tCLS_min > onfi_timings->tCLS_min ||
+		    vendor_timings->tCOH_min > onfi_timings->tCOH_min ||
+		    vendor_timings->tCS_min > onfi_timings->tCS_min ||
+		    vendor_timings->tDH_min > onfi_timings->tDH_min ||
+		    vendor_timings->tDS_min > onfi_timings->tDS_min ||
+		    vendor_timings->tFEAT_max < onfi_timings->tFEAT_max ||
+		    vendor_timings->tIR_min > onfi_timings->tIR_min ||
+		    vendor_timings->tITC_max < onfi_timings->tITC_max ||
+		    vendor_timings->tRC_min > onfi_timings->tRC_min ||
+		    vendor_timings->tREA_max < onfi_timings->tREA_max ||
+		    vendor_timings->tREH_min > onfi_timings->tREH_min ||
+		    vendor_timings->tRHOH_min > onfi_timings->tRHOH_min ||
+		    vendor_timings->tRHW_min > onfi_timings->tRHW_min ||
+		    vendor_timings->tRHZ_max < onfi_timings->tRHZ_max ||
+		    vendor_timings->tRLOH_min > onfi_timings->tRLOH_min ||
+		    vendor_timings->tRP_min > onfi_timings->tRP_min ||
+		    vendor_timings->tRR_min > onfi_timings->tRR_min ||
+		    vendor_timings->tRST_max < onfi_timings->tRST_max ||
+		    vendor_timings->tWB_max < onfi_timings->tWB_max ||
+		    vendor_timings->tWC_min > onfi_timings->tWC_min ||
+		    vendor_timings->tWH_min > onfi_timings->tWH_min ||
+		    vendor_timings->tWHR_min > onfi_timings->tWHR_min ||
+		    vendor_timings->tWP_min > onfi_timings->tWP_min ||
+		    vendor_timings->tWW_min > onfi_timings->tWW_min)
+			continue;
+
+		return mode;
+	}
+
+	return 0;
+}
+
 /**
  * onfi_fill_data_interface - Initialize a data interface from a given ONFI mode
  * @chip: The NAND chip
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
