Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 728C97E009
	for <lists+linux-mtd@lfdr.de>; Thu,  1 Aug 2019 18:22:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3BE+rymLym9CoJzfANyXyhwIuAGU8q6kg7m9sC5IpQg=; b=KrOsLpzml4Gjgi
	Z/TosAqoMOlh7iT+EupzRIjEtCsa0sBBIjZo0TGKIMNlmDVrjhV8d6adY9BvkMUULzXu7C3Cqvwwx
	BqYXQh0oRifBx7gEHP83h3ab2yRHaZ7HVuESMY8rrUOdYGoEYrz+F1Q+28744ZVL+kanqBB0CLwUr
	Qrm9R/Ubg++0k5yB0MgnSFLnU7ZV6UZGKbTZskBmzT934opUhfglCLArybBg6+O0KSYoXczta43cV
	i5ca2sYQZ2bDMvdpLuVqMYigfN5+tG0/ppwiQJGZV+8GCyTKHOcaGjoS8NtvcUUae9s9jCXlIPsAa
	tUdEvmqnh4gBoqdQupjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htDqK-0004UA-SX; Thu, 01 Aug 2019 16:22:16 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htDqC-0004Tb-C7
 for linux-mtd@lists.infradead.org; Thu, 01 Aug 2019 16:22:10 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x71GM2Jc123625;
 Thu, 1 Aug 2019 11:22:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1564676522;
 bh=zWbkatx0IfHL4ytXCT+nuKdGHgjjpQH55L93XjCsfk4=;
 h=From:To:CC:Subject:Date;
 b=QiHLZW0+D6IMwfELJPu72lV78UohZ6u8vep5YSAYQgoa4mwANo07d5EuduYuQManh
 OAhvXwqeT0U71RRB4VqWeSttu8I1W6wD1DCs+65PpMTVwt70nC3O9I/S41+u6EAD9S
 m1oER7p6PsZy1OjLLbYpI1NDIQv2uQzUFvFORAUA=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x71GM28W092699
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 1 Aug 2019 11:22:02 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 1 Aug
 2019 11:22:02 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 1 Aug 2019 11:22:02 -0500
Received: from a0132425.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x71GLxdA097075;
 Thu, 1 Aug 2019 11:22:00 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger
 <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, Tudor Ambarus
 <tudor.ambarus@microchip.com>
Subject: [PATCH v4 0/3] Merge m25p80 into spi-nor
Date: Thu, 1 Aug 2019 21:52:26 +0530
Message-ID: <20190801162229.28897-1-vigneshr@ti.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_092208_536512_A6C2C9F0 
X-CRM114-Status: GOOD (  13.02  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, Tomer Maimon <tmaimon77@gmail.com>,
 Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This is repost of patch 6 and 7 split from from Boris Brezillon's X-X-X
mode support series[1]

Background from cover letter for RFC[1]:
m25p80 is just a simple SPI NOR controller driver (a wrapper around the
SPI mem API). Not only it shouldn't be named after a specific SPI NOR
chip, but it also doesn't deserve a specific driver IMO, especially if
the end goal is to get rid of SPI NOR controller drivers found in
drivers/mtd/spi-nor/ and replace them by SPI mem drivers (which would
be placed in drivers/spi/). With this solution, we declare the SPI NOR
driver as a spi_mem_driver, just like the SPI NAND layer is declared as
a spi_mem driver (patch 1/2).
This solution also allows us to check at a fined-grain level (thanks to
the spi_mem_supports_op() function) which operations are supported and
which ones are not, while the original m25p80 logic was basing this
decision on the SPI_{RX,TX}_{DUAL,QUAD,OCTO} flags only (patch 2/2).

[1] https://patchwork.ozlabs.org/cover/982926/

Tested on TI' DRA7xx EVM with TI QSPI controller (a spi-mem driver) with
DMA (s25fl256) flash. I don't see any performance regression due to
bounce buffer copy introduced by this series
Also tested with cadence-quadspi (a spi-nor driver) driver

Boris Brezillon (2):
  mtd: spi-nor: Move m25p80 code in spi-nor.c
  mtd: spi-nor: Rework hwcaps selection for the spi-mem case

Vignesh Raghavendra (1):
  mtd: spi-nor: always use bounce buffer for register read/writes

 drivers/mtd/devices/Kconfig   |  18 -
 drivers/mtd/devices/Makefile  |   1 -
 drivers/mtd/devices/m25p80.c  | 347 ---------------
 drivers/mtd/spi-nor/Kconfig   |   2 +
 drivers/mtd/spi-nor/spi-nor.c | 806 +++++++++++++++++++++++++++++++---
 include/linux/mtd/spi-nor.h   |  24 +-
 6 files changed, 773 insertions(+), 425 deletions(-)
 delete mode 100644 drivers/mtd/devices/m25p80.c

-- 
2.22.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
