Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DEE3173B4A
	for <lists+linux-mtd@lfdr.de>; Fri, 28 Feb 2020 16:23:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f/Oja4+7sSNhzSOA2F9Is/MOWhG+mEt6HEI1xQWtgM4=; b=N/4G3BIYQ4b+DQ
	qUhw+3LYVbJaAb65JWbk6YHnLD5IyPGEGXPFtgrH7WJQ7GIzmH6icOL5Ps2yptE//+jbMTomoUxeV
	7aax4Hr+Lwh0soGPS/kPmXCrscpffYRTeJYH8RZymYT/CFVPIyXhFSgW+oJ4VJ8s+xZIu4p0rngTc
	574FEzzUYFBQnjdXZ00zbTmHC9UKUQquFoBDtePkWNPc9Jk/HH8nPebIaLB/qodCljp9XfLQLeB6a
	4qDniQ4tMWFAFV6rf21XbeNZYRY5U2VhN7qlRkkbJnbMQ36+FD0ewtDt3cjLp+E9IUVNk9OGzdJ1Z
	S3odQx5935Q9WtoHoXQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hUS-0005Cx-MX; Fri, 28 Feb 2020 15:23:48 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hTl-0004m8-05
 for linux-mtd@lists.infradead.org; Fri, 28 Feb 2020 15:23:07 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id E895CBCDD998B0D1E4CE;
 Fri, 28 Feb 2020 23:22:53 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.439.0; Fri, 28 Feb 2020 23:22:44 +0800
From: John Garry <john.garry@huawei.com>
To: <broonie@kernel.org>
Subject: [PATCH RFC 1/3] spi: Allow SPI controller override device buswidth
Date: Fri, 28 Feb 2020 23:18:49 +0800
Message-ID: <1582903131-160033-2-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1582903131-160033-1-git-send-email-john.garry@huawei.com>
References: <1582903131-160033-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_072305_635036_FAA8C653 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: John Garry <john.garry@huawei.com>, linux-spi@vger.kernel.org,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, andriy.shevchenko@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Currently ACPI firmware description for a SPI device does not have any
method to describe the data buswidth on the board.

So even through the controller and device may support higher modes than
standard SPI, it cannot be assumed that the board does - as such, that
device is limited to standard SPI in such a circumstance.

As a workaround, allow the controller driver supply buswidth override bits,
which are used inform the core code that the controller driver knows the
buswidth supported on that board for that device.

A host controller driver might know this info from DMI tables, for example.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 drivers/spi/spi.c       | 4 +++-
 include/linux/spi/spi.h | 3 +++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 38b4c78df506..292f26807b41 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -510,6 +510,7 @@ struct spi_device *spi_alloc_device(struct spi_controller *ctlr)
 	spi->dev.bus = &spi_bus_type;
 	spi->dev.release = spidev_release;
 	spi->cs_gpio = -ENOENT;
+	spi->mode = ctlr->buswidth_override_bits;
 
 	spin_lock_init(&spi->statistics.lock);
 
@@ -2181,9 +2182,10 @@ static acpi_status acpi_register_spi_device(struct spi_controller *ctlr,
 		return AE_NO_MEMORY;
 	}
 
+
 	ACPI_COMPANION_SET(&spi->dev, adev);
 	spi->max_speed_hz	= lookup.max_speed_hz;
-	spi->mode		= lookup.mode;
+	spi->mode		|= lookup.mode;
 	spi->irq		= lookup.irq;
 	spi->bits_per_word	= lookup.bits_per_word;
 	spi->chip_select	= lookup.chip_select;
diff --git a/include/linux/spi/spi.h b/include/linux/spi/spi.h
index 6d16ba01ff5a..600e3793303e 100644
--- a/include/linux/spi/spi.h
+++ b/include/linux/spi/spi.h
@@ -481,6 +481,9 @@ struct spi_controller {
 	/* spi_device.mode flags understood by this controller driver */
 	u32			mode_bits;
 
+	/* spi_device.mode flags override flags for this controller */
+	u32			buswidth_override_bits;
+
 	/* bitmask of supported bits_per_word for transfers */
 	u32			bits_per_word_mask;
 #define SPI_BPW_MASK(bits) BIT((bits) - 1)
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
