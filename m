Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47546116EC1
	for <lists+linux-mtd@lfdr.de>; Mon,  9 Dec 2019 15:12:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kAEsKQ+GDmZtsXP+emclezif2HGfdU7XRtf1O8NWLSI=; b=c53kAMmFRSjXlT
	zE2f/EMe2k5vfEHOe6HOJX6GyES5RACfPihnhtE/KcUVZORAQ8JRWth8ZxpSEvRcJIH+c3OVYYj5P
	2WB79N5M4QpbJQ9VkoNtP4n02Pvv6SOGeK1TEQD8mOpP5KU3vVW9u/+dObida0hfoM0L+tC4p5oEB
	SE73WrQYYzugUCsjX0e132cSGBRDDlos0VWTbzwr6ODjetZZQTWocxiBpPXUhnUJG8aqrjmJyTdtg
	5TAnQoQp9cX98B9nWmgYi4M49CYDo3JomYXrqu/RhPDoIEOLZfqNHtjNgjSYYjFNsVEuETyW6WWdr
	0q/K4U+LzJRd//mmuRfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieJmD-00005F-Of; Mon, 09 Dec 2019 14:12:41 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieJlZ-00082o-6J
 for linux-mtd@lists.infradead.org; Mon, 09 Dec 2019 14:12:03 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id C17D8952A78FAB84FF53;
 Mon,  9 Dec 2019 22:11:49 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.439.0; Mon, 9 Dec 2019 22:11:41 +0800
From: John Garry <john.garry@huawei.com>
To: <broonie@kernel.org>, <marek.vasut@gmail.com>,
 <tudor.ambarus@microchip.com>
Subject: [PATCH v2 0/3] HiSilicon v3xx SFC driver
Date: Mon, 9 Dec 2019 22:08:07 +0800
Message-ID: <1575900490-74467-1-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_061201_519883_BAE8DA9C 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: chenxiang66@hisilicon.com, linux-kernel@vger.kernel.org,
 John Garry <john.garry@huawei.com>, linuxarm@huawei.com, fengsheng5@huawei.com,
 linux-spi@vger.kernel.org, linux-mtd@lists.infradead.org,
 xuejiancheng@hisilicon.com
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

Changes from v1:
- Add ACPI kconfig dependency
- Fix up header comment style
- Change macros naming style
- Try to enforce aligned accesses in hisi_sfc_v3xx_adjust_op_size()

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
 drivers/spi/spi-hisi-sfc-v3xx.c | 284 ++++++++++++++++++++++++++++++++
 6 files changed, 303 insertions(+), 3 deletions(-)
 create mode 100644 drivers/spi/spi-hisi-sfc-v3xx.c

-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
