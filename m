Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98ACAB9CF1
	for <lists+linux-mtd@lfdr.de>; Sat, 21 Sep 2019 09:37:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PQibGxjQXumxjOcMX7BevCdHx+VZ28tSK23tNcMJdgI=; b=uJb8t7xeXok02r
	L98V873OzgKklf8Jiabl32eCLnX1pcL7lseuT6D1pmftCKEcjH1cDnuvbwkFL14Qna1kSavZITVW2
	LGT+srmq009tM5bJP3Xwy30gQ0TEkWO4n9NjjodIb5KppfLHINU8y3JssnAGxErD/Qa3L6ncrvzmA
	WV4Snmc/Tz31KdID2piD1YNGTR9DpIoCiaXbgv2SpQ5OEQCfc2fIGa3Y0sCuTtZlBzCwBQYI6ArSt
	IKPp/EZYrDL91zETotDPfhw48SslKjVvON1Aqwkiva/gZQNVo7kL/NGnepfnR9s91D63g5RkqziRT
	X1QoPB+qsV1vWUkamvLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBZx6-0006zM-OR; Sat, 21 Sep 2019 07:37:08 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBZwl-0006xk-Ce
 for linux-mtd@lists.infradead.org; Sat, 21 Sep 2019 07:36:50 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id B27EE613E48F;
 Sat, 21 Sep 2019 09:36:36 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 8LRhbZBfEK3a; Sat, 21 Sep 2019 09:36:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 0C5A4608310C;
 Sat, 21 Sep 2019 09:36:36 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id AAvyw0qq3rPx; Sat, 21 Sep 2019 09:36:35 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id D4827613E48F;
 Sat, 21 Sep 2019 09:36:35 +0200 (CEST)
Date: Sat, 21 Sep 2019 09:36:35 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: torvalds <torvalds@linux-foundation.org>
Message-ID: <1742349117.3527.1569051395780.JavaMail.zimbra@nod.at>
Subject: [GIT PULL] MTD updates for 5.4-rc1
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Index: rQa3AljWYs866iAse/6ysnw0R7/J5A==
Thread-Topic: MTD updates for 5.4-rc1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_003647_730758_5219DB2E 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: vigneshr@ti.com, linux-mtd <linux-mtd@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Linus,

The following changes since commit 089cf7f6ecb266b6a4164919a2e69bd2f938374a:

  Linux 5.3-rc7 (2019-09-02 09:57:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git tags/mtd/for-5.4

for you to fetch changes up to 2cfcfadb8e1380938d6631cffa4fa567b13f52b2:

  mtd: pmc551: Remove set but not used variable 'soff_lo' (2019-09-15 23:51:07 +0200)

----------------------------------------------------------------
This pull-request contains the following changes for MTD:

MTD core changes:
- add debugfs nodes for querying the flash name and id
- mtd parser reorganization

SPI NOR core changes:
- always use bounce buffer for register read/writes
- move m25p80 code in spi-nor.c
- rework hwcaps selection for the spi-mem case
- rework the core in order to move the manufacturer specific code
  out of it:
    - regroup flash parameters in 'struct spi_nor_flash_parameter'
    - add default_init() and post_sfdp() hooks to tweak the flash
      parameters
    - introduce the ->set_4byte(), ->convert_addr() and ->setup()
      methods, to deal with manufacturer specific code
    - rework the SPI NOR lock/unlock logic
- fix an error code in spi_nor_read_raw()
- fix a memory leak bug
- enable the debugfs for the partname and partid
- add support for few flashes

SPI NOR controller drivers changes:
- intel-spi:
    - Whitelist 4B read commands
    - Add support for Intel Tiger Lake SPI serial flash
- aspeed-smc: Add of_node_put()
- hisi-sfc: Add of_node_put()
- cadence-quadspi: Fix QSPI RCU Schedule Stall

NAND core:
- Fixing typos
- Adding missing of_node_put() in various drivers

Raw NAND controller drivers:

- Macronix: new controller driver
- Omap2: Fixing the number of bitflips returned
- Brcmnand: Fix a pointer not iterating over all the page chunks
- W90x900: Driver removed
- Onenand: Fix a memory leak
- Sharpsl: Missing include guard
- STM32: Avoid warnings when building with W=1
- Ingenic: Fix a coccinelle warning
- r852: Call a helper to simplify the code

CFI core:
- Kill useless initializer in mtd_do_chip_probe()
- Fix a rare write failure seen on some cfi_cmdset_0002 compliant
  Parallel NORs
- Bunch of cleanups for cfi_cmdset_0002 driver's write functions by
  Tokunori Ikegami <ikegami.t@gmail.com>

----------------------------------------------------------------
Alexander Sverdlin (1):
      mtd: spi-nor: intel-spi: Whitelist 4B read commands

Arnd Bergmann (1):
      mtd: rawnand: remove w90x900 driver

Ashish Kumar (2):
      mtd: spi-nor: Add support for mt35xu02g
      mtd: spi-nor: Rename "n25q512a" to "mt25qu512a (n25q512a)"

Avi Fishman (1):
      mtd: spi-nor: Add Winbond w25q256jvm

Boris Brezillon (9):
      mtd: spi-nor: Move m25p80 code in spi-nor.c
      mtd: spi-nor: Rework hwcaps selection for the spi-mem case
      mtd: spi-nor: Add a default_init() fixup hook for gd25q256
      mtd: spi-nor: Create a ->set_4byte() method
      mtd: spi-nor: Rework the SPI NOR lock/unlock logic
      mtd: spi-nor: Add post_sfdp() hook to tweak flash config
      mtd: spi-nor: Add spansion_post_sfdp_fixups()
      mtd: spi-nor: Add a ->convert_addr() method
      mtd: spi-nor: Add the SPI_NOR_XSR_RDY flag

Christoph Hellwig (1):
      mtd: pxa2xx: Use ioremap_cache insted of ioremap_cached

Christophe Kerello (1):
      mtd: rawnand: stm32_fmc2: avoid warnings when building with W=1 option

Chuhong Yuan (1):
      mtd: rawnand: r852: Use dev_get_drvdata

Claire Lin (1):
      mtd: rawnand: brcmnand: Fix ecc chunk calculation for erased page bitfips

Colin Ian King (1):
      mtd: rawnand: remove redundant assignment to variable ret

Dan Carpenter (1):
      mtd: spi-nor: Fix an error code in spi_nor_read_raw()

Eugeniy Paltsev (1):
      mtd: spi-nor: add support for sst26wf016b memory IC

Julia Lawall (1):
      mtd: rawnand: ingenic: fix devm_platform_ioremap_resource.cocci warnings

Jungseung Lee (1):
      mtd: spi-nor : Remove SPI_NOR_HAS_TB flag on s25fl512s

Linus Walleij (5):
      mtd: parsers: Move TI AR7 parser
      mtd: parsers: Move BCM47xx parser
      mtd: parsers: Move BCM63xx parser
      mtd: parsers: Move OF parser
      mtd: parsers: Move CMDLINE parser

Masahiro Yamada (1):
      mtd: rawnand: sharpsl: add include guard to linux/mtd/sharpsl.h

Mason Yang (2):
      mtd: rawnand: Add Macronix raw NAND controller driver
      dt-bindings: mtd: Document Macronix raw NAND controller bindings

Mika Westerberg (1):
      mtd: spi-nor: intel-spi: Add support for Intel Tiger Lake SPI serial flash

Nishka Dasgupta (7):
      mtd: rawnand: vf610: Add of_node_put() before goto
      mtd: rawnand: oxnas: Add of_node_put()
      mtd: rawnand: tango: Add of_node_put() before return
      mtd: rawnand: meson: Add of_node_put() before return
      mtd: rawnand: ingenic: Add of_node_put() before return
      mtd: spi-nor: aspeed-smc: Add of_node_put()
      mtd: spi-nor: hisi-sfc: Add of_node_put() before break

Richard Weinberger (3):
      Merge tag 'nand/for-5.4' of git://git.kernel.org/.../mtd/linux into mtd/for-5.4
      Merge tag 'spi-nor/for-5.4' of git://git.kernel.org/.../mtd/linux into mtd/for-5.4
      Merge tag 'cfi/for-5.4-rc1' of https://github.com/r-vignesh/linux into mtd/for-5.4

Sascha Hauer (1):
      mtd: rawnand: omap2: Fix number of bitflips reporting with ELM

Sergei Shtylyov (1):
      mtd: chips: gen_probe: kill useless initializer in mtd_do_chip_probe()

Thor Thayer (1):
      mtd: spi-nor: Fix Cadence QSPI RCU Schedule Stall

Tokunori Ikegami (9):
      mtd: cfi_cmdset_0002: Use chip_good() to retry in do_write_oneword()
      mtd: cfi_cmdset_0002: Remove goto statement from do_write_buffer()
      mtd: cfi_cmdset_0002: Split do_write_oneword() to reduce function size
      mtd: cfi_cmdset_0002: Split do_write_oneword() op_done goto statement
      mtd: cfi_cmdset_0002: Split write-to-buffer-reset sequence
      mtd: cfi_cmdset_0002: Split wait for write buffer completion sequence
      mtd: cfi_cmdset_0002: Split do_write_oneword() to reduce exit paths
      mtd: cfi_cmdset_0002: Disable write buffer functions if FORCE_WORD_WRITE is 1
      mtd: cfi_cmdset_0002: Fix do_erase_chip() to get chip as erasing mode

Tudor Ambarus (17):
      mtd: spi-nor: fix description for int (*flash_is_locked)()
      mtd: nand: fix typo, s/erasablocks/eraseblocks
      Merge tag 'v5.3-rc6' into spi-nor/next
      mtd: spi-nor: Remove unused macro
      mtd: spi-nor: Regroup flash parameter and settings
      mtd: spi-nor: Use nor->params
      mtd: spi-nor: Drop quad_enable() from 'struct spi-nor'
      mtd: spi-nor: Move erase_map to 'struct spi_nor_flash_parameter'
      mtd: spi-nor: Add default_init() hook to tweak flash parameters
      mtd: spi-nor: Move manufacturer quad_enable() in ->default_init()
      mtd: spi-nor: Split spi_nor_init_params()
      mtd: spi-nor: Add a ->setup() method
      mtd: spi-nor: Add s3an_post_sfdp_fixups()
      mtd: spi-nor: Bring flash params init together
      mtd: spi-nor: Introduce spi_nor_set_addr_width()
      mtd: spi-nor: Introduce spi_nor_get_flash_info()
      mtd: spi-nor: remove superfluous pass of nor->info->sector_size

Vignesh Raghavendra (1):
      mtd: spi-nor: always use bounce buffer for register read/writes

Wenwen Wang (4):
      mtd: spi-nor: fix a memory leak bug
      mtd: onenand_base: Fix a memory leak bug
      mtd: rawnand: Fix a memory leak bug
      mtd: sm_ftl: Fix memory leak in sm_init_zone() error path

Wolfram Sang (1):
      mtd: pismo: Simplify getting the adapter of a client

Xiaoming Ni (1):
      mtd: phram: Module parameters add writable permissions

Zhuohao Lee (2):
      mtd: mtdcore: add debugfs nodes for querying the flash name and id
      mtd: spi-nor: enable the debugfs for the partname and partid

zhengbin (1):
      mtd: pmc551: Remove set but not used variable 'soff_lo'

 .../devicetree/bindings/mtd/mxic-nand.txt          |   36 +
 drivers/mtd/Kconfig                                |   67 -
 drivers/mtd/Makefile                               |    5 -
 drivers/mtd/chips/cfi_cmdset_0002.c                |  299 ++--
 drivers/mtd/chips/gen_probe.c                      |    2 +-
 drivers/mtd/devices/Kconfig                        |   18 -
 drivers/mtd/devices/Makefile                       |    1 -
 drivers/mtd/devices/m25p80.c                       |  347 ----
 drivers/mtd/devices/phram.c                        |    2 +-
 drivers/mtd/devices/pmc551.c                       |    9 +-
 drivers/mtd/maps/pismo.c                           |    3 +-
 drivers/mtd/maps/pxa2xx-flash.c                    |    3 +-
 drivers/mtd/mtdcore.c                              |   86 +-
 drivers/mtd/nand/onenand/onenand_base.c            |    3 +
 drivers/mtd/nand/raw/Kconfig                       |   14 +-
 drivers/mtd/nand/raw/Makefile                      |    2 +-
 drivers/mtd/nand/raw/brcmnand/brcmnand.c           |    5 +-
 drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c    |    5 +-
 drivers/mtd/nand/raw/meson_nand.c                  |    1 +
 drivers/mtd/nand/raw/mxic_nand.c                   |  582 +++++++
 drivers/mtd/nand/raw/nand_base.c                   |    2 +-
 drivers/mtd/nand/raw/nand_bbt.c                    |   10 +-
 drivers/mtd/nand/raw/nuc900_nand.c                 |  304 ----
 drivers/mtd/nand/raw/omap2.c                       |    2 +-
 drivers/mtd/nand/raw/oxnas_nand.c                  |    8 +-
 drivers/mtd/nand/raw/r852.c                        |    4 +-
 drivers/mtd/nand/raw/stm32_fmc2_nand.c             |   90 +-
 drivers/mtd/nand/raw/tango_nand.c                  |    1 +
 drivers/mtd/nand/raw/vf610_nfc.c                   |    1 +
 drivers/mtd/parsers/Kconfig                        |   68 +
 drivers/mtd/parsers/Makefile                       |    5 +
 drivers/mtd/{ => parsers}/ar7part.c                |    0
 drivers/mtd/{ => parsers}/bcm47xxpart.c            |    0
 drivers/mtd/{ => parsers}/bcm63xxpart.c            |    0
 drivers/mtd/{ => parsers}/cmdlinepart.c            |    0
 drivers/mtd/{ => parsers}/ofpart.c                 |    0
 drivers/mtd/sm_ftl.c                               |    5 +-
 drivers/mtd/spi-nor/Kconfig                        |    2 +
 drivers/mtd/spi-nor/aspeed-smc.c                   |    4 +-
 drivers/mtd/spi-nor/cadence-quadspi.c              |   19 +-
 drivers/mtd/spi-nor/hisi-sfc.c                     |    1 +
 drivers/mtd/spi-nor/intel-spi-pci.c                |    1 +
 drivers/mtd/spi-nor/intel-spi.c                    |    2 +
 drivers/mtd/spi-nor/spi-nor.c                      | 1712 +++++++++++++++-----
 include/linux/mtd/mtd.h                            |    3 +
 include/linux/mtd/nand.h                           |    2 +-
 include/linux/mtd/sharpsl.h                        |    5 +
 include/linux/mtd/spi-nor.h                        |  291 +++-
 48 files changed, 2531 insertions(+), 1501 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mtd/mxic-nand.txt
 delete mode 100644 drivers/mtd/devices/m25p80.c
 create mode 100644 drivers/mtd/nand/raw/mxic_nand.c
 delete mode 100644 drivers/mtd/nand/raw/nuc900_nand.c
 rename drivers/mtd/{ => parsers}/ar7part.c (100%)
 rename drivers/mtd/{ => parsers}/bcm47xxpart.c (100%)
 rename drivers/mtd/{ => parsers}/bcm63xxpart.c (100%)
 rename drivers/mtd/{ => parsers}/cmdlinepart.c (100%)
 rename drivers/mtd/{ => parsers}/ofpart.c (100%)

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
