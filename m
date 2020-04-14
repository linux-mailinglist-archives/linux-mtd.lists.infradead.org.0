Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5C91A70F8
	for <lists+linux-mtd@lfdr.de>; Tue, 14 Apr 2020 04:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9sg+xlcwj0mFIZvb7zTp2+A2sKQskUmeHO8jCsJ9VC4=; b=p1O
	qw0aHeXh8EDfgpVZitZ3GZUIrs9cTp7jiNsuD+WWHGv9zxJrFTlgT/tUVhDNReSzEizpZ28jmejUP
	hgeWOTgRExe/EeD15PvCl0fxNW+lkPABRG5duMfa0lBWnMBJp+/sMcVrlH7Aa1Ctu+PuisUrU+yYF
	yAImya9PMhv+1tWSSJCI6a/cRUaQuG2YVSwEtQkxal/RFklHxGHjiengoOQ470uhO1WJtZ0CWEgKx
	r6Eu9LdVByolJkrrxGFkc6ROgk0q7+K3U7K/VMbe6KzZ/xON7g6BaCVxRlNudiwC0iWNMHOMQl3Qj
	A8DlIiATNiDEcDnuNYPwRIYJbcHnpMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOBGM-0004kn-PV; Tue, 14 Apr 2020 02:25:22 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOBGH-0004kT-5L
 for linux-mtd@lists.infradead.org; Tue, 14 Apr 2020 02:25:18 +0000
IronPort-SDR: j2+4FVBqQtiddFNRnkNrPsCiyiVdwc59A4FiYTMgtK/F1chNe+CPrGnFUi2JqhLfIkT3zQ3qbT
 Q+vn7ZM2mFuQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 19:25:15 -0700
IronPort-SDR: dqdmEndsmHXjNRHANhAXzK2Z0OQkAl13IJCxhoZYB/4HyCWPhbAsl8raFfJB8wh2A3ZXzOn65j
 hz20aOP6TW8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,381,1580803200"; d="scan'208";a="243694824"
Received: from sgsxdev004.isng.intel.com (HELO localhost) ([10.226.88.13])
 by fmsmga007.fm.intel.com with ESMTP; 13 Apr 2020 19:25:11 -0700
From: "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
To: linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 devicetree@vger.kernel.org
Subject: [PATCH v1 0/2] mtd: rawnand: Add NAND controller support on Intel LGM
 SoC
Date: Tue, 14 Apr 2020 10:24:31 +0800
Message-Id: <20200414022433.36622-1-vadivel.muruganx.ramuthevar@linux.intel.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_192517_213548_1B031791 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: cheol.yong.kim@intel.com, andriy.shevchenko@intel.com, qi-ming.wu@intel.com,
 anders.roxell@linaro.org, vigneshr@ti.com, arnd@arndb.de, richard@nod.at,
 brendanhiggins@google.com, robh+dt@kernel.org, "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>,
 boris.brezillon@collabora.com, miquel.raynal@bootlin.com, tglx@linutronix.de,
 masonccyang@mxic.com.tw, piotrs@cadence.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This patch adds the new IP of NAND Flash Controller support on Intel's
Lightning Mountain(LGM) SoC.

DMA is used for burst data transfer operation, also DMA HW supports
aligned 32bit memory address and aligned data access by default.
DMA burst of 8 supported,Data register used to support the read/write
operation from/to device.

The NAND controller Subsystem consisting of LGM + ECC-NAND controller supports:
NAND Flash Features :
-16/8-bit data bus
  Page + OOB Bytes
- 512  + (2 - 13) bytes per page page
- 2048 + (7 - 210) bytes per page
- 4096 + (13 - 420) bytes per page
- 8192 + (26 - 840) bytes per page

- Support 32/64/128/256/512/1024/2048/4096/8192/16384/32768 Mbytes flash device
- ECC calculation/generation and verification on-the-fly

Ramuthevar Vadivel Murugan (2):
  dt-bindings: mtd: Add YAML for Nand Flash Controller support
  mtd: rawnand: Add NAND controller support on Intel LGM SoC

 .../devicetree/bindings/mtd/intel,lgm-nand.yaml    |  61 ++
 drivers/mtd/nand/raw/Kconfig                       |   7 +
 drivers/mtd/nand/raw/Makefile                      |   1 +
 drivers/mtd/nand/raw/intel_lgm_nand.c              | 678 +++++++++++++++++++++
 4 files changed, 747 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/intel,lgm-nand.yaml
 create mode 100644 drivers/mtd/nand/raw/intel_lgm_nand.c

-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
