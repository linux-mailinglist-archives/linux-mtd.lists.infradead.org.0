Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 887D49DC3A
	for <lists+linux-mtd@lfdr.de>; Tue, 27 Aug 2019 05:59:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=j9CD2015UXKAA26WRgLqcq1AZuXcZWR2oe4FuLhKQcM=; b=ct0
	bPjGfVWgOCfdPDs8o66AAg6PJetyZU/PUQjrb37aaPdTmIU3zuE6rJNjMWaiLRFnVQMrAgRHIpGiT
	VzJ8/hW2/GJr8gCZnHqPR2gnYhU8zdz59XpNxUeMcdi6lyahyra/J50/JEGSn1AgVGH+tyr29XOxG
	99KP4ijsPUDJ5eSH5/sBDMk+9KFjk4WV+fzWqaT22LqK7/1S5eGMBNvPUhEQQeIuUj7e/ZKcZRVG+
	BePNj7iF9c8N0jZ8TQuEF2wEwlEAiAFGAl4Kjq1eiW8ibfZLI7cRdI+lh7ZIFJW3VURZRyBzXaXoZ
	yKyQBptP16xqFdCKmkri2zeesTZ4fsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2SdO-0008Q9-Sz; Tue, 27 Aug 2019 03:59:07 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Sd8-0008Pl-99
 for linux-mtd@lists.infradead.org; Tue, 27 Aug 2019 03:58:51 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 20:58:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,435,1559545200"; d="scan'208";a="197212700"
Received: from sgsxdev004.isng.intel.com (HELO localhost) ([10.226.88.13])
 by fmsmga001.fm.intel.com with ESMTP; 26 Aug 2019 20:58:42 -0700
From: "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH v2 0/3] dt-bindings: mtd: cadence-qspi:add support for Intel
 lgm-qspi
Date: Tue, 27 Aug 2019 11:58:24 +0800
Message-Id: <20190827035827.21024-1-vadivel.muruganx.ramuthevar@linux.intel.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_205850_332134_FB700839 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 3.0 AC_FROM_MANY_DOTS      Multiple periods in From user name
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
Cc: cheol.yong.kim@intel.com, devicetree@vger.kernel.org,
 tudor.ambarus@gmail.com, vigneshr@ti.com, boris.brezillon@free-electrons.com,
 richard@nod.at, qi-ming.wu@intel.com, linux-kernel@vger.kernel.org,
 david.oberhollenzer@sigma-star.at, "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>,
 miquel.raynal@bootlin.com, jwboyer@gmail.com, computersforpeace@gmail.com,
 dwmw2@infradead.org, cyrille.pitchen@atmel.com, andriy.shevchenko@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

mtd: spi-nor: cadence-quadspi: disable DMA and DAC for Intel LGM
mtd: spi-nor: cadence-quadspi: disable the auto-poll for Intel LGM

changes from V1:
  - many thanks to Vignesh for review comments.
  - split 2 patches one for DMA and DAC and other one
    is disable the auto-poll
  - removed ahb_phy_addr and used existing trigger_address
  - trigger_address property used.
  
Ramuthevar Vadivel Murugan (3):
  dt-bindings: mtd: cadence-qspi:add support for Intel lgm-qspi
  mtd: spi-nor: cadence-quadspi: disable DMA and DAC for Intel LGM
  mtd: spi-nor: cadence-quadspi: disable the auto-poll for Intel LGM

 .../devicetree/bindings/mtd/cadence-quadspi.txt    |  1 +
 drivers/mtd/spi-nor/Kconfig                        |  2 +-
 drivers/mtd/spi-nor/cadence-quadspi.c              | 45 ++++++++++++++++++++--
 3 files changed, 44 insertions(+), 4 deletions(-)

-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
