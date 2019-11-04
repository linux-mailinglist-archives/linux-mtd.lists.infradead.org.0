Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A22EE546
	for <lists+linux-mtd@lfdr.de>; Mon,  4 Nov 2019 17:55:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5bzu0gXnaQ6vAhfZ++SbEwXMtwAy+aF5F1RfI+LifD4=; b=WLC7WVkyoZs57g
	ucIVZ66boa1eKlubWS6yCsBXcv/z1RylwdJD4fQ/rYx3q7ig6OHMi3+G69nZOnTRyzWJTR5g+6B4w
	0fGn2xo69MqAIVMu6YvsTOooGFpRxQ0uht5Z2sAGgUwAFnzaQA5lb0/KeHwrF09/QGyDFVzTwRsmr
	yZDk9+QhZZLz8i32pY7MDY3VvZKvrbWY6fzxJ58fGGcgE0RgY+PhxpMqMPHfiULeIiQjnB7f3+cYO
	f9chMGeVLgJd01grleLA090+DzuzovDFguJ666olMYYRG+CFD6eyfNqLHGlLKNpYkg1Ixsi4vjXN2
	BiQIIMQ1SX/7viHeuYQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRfdL-0006kZ-Az; Mon, 04 Nov 2019 16:55:15 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRfd5-0006h6-7n
 for linux-mtd@lists.infradead.org; Mon, 04 Nov 2019 16:55:00 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 2F009202F7ED87065250;
 Tue,  5 Nov 2019 00:54:52 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS404-HUB.china.huawei.com (10.3.19.204) with Microsoft SMTP Server id
 14.3.439.0; Tue, 5 Nov 2019 00:54:42 +0800
From: John Garry <john.garry@huawei.com>
To: <broonie@kernel.org>, <marek.vasut@gmail.com>,
 <tudor.ambarus@microchip.com>
Subject: [PATCH 0/3] HiSilicon v3xx SFC driver
Date: Tue, 5 Nov 2019 00:51:34 +0800
Message-ID: <1572886297-45400-1-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_085459_466329_740E22DB 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-kernel@vger.kernel.org, John Garry <john.garry@huawei.com>,
 linuxarm@huawei.com, fengsheng5@huawei.com, linux-spi@vger.kernel.org,
 linux-mtd@lists.infradead.org, xuejiancheng@hisilicon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This patchset introduces support for the HiSilicon SFC V3XX driver.

Whilst the kernel tree already includes support for a "HiSilicon SFC
driver", that is for different HW. Indeed, as mentioned in patch #1, the
naming for that driver could be better, as it should support more memory
technologies than SPI NOR (as I have been told), and it is actually known
internally as FMC. As such, maybe "hisi-fmc" would have been better, but
we can't change that now.

I used V3XX in this driver name, as that is the unique versioning for
this HW.

As for the driver itself, it is quite simple. Only ACPI firmware is
supported, and we assume m25p80 compatible SPI NOR part will be used.

DMA is not supported, and we just use polling mode for operation
completion notification. The driver uses the SPI MEM OPs.

Tested against 5.4-rc4.

John Garry (3):
  mtd: spi-nor: hisi-sfc: Try to provide some clarity on which SFC we
    are
  spi: Add HiSilicon v3xx SPI NOR flash controller driver
  MAINTAINERS: Add a maintainer for the HiSilicon v3xx SFC driver

 MAINTAINERS                     |   6 +
 drivers/mtd/spi-nor/Kconfig     |   4 +-
 drivers/mtd/spi-nor/hisi-sfc.c  |   2 +-
 drivers/spi/Kconfig             |   9 +
 drivers/spi/Makefile            |   1 +
 drivers/spi/spi-hisi-sfc-v3xx.c | 287 ++++++++++++++++++++++++++++++++
 6 files changed, 306 insertions(+), 3 deletions(-)
 create mode 100644 drivers/spi/spi-hisi-sfc-v3xx.c

-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
