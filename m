Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 845D11A9683
	for <lists+linux-mtd@lfdr.de>; Wed, 15 Apr 2020 10:31:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a/2gw8OG2vbwrPtGAWRetaWyA9hNeTJ6K7kkyKDVJI0=; b=aG9WPlIwpSNUhr
	4VnD9PlPVGnuIqTUIKb3WDp4YVb/9whd+NztBwq+ZYqoB+n0u53wzMehx5e4+AefgtD5FWSpXlwD/
	JBQovv6VRsix+QDCoiCcsCqE4PnKY/N2aK3UyY6owP/f9dxJkL7OubFgy1xSAy0/d9RIuHp8iCUus
	MU6GdBFT0FlC8kcyoNqTuaYiaWRxVCMLqM4VWleDmVuDdmBOlKySfHX/TpxUHrJEYdVpmKBbw/h+K
	WUO9KdvNf/fR6HJQi3y9UhL33yz9oJvhi/deNFprL9cRI7GBXspbgl7L9FYu2AjPMcBKNyv7aZjO6
	C4odtCfz41gxl31VIW/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOdRc-0003vr-Af; Wed, 15 Apr 2020 08:30:52 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOdRU-0003uy-27
 for linux-mtd@lists.infradead.org; Wed, 15 Apr 2020 08:30:45 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id D2625B953BFCA8DB4DC5;
 Wed, 15 Apr 2020 16:30:38 +0800 (CST)
Received: from localhost.localdomain (10.67.165.24) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.487.0; Wed, 15 Apr 2020 16:30:32 +0800
From: Yicong Yang <yangyicong@hisilicon.com>
To: <linux-mtd@lists.infradead.org>
Subject: [PATCH v2] mtd: spi-nor: Add support for s25fs128s
Date: Wed, 15 Apr 2020 16:30:33 +0800
Message-ID: <1586939433-20861-1-git-send-email-yangyicong@hisilicon.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.67.165.24]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_013044_263798_A83C2509 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: vigneshr@ti.com, tudor.ambarus@microchip.com, richard@nod.at,
 linuxarm@huawei.com, yangyicong@hisilicon.com, miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Add support for Cypress s25fs128s flash. Previously the flash is
decoded as s25fl129p1 by mistake.

Add it in the flash info list to correctly decode. No functional
changes. Further capability of the flash will be parsed from bfpt.

Signed-off-by: Yicong Yang <yangyicong@hisilicon.com>
---
Change since v1:
- rebase the patch on v5.7 rc1

 drivers/mtd/spi-nor/spansion.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mtd/spi-nor/spansion.c b/drivers/mtd/spi-nor/spansion.c
index 6756202..01640c1 100644
--- a/drivers/mtd/spi-nor/spansion.c
+++ b/drivers/mtd/spi-nor/spansion.c
@@ -29,6 +29,8 @@ static const struct flash_info spansion_parts[] = {
 	{ "s25fl512s",  INFO6(0x010220, 0x4d0080, 256 * 1024, 256,
 			      SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			      SPI_NOR_HAS_LOCK | USE_CLSR) },
+	{ "s25fs128s",  INFO6(0x012018, 0x4d0181, 64 * 1024, 256,
+		SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | USE_CLSR) },
 	{ "s25fs512s",  INFO6(0x010220, 0x4d0081, 256 * 1024, 256,
 			      SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			      USE_CLSR) },
--
2.8.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
