Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56AF31BEC1B
	for <lists+linux-mtd@lfdr.de>; Thu, 30 Apr 2020 00:34:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zYlyfsGbQoW87xFTV+09ztb1/yBcG9Tijz+aauvPRDA=; b=mCw0UtM7fjRuU9
	LWw0r8QJx4OrvPszmJ1F+UDOHluT73CwcdEl9xaEDljBs9zHJyADiFLswGfwPSHsilGBdPMVAltlP
	IHItn1voVTNSmGMFJUh79OtC1gtbQnFdAI/81KQBt2FmiNsbjfWNpf7bjuF9YxAM4TJvgNLa7L66T
	8SU4Lbjrzjp8YoW8MIcfqjnokfydkoaGO3HLEKNHOq19CzlLFodkaalNV+70c8bA6WK0wZK2sXD/i
	A0Un1aT1ybxkBmZWIc2JedOTMhIgzHRfsA4fHs2jccAquD/Kcev+V+8UscUiaRhYFLtVtkPaVgAPA
	ZJGTQOR0A1O60e7u2U5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTvHL-0006BV-9U; Wed, 29 Apr 2020 22:34:07 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTvFL-0004Tb-Ot; Wed, 29 Apr 2020 22:32:06 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id A4B5F2A1735;
 Wed, 29 Apr 2020 23:31:58 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org
Subject: [PATCH 0/3] mtd: rawnand: Get rid of the cmx270 driver
Date: Thu, 30 Apr 2020 00:31:31 +0200
Message-Id: <20200429223134.789322-1-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_153203_944458_CDA86974 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Arnd Bergmann <arnd@arndb.de>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Mike Rapoport <mike@compulab.co.il>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello,

As part of my attempt to convert all NAND drivers to exec_op() I noticed
the cmx270 board didn't really deserve a custom driver since other boards
using the same SoC (em-x270 to name one) are using the gen_nand driver.
I think the only issue with the CM-X270 is that the chip is connected
to D[16:23] (or D[16:31] if it's a 16bit bus). Adjusting the mem
resource offset should do the trick.

I hope someone still has a board to test that.

Regards,

Boris

Boris Brezillon (3):
  ARM: pxa: cm-x270: Use gen_nand to expose the NAND device
  ARM: pxa: Stop selecting CONFIG_MTD_NAND_CM_X270
  mtd: rawnand: Remove the cmx270 NAND controller driver

 arch/arm/configs/cm_x2xx_defconfig |   1 -
 arch/arm/configs/pxa_defconfig     |   1 -
 arch/arm/mach-pxa/cm-x270.c        | 131 ++++++++++++++++
 drivers/mtd/nand/raw/Kconfig       |   4 -
 drivers/mtd/nand/raw/Makefile      |   1 -
 drivers/mtd/nand/raw/cmx270_nand.c | 236 -----------------------------
 6 files changed, 131 insertions(+), 243 deletions(-)
 delete mode 100644 drivers/mtd/nand/raw/cmx270_nand.c

-- 
2.25.3


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
