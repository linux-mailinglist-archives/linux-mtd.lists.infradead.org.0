Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2DF1FB180
	for <lists+linux-mtd@lfdr.de>; Tue, 16 Jun 2020 15:03:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GbvWo7ixsWPCF1TPuH/bSMzV0ZINO8ay/SSwqo8J8zc=; b=Bqwam+kWj3p22e
	RRok5YX7cLy4yanfoBIcOY1F0zd8sMYBxCQeSKru2qTRHal8anbpuHGiBZs0hp1CkJ3uqYVygtbZd
	aylBYVVRjBPIwsRHWXqaDCNMtZPPVLiQ1SRL47X5OTvPALHVHECC3F8SqUtUZx9XdBSdKZ51nKCvq
	zDk2u2nlC5AOxFc0MF6+81kVs4WutEcpxd4tUlLSIxziUrE7KWmM7ng3Du+01DjFyYG6soeBSxrji
	4HBtWAFngUDTDqnALHO88ryqZt8dr2PorHLbEihTDGFXFwTgXgS6hfQ+2AmC7mnv14Mg4Js+WA2Gk
	2X+Nw2825YZCHBmoyr2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlBFU-0000u9-5g; Tue, 16 Jun 2020 13:03:32 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlBF7-0000k4-Qh
 for linux-mtd@lists.infradead.org; Tue, 16 Jun 2020 13:03:11 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 388677838EE962A5220F;
 Tue, 16 Jun 2020 21:03:01 +0800 (CST)
Received: from localhost.localdomain (10.67.165.24) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.487.0; Tue, 16 Jun 2020 21:02:53 +0800
From: Yicong Yang <yangyicong@hisilicon.com>
To: <tudor.ambarus@microchip.com>, <linux-mtd@lists.infradead.org>
Subject: [PATCH 2/2] mtd: spi-nor: Disable the flash quad mode in
 spi_nor_restore()
Date: Tue, 16 Jun 2020 21:02:27 +0800
Message-ID: <1592312547-19239-3-git-send-email-yangyicong@hisilicon.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1592312547-19239-1-git-send-email-yangyicong@hisilicon.com>
References: <1592312547-19239-1-git-send-email-yangyicong@hisilicon.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.165.24]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_060310_031902_EA55F0A7 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 me@yadavpratyush.com, john.garry@huawei.com, linuxarm@huawei.com,
 yangyicong@hisilicon.com, alexander.sverdlin@nokia.com,
 miquel.raynal@bootlin.com, p.yadav@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

If the flash's quad mode is enabled, it'll remain in the quad mode when
it's removed. If we drive the flash next time in SPI/Dual mode, then
problem occurs as the flash's quad enable bit is not cleared.

Disable the quad mode in spi_nor_restore(), the flash will leave
quad mode when remove. This will make sure the flash always enter the
correct mode when loaded.

Signed-off-by: Yicong Yang <yangyicong@hisilicon.com>
Reviewed-by: Pratyush Yadav <p.yadav@ti.com>
---
 drivers/mtd/spi-nor/core.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index ad5498f..4c9d88b 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -3002,6 +3002,8 @@ void spi_nor_restore(struct spi_nor *nor)
 	if (nor->addr_width == 4 && !(nor->flags & SNOR_F_4B_OPCODES) &&
 	    nor->flags & SNOR_F_BROKEN_RESET)
 		nor->params->set_4byte_addr_mode(nor, false);
+
+	spi_nor_quad_enable(nor, false);
 }
 EXPORT_SYMBOL_GPL(spi_nor_restore);
 
-- 
2.8.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
