Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4821B3AEE
	for <lists+linux-mtd@lfdr.de>; Wed, 22 Apr 2020 11:14:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a3cGfsG3fxm/R0eTalWvZxEPEwSTv306OrCTVeAqMOg=; b=RtnIrYcEdE1KKX
	DWhw2/aThR5nJl/4oXDB5Aw2QUFbIJGPt4rxugWh654Sd3+/bdlze3Ag1Xg6EtDupx6dgzf9JP76G
	yCXAUuxUSQXXSVUfHTG/EBKHfXRY4sUHr+L/VeVQ2XtDQgBwtCvJLxvhsX9vw1CcKfobqM0qvC18l
	uLvtZXDZgI6AduFJRMl6lT/B3GDHt4HGPywkIxQqzQyfyUnZ6LmyzWfpJGYtleKDN2CiVFVv8X7wu
	CCnW4Axzj5DWiN5qJX3TGZqyMB3q5i4rzY2n0GlXDd2Avwn+nZNzYipKY2svBiMyoxD+UvIO3GM6G
	3rXZaJ+B/2Ciqoe5TyZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRBSJ-0005oa-F2; Wed, 22 Apr 2020 09:14:07 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRBSB-0005ia-1F
 for linux-mtd@lists.infradead.org; Wed, 22 Apr 2020 09:14:01 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id B2B5F84BEED1CC65017F;
 Wed, 22 Apr 2020 17:13:39 +0800 (CST)
Received: from localhost.localdomain (10.67.165.24) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.487.0; Wed, 22 Apr 2020 17:13:31 +0800
From: Yicong Yang <yangyicong@hisilicon.com>
To: <tudor.ambarus@microchip.com>, <linux-mtd@lists.infradead.org>
Subject: [PATCH v3] mtd: spi-nor: Add support for s25fs128s1
Date: Wed, 22 Apr 2020 17:13:29 +0800
Message-ID: <1587546809-3797-1-git-send-email-yangyicong@hisilicon.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.67.165.24]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_021359_263354_AFA6426B 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: vigneshr@ti.com, sergei.shtylyov@cogentembedded.com, richard@nod.at,
 john.garry@huawei.com, linuxarm@huawei.com, miquel.raynal@bootlin.com,
 yangyicong@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Add support for Cypress s25fs128s1 flash. Previously the flash is
decoded as s25fl129p1 by mistake.

Add it in the flash info list to correctly decode. The flash also
needs a fixup for s25fs-s family. Further capability of the flash will
be parsed from bfpt.

The flash has been tested under SPI/DUAL/QUAD mode on hisi-sfc-v3xx
controller, all the write/read/erase works well.

Signed-off-by: Yicong Yang <yangyicong@hisilicon.com>
---
Change since v2:
- correct the flash name as s25fs128s1
- add test information in commit
- add fixup hooks for s25fs-s family. The patch is based on
  Sergei's patch for providing the fixup functions.
Link: https://lore.kernel.org/linux-mtd/191f8894-8392-0d85-62f2-49cfa0285144@cogentembedded.com/

Change since v1:
- rebase the patch on v5.7 rc1

 drivers/mtd/spi-nor/spansion.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mtd/spi-nor/spansion.c b/drivers/mtd/spi-nor/spansion.c
index eac1c22..8e733c7 100644
--- a/drivers/mtd/spi-nor/spansion.c
+++ b/drivers/mtd/spi-nor/spansion.c
@@ -50,6 +50,9 @@ static const struct flash_info spansion_parts[] = {
 	{ "s25fl512s",  INFO6(0x010220, 0x4d0080, 256 * 1024, 256,
 			      SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			      SPI_NOR_HAS_LOCK | USE_CLSR) },
+	{ "s25fs128s1",  INFO6(0x012018, 0x4d0181, 64 * 1024, 256,
+			SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | USE_CLSR),
+	  .fixups = &s25fs_s_fixups, },
 	{ "s25fs512s",  INFO6(0x010220, 0x4d0081, 256 * 1024, 256,
 			      SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | USE_CLSR)
 	  .fixups = &s25fs_s_fixups, },
-- 
2.8.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
