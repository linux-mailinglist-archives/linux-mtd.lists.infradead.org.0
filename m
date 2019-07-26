Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A79277338
	for <lists+linux-mtd@lfdr.de>; Fri, 26 Jul 2019 23:09:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HY0kxCwzSp7+Mrlpdv25cUvxCge5YH1eFOG5XkiQXLM=; b=WECQ6o4CfWnQCS
	3168QZmkp/A23M2Rn+t9+9sVxSsNoYiU6ZMwMzm7aXxZT8FnFVNlhy0ukeaI19LiOCTL7MCA71iTs
	XCVSgXdbs5lcxAjzMtn2nJCHmFnxPAgJ2HbSSBmtvu/32UfyA3HSsDoXe8QNWNxwSeIO+WxbrcOAP
	WTyGk5ehlYC42O9WUxCWdJw57HqEFDHMKP2NkD/HDUloaEK0MJ8ZFNfRd9wj6sTIfzVgdYxswv/VB
	cbVRo+R8JruwLsiggUtuQOFXE0zrdwg0IC1J6+uooX9EUnd6SmANU3fAMP6BOP8ntCTtfPDqCt5Un
	rx9Ic90PPKMUNzlhX/Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr7Sb-00086z-2K; Fri, 26 Jul 2019 21:09:05 +0000
Received: from [213.175.92.62] (helo=mail.pbx.lv)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hr7SJ-00086T-0r
 for linux-mtd@lists.infradead.org; Fri, 26 Jul 2019 21:08:48 +0000
Received: from localhost.localdomain (balticom-200-108.balticom.lv
 [83.99.200.108])
 by mail.pbx.lv (MailSystem) with ESMTPSA id EE5D21A60A4;
 Sat, 27 Jul 2019 00:08:38 +0300 (EEST)
From: Roman Yeryomin <roman@advem.lv>
To: linux-mtd <linux-mtd@lists.infradead.org>
Subject: [PATCH 1/2] mtd: spi-nor: fix GigaDevice quad_enable
Date: Sat, 27 Jul 2019 00:08:30 +0300
Message-Id: <20190726210830.1932-1-roman@advem.lv>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_140847_246724_EA15DACC 
X-CRM114-Status: UNSURE (   6.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Marek Vasut <marek.vasut@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

According to datasheets all GD devices are capable of quad mode, which
is enabled via Status Register-2, bit 1 (S9). This corresponds to
Spansion SR/CR operations. Unfortunately only gd25q256 datasheet is
clear about Quad Enable Requirements (QER), others have no such
information in datasheets.
So define quad_enable for all GD devices to be sure.
Also gd25q256 is an exception. There are two versions: C and D.
First one uses S6 bit (like described in e27072851bf7d) but the latter
uses S9 bit like others. To add support for D this should be handled
differently, so, to retain compatibility, leave gd25q256 quad_enable
callback intact.

Signed-off-by: Roman Yeryomin <roman@advem.lv>
---
 drivers/mtd/spi-nor/spi-nor.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 6e13bbd1aaa5..d598efb57f20 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1764,31 +1764,37 @@ static const struct flash_info spi_nor_ids[] = {
 		"gd25q16", INFO(0xc84015, 0, 64 * 1024,  32,
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
+			.quad_enable = spansion_read_cr_quad_enable,
 	},
 	{
 		"gd25q32", INFO(0xc84016, 0, 64 * 1024,  64,
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
+			.quad_enable = spansion_read_cr_quad_enable,
 	},
 	{
 		"gd25lq32", INFO(0xc86016, 0, 64 * 1024, 64,
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
+			.quad_enable = spansion_read_cr_quad_enable,
 	},
 	{
 		"gd25q64", INFO(0xc84017, 0, 64 * 1024, 128,
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
+			.quad_enable = spansion_read_cr_quad_enable,
 	},
 	{
 		"gd25lq64c", INFO(0xc86017, 0, 64 * 1024, 128,
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
+			.quad_enable = spansion_read_cr_quad_enable,
 	},
 	{
 		"gd25q128", INFO(0xc84018, 0, 64 * 1024, 256,
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
+			.quad_enable = spansion_read_cr_quad_enable,
 	},
 	{
 		"gd25q256", INFO(0xc84019, 0, 64 * 1024, 512,
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
