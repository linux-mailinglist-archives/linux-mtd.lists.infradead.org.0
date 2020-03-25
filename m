Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64399191F93
	for <lists+linux-mtd@lfdr.de>; Wed, 25 Mar 2020 04:12:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OlluvwKULVxqdm2Y27aYGNXz/r8nNdClmxyAnkj7Sek=; b=YRH0J8SfcSfV9M
	T1O0VBMNdO24W0k+juK/pvzW8t4FIl5XexlAuXLSa6hLibHpcV5ujVcSPMOVqnl7NAbAD8En7GtwS
	WF7wO98u5/acoJ429j0P2QuqmzZcaWPArWnCJgbmfUxtBTOIrxwVFhFI60QFU+pPmTJKZ8af78SRj
	tRp5nWahwGnHy8Q6/6HQGE+cRFUa8S9J8VCxMmcAKKbUq1nWko5V/3N1B+OBuPkYe2x9/CQ+XMQUx
	wira6ai5YJL1AS/ItJBrx5e2gHPWBFOSNe7MwfXcdL6+xcNxQ3njqfr5nHOXgyQioP3HAl8ijtlb8
	YD+YLxuR51jeFdB2ZS7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGwSp-0003gF-Vd; Wed, 25 Mar 2020 03:12:19 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGwSi-0003fH-Q7
 for linux-mtd@lists.infradead.org; Wed, 25 Mar 2020 03:12:14 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id DB85197FB984ACAF3F04;
 Wed, 25 Mar 2020 11:11:53 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.487.0; Wed, 25 Mar 2020 11:11:44 +0800
From: chenxiang <chenxiang66@hisilicon.com>
To: <js07.lee@samsung.com>, <michael@walle.cc>, <vigneshr@ti.com>
Subject: [PATCH] mtd: spi-nor: Enable locking for n25q128a11
Date: Wed, 25 Mar 2020 11:07:43 +0800
Message-ID: <1585105663-199127-1-git-send-email-chenxiang66@hisilicon.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_201213_025658_944EE0B3 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Xiang Chen <chenxiang66@hisilicon.com>, john.garry@huawei.com,
 linux-mtd@lists.infradead.org, linuxarm@huawei.com,
 Tudor.Ambarus@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Xiang Chen <chenxiang66@hisilicon.com>

As 4bit block protection pathset for some micron models are merged,
n25q128a11 also uses 4 bit Block Protection scheme, so enable locking
for it. Tested it on n25q128a11, the locking functions work well.

Signed-off-by: Xiang Chen <chenxiang66@hisilicon.com>
---
 drivers/mtd/spi-nor/micron-st.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/micron-st.c b/drivers/mtd/spi-nor/micron-st.c
index 6c034b9..02c0b53 100644
--- a/drivers/mtd/spi-nor/micron-st.c
+++ b/drivers/mtd/spi-nor/micron-st.c
@@ -29,7 +29,9 @@ static const struct flash_info st_parts[] = {
 	{ "n25q064a",    INFO(0x20bb17, 0, 64 * 1024,  128,
 			      SECT_4K | SPI_NOR_QUAD_READ) },
 	{ "n25q128a11",  INFO(0x20bb18, 0, 64 * 1024,  256,
-			      SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
+			      SECT_4K | USE_FSR | SPI_NOR_QUAD_READ |
+			      SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB |
+			      SPI_NOR_4BIT_BP | SPI_NOR_BP3_SR_BIT6) },
 	{ "n25q128a13",  INFO(0x20ba18, 0, 64 * 1024,  256,
 			      SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
 	{ "mt25ql256a",  INFO6(0x20ba19, 0x104400, 64 * 1024,  512,
-- 
2.8.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
