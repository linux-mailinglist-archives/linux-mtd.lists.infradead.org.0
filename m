Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD4B1E7B81
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 13:18:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9TZWS3Bu8bVbuaqKDRLLF72qWZx/Yvf5RFB7QCI+VQs=; b=WDX1DlH55sOi1g
	lfZ95uSUVb7Wyn7YfAcCAxCjEtR23Acm2BX88iBW7d3Wpd1bCyItQs6yUTL0qJLRMtk46i3J1dAa7
	ntKGpPXzPR6zGQUYY739VIIzEoDUr9fJyslLFhHGNziLpOVV1t8chBHX8oYESJ7LEPR6hCWdabCP2
	yewmrsKvOWuDfkpCywd10/zt39MnsThWp6xPyajSYbw85N+jEbWlvFUObG2QzNldGFO50xjvqdV24
	4aZHm2HYsVJsCPK/WrmXb3luO/qY+OnwDjj/5d8ijf+C/vDu3KbyeIEvX0fknt/l5A/eYqkUxKfH0
	6dYlXPR4JVcx4sqkL1Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jed1l-000134-H5; Fri, 29 May 2020 11:18:17 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jecxM-0003QJ-Sk
 for linux-mtd@lists.infradead.org; Fri, 29 May 2020 11:13:46 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 20512240002;
 Fri, 29 May 2020 11:13:42 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v7 14/28] mtd: rawnand: timings: onfi_fill_data_interface
 timing mode is unsigned
Date: Fri, 29 May 2020 13:13:08 +0200
Message-Id: <20200529111322.7184-15-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200529111322.7184-1-miquel.raynal@bootlin.com>
References: <20200529111322.7184-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_041345_105095_6BF09001 
X-CRM114-Status: GOOD (  11.28  )
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

Turn this argument into an unsigned int, as it cannot be signed. This
also spares a check.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/internals.h    | 2 +-
 drivers/mtd/nand/raw/nand_timings.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/raw/internals.h b/drivers/mtd/nand/raw/internals.h
index 0f74509abc4c..bd10ec92f04a 100644
--- a/drivers/mtd/nand/raw/internals.h
+++ b/drivers/mtd/nand/raw/internals.h
@@ -87,7 +87,7 @@ int nand_erase_nand(struct nand_chip *chip, struct erase_info *instr,
 int onfi_fill_data_interface(struct nand_chip *chip,
 			     struct nand_data_interface *iface,
 			     enum nand_data_interface_type type,
-			     int timing_mode);
+			     unsigned int timing_mode);
 int nand_get_features(struct nand_chip *chip, int addr, u8 *subfeature_param);
 int nand_set_features(struct nand_chip *chip, int addr, u8 *subfeature_param);
 int nand_read_page_raw_notsupp(struct nand_chip *chip, u8 *buf,
diff --git a/drivers/mtd/nand/raw/nand_timings.c b/drivers/mtd/nand/raw/nand_timings.c
index ce6bb87db2e8..08dc381349fa 100644
--- a/drivers/mtd/nand/raw/nand_timings.c
+++ b/drivers/mtd/nand/raw/nand_timings.c
@@ -283,14 +283,14 @@ static const struct nand_data_interface onfi_sdr_timings[] = {
 int onfi_fill_data_interface(struct nand_chip *chip,
 			     struct nand_data_interface *iface,
 			     enum nand_data_interface_type type,
-			     int timing_mode)
+			     unsigned int timing_mode)
 {
 	struct onfi_params *onfi = chip->parameters.onfi;
 
 	if (type != NAND_SDR_IFACE)
 		return -EINVAL;
 
-	if (timing_mode < 0 || timing_mode >= ARRAY_SIZE(onfi_sdr_timings))
+	if (timing_mode >= ARRAY_SIZE(onfi_sdr_timings))
 		return -EINVAL;
 
 	*iface = onfi_sdr_timings[timing_mode];
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
