Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ABAC1E9EC6
	for <lists+linux-mtd@lfdr.de>; Mon,  1 Jun 2020 09:06:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NoDyoJaryn/FZaWSO2gS35asX1Q9+DKQSgKpYzCwDeg=; b=Z5KDyd8XtIM2i3
	tGIgMhwVsk9p7gFRNyXaAR/eL2bFqFbA1XKf2NWt+0srzeerHe3Me74tX2mYAD3+JTmKyyAt1OEw+
	YYFOQjd+e+YzZrxXF8QUcvYMVBva1HgQ+mti8M0UM2T7C3hj2WPdvtcwqsjFU9ThzZrWTb3qdrn8E
	+3WRuOIso99z03GtSU4f+p3WdlHyuJ2aa2nRUjN6wRofSQgNOCg1chMsPykKXeuJRxoshOIMRJuZQ
	WIIZ3TQ+88+QRzIXHIJQkyusNrtE2ngzC2F7bIN+qQ4rk8/tU3QKzqPgIOTQzxiaJqKpvuiTrAckZ
	BizhpBZPmp181hGxO9Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfeWc-000654-FA; Mon, 01 Jun 2020 07:06:22 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfeVt-0005Xc-QN
 for linux-mtd@lists.infradead.org; Mon, 01 Jun 2020 07:05:39 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05175W3d044596;
 Mon, 1 Jun 2020 02:05:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590995132;
 bh=DegpuAAOtveacacGvC3gvF7QuCQprjhaSA5yvZu1ThQ=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=mX+RUlI44zle5hUVBGww+M41cXpVGlxZM3q6EKSPg0WHmpbz9fCmqEiYqY+PinbrN
 X2zP81QBDpoRuooWXSAxH3NCKFmdwkuXri8yRigiUJs2ocVsgHR+igfthdqOSqqXq7
 vYec3bqX3hd1nYhPJk06VO3KF1/lqcs3dtNNTUq0=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05175W3o016853
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 1 Jun 2020 02:05:32 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 1 Jun
 2020 02:05:32 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 1 Jun 2020 02:05:32 -0500
Received: from ula0132425.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 051758s6016257;
 Mon, 1 Jun 2020 02:05:26 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>, Mark Brown
 <broonie@kernel.org>
Subject: [RESEND PATCH v3 4/8] mtd: spi-nor: cadence-quadspi: Fix error path
 on failure to acquire reset lines
Date: Mon, 1 Jun 2020 12:34:40 +0530
Message-ID: <20200601070444.16923-5-vigneshr@ti.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200601070444.16923-1-vigneshr@ti.com>
References: <20200601070444.16923-1-vigneshr@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_000537_968872_4E237FC2 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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

Make sure to undo the prior changes done by the driver when exiting due
to failure to acquire reset lines.

Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
Reviewed-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/controllers/cadence-quadspi.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/spi-nor/controllers/cadence-quadspi.c b/drivers/mtd/spi-nor/controllers/cadence-quadspi.c
index 379e22c11c87f..608ca657ff7f5 100644
--- a/drivers/mtd/spi-nor/controllers/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/controllers/cadence-quadspi.c
@@ -1359,13 +1359,13 @@ static int cqspi_probe(struct platform_device *pdev)
 	rstc = devm_reset_control_get_optional_exclusive(dev, "qspi");
 	if (IS_ERR(rstc)) {
 		dev_err(dev, "Cannot get QSPI reset.\n");
-		return PTR_ERR(rstc);
+		goto probe_reset_failed;
 	}
 
 	rstc_ocp = devm_reset_control_get_optional_exclusive(dev, "qspi-ocp");
 	if (IS_ERR(rstc_ocp)) {
 		dev_err(dev, "Cannot get QSPI OCP reset.\n");
-		return PTR_ERR(rstc_ocp);
+		goto probe_reset_failed;
 	}
 
 	reset_control_assert(rstc);
@@ -1384,7 +1384,7 @@ static int cqspi_probe(struct platform_device *pdev)
 			       pdev->name, cqspi);
 	if (ret) {
 		dev_err(dev, "Cannot request IRQ.\n");
-		goto probe_irq_failed;
+		goto probe_reset_failed;
 	}
 
 	cqspi_wait_idle(cqspi);
@@ -1401,7 +1401,7 @@ static int cqspi_probe(struct platform_device *pdev)
 	return ret;
 probe_setup_failed:
 	cqspi_controller_enable(cqspi, 0);
-probe_irq_failed:
+probe_reset_failed:
 	clk_disable_unprepare(cqspi->clk);
 probe_clk_failed:
 	pm_runtime_put_sync(dev);
-- 
2.26.2


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
