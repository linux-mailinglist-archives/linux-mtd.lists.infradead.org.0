Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B7E1E9ED7
	for <lists+linux-mtd@lfdr.de>; Mon,  1 Jun 2020 09:06:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=16qoBP9aOfTiktJAvFR4pALkruDKSSSs7vB9desOeHA=; b=p5UotSQQuAxURY
	akNM2aXIhX03SaW/HcP5GlykQ3xO8uWOyK2wA1/M3pzDHcRIW8uFEc+Dq+y7GgpCJn7nv52Dz6XkW
	CKcuegq8Zlp6Z3XS4WdErdg0ublGkFH1j20WFuBPiNPFnKuJLmyLa3XvVIuRoKrX3CltDpE5JPkwg
	oOHpYHXgfLlE5ve7MIwH4p1Pw5N0IHr37TrlDol0xH/Mv+9TTdC84CjdGbTmVF3i08Dtoh+LNPeH5
	9+QxMmt81IefzHZF919iljFA/W2EOK++dP7O1LDsyDh10BCrikWeb43DhsXf9nuTsjwFB4M8Rw1GX
	2lPMRfBhdz65MiRZlpeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfeX5-0006UB-MO; Mon, 01 Jun 2020 07:06:51 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfeW7-0005mP-HW
 for linux-mtd@lists.infradead.org; Mon, 01 Jun 2020 07:05:55 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05175QTg069541;
 Mon, 1 Jun 2020 02:05:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590995126;
 bh=M6H6i0Eh/2aEE2Hihio/iMjOVmuBrf3WccAscdjEyLs=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=V3Um2iZKeCIDPp82s7Hw7RTs/04nPa7j7mmYhd/IZRLx/OCD07nkxzIB9Dyjb93kk
 BFs3Wd+B0ky40j3DfxThgD7+ItxTmvZV7ppFJYfnXRsAopO2axDpymStgHIC1aPdvc
 1zFDV+qYB9ZimkTMLhL8c9lI/QJDvhqOvAaID0lE=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05175Qa0061997
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 1 Jun 2020 02:05:26 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 1 Jun
 2020 02:05:26 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 1 Jun 2020 02:05:26 -0500
Received: from ula0132425.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 051758s5016257;
 Mon, 1 Jun 2020 02:05:20 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>, Mark Brown
 <broonie@kernel.org>
Subject: [RESEND PATCH v3 3/8] mtd: spi-nor: cadence-quadspi: Don't initialize
 rx_dma_complete on failure
Date: Mon, 1 Jun 2020 12:34:39 +0530
Message-ID: <20200601070444.16923-4-vigneshr@ti.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200601070444.16923-1-vigneshr@ti.com>
References: <20200601070444.16923-1-vigneshr@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_000551_644634_635187E3 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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

If driver fails to acquire DMA channel then don't initialize
rx_dma_complete struct as it won't be used.

Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
Reviewed-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/controllers/cadence-quadspi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/spi-nor/controllers/cadence-quadspi.c b/drivers/mtd/spi-nor/controllers/cadence-quadspi.c
index 8a9e17f79d8d9..379e22c11c87f 100644
--- a/drivers/mtd/spi-nor/controllers/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/controllers/cadence-quadspi.c
@@ -1180,6 +1180,7 @@ static void cqspi_request_mmap_dma(struct cqspi_st *cqspi)
 	if (IS_ERR(cqspi->rx_chan)) {
 		dev_err(&cqspi->pdev->dev, "No Rx DMA available\n");
 		cqspi->rx_chan = NULL;
+		return;
 	}
 	init_completion(&cqspi->rx_dma_complete);
 }
-- 
2.26.2


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
