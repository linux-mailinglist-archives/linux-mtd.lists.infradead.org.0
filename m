Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D856E286
	for <lists+linux-mtd@lfdr.de>; Fri, 19 Jul 2019 10:30:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=egS1nlFb4p9Bko2U4rl+L6owniGtFBTBr1/a1mHuQdQ=; b=PhuHr9uqeSkzcQ
	EsV+0v+8AVHNINDYY8gTN6WHAnHM/fKpFVEqtL+gr/CEFBJB6mBaHlh1f2UMnCBPrwR5NERgIdDs+
	Z1yNo5weDFFQvoHUHoQ3husDu9zIdhlynRQZOPGP3O+toJ3LzsCEyjNzRc0V5kSmr6f9PpiZTHToD
	82j3HX5pvJf+Rz7Tfsq8fsVTVGBNiPJwPwoJZYl99n3XY9DLYqG88V0mhq9Up0BiZyhzL44FG4pmt
	cr1ITgNZEgBJx+kvE8Xh6hv6IkCrBi90L8UEsabQZbWsyAte6Lfbv6GxXcZuZr3Cxlt5SefavvKIz
	bEsfjIM8D8btpa6stdww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoOHV-00014r-8C; Fri, 19 Jul 2019 08:30:21 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoOH8-00013A-4i
 for linux-mtd@lists.infradead.org; Fri, 19 Jul 2019 08:29:59 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6J8THUc065533;
 Fri, 19 Jul 2019 03:29:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563524957;
 bh=9c1Ulz4kYZoRGREkkMV4r8fhTvR5MYnlpJnGO/Okjkw=;
 h=From:To:CC:Subject:Date;
 b=rojfL0Guo6r6xoQLKN/dOOkhDUdR7wzXZFLufz0UojzpKIyEwvT725r9OzGcSaA9H
 yYHu0O6BhH8ba+ICNdF417kRWLvDie6c0kLyhTUamslq4syLOsLpoS2qpCJ9HVTg/7
 wvvI1ktmUMoe10CXb2wN4qww6fR7y/XgtIDC3YS4=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6J8THq6029681
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 19 Jul 2019 03:29:17 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 19
 Jul 2019 03:29:16 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 19 Jul 2019 03:29:16 -0500
Received: from a0132425.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6J8TENc076829;
 Fri, 19 Jul 2019 03:29:14 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>
Subject: [PATCH] mtd: hyperbus: Kconfig: Fix HBMC_AM654 dependencies
Date: Fri, 19 Jul 2019 13:59:12 +0530
Message-ID: <20190719082912.10316-1-vigneshr@ti.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_012958_252674_6733C8E8 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Randy Dunlap <rdunlap@infradead.org>, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, Mao Wenan <maowenan@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On x86_64, when CONFIG_OF is not disabled:

WARNING: unmet direct dependencies detected for MUX_MMIO
  Depends on [n]: MULTIPLEXER [=y] && (OF [=n] || COMPILE_TEST [=n])
  Selected by [y]:
  - HBMC_AM654 [=y] && MTD [=y] && MTD_HYPERBUS [=y]

due to
config HBMC_AM654
	tristate "HyperBus controller driver for AM65x SoC"
	select MULTIPLEXER
	select MUX_MMIO

Fix this by making HBMC_AM654 imply MUX_MMIO instead of select so
that dependencies are taken care of. MUX_MMIO is optional for
functioning of driver.

Fixes: b07079f1642c ("mtd: hyperbus: Add driver for TI's HyperBus memory controller")
Reported-by: Randy Dunlap <rdunlap@infradead.org>
Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
---
 drivers/mtd/hyperbus/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/hyperbus/Kconfig b/drivers/mtd/hyperbus/Kconfig
index cff6bbd226f5..1c691df8eff7 100644
--- a/drivers/mtd/hyperbus/Kconfig
+++ b/drivers/mtd/hyperbus/Kconfig
@@ -15,7 +15,7 @@ if MTD_HYPERBUS
 config HBMC_AM654
 	tristate "HyperBus controller driver for AM65x SoC"
 	select MULTIPLEXER
-	select MUX_MMIO
+	imply MUX_MMIO
 	help
 	 This is the driver for HyperBus controller on TI's AM65x and
 	 other SoCs
-- 
2.22.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
