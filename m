Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B17D1AD86D
	for <lists+linux-mtd@lfdr.de>; Fri, 17 Apr 2020 10:23:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qpMEFDM56ZFmfklvZHoemXD2qX3Xgc0zAE7sEbAZT84=; b=Mi5
	zAJpLY241O9L/3rjX4trjzqk/PvvHywtbqTaE7KudqLmmDkrpqnVIOuB54bmXR2jCrYmRUCawv0ZG
	yCMnjY8+4bOSNx86EgfqF+l4oLzGZhLjke0aPZHFwXHFI7zEQakIzkxw/33aLBmGKEEqYDJFDk0I4
	aLu1qLMFNia8BBYcwoeZPeB5sB7+eSVT6O/R2gbZglGaMpdxq/S1e0L4NgI0//ZQwSU5b0ZVyynsa
	qlA4mWbodIkZGO7uqqP5nZSz1IWUSFLbXjWtTdKj61PFmHVpOPTkign7CbWE87PiAIGUnT5VnBMFC
	VC6U6o5kMJsnzW35Bs5iAQx3oeZY57A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPMHL-0003GK-Up; Fri, 17 Apr 2020 08:23:16 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPMHD-0003FW-6q
 for linux-mtd@lists.infradead.org; Fri, 17 Apr 2020 08:23:08 +0000
IronPort-SDR: 25I3YpZ1LBG5KOr8TY45C+0HHqeoXHBtp1aPsczfIXNoLmO1mjkwoaAc/z4xNa8o8yJrFvnUeS
 hVTJxOai40Gg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 01:23:06 -0700
IronPort-SDR: oAqIaDm9qhb5Su1LLPerg1oTUd1hRwUw4hTwKgqEiHDu5jiY8UXJQaQgXa/Na8ikJlBlv0rtsc
 RCIl/egDXZwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,394,1580803200"; d="scan'208";a="428156049"
Received: from sgsxdev004.isng.intel.com (HELO localhost) ([10.226.88.13])
 by orsmga005.jf.intel.com with ESMTP; 17 Apr 2020 01:23:01 -0700
From: "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
To: linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 devicetree@vger.kernel.org
Subject: [PATCH v2 0/2] mtd: rawnand: Add NAND controller support on Intel LGM
 SoC
Date: Fri, 17 Apr 2020 16:21:45 +0800
Message-Id: <20200417082147.43384-1-vadivel.muruganx.ramuthevar@linux.intel.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_012307_254711_B0ECAD2B 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 AC_FROM_MANY_DOTS      Multiple periods in From user name
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
Cc: cheol.yong.kim@intel.com, hauke.mehrtens@intel.com,
 andriy.shevchenko@intel.com, anders.roxell@linaro.org, vigneshr@ti.com,
 arnd@arndb.de, richard@nod.at, qi-ming.wu@intel.com, brendanhiggins@google.com,
 linux-mips@vger.kernel.org, robh+dt@kernel.org, "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>,
 boris.brezillon@collabora.com, miquel.raynal@bootlin.com, tglx@linutronix.de,
 masonccyang@mxic.com.tw, piotrs@cadence.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This patch adds the new IP of Nand Flash Controller(NFC) support
on Intel's Lightning Mountain(LGM) SoC.

DMA is used for burst data transfer operation, also DMA HW supports
aligned 32bit memory address and aligned data access by default.
DMA burst of 8 supported. Data register used to support the read/write
operation from/to device.

NAND controller also supports in-built HW ECC engine. 

NAND controller driver implements ->exec_op() to replace legacy hooks,
these specific call-back method to execute NAND operations.

Thank you very much Boris, Martin and Andy for the suggestions and inputs.
---
v2:
  - implement the ->exec_op() to replaces the legacy hook-up.
  - update the commit message
  - YAML compatible string update to intel, lgm-nand-controller
  - add MIPS maintainers and xway_nand driver author in CC

v1:
 - initial version

Ramuthevar Vadivel Murugan (2):
  dt-bindings: mtd: Add YAML for Nand Flash Controller support
  mtd: rawnand: Add NAND controller support on Intel LGM SoC

 .../devicetree/bindings/mtd/intel,lgm-nand.yaml    |  61 ++
 drivers/mtd/nand/raw/Kconfig                       |   7 +
 drivers/mtd/nand/raw/Makefile                      |   1 +
 drivers/mtd/nand/raw/intel_lgm_nand.c              | 740 +++++++++++++++++++++
 4 files changed, 809 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/intel,lgm-nand.yaml
 create mode 100644 drivers/mtd/nand/raw/intel_lgm_nand.c

-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
