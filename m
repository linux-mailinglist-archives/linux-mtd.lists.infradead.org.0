Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B56E81ED15E
	for <lists+linux-mtd@lfdr.de>; Wed,  3 Jun 2020 15:50:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U8AVYrW0g7/4oZRkMuWZxY34Awblg+Eah5AwczumuKk=; b=BBldxZks8EMe2d
	/DaE6g+z5XKvFK0LEE/YTRuy9Ae5eKCSBWQDauSGMv+b8MrdVQ20NYxbJbUdGCj45aki0EjyGXjPr
	dM2qlR+V5qEsCdn4ke1Abb6NbAx2inrKKIivT/vj6x/umjeEJUdfu6sznJO5dVB05U3d1yOcHwPpy
	vWqz3ExT4cwRsKwFpfqLr2lQNdDbPGMg5YvuB6psB6SsSLFvN2Q6/8vjL6ed8yohvWzbYqg+TadFT
	BOWzxH0Mzw8WanzHz77bzXh70gfTjKLOS2tIiTTHBffvMke8XMaRznBeN2ubJ5lEK5LTC0EFg2p2/
	Eu8RuKHTX6r7qL3fAMjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgTmc-0002Az-Kh; Wed, 03 Jun 2020 13:50:18 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgTlp-0001iw-4N
 for linux-mtd@lists.infradead.org; Wed, 03 Jun 2020 13:49:30 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 787DA2A3D6A;
 Wed,  3 Jun 2020 14:49:27 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Anton Vorontsov <anton@enomsg.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org
Subject: [PATCH 04/10] mtd: rawnand: fsl_upm: Use devm_kasprintf() to allocate
 the MTD name
Date: Wed,  3 Jun 2020 15:49:16 +0200
Message-Id: <20200603134922.1352340-5-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200603134922.1352340-1-boris.brezillon@collabora.com>
References: <20200603134922.1352340-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_064929_315869_9A4EC3B4 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This simplifies the init() error path and the remove() handler.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/fsl_upm.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/nand/raw/fsl_upm.c b/drivers/mtd/nand/raw/fsl_upm.c
index 9cf79c62ef22..a3e3a968891d 100644
--- a/drivers/mtd/nand/raw/fsl_upm.c
+++ b/drivers/mtd/nand/raw/fsl_upm.c
@@ -176,8 +176,9 @@ static int fun_chip_init(struct fsl_upm_nand *fun,
 		return -ENODEV;
 
 	nand_set_flash_node(&fun->chip, flash_np);
-	mtd->name = kasprintf(GFP_KERNEL, "0x%llx.%pOFn", (u64)io_res->start,
-			      flash_np);
+	mtd->name = devm_kasprintf(fun->dev, GFP_KERNEL, "0x%llx.%pOFn",
+				   (u64)io_res->start,
+				   flash_np);
 	if (!mtd->name) {
 		ret = -ENOMEM;
 		goto err;
@@ -190,8 +191,6 @@ static int fun_chip_init(struct fsl_upm_nand *fun,
 	ret = mtd_device_register(mtd, NULL, 0);
 err:
 	of_node_put(flash_np);
-	if (ret)
-		kfree(mtd->name);
 	return ret;
 }
 
@@ -318,7 +317,6 @@ static int fun_remove(struct platform_device *ofdev)
 	ret = mtd_device_unregister(mtd);
 	WARN_ON(ret);
 	nand_cleanup(chip);
-	kfree(mtd->name);
 
 	for (i = 0; i < fun->mchip_count; i++) {
 		if (fun->rnb_gpio[i] < 0)
-- 
2.25.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
