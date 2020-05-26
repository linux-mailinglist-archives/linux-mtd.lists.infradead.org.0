Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E901E1EC7
	for <lists+linux-mtd@lfdr.de>; Tue, 26 May 2020 11:38:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=econJLSSB7BWwoZL0qQn3FfAngKQA/VHhyNfbflZ2g0=; b=bHl1Ma6/thhOW0
	LxHurdTIh1Z8r2LtjMVEXQxlqLOm8oRpDeKlEdGMoi8UnwVaw95UivCQqYZDA53OcDxNzVemHVZx7
	xhUk7hTUJPDNflgknks+nV5UUVGC7p+6yVIVkDelWAqZ6tOU4Vc91rEmwWJ7PwrBAyOuvttlSRa+6
	xe7fwMHdQjUqFVvO/8nahzspxxL+Mt5/mlT6+8jVU9JGXnnctOlQBHDGMo5Tm1XNwGGB8iXE7Z/XI
	v3lqGC8EhTO37z4CatZUp+e9mxV+7IH5wmimdoI0eIMfXbXkX36M3rFpxmVBiEi1/c5FRT36Pbv3Y
	KjaNf6c71NsMcR0aQLGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdW2J-0005hw-Lc; Tue, 26 May 2020 09:38:15 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdW1a-0005E3-7k
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 09:37:31 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04Q9bOdJ068701;
 Tue, 26 May 2020 04:37:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590485844;
 bh=8lR2KMLTzuIQLJiQzbPvqQ1IDwSH4xQFn21M9HZ10po=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=SIhbRhdtVQNQVOddk2wUP7F8XY3BMD5n8LtsFBnsZM49dZP0br0kqJcOGL/F/AtNK
 q1IMZ/IESbiVrm/GjMRH5/oDfafNBxVdAvOI//tj3fBURXpL/9zaESvLvS4roLR7Mv
 ALD7TGvg/Xc9lXNASywpqgAwUaK4PdC0YlVW0+bs=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04Q9bO6P041269
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 26 May 2020 04:37:24 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 26
 May 2020 04:37:24 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 26 May 2020 04:37:24 -0500
Received: from ula0132425.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04Q9b9hL066907;
 Tue, 26 May 2020 04:37:20 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>, Mark Brown
 <broonie@kernel.org>
Subject: [PATCH v2 2/6] mtd: spi-nor: cadence-quadspi: Provide a way to
 disable DAC mode
Date: Tue, 26 May 2020 15:06:00 +0530
Message-ID: <20200526093604.11846-3-vigneshr@ti.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200526093604.11846-1-vigneshr@ti.com>
References: <20200526093604.11846-1-vigneshr@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_023730_349900_A714D439 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: marex@denx.de, Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, dinguyen@kernel.org,
 simon.k.r.goldschmidt@gmail.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org,
 Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>,
 linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Currently direct access mode is used on platforms that have AHB window
(memory mapped window) larger than flash size. This feature is limited
to TI platforms as non TI platforms have < 1MB of AHB window.
Therefore introduce a driver quirk to disable DAC mode and set it for
non TI compatibles. This is in preparation to move to spi-mem framework
where flash geometry cannot be known.

Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
---
 drivers/mtd/spi-nor/controllers/cadence-quadspi.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/controllers/cadence-quadspi.c b/drivers/mtd/spi-nor/controllers/cadence-quadspi.c
index 9b8554d44fac..8a9e17f79d8d 100644
--- a/drivers/mtd/spi-nor/controllers/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/controllers/cadence-quadspi.c
@@ -34,6 +34,7 @@
 
 /* Quirks */
 #define CQSPI_NEEDS_WR_DELAY		BIT(0)
+#define CQSPI_DISABLE_DAC_MODE		BIT(1)
 
 /* Capabilities mask */
 #define CQSPI_BASE_HWCAPS_MASK					\
@@ -1261,7 +1262,8 @@ static int cqspi_setup_flash(struct cqspi_st *cqspi, struct device_node *np)
 
 		f_pdata->registered = true;
 
-		if (mtd->size <= cqspi->ahb_size) {
+		if (mtd->size <= cqspi->ahb_size &&
+		    !(ddata->quirks & CQSPI_DISABLE_DAC_MODE)) {
 			f_pdata->use_direct_mode = true;
 			dev_dbg(nor->dev, "using direct mode for %s\n",
 				mtd->name);
@@ -1457,6 +1459,7 @@ static const struct dev_pm_ops cqspi__dev_pm_ops = {
 
 static const struct cqspi_driver_platdata cdns_qspi = {
 	.hwcaps_mask = CQSPI_BASE_HWCAPS_MASK,
+	.quirks = CQSPI_DISABLE_DAC_MODE,
 };
 
 static const struct cqspi_driver_platdata k2g_qspi = {
-- 
2.26.2


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
