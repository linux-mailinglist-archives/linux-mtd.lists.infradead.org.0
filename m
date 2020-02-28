Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A5E173B47
	for <lists+linux-mtd@lfdr.de>; Fri, 28 Feb 2020 16:23:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8zi1PCQtyNsdnGEJQVDR+g2yL1Xfl816g1YjeCjoiNY=; b=M3nDS1HHftlULl
	TFoZRM9OytZ8l4Hdr0HgHkhD80vWacsiVn59P/6GMHDQd4tC/VOq+kLxGKaIclcqtCQ1le0oTCdnj
	UppXTse1aFC2YpsaAsxB6kQZgubZm2WSDk8tNfcO3PYG/HG29FM3gxqCoa3Zuw6xSNxuVx2x1vUrV
	LmteGIC4arxGyBhnFVcNFy65fmaAbI3tQyH0gHtA86xGBUFNTBcRmysx7k+Ivz7U1fuV6/I6Sf99t
	eamTUQKLFoGE63hK9GejuVqGGJbr5fO2DfmZeNOnlG5OOvXbu82Mf8joPGqe9Jf3mnvZdIQrjm2C5
	/95YqQioFKMhpru/kPwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hTu-0004o1-2r; Fri, 28 Feb 2020 15:23:14 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hTk-0004mC-Nt
 for linux-mtd@lists.infradead.org; Fri, 28 Feb 2020 15:23:06 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id D8DD125A82D882BC737;
 Fri, 28 Feb 2020 23:22:53 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.439.0; Fri, 28 Feb 2020 23:22:44 +0800
From: John Garry <john.garry@huawei.com>
To: <broonie@kernel.org>
Subject: [PATCH RFC 0/3] spi/HiSilicon v3xx: Support dual and quad mode
 through DMI quirks
Date: Fri, 28 Feb 2020 23:18:48 +0800
Message-ID: <1582903131-160033-1-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_072304_948669_ECC23914 
X-CRM114-Status: GOOD (  10.01  )
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

As discussed during the original HiSilicon v3xx SPI driver upstreaming,
currently there is no method for the ACPI SPI Serial Bus Connection
Resource Descriptor to define the data buswidth [0], [1].

So we can look to get the ACPI spec updated for this, and I have
submitted a proposal for a new feature here:
https://bugzilla.tianocore.org/show_bug.cgi?id=2557

However I am not sure how successful that will be.

In the meantime, as an alternate approach, this RFC proposes to allow the
SPI controller driver override the device buswidth. In this example,
the driver uses DMI quirks to discover the host machine and set the 
buswidth override accordingly when the machine is known to support
dual or quad mode of operation.

I also have included a fix for dual and quad modes in the driver.

Comments welcome. thanks.

[0] https://lore.kernel.org/linux-mtd/20200109212842.GK3702@sirena.org.uk/
[1] https://uefi.org/sites/default/files/resources/ACPI_6_3_final_Jan30.pdf, 
     19.6.126

John Garry (3):
  spi: Allow SPI controller override device buswidth
  spi: HiSilicon v3xx: Properly set CMD_CONFIG for Dual/Quad modes
  spi: HiSilicon v3xx: Use DMI quirk to set controller buswidth override
    bits

 drivers/spi/spi-hisi-sfc-v3xx.c | 99 ++++++++++++++++++++++++++++++++-
 drivers/spi/spi.c               |  4 +-
 include/linux/spi/spi.h         |  3 +
 3 files changed, 104 insertions(+), 2 deletions(-)

-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
