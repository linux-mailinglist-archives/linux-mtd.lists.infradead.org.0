Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E86DA1997
	for <lists+linux-mtd@lfdr.de>; Thu, 29 Aug 2019 14:08:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4Q8TDe2lPDUoG1Um/72O+0QFfWKxBrnQULTebmFZrjQ=; b=D/vIrZ+3nl2Uvbehsdr5vfFkIH
	AlpIKcfaUHLQMJra13Rfk+eRhKmhXvQVjGG8DghpeKZ57KdbIizS6DAZzFzKW/oIsqyo8UsZgn4CR
	70Gs0qM4jN+/9UkfrZ89J7ldz4+E3uc5UqNzCCmPsFXae0oHXE9qLTzZUJtGq5McVFk+wYz0zJ9mv
	lQWsEL2YRM5W6ebdw1VlBCjZrV6dj7JOYG6DhHy4Jg64+CDrIvh2eTLjVO5jd05W7+ndK2RD3E5UI
	mZB1i2lWbKDZNf57jFETcr6yVVeOIZ9bK0u1CYOjpfjvq0iJk8yyI3YHUf3n84SM1hdjuSeLBdRU1
	Fj81hiqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3JDh-0006AQ-Up; Thu, 29 Aug 2019 12:08:06 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3JDO-00060Y-CA
 for linux-mtd@lists.infradead.org; Thu, 29 Aug 2019 12:07:48 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 1EB45200767;
 Thu, 29 Aug 2019 14:07:43 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 98460200336;
 Thu, 29 Aug 2019 14:07:37 +0200 (CEST)
Received: from lsv03124.swis.in-blr01.nxp.com (lsv03124.swis.in-blr01.nxp.com
 [92.120.146.121])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 92A3B402DE;
 Thu, 29 Aug 2019 20:07:30 +0800 (SGT)
From: Ashish Kumar <Ashish.Kumar@nxp.com>
To: tudor.ambarus@microchip.com, marek.vasut@gmail.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com, linux-mtd@lists.infradead.org
Subject: [PATCH v4] mtd: spi-nor: Rename n25q512a to mt25qu512a(n25q512a)
Date: Thu, 29 Aug 2019 17:37:25 +0530
Message-Id: <1567080445-32695-2-git-send-email-Ashish.Kumar@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567080445-32695-1-git-send-email-Ashish.Kumar@nxp.com>
References: <1567080445-32695-1-git-send-email-Ashish.Kumar@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_050746_546180_ECDD8893 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Kuldeep Singh <kuldeep.singh@nxp.com>, linux-kernel@vger.kernel.org,
 Ashish Kumar <Ashish.Kumar@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

mt25qu512a is rebranded after its spinoff from STM, so it is
different only in term of operating frequency, JEDEC id
is same as that of n25q512a.
SPI_NOR_4B_OPCODES is appended to flash property.
This flash is tested for Single I/O and QUAD I/O mode on LS1046FRWY.

Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
Signed-off-by: Ashish Kumar <Ashish.Kumar@nxp.com>
Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>
---
v4:
-Reword commit message as per review comments from
tudor.
- split into seperate patch 
v3:
-Reword commits msg
-rebase to top of mtd-linux spi-nor/next
v2:
Incorporate review comments from Vignesh

 drivers/mtd/spi-nor/spi-nor.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 73172d7f512b..b585f3fee4f0 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1876,7 +1876,18 @@ static const struct flash_info spi_nor_ids[] = {
 	{ "n25q128a13",  INFO(0x20ba18, 0, 64 * 1024,  256, SECT_4K | SPI_NOR_QUAD_READ) },
 	{ "n25q256a",    INFO(0x20ba19, 0, 64 * 1024,  512, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "n25q256ax1",  INFO(0x20bb19, 0, 64 * 1024,  512, SECT_4K | SPI_NOR_QUAD_READ) },
-	{ "n25q512a",    INFO(0x20bb20, 0, 64 * 1024, 1024, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
+
+	/* Micron */
+	/* n25q512a is rebraned as mt25qu512a after spin-off from ST,
+	 * JEDEC id remains same.
+	 * Operational frequency and Read Performance has increased
+	 */
+	{
+		"mt25qu512a(n25q512a)", INFO(0x20bb20, 0, 64 * 1024, 1024,
+			SECT_4K | USE_FSR | SPI_NOR_DUAL_READ |
+			SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES)
+	},
+
 	{ "n25q512ax3",  INFO(0x20ba20, 0, 64 * 1024, 1024, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
 	{ "n25q00",      INFO(0x20ba21, 0, 64 * 1024, 2048, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ | NO_CHIP_ERASE) },
 	{ "n25q00a",     INFO(0x20bb21, 0, 64 * 1024, 2048, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ | NO_CHIP_ERASE) },
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
