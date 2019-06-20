Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F7B4CDBD
	for <lists+linux-mtd@lfdr.de>; Thu, 20 Jun 2019 14:29:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bgbajJgz9VLtCVyw3NTfCzDS6Z3TQRWouNYjUDE+c9g=; b=jXFcEidA5o5HSu
	CCGiwN4vAGsYAZHA4SQbOaa2ygN1eSVgvXwIOZoOxRd6SZijWO1Y6JZkYmOYoUjkLDRaoCyssMRm4
	z1VeRQ8Aft4MIB4CvX8533DAMgiOAIjptrMy52EgkvlMXLKJZlPk0oVYL6/k5v72slfammuayprHL
	AXuTwzyOYxNTOlUnZZzBpq6UeOFNqTbGHk96YHA6WIlZDbHKkL0URqPDbu368Zz14hUSxGLoL1mgo
	H4B/EhhLsXIZckYbeptPoaVzpi8dQhOObN6PBTJunEE+D8RJvYdULfDKsidxAd+0a8cJdTekc2E/U
	rJTs7FtSpAZiMCK/IyyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdwBU-0001GL-8C; Thu, 20 Jun 2019 12:28:56 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdwB8-0000j6-IH
 for linux-mtd@lists.infradead.org; Thu, 20 Jun 2019 12:28:36 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 05:26:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,396,1557212400"; d="scan'208";a="183050775"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga004.fm.intel.com with ESMTP; 20 Jun 2019 05:26:30 -0700
Received: by black.fi.intel.com (Postfix, from userid 1001)
 id BB76A1F6; Thu, 20 Jun 2019 15:26:29 +0300 (EEST)
From: Mika Westerberg <mika.westerberg@linux.intel.com>
To: Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: [PATCH 2/2] spi-nor: intel-spi: Convert to use SPDX identifier
Date: Thu, 20 Jun 2019 15:26:29 +0300
Message-Id: <20190620122629.20838-2-mika.westerberg@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190620122629.20838-1-mika.westerberg@linux.intel.com>
References: <20190620122629.20838-1-mika.westerberg@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_052834_734032_1082C7BE 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
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
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This gets rid of the license boilerplate duplicated in each file.

No functional changes intended.

Signed-off-by: Mika Westerberg <mika.westerberg@linux.intel.com>
---
 drivers/mtd/spi-nor/intel-spi-pci.c      | 5 +----
 drivers/mtd/spi-nor/intel-spi-platform.c | 5 +----
 drivers/mtd/spi-nor/intel-spi.c          | 5 +----
 drivers/mtd/spi-nor/intel-spi.h          | 5 +----
 include/linux/platform_data/intel-spi.h  | 5 +----
 5 files changed, 5 insertions(+), 20 deletions(-)

diff --git a/drivers/mtd/spi-nor/intel-spi-pci.c b/drivers/mtd/spi-nor/intel-spi-pci.c
index 578f0c74e536..1b9c2d99ba38 100644
--- a/drivers/mtd/spi-nor/intel-spi-pci.c
+++ b/drivers/mtd/spi-nor/intel-spi-pci.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Intel PCH/PCU SPI flash PCI driver.
  *
  * Copyright (C) 2016, Intel Corporation
  * Author: Mika Westerberg <mika.westerberg@linux.intel.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
  */
 
 #include <linux/ioport.h>
diff --git a/drivers/mtd/spi-nor/intel-spi-platform.c b/drivers/mtd/spi-nor/intel-spi-platform.c
index 5c943df9398f..25b18804e9bb 100644
--- a/drivers/mtd/spi-nor/intel-spi-platform.c
+++ b/drivers/mtd/spi-nor/intel-spi-platform.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Intel PCH/PCU SPI flash platform driver.
  *
  * Copyright (C) 2016, Intel Corporation
  * Author: Mika Westerberg <mika.westerberg@linux.intel.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
  */
 
 #include <linux/ioport.h>
diff --git a/drivers/mtd/spi-nor/intel-spi.c b/drivers/mtd/spi-nor/intel-spi.c
index d60cbf23d9aa..021cef930f9f 100644
--- a/drivers/mtd/spi-nor/intel-spi.c
+++ b/drivers/mtd/spi-nor/intel-spi.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Intel PCH/PCU SPI flash driver.
  *
  * Copyright (C) 2016, Intel Corporation
  * Author: Mika Westerberg <mika.westerberg@linux.intel.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
  */
 
 #include <linux/err.h>
diff --git a/drivers/mtd/spi-nor/intel-spi.h b/drivers/mtd/spi-nor/intel-spi.h
index 5ab7dc250050..b03bf296fda3 100644
--- a/drivers/mtd/spi-nor/intel-spi.h
+++ b/drivers/mtd/spi-nor/intel-spi.h
@@ -1,12 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Intel PCH/PCU SPI flash driver.
  *
  * Copyright (C) 2016, Intel Corporation
  * Author: Mika Westerberg <mika.westerberg@linux.intel.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
  */
 
 #ifndef INTEL_SPI_H
diff --git a/include/linux/platform_data/intel-spi.h b/include/linux/platform_data/intel-spi.h
index 942b0c3f8f08..001f377fb5ef 100644
--- a/include/linux/platform_data/intel-spi.h
+++ b/include/linux/platform_data/intel-spi.h
@@ -1,12 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Intel PCH/PCU SPI flash driver.
  *
  * Copyright (C) 2016, Intel Corporation
  * Author: Mika Westerberg <mika.westerberg@linux.intel.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
  */
 
 #ifndef INTEL_SPI_PDATA_H
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
