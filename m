Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C85CBFA1CD
	for <lists+linux-mtd@lfdr.de>; Wed, 13 Nov 2019 03:00:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5JgSxOxXpPFoYT1IKAtDJ1WJnUACHqpsRt7Xh3Cs+n0=; b=Lk7ULhtWI8kP5p
	vgVfj2hllI8jfMoBQHlV1n8kR+rhEcccF+J27F5Z4EC8mDcC+SRrETiL5T4MBCha49sOz6P4VdQdK
	zQp6+bZYjsNp8yO+1yM/qEt9xMGdasjA7MDC6mMWFl84cXaJS7GWu1spWxTI0263M75vB/0TyJdvP
	9GK1SO+YQM0caUnIiqKl7lDd94fykpOhrWBmKREPitUdZ4aCUFaXRHDYmtNT70heu7Rq7GNzgcL5L
	E60HfvccLuYmlDf7Pt3cN+HpRwZbprU8u1aE5b6VW4RZs2RygFUqv3L4CsO7pi2TdZn/f330ZkI5O
	SCp4Q++MqwRySIrVB+yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUhxR-00020n-Hc; Wed, 13 Nov 2019 02:00:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUhxH-0001yk-1d
 for linux-mtd@lists.infradead.org; Wed, 13 Nov 2019 02:00:24 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 151B222469;
 Wed, 13 Nov 2019 02:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573610422;
 bh=Z0bJMnUiULIar3u4GSZxW0PS+omYKWonl1kytRe6kjo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0cnFCIbty/94E3agiKsjeEcf2sWk39AlTCIvZomV9yCGod6708D2wloRRkoNS5Jyk
 0tIg8Cz4wd6VDmIAHAyLTPPprceld9SaJXxfMpgRrTrXkFC8hAj0MLEMo+bdoFbgdw
 2Ve1EY2CM7s/NtJsesDgQN+RTfSe/nGmhTE9/v7s=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 31/68] mtd: physmap_of: Release resources on error
Date: Tue, 12 Nov 2019 20:58:55 -0500
Message-Id: <20191113015932.12655-31-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015932.12655-1-sashal@kernel.org>
References: <20191113015932.12655-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_180023_109892_E5F572A8 
X-CRM114-Status: GOOD (  13.10  )
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
 drivers/mtd/maps/physmap_of.c | 27 +++++----------------------
 1 file changed, 5 insertions(+), 22 deletions(-)

diff --git a/drivers/mtd/maps/physmap_of.c b/drivers/mtd/maps/physmap_of.c
index 3fad35942895c..7a716bed11580 100644
--- a/drivers/mtd/maps/physmap_of.c
+++ b/drivers/mtd/maps/physmap_of.c
@@ -29,7 +29,6 @@
 struct of_flash_list {
 	struct mtd_info *mtd;
 	struct map_info map;
-	struct resource *res;
 };
 
 struct of_flash {
@@ -54,18 +53,10 @@ static int of_flash_remove(struct platform_device *dev)
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
 
@@ -223,10 +214,11 @@ static int of_flash_probe(struct platform_device *dev)
 
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
@@ -247,15 +239,6 @@ static int of_flash_probe(struct platform_device *dev)
 			return err;
 		}
 
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
