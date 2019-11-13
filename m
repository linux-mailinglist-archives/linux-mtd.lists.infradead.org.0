Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D03FA16E
	for <lists+linux-mtd@lfdr.de>; Wed, 13 Nov 2019 02:58:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3w/5L5BKyaXTrezs5pcZUEsE6RVd7EAK7frDfF+q4Bg=; b=czEGDTH4qFiMrZ
	HfbpsMBASwseE8RKjsIuYSc9+buz4lw9uTPN7Y10RuWCZ4QcNLRgQtBCYVP9CIuGmmPvs+NcSNzS7
	KaPXJE833jmNDtVNyWTf2joZgQV76g5DbrcVyWqy4inFxANuwTwIKfVkUrDcKmZJg67KAUiG8u7jB
	NMAX6h7YiE/ZhVOKMg5tjo/8J7PX1OIQ0QGInSXFEYG6+1LKVuNgKF+2BoS7uCoAB6W4esq2Gm7Zw
	tPxlVon3nxMpPeMArSdLph3bGGLms9yKABohFzYyXXcYenDsdjdhXaxCXGME79nqdqDRm0K72HepD
	uGDL+kr7fi6TkDPeQwDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUhux-0007lt-9P; Wed, 13 Nov 2019 01:57:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUhum-0007lM-NI
 for linux-mtd@lists.infradead.org; Wed, 13 Nov 2019 01:57:50 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B68A42245A;
 Wed, 13 Nov 2019 01:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573610268;
 bh=AbhhGJjH9ocIp2u3UGP37MT5HgjAL/lrgf9N9EduUYw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=G+yEkN0bKXLbcE0O7OEJZxC2bbj35wpmI1fNhySI5oyrRIVL7ZZcQOKo/XzqoNuZl
 OVjbv6diqjqJea23+crHP36+mKbwmmslU5g0t/DBE1sULtRm3BqGSoxSun5C/mVJRu
 +3hVStrmQmZ81bg4jL5xHDL3irosi8YgaJELhJNI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 057/115] mtd: physmap_of: Release resources on
 error
Date: Tue, 12 Nov 2019 20:55:24 -0500
Message-Id: <20191113015622.11592-57-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015622.11592-1-sashal@kernel.org>
References: <20191113015622.11592-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_175748_775675_24279294 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>,
 Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>,
 linux-mtd@lists.infradead.org, Boris Brezillon <boris.brezillon@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>

[ Upstream commit ef0de747f7ad179c7698a5b0e28db05f18ecbf57 ]

During probe, if there was an error the memory region and the memory
map were not properly released.This can lead a system unusable if
deferred probe is in use.

Replace mem_request and map with devm_ioremap_resource

Signed-off-by: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
Signed-off-by: Boris Brezillon <boris.brezillon@bootlin.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/mtd/maps/physmap_of_core.c | 27 +++++----------------------
 1 file changed, 5 insertions(+), 22 deletions(-)

diff --git a/drivers/mtd/maps/physmap_of_core.c b/drivers/mtd/maps/physmap_of_core.c
index b1bd4faecfb25..5d8399742c754 100644
--- a/drivers/mtd/maps/physmap_of_core.c
+++ b/drivers/mtd/maps/physmap_of_core.c
@@ -30,7 +30,6 @@
 struct of_flash_list {
 	struct mtd_info *mtd;
 	struct map_info map;
-	struct resource *res;
 };
 
 struct of_flash {
@@ -55,18 +54,10 @@ static int of_flash_remove(struct platform_device *dev)
 			mtd_concat_destroy(info->cmtd);
 	}
 
-	for (i = 0; i < info->list_size; i++) {
+	for (i = 0; i < info->list_size; i++)
 		if (info->list[i].mtd)
 			map_destroy(info->list[i].mtd);
 
-		if (info->list[i].map.virt)
-			iounmap(info->list[i].map.virt);
-
-		if (info->list[i].res) {
-			release_resource(info->list[i].res);
-			kfree(info->list[i].res);
-		}
-	}
 	return 0;
 }
 
@@ -214,10 +205,11 @@ static int of_flash_probe(struct platform_device *dev)
 
 		err = -EBUSY;
 		res_size = resource_size(&res);
-		info->list[i].res = request_mem_region(res.start, res_size,
-						       dev_name(&dev->dev));
-		if (!info->list[i].res)
+		info->list[i].map.virt = devm_ioremap_resource(&dev->dev, &res);
+		if (IS_ERR(info->list[i].map.virt)) {
+			err = PTR_ERR(info->list[i].map.virt);
 			goto err_out;
+		}
 
 		err = -ENXIO;
 		width = of_get_property(dp, "bank-width", NULL);
@@ -240,15 +232,6 @@ static int of_flash_probe(struct platform_device *dev)
 		if (err)
 			goto err_out;
 
-		err = -ENOMEM;
-		info->list[i].map.virt = ioremap(info->list[i].map.phys,
-						 info->list[i].map.size);
-		if (!info->list[i].map.virt) {
-			dev_err(&dev->dev, "Failed to ioremap() flash"
-				" region\n");
-			goto err_out;
-		}
-
 		simple_map_init(&info->list[i].map);
 
 		/*
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
