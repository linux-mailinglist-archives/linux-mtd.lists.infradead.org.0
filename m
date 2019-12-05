Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF3D113C12
	for <lists+linux-mtd@lfdr.de>; Thu,  5 Dec 2019 08:00:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mj/X9bI+rIpLsVMEcqHDHbagWtVJn2D5pNoI1fGA4Ng=; b=A91Y8vJKgHzAHR
	4zFFWKAYXYuXenzg9MRO4mVg0aImwe6x5D5+7KHvCwuZPYkdjhyyWEaJSIhebZW6ui9fwn3cgvFiJ
	5LSp1C7qlb5BzZmHs71e4Zu/ynZpWYDEpEHmlFoe7Hj57MFk5FSSrs2OE+1krXm69M4Wq3KplrSvp
	s9UweMOT7eCKE0rQg90Ki28crVlznVjVXpFdXuje8VawRdA1aLtRKAS75MrOW3XW8Vmw/ayoU0Bcn
	2l9jFt2YnQIsVMXO9PlZ7NgVy/irtv7NwMoNdIBxFW40fHdUGav8Lv0M97303JVetGzLRzLIztLX/
	ihKlddNpTxLZuL4WhzfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icl7E-0004br-4H; Thu, 05 Dec 2019 06:59:56 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icl6o-0004Q4-K8
 for linux-mtd@lists.infradead.org; Thu, 05 Dec 2019 06:59:32 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xB56xHPA103789;
 Thu, 5 Dec 2019 00:59:17 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1575529157;
 bh=ueZPp6LO7AwsgcUrcck9zS7JTw5R2EsDBcXIgwU8PY0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=S7oYTjygMD1D3vPeSlcENfaPR/lz4OcsaUMf+pBGhYuREqMCc0BvC9FoPDOKR04np
 4FWmR52j9rMqI5Yfqg2C8nTQXltYebVMgKnZySX1J0Uc5uij7bL0MtdDCvomtvJh59
 KzEbo+ZE4NgM8spNiuCOWy9ETar17mG5bvALo5+c=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xB56xHnn075951;
 Thu, 5 Dec 2019 00:59:17 -0600
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 5 Dec
 2019 00:59:16 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 5 Dec 2019 00:59:16 -0600
Received: from a0132425.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xB56xBT2097002; 
 Thu, 5 Dec 2019 00:59:14 -0600
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: [PATCH 1/3] mtd: spi-nor: Split mt25qu512a (n25q512a) entry into two
Date: Thu, 5 Dec 2019 12:29:33 +0530
Message-ID: <20191205065935.5727-2-vigneshr@ti.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191205065935.5727-1-vigneshr@ti.com>
References: <20191205065935.5727-1-vigneshr@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_225930_767391_70541B6A 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
 Ashish Kumar <Ashish.Kumar@nxp.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

mt25q family is different from n25q family of devices, even though manf
ID and device IDs are same. mt25q flash has bit 6 set in 5th byte of
READ ID response which can be used to distinguish it from n25q variant.
mt25q flashes support stateless 4 Byte addressing opcodes where as n25q
flashes don't. Therefore, have two separate entries for mt25qu512a and
n25q512a.

Fixes: 9607af6f857f ("mtd: spi-nor: Rename "n25q512a" to "mt25qu512a (n25q512a)"")
Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index f4afe123e9dc..01efea022990 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -2459,15 +2459,16 @@ static const struct flash_info spi_nor_ids[] = {
 	{ "n25q256a",    INFO(0x20ba19, 0, 64 * 1024,  512, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "n25q256ax1",  INFO(0x20bb19, 0, 64 * 1024,  512, SECT_4K | SPI_NOR_QUAD_READ) },
 	{ "n25q512ax3",  INFO(0x20ba20, 0, 64 * 1024, 1024, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
+	{ "mt25qu512a",  INFO6(0x20bb20, 0x104400, 64 * 1024, 1024,
+			       SECT_4K | USE_FSR | SPI_NOR_DUAL_READ |
+			       SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
+	{ "n25q512a",    INFO(0x20bb20, 0, 64 * 1024, 1024, SECT_4K |
+			      SPI_NOR_QUAD_READ) },
 	{ "n25q00",      INFO(0x20ba21, 0, 64 * 1024, 2048, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ | NO_CHIP_ERASE) },
 	{ "n25q00a",     INFO(0x20bb21, 0, 64 * 1024, 2048, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ | NO_CHIP_ERASE) },
 	{ "mt25ql02g",   INFO(0x20ba22, 0, 64 * 1024, 4096,
 			      SECT_4K | USE_FSR | SPI_NOR_QUAD_READ |
 			      NO_CHIP_ERASE) },
-	{ "mt25qu512a (n25q512a)", INFO(0x20bb20, 0, 64 * 1024, 1024,
-					SECT_4K | USE_FSR | SPI_NOR_DUAL_READ |
-					SPI_NOR_QUAD_READ |
-					SPI_NOR_4B_OPCODES) },
 	{ "mt25qu02g",   INFO(0x20bb22, 0, 64 * 1024, 4096, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ | NO_CHIP_ERASE) },
 
 	/* Micron */
-- 
2.24.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
