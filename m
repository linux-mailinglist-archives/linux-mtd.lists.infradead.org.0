Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C736A13B4B2
	for <lists+linux-mtd@lfdr.de>; Tue, 14 Jan 2020 22:49:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=slnoVE5zaG5h/QHwxMv6rQjeHN2aXZuYiiGdfguzjyc=; b=fkvikLqUgWncPM/vyfIblcclxD
	2c3T0I9m7Cmg6TA7VqTNMiOPvb//RNkwwWY/DylF89z4TpUWtx3jI6aE2wYpI6V19YI+cvyi7/EsS
	2wzHeQEahc0DZ97Vv7uvuG2THfdb8ONVE6becWTeQDpcIzIlC3F7rWDAuDqpzH0u+lMKMdoNWwYJD
	rGansNMQtme+/7oqKSAIQap2vUv7t08H3PZ4jjFGZ6p2z8+giKv4hit7Q2zmJ9ivsZltUXAUZx4gm
	/WAAlW3ovvz6Cd3RXwf4/6quBQbIowi1j1pjIcj0T2oMqBMM7Hmo68rbd6YgLydfT3UY5UyhXlgn9
	XKTFJTfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irU3b-0004bo-5m; Tue, 14 Jan 2020 21:49:03 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irU2y-0004Iv-JM; Tue, 14 Jan 2020 21:48:26 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 334DD1A0519;
 Tue, 14 Jan 2020 22:48:21 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 330881A0201;
 Tue, 14 Jan 2020 22:48:15 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id AAB41402A8;
 Wed, 15 Jan 2020 05:48:07 +0800 (SGT)
From: Han Xu <han.xu@nxp.com>
To: vkoul@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 esben@geanix.com, boris.brezillon@collabora.com
Subject: [PATCH 1/6] dmaengine: mxs: change the way to register probe function
Date: Wed, 15 Jan 2020 05:43:58 +0800
Message-Id: <1579038243-28550-2-git-send-email-han.xu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579038243-28550-1-git-send-email-han.xu@nxp.com>
References: <1579038243-28550-1-git-send-email-han.xu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_134824_773242_DA0CFAD0 
X-CRM114-Status: UNSURE (   6.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-imx@nxp.com, dmaengine@vger.kernel.org, han.xu@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

change the way to register probe function for mxs-dma

Signed-off-by: Han Xu <han.xu@nxp.com>
---
 drivers/dma/mxs-dma.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/dma/mxs-dma.c b/drivers/dma/mxs-dma.c
index 3039bba0e4d5..9deaaf4fc58f 100644
--- a/drivers/dma/mxs-dma.c
+++ b/drivers/dma/mxs-dma.c
@@ -760,7 +760,7 @@ static struct dma_chan *mxs_dma_xlate(struct of_phandle_args *dma_spec,
 				     ofdma->of_node);
 }
 
-static int __init mxs_dma_probe(struct platform_device *pdev)
+static int mxs_dma_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
 	const struct platform_device_id *id_entry;
@@ -869,10 +869,7 @@ static struct platform_driver mxs_dma_driver = {
 		.of_match_table = mxs_dma_dt_ids,
 	},
 	.id_table	= mxs_dma_ids,
+	.probe		= mxs_dma_probe,
 };
 
-static int __init mxs_dma_module_init(void)
-{
-	return platform_driver_probe(&mxs_dma_driver, mxs_dma_probe);
-}
-subsys_initcall(mxs_dma_module_init);
+module_platform_driver(mxs_dma_driver);
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
