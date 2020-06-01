Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1821E9D80
	for <lists+linux-mtd@lfdr.de>; Mon,  1 Jun 2020 07:49:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZxSBvfAhqe0yrDPJ98SHji0+rZKNtQzCSRIGJkt+Lbo=; b=HjrSexg5ZT3bWu
	SOe/yBtyCZ3cWl52r+W9KJ5Q1s1Fbl1sDZoTdtdETB3PocVYhIJFTWKGVzomjqsf+VjZ+/A9lQwfB
	WlqN1Z4+fHCc3KlA5tdgzPfaBLXwb49PLomH047LeQjfsGA5WfcDQD7VLaxpYu7uHPuUaBEY+4h+k
	q36CkLNWQkna2aniE6DjfomMBnMTgztldIrN34pKbRavf4w79ZwiRHarmPjtjMet8dLelfLfdMAYk
	EnN89T2RGR7aFK1/XYMXvoAx3d2kQ1WbDPtZ0Rd6dJrvzMUBIBMbhoUGZ9cs805Wlf2W2MHZM6g/0
	RcJlBElUA5f++Tl/vAtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfdJm-0001jF-6Z; Mon, 01 Jun 2020 05:49:02 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfdIj-00010d-6C
 for linux-mtd@lists.infradead.org; Mon, 01 Jun 2020 05:47:59 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0515lqpQ051203;
 Mon, 1 Jun 2020 00:47:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590990472;
 bh=MIdkDQG6CuVS3yatoLyRmCxzVE3aHgede0DnpP7n3yc=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=GYpvmEuEZEZMZdG8NI66lZZetG1lLwBxsDBznGlTx813fkZucCJ2zCJecU+/i3tSR
 W+OEp4NSKFcN6p5eCsF9+4u0usVvgf+TQAXGHQ0O0eOriUKXcC37K0jLF+2Q5WhfGb
 CoJ9ojq7nJgJ+r2JxtVCGhAwOdum9t82PxxKGpjg=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0515lqts031971
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 1 Jun 2020 00:47:52 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 1 Jun
 2020 00:47:51 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 1 Jun 2020 00:47:51 -0500
Received: from ula0132425.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0515lRPl038289;
 Mon, 1 Jun 2020 00:47:48 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>, Mark Brown
 <broonie@kernel.org>
Subject: [PATCH v3 5/8] mtd: spi-nor: cadence-quadspi: Handle probe deferral
 while requesting DMA channel
Date: Mon, 1 Jun 2020 11:17:22 +0530
Message-ID: <20200601054725.2060-6-vigneshr@ti.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200601054725.2060-1-vigneshr@ti.com>
References: <20200601054725.2060-1-vigneshr@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_224757_763752_434243FF 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [198.47.19.142 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

dma_request_chan_by_mask() can throw EPROBE_DEFER if DMA provider
is not yet probed. Currently driver just falls back to using PIO mode
(which is less efficient) in this case. Instead return probe deferral
error as is so that driver will be re probed once DMA provider is
available.

Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
---
 .../mtd/spi-nor/controllers/cadence-quadspi.c  | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/spi-nor/controllers/cadence-quadspi.c b/drivers/mtd/spi-nor/controllers/cadence-quadspi.c
index 608ca657ff7f..0570ebca135a 100644
--- a/drivers/mtd/spi-nor/controllers/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/controllers/cadence-quadspi.c
@@ -1169,7 +1169,7 @@ static void cqspi_controller_init(struct cqspi_st *cqspi)
 	cqspi_controller_enable(cqspi, 1);
 }
 
-static void cqspi_request_mmap_dma(struct cqspi_st *cqspi)
+static int cqspi_request_mmap_dma(struct cqspi_st *cqspi)
 {
 	dma_cap_mask_t mask;
 
@@ -1178,11 +1178,16 @@ static void cqspi_request_mmap_dma(struct cqspi_st *cqspi)
 
 	cqspi->rx_chan = dma_request_chan_by_mask(&mask);
 	if (IS_ERR(cqspi->rx_chan)) {
-		dev_err(&cqspi->pdev->dev, "No Rx DMA available\n");
+		int ret = PTR_ERR(cqspi->rx_chan);
+
+		if (ret != -EPROBE_DEFER)
+			dev_err(&cqspi->pdev->dev, "No Rx DMA available\n");
 		cqspi->rx_chan = NULL;
-		return;
+		return ret;
 	}
 	init_completion(&cqspi->rx_dma_complete);
+
+	return 0;
 }
 
 static const struct spi_nor_controller_ops cqspi_controller_ops = {
@@ -1269,8 +1274,11 @@ static int cqspi_setup_flash(struct cqspi_st *cqspi, struct device_node *np)
 			dev_dbg(nor->dev, "using direct mode for %s\n",
 				mtd->name);
 
-			if (!cqspi->rx_chan)
-				cqspi_request_mmap_dma(cqspi);
+			if (!cqspi->rx_chan) {
+				ret = cqspi_request_mmap_dma(cqspi);
+				if (ret == -EPROBE_DEFER)
+					goto err;
+			}
 		}
 	}
 
-- 
2.26.2


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
