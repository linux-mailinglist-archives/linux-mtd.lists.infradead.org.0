Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF4D1D4BC7
	for <lists+linux-mtd@lfdr.de>; Fri, 15 May 2020 12:57:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=U/7Vrg/Yv9SLoWOVE3AcZFBwZcWeyORtHbfnHYtNzNs=; b=LEN
	fJyfJhenycPMmboZXwGEI8xNRNv+9HIKfN8/UwHVb98o9yK2Gg+GSuYs0G0+p1s5nue6LdmmOTdE5
	jsqVd4gW1gH3BjZtAPd0e++6mHFWwh1ZVklF/H5w72bPSEqBprjTdc+aBOB3Grrjj4c8p4vycs+9Q
	Us+M11VObSVk5EefDDBVUBJR/5L3itY9ZHex/k5dT+BIdkfJAOBg61liSLtoQ53yuZ2vEeAAwV7+I
	Bx04qe7CoR84vxb8GBKm4NQbmGg3+9od5bLBqjAYvaFdg4aAodGjxmLe2yde0DPM1qbhbPa098rHS
	RHaTYJIkRr0sqNC6FDW5291LOfSqhLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZY1T-0000g9-6w; Fri, 15 May 2020 10:56:59 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZY1L-0000fM-N9
 for linux-mtd@lists.infradead.org; Fri, 15 May 2020 10:56:53 +0000
IronPort-SDR: eu5vFNmvc434AI1WqrigwlCgqW+FWbpjYQYQfH9jzAvG/7sSZSZU5ILO6oahFmMYO9KYtTZMW1
 MY4LtJiPb9cQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 03:56:50 -0700
IronPort-SDR: jLkaikoZ73kKNWmoysRWcdGNbUmdICjc8PJkEm9mTk8eafFwSLzxvLRsjNeT0JoiZ1tZqXHBnt
 8NVdbQc1ptoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,395,1583222400"; d="scan'208";a="281183729"
Received: from sgsxdev004.isng.intel.com (HELO localhost) ([10.226.88.13])
 by orsmga002.jf.intel.com with ESMTP; 15 May 2020 03:56:46 -0700
From: "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
To: linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 devicetree@vger.kernel.org
Subject: [PATCH v7 0/2] mtd: rawnand: Add NAND controller support on Intel LGM
 SoC
Date: Fri, 15 May 2020 18:55:35 +0800
Message-Id: <20200515105537.4876-1-vadivel.muruganx.ramuthevar@linux.intel.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_035651_791238_BC88720C 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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
Cc: cheol.yong.kim@intel.com, hauke.mehrtens@intel.com, qi-ming.wu@intel.com,
 anders.roxell@linaro.org, vigneshr@ti.com, arnd@arndb.de, richard@nod.at,
 brendanhiggins@google.com, linux-mips@vger.kernel.org, robh+dt@kernel.org,
 "Ramuthevar, Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>,
 boris.brezillon@collabora.com, miquel.raynal@bootlin.com, tglx@linutronix.de,
 masonccyang@mxic.com.tw, andriy.shevchenko@intel.com
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

---
v7:
  - indentation issue is fixed
  - add error check for retrieve the resource from dt
  - Rob's review comments addressed 
  - dt-schema build issue fixed with upgraded dt-schema
v6:
  - update EBU_ADDR_SELx register base value build it from DT
  - Add tabs in in Kconfig
  - Rob's review comments addressed in YAML file
  - add addr_sel0 and addr_sel1 reg-names in YAML example
v5:
  - replace by 'HSNAND_CLE_OFFS | HSNAND_CS_OFFS' to NAND_WRITE_CMD and NAND_WRITE_ADDR
  - remove the unused macros
  - update EBU_ADDR_MASK(x) macro
  - update the EBU_ADDR_SELx register values to be written
  - add the example in YAML file
v4:
  - add ebu_nand_cs structure for multiple-CS support
  - mask/offset encoding for 0x51 value
  - update macro HSNAND_CTL_ENABLE_ECC
  - drop the op argument and un-used macros.
  - updated the datatype and macros
  - add function disable nand module
  - remove ebu_host->dma_rx = NULL;
  - rename MMIO address range variables to ebu and hsnand
  - implement ->setup_data_interface()
  - update label err_cleanup_nand and err_cleanup_dma
  - add return value check in the nand_remove function
  - add/remove tabs and spaces as per coding standard
  - encoded CS ids by reg property
v3:
  - Add depends on MACRO in Kconfig
  - file name update in Makefile
  - file name update to intel-nand-controller
  - modification of MACRO divided like EBU, HSNAND and NAND
  - add NAND_ALE_OFFS, NAND_CLE_OFFS and NAND_CS_OFFS
  - rename lgm_ to ebu_ and _va suffix is removed in the whole file
  - rename structure and varaibles as per review comments.
  - remove lgm_read_byte(), lgm_dev_ready() and cmd_ctrl() un-used function
  - update in exec_op() as per review comments
  - rename function lgm_dma_exit() by lgm_dma_cleanup()
  - hardcoded magic value  for base and offset replaced by MACRO defined
  - mtd_device_unregister() + nand_cleanup() instead of nand_release()
v2:
  - implement the ->exec_op() to replaces the legacy hook-up.
  - update the commit message
  - YAML compatible string update to intel, lgm-nand-controller
  - add MIPS maintainers and xway_nand driver author in CC

v1:
 - initial version

Ramuthevar Vadivel Murugan (2):
  dt-bindings: mtd: Add Nand Flash Controller support for Intel LGM SoC
  mtd: rawnand: Add NAND controller support on Intel LGM SoC

 .../devicetree/bindings/mtd/intel,lgm-nand.yaml    |  91 +++
 drivers/mtd/nand/raw/Kconfig                       |   8 +
 drivers/mtd/nand/raw/Makefile                      |   1 +
 drivers/mtd/nand/raw/intel-nand-controller.c       | 748 +++++++++++++++++++++
 4 files changed, 848 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/intel,lgm-nand.yaml
 create mode 100644 drivers/mtd/nand/raw/intel-nand-controller.c

-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
