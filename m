Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 276351AEB06
	for <lists+linux-mtd@lfdr.de>; Sat, 18 Apr 2020 10:55:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oqwQKSjclB+SklT042emfeZ9pBE4T94R+XaD6D211l4=; b=EnAv45RUJI1Uf0
	r1UAvRpIT3UdbCprj1Uha8+VZkpaGC84cZAKR7FQa/45YcHiE42bfweylduDiKP2GQgElNFPQnC/+
	vCsumRzzxydBTHrCUxmriZgxUqYttlP2t8EvDpDXjyDAK5ohQvKaZKG/wGNc1pkWtRX6LTp+RiNa5
	66U7qhFRV0z5nnGBcvMv3c103MNvMRSUKOz1S18TkIy8Dy+sPQRdHXcFXliwTI+gIxvb/AgLWGUOR
	s9tPwQCHj3DZct/TOEIuVm3YdDsqmJXRWYodZl3wt4CcmH0tNhEaXxZiXa/7nnHqfVwxtHjVybn/E
	eQ2ffIAQPqGaKfQTw+lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPjGP-0007wr-J0; Sat, 18 Apr 2020 08:55:49 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPjGG-0007vN-K6
 for linux-mtd@lists.infradead.org; Sat, 18 Apr 2020 08:55:43 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6596C2A2084;
 Sat, 18 Apr 2020 09:55:37 +0100 (BST)
Date: Sat, 18 Apr 2020 10:55:33 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: "Ramuthevar,Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
Subject: Re: [PATCH v2 2/2] mtd: rawnand: Add NAND controller support on
 Intel LGM SoC
Message-ID: <20200418105533.477ce529@collabora.com>
In-Reply-To: <20200417082147.43384-3-vadivel.muruganx.ramuthevar@linux.intel.com>
References: <20200417082147.43384-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200417082147.43384-3-vadivel.muruganx.ramuthevar@linux.intel.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_015540_929350_413469C5 
X-CRM114-Status: GOOD (  32.19  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: cheol.yong.kim@intel.com, devicetree@vger.kernel.org,
 andriy.shevchenko@intel.com, anders.roxell@linaro.org, vigneshr@ti.com,
 arnd@arndb.de, hauke.mehrtens@intel.com, richard@nod.at, qi-ming.wu@intel.com,
 brendanhiggins@google.com, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, robh+dt@kernel.org, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com, tglx@linutronix.de, masonccyang@mxic.com.tw,
 piotrs@cadence.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 17 Apr 2020 16:21:47 +0800
"Ramuthevar,Vadivel MuruganX"
<vadivel.muruganx.ramuthevar@linux.intel.com> wrote:

> From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
> 
> This patch adds the new IP of Nand Flash Controller(NFC) support
> on Intel's Lightning Mountain(LGM) SoC.
> 
> DMA is used for burst data transfer operation, also DMA HW supports
> aligned 32bit memory address and aligned data access by default.
> DMA burst of 8 supported. Data register used to support the read/write
> operation from/to device.
> 
> NAND controller driver implements ->exec_op() to replace legacy hooks,
> these specific call-back method to execute NAND operations.
> 
> Signed-off-by: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
> ---
>  drivers/mtd/nand/raw/Kconfig          |   7 +
>  drivers/mtd/nand/raw/Makefile         |   1 +
>  drivers/mtd/nand/raw/intel_lgm_nand.c | 740 ++++++++++++++++++++++++++++++++++

I wonder if we shouldn't name the driver infineon-nand-controller.c
since the original design comes from Infineon IIUC. intel_lgm_nand.c is
definitely misleading, as we also have a nand_intel.c file which is for
Intel NAND chips (not NAND controllers). If we keep intel in the name,
let's at least add a "-controller" suffix to make it clear.

Side note for Miquel: I guess we would also benefit from having a clear
core vs controller-drivers split as recently done for spi-nor (a
controller subdir has been created).

>  3 files changed, 748 insertions(+)
>  create mode 100644 drivers/mtd/nand/raw/intel_lgm_nand.c
> 
> diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfig
> index a80a46bb5b8b..9efc4bbaf4a3 100644
> --- a/drivers/mtd/nand/raw/Kconfig
> +++ b/drivers/mtd/nand/raw/Kconfig
> @@ -457,6 +457,13 @@ config MTD_NAND_CADENCE
>  	  Enable the driver for NAND flash on platforms using a Cadence NAND
>  	  controller.
>  
> +config MTD_NAND_INTEL_LGM
> +	tristate "Support for NAND controller on Intel LGM SoC"
> +	depends on X86

Do we have a hard dependency on x86 here? Maybe 'depends on HAS_MMIO'
would be enough.

> +	help
> +	  Enables support for NAND Flash chips on Intel's LGM SoC.
> +          NAND flash interfaced through the External Bus Unit.
> +
>  comment "Misc"
>  
>  config MTD_SM_COMMON
> diff --git a/drivers/mtd/nand/raw/Makefile b/drivers/mtd/nand/raw/Makefile
> index 2d136b158fb7..49a301ae0c9d 100644
> --- a/drivers/mtd/nand/raw/Makefile
> +++ b/drivers/mtd/nand/raw/Makefile
> @@ -58,6 +58,7 @@ obj-$(CONFIG_MTD_NAND_TEGRA)		+= tegra_nand.o
>  obj-$(CONFIG_MTD_NAND_STM32_FMC2)	+= stm32_fmc2_nand.o
>  obj-$(CONFIG_MTD_NAND_MESON)		+= meson_nand.o
>  obj-$(CONFIG_MTD_NAND_CADENCE)		+= cadence-nand-controller.o
> +obj-$(CONFIG_MTD_NAND_INTEL_LGM)	+= intel_lgm_nand.o
>  
>  nand-objs := nand_base.o nand_legacy.o nand_bbt.o nand_timings.o nand_ids.o
>  nand-objs += nand_onfi.o
> diff --git a/drivers/mtd/nand/raw/intel_lgm_nand.c b/drivers/mtd/nand/raw/intel_lgm_nand.c
> new file mode 100644
> index 000000000000..96cd1831f070
> --- /dev/null
> +++ b/drivers/mtd/nand/raw/intel_lgm_nand.c
> @@ -0,0 +1,740 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/* Copyright (c) 2019 Intel Corporation. */
> +
> +#include <linux/clk.h>
> +#include <linux/completion.h>
> +#include <linux/dmaengine.h>
> +#include <linux/dma-direction.h>
> +#include <linux/dma-mapping.h>
> +#include <linux/err.h>
> +#include <linux/init.h>
> +#include <linux/iopoll.h>
> +#include <linux/module.h>
> +#include <linux/resource.h>
> +#include <linux/sched.h>
> +#include <linux/types.h>
> +#include <linux/mtd/mtd.h>
> +#include <linux/mtd/rawnand.h>
> +#include <linux/mtd/nand_ecc.h>
> +#include <linux/platform_device.h>
> +#include <linux/of.h>
> +#include <linux/mtd/partitions.h>
> +#include <linux/io.h>
> +#include <linux/slab.h>
> +#include <mtd/mtd-abi.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/mtd/nand.h>
> +
> +#define LGM_CLC			0x000
> +#define LGM_CLC_RST		0x00000000u
> +
> +#define LGM_NAND_ECC_OFFSET	0x008
> +
> +#define LGM_ADDR_SEL(n)		(0x20 + (n) * 4)
> +#define LGM_ADDR_MASK		(5 << 4)
> +#define LGM_ADDR_SEL_REGEN	0x1
> +
> +#define LGM_BUSCON(n)		(0x60 + (n) * 4)
> +#define LGM_BUSCON_CMULT_V4	0x1
> +#define LGM_BUSCON_RECOVC(n)	((n) << 2)
> +#define LGM_BUSCON_HOLDC(n)	((n) << 4)
> +#define LGM_BUSCON_WAITRDC(n)	((n) << 6)
> +#define LGM_BUSCON_WAITWRC(n)	((n) << 8)
> +#define LGM_BUSCON_BCGEN_CS	0x0
> +#define LGM_BUSCON_SETUP_EN	BIT(22)
> +#define LGM_BUSCON_ALEC		0xC000
> +

Hm, I'm pretty sure we don't need the LGM_ prefix here.

> +#define NAND_CON		0x0B0
> +#define NAND_CON_NANDM_EN	BIT(0)
> +#define NAND_CON_NANDM_DIS	0x0
> +#define NAND_CON_CSMUX_E_EN	BIT(1)
> +#define NAND_CON_ALE_P_LOW	BIT(2)
> +#define NAND_CON_CLE_P_LOW	BIT(3)
> +#define NAND_CON_CS_P_LOW	BIT(4)
> +#define NAND_CON_SE_P_LOW	BIT(5)
> +#define NAND_CON_WP_P_LOW	BIT(6)
> +#define NAND_CON_PRE_P_LOW	BIT(7)
> +#define NAND_CON_IN_CS_S(n)	((n) << 8)
> +#define NAND_CON_OUT_CS_S(n)	((n) << 10)
> +#define NAND_CON_LAT_EN_CS_P	((0x3D) << 18)
> +
> +#define NAND_WAIT		0x0B4
> +#define NAND_WAIT_RDBY		BIT(0)
> +#define NAND_WAIT_WR_C		BIT(3)
> +
> +#define NAND_CTL1		0x110
> +#define NAND_CTL1_ADDR_3_SHIFT	24
> +
> +#define NAND_CTL2		0x114
> +#define NAND_CTL2_ADDR_5_SHIFT	8
> +#define NAND_CTL2_CYC_N_V5	(0x2 << 16)
> +
> +#define NAND_INT_MSK_CTL	0x124
> +#define NAND_INT_MSK_CTL_WR_C	BIT(4)
> +
> +#define NAND_INT_STA		0x128
> +#define NAND_INT_STA_WR_C	BIT(4)
> +
> +#define NAND_CTL		0x130
> +#define NAND_CTL_MODE_ECC	0x1
> +#define NAND_CTL_GO		BIT(2)
> +#define NAND_CTL_CE_SEL_CS(n)	BIT(3 + (n))
> +#define NAND_CTL_RW_READ	0x0
> +#define NAND_CTL_RW_WRITE	BIT(10)
> +#define NAND_CTL_ECC_OFF_V8TH	BIT(11)
> +#define NAND_CTL_CKFF_EN	0x0
> +#define NAND_CTL_MSG_EN		BIT(17)
> +
> +#define NAND_PARA0		0x13c
> +#define NAND_PARA0_PAGE_V8192	0x3
> +#define NAND_PARA0_PIB_V256	(0x3 << 4)
> +#define NAND_PARA0_BYP_EN_NP	0x0
> +#define NAND_PARA0_BYP_DEC_NP	0x0
> +#define NAND_PARA0_TYPE_ONFI	BIT(18)
> +#define NAND_PARA0_ADEP_EN	BIT(21)
> +
> +#define NAND_CMSG_0		0x150
> +#define NAND_CMSG_1		0x154
> +
> +#define NAND_WRITE_CMD		(NAND_CON_CS_P_LOW | NAND_CON_CLE_P_LOW)
> +#define NAND_WRITE_ADDR		(NAND_CON_CS_P_LOW | NAND_CON_ALE_P_LOW)

I would redefine ALE, CLE and CS here instead of re-using the NAND_CON
definitions. Even if they have the same value they represent different
things I think. One is encoding the signal polarity when configuring
the NAND controller, and the other one is an offset in the memory bus
MMIO range that's used to control the CLE/ALE/CS signals.

#define NAND_ALE_OFFS			BIT(2)
#define NAND_CLE_OFFS			BIT(3)
#define NAND_CS_OFFS			BIT(4)

> +#define NAND_WRITE_DATA		NAND_CON_CS_P_LOW
> +#define NAND_READ_DATA		NAND_CON_CS_P_LOW

Can we not hide that behind macros. And there's no point having 2
different definitions for read/write, since all they do is keeping the
CS line asserted, the direction is selection by the operation done on
the bus (read or write). BTW, you even mix those without realizing the
mistake in your implementation :P.

> +
> +#define NAND_CHIP_NO_SELECTION	-1
> +#define NAND_CHIP_SELECTION	0x0
> +
> +struct lgm_nand_host {

infineon_nand_controller?

> +	struct nand_controller	controller;
> +	struct nand_chip	chip;
> +	void __iomem		*lgm_va;
> +	void __iomem		*hsnand_va;
> +	void __iomem		*nandaddr_va;

You can drop the _va suffixes and pick names describing what's exposed
by the MMIO range (lgm doesn't sounds like a good name to me).

> +	struct clk		*clk;
> +	unsigned long		clk_rate;
> +	u32			cs;
> +	u32			nd_para0;
> +	struct device		*dev;
> +	struct dma_chan		*dma_tx;
> +	struct dma_chan		*dma_rx;
> +	struct completion	dma_access_complete;
> +	const char *cs_name;
> +};
> +
> +static u8 lgm_nand_readb(struct nand_chip *chip, int op)

Make op an unsigned int.

> +{
> +	struct lgm_nand_host *lgm_host = nand_get_controller_data(chip);
> +	void __iomem *nand_wait = lgm_host->lgm_va + NAND_WAIT;
> +	u32 stat;
> +	int ret;
> +	u8 val;
> +
> +	val = readb(lgm_host->nandaddr_va + op);
> +
> +	ret = readl_poll_timeout(nand_wait, stat, stat & NAND_WAIT_WR_C,
> +				 20, 1000);
> +	if (ret)
> +		dev_warn(lgm_host->dev,
> +			 "lgm nand write timeout. nand_wait(0x%p)=0x%x\n",
> +			 nand_wait, readl(nand_wait));
> +
> +	return val;
> +}
> +
> +static void lgm_nand_writeb(struct nand_chip *chip, int op, u8 value)
> +{
> +	struct lgm_nand_host *lgm_host = nand_get_controller_data(chip);
> +	void __iomem *nand_wait = lgm_host->lgm_va + NAND_WAIT;
> +	u32 stat;
> +	int ret;
> +
> +	writeb(value, lgm_host->nandaddr_va + op);

Looks like NAND_CON_CS_P_LOW is always set, so no need to force the
caller to pass it in op.

> +
> +	ret = readl_poll_timeout(nand_wait, stat, stat & NAND_WAIT_WR_C,
> +				 20, 1000);
> +	if (ret)
> +		dev_warn(lgm_host->dev,
> +			 "lgm nand write timeout. nand_wait(0x%p)=0x%x\n",
> +			 nand_wait, readl(nand_wait));
> +}
> +
> +static unsigned char lgm_read_byte(struct nand_chip *chip)
> +{
> +	return lgm_nand_readb(chip, NAND_READ_DATA);
> +}

This one should not be needed.

> +
> +static void lgm_read_buf(struct nand_chip *chip, u_char *buf, int len)
> +{
> +	int i;
> +
> +	for (i = 0; i < len; i++)
> +		buf[i] = lgm_nand_readb(chip, NAND_WRITE_DATA);
> +}
> +
> +static void lgm_write_buf(struct nand_chip *chip, const u_char *buf, int len)
> +{
> +	int i;
> +
> +	for (i = 0; i < len; i++)
> +		lgm_nand_writeb(chip, NAND_WRITE_DATA, buf[i]);
> +}
> +
> +static void lgm_select_chip(struct nand_chip *chip, int select)
> +{
> +	struct lgm_nand_host *lgm_host = nand_get_controller_data(chip);
> +	void __iomem *nand_con = lgm_host->lgm_va + NAND_CON;
> +	u32 cs = lgm_host->cs;
> +	int val;
> +
> +	switch (select) {
> +	case NAND_CHIP_NO_SELECTION:
> +		val = readl(nand_con);
> +		writel(val & ~NAND_CON_NANDM_EN, nand_con);
> +		break;

Please move that to an unselect_chip() function. I also see that this
function is never called with NAND_CHIP_NO_SELECTION. Oh, and you don't
need the select argument since you only support one CS per chip.

> +	case NAND_CHIP_SELECTION:
> +		writel(NAND_CON_NANDM_EN | NAND_CON_CSMUX_E_EN |
> +		       NAND_CON_CS_P_LOW | NAND_CON_SE_P_LOW |
> +		       NAND_CON_WP_P_LOW | NAND_CON_PRE_P_LOW |
> +		       NAND_CON_IN_CS_S(cs) | NAND_CON_OUT_CS_S(cs) |
> +		       NAND_CON_LAT_EN_CS_P, nand_con);
> +		break;
> +	default:
> +		break;
> +	}
> +}
> +
> +static int lgm_dev_ready(struct nand_chip *chip)
> +{
> +	struct lgm_nand_host *lgm_host = nand_get_controller_data(chip);
> +
> +	return readl(lgm_host->lgm_va + NAND_WAIT) & NAND_WAIT_RDBY;
> +}
> +
> +static void lgm_cmd_ctrl(struct nand_chip *chip, int cmd, unsigned int ctrl)
> +{
> +	if (cmd == NAND_CMD_NONE)
> +		return;
> +
> +	if (ctrl & NAND_CLE)
> +		lgm_nand_writeb(chip, NAND_WRITE_CMD, cmd);
> +	else if (ctrl & NAND_ALE)
> +		lgm_nand_writeb(chip, NAND_WRITE_ADDR, cmd);
> +}

Looks like you're still sticking to the old cmd_ctrl() interface.
Please inline what can be inlined in exec_op() (everything that's
related to CMD/ADDR cycle emission) and add helpers for the read/write
data logic.

> +
> +static int lgm_nand_ooblayout_ecc(struct mtd_info *mtd, int section,
> +				  struct mtd_oob_region *oobregion)
> +{
> +	struct nand_chip *chip = mtd_to_nand(mtd);
> +
> +	if (section)
> +		return -ERANGE;
> +
> +	oobregion->offset = LGM_NAND_ECC_OFFSET;
> +	oobregion->length = chip->ecc.total;
> +
> +	return 0;
> +}
> +
> +static int lgm_nand_ooblayout_free(struct mtd_info *mtd, int section,
> +				   struct mtd_oob_region *oobregion)
> +{
> +	struct nand_chip *chip = mtd_to_nand(mtd);
> +
> +	if (section)
> +		return -ERANGE;
> +
> +	oobregion->offset = chip->ecc.total + LGM_NAND_ECC_OFFSET;
> +	oobregion->length = mtd->oobsize - oobregion->offset;
> +
> +	return 0;
> +}
> +
> +static const struct mtd_ooblayout_ops lgm_nand_ooblayout_ops = {
> +	.ecc = lgm_nand_ooblayout_ecc,
> +	.free = lgm_nand_ooblayout_free,
> +};
> +
> +static inline struct lgm_nand_host *nand_to_lgm(struct nand_chip *chip)
> +{
> +	return container_of(chip, struct lgm_nand_host, chip);
> +}

Please move that function next to the struct definition, and you can
drop the inline specifier, the compiler should be smart enough to
inline it anyway.

> +static int lgm_nand_exec_op(struct nand_chip *chip,
> +			    const struct nand_operation *op, bool check_only)
> +{
> +	struct lgm_nand_host *host = nand_to_lgm(chip);
> +	const struct nand_op_instr *instr = NULL;
> +	unsigned int op_id;
> +	int i, ret = 0;
> +
> +	for (op_id = 0; op_id < op->ninstrs; op_id++) {
> +		instr = &op->instrs[op_id];
> +
> +		lgm_select_chip(chip, host->cs);

Should be moved before the for() loop (no need to select the chip
every time you excute an instruction).

> +
> +		switch (instr->type) {
> +		case NAND_OP_CMD_INSTR:
> +			lgm_cmd_ctrl(chip, instr->ctx.cmd.opcode, NAND_CLE);

			lgm_nand_writeb(chip, NAND_CLE_OFFS,
					instr->ctx.cmd.opcode);	

> +		break;

Missing tab here^.

> +
> +		case NAND_OP_ADDR_INSTR:
> +			for (i = 0; i < instr->ctx.addr.naddrs; i++)
> +				lgm_cmd_ctrl(chip, instr->ctx.addr.addrs[i],
> +					     NAND_ALE);

				lgm_nand_writeb(chip, NAND_ALE_OFFS,
						instr->ctx.addr.addrs[i]);

> +			break;
> +
> +		case NAND_OP_DATA_IN_INSTR:
> +			lgm_read_buf(chip, instr->ctx.data.buf.in,
> +				     instr->ctx.data.len);
> +			break;
> +
> +		case NAND_OP_DATA_OUT_INSTR:
> +			lgm_write_buf(chip, instr->ctx.data.buf.out,
> +				      instr->ctx.data.len);
> +			break;
> +
> +		case NAND_OP_WAITRDY_INSTR:
> +			ret = lgm_dev_ready(chip);

That's wrong, WAITRDY should wait for the NAND_WAIT_RDBY flag to be
set but you only check its value once.

			ret = readl_poll_timeout(lgm_host->lgm_va +
						  NAND_WAIT, status,
						  status & NAND_WAIT_RDBY, 20,
						  instr->ctx.waitrdy.timeout_ms * 1000);
> +			break;
> +		}
> +	}
> +
> +	return ret;
> +}
> +
> +static const struct nand_controller_ops lgm_nand_controller_ops {
> +	.attach_chip = lgm_nand_attach_chip,
> +	.exec_op = lgm_nand_exec_op,
> +};
> +
> +static void lgm_dma_exit(struct lgm_nand_host *lgm_host)

lgm_dma_cleanup()?

> +{
> +	if (lgm_host->dma_rx) {
> +		dma_release_channel(lgm_host->dma_rx);
> +		lgm_host->dma_rx = NULL;
> +	}
> +
> +	if (lgm_host->dma_tx) {
> +		dma_release_channel(lgm_host->dma_tx);
> +		lgm_host->dma_tx = NULL;
> +	}
> +}
> +
> +static int lgm_dma_init(struct device *dev, struct lgm_nand_host *lgm_host)
> +{
> +	int ret;
> +
> +	/* Prepare for TX DMA: */
> +	lgm_host->dma_tx = dma_request_chan(dev, "tx");
> +	if (IS_ERR(lgm_host->dma_tx)) {
> +		ret = PTR_ERR(lgm_host->dma_tx);
> +		dev_err(dev, "can't get the TX DMA channel, error %d!\n", ret);
> +		goto err;
> +	}
> +
> +	/* Prepare for RX: */
> +	lgm_host->dma_rx = dma_request_chan(dev, "rx");

Hm, too bad there's not devm_ version for that one.

> +	if (IS_ERR(lgm_host->dma_rx)) {
> +		ret = PTR_ERR(lgm_host->dma_rx);
> +		dev_err(dev, "can't get the RX DMA channel, error %d\n", ret);
> +		goto err;
> +	}
> +
> +	return 0;
> +err:

No need for an error path if you just return the error code. BTW, I
don't like those functions that don't cleanup behind them when an error
happens. I know it's all handled in the dma_exit() function, but still. 

> +	return ret;
> +}
> +
> +static int lgm_nand_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct lgm_nand_host *lgm_host;
> +	struct nand_chip *nand;
> +	phys_addr_t nandaddr_pa;
> +	struct mtd_info *mtd;
> +	struct resource *res;
> +	int ret;
> +	u32 cs;
> +
> +	lgm_host = devm_kzalloc(dev, sizeof(*lgm_host), GFP_KERNEL);
> +	if (!lgm_host)
> +		return -ENOMEM;
> +
> +	lgm_host->dev = dev;
> +	nand_controller_init(&lgm_host->controller);
> +
> +	lgm_host->lgm_va =
> +	devm_platform_ioremap_resource_byname(pdev, "lgmnand");

	lgm_host->lgm_va = devm_platform_ioremap_resource_byname(pdev,
								  "lgmnand");

> +	if (IS_ERR(lgm_host->lgm_va))
> +		return PTR_ERR(lgm_host->lgm_va);
> +
> +	lgm_host->hsnand_va =
> +	devm_platform_ioremap_resource_byname(pdev, "hsnand");
> +	if (IS_ERR(lgm_host->hsnand_va))
> +		return PTR_ERR(lgm_host->hsnand_va);
> +
> +	ret = device_property_read_u32(dev, "nand,cs", &cs);
> +	if (ret) {
> +		dev_err(dev, "failed to get chip select: %d\n", ret);
> +		return ret;
> +	}
> +
> +	lgm_host->cs = cs;
> +
> +	lgm_host->cs_name = devm_kasprintf(dev, GFP_KERNEL, "nand_cs%d", cs);

You don't need to keep the cs_name attached to lgm_host as it's
automatically release. You can just get rid of the lgm_host->cs_name
field.

> +	if (IS_ERR(lgm_host->cs_name)) {
> +		ret = PTR_ERR(lgm_host->cs_name);
> +		dev_err(dev, "failed to get chip select name: %d\n", ret);
> +		return ret;
> +	}
> +
> +	res = devm_platform_ioremap_resource_byname(pdev, lgm_host->cs_name);
> +	lgm_host->nandaddr_va = res;
> +	nandaddr_pa = res->start;
> +	if (IS_ERR(lgm_host->nandaddr_va))
> +		return PTR_ERR(lgm_host->nandaddr_va);
> +
> +	lgm_host->clk = devm_clk_get(dev, NULL);
> +	if (IS_ERR(lgm_host->clk)) {
> +		ret = PTR_ERR(lgm_host->clk);
> +		dev_err(dev, "failed to get clock: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = clk_prepare_enable(lgm_host->clk);
> +	if (ret) {
> +		dev_err(dev, "failed to enable clock: %d\n", ret);
> +		return ret;
> +	}
> +	lgm_host->clk_rate = clk_get_rate(lgm_host->clk);
> +
> +	ret = lgm_dma_init(dev, lgm_host);
> +	if (ret)
> +		goto disable_clk;
> +
> +	writel(lower_32_bits(nandaddr_pa) | LGM_ADDR_SEL_REGEN | LGM_ADDR_MASK,
> +	       lgm_host->lgm_va + LGM_ADDR_SEL(cs));
> +
> +	writel(LGM_BUSCON_CMULT_V4 | LGM_BUSCON_RECOVC(1) |
> +	       LGM_BUSCON_HOLDC(1) | LGM_BUSCON_WAITRDC(2) |
> +	       LGM_BUSCON_WAITWRC(2) | LGM_BUSCON_BCGEN_CS | LGM_BUSCON_ALEC |
> +	       LGM_BUSCON_SETUP_EN, lgm_host->lgm_va + LGM_BUSCON(cs));
> +
> +	/*
> +	 * NAND physical address selection is based on the chip select
> +	 * and written to ADDR_SEL register to get Memory Region Base address.
> +	 * FPI Bus addresses are compared to this base address in conjunction
> +	 * with the mask control. Driver need to program this field!
> +	 * Address: 0x17400 if chip select is CS_0
> +	 * Address: 0x17C00 if chip select is CS_1
> +	 * Refer the Intel LGM SoC datasheet.
> +	 */
> +	writel(0x17400051, lgm_host->lgm_va + LGM_ADDR_SEL(0));
> +	writel(0x17C00051, lgm_host->lgm_va + LGM_ADDR_SEL(cs));

No magic value please. I guess the 0x51 at the end encode some flags, so
please describe those fields and come with a macro to generate the base
range value (or a mapping table). 

> +	nand_set_flash_node(&lgm_host->chip, dev->of_node);
> +	mtd = nand_to_mtd(&lgm_host->chip);
> +	mtd->dev.parent = dev;
> +	lgm_host->dev = dev;
> +
> +	platform_set_drvdata(pdev, lgm_host);
> +	nand_set_controller_data(&lgm_host->chip, lgm_host);
> +
> +	nand = &lgm_host->chip;
> +	nand->controller = &lgm_host->controller;
> +	nand->controller->ops = &lgm_nand_controller_ops;
> +
> +	/* Scan to find existence of the device */
> +	ret = nand_scan(&lgm_host->chip, 1);
> +	if (ret)
> +		goto exit_dma;
> +
> +	ret = mtd_device_register(mtd, NULL, 0);
> +	if (ret)
> +		goto clean_nand;
> +
> +	return 0;
> +
> +clean_nand:
> +	nand_cleanup(&lgm_host->chip);
> +exit_dma:
> +	lgm_dma_exit(lgm_host);
> +disable_clk:
> +	clk_disable_unprepare(lgm_host->clk);
> +
> +	return ret;
> +}
> +
> +static int lgm_nand_remove(struct platform_device *pdev)
> +{
> +	struct lgm_nand_host *lgm_host = platform_get_drvdata(pdev);
> +
> +	nand_release(&lgm_host->chip);

Can you use mtd_device_unregister() + nand_cleanup() instead, and check
their return value?

> +	clk_disable_unprepare(lgm_host->clk);
> +	lgm_dma_exit(lgm_host);
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id lgm_nand_match[] = {
> +	{ .compatible = "intel,lgm-nand", },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, lgm_nand_match);

You probably have a missing "depends on OF" in your Kconfig.

> +
> +static struct platform_driver lgm_nand_driver = {
> +	.probe = lgm_nand_probe,
> +	.remove = lgm_nand_remove,
> +	.driver = {
> +		.name = "intel-lgm-nand",
> +		.of_match_table = lgm_nand_match,
> +	},
> +
> +};
> +module_platform_driver(lgm_nand_driver);
> +
> +MODULE_LICENSE("GPL v2");
> +MODULE_AUTHOR("Vadivel Murugan R <vadivel.muruganx.ramuthevar@intel.com>");
> +MODULE_DESCRIPTION("Intel's LGM External Bus NAND Controller driver");

I didn't review the DMA and ECC aspects yet, but I think you have enough
things to address for a v3.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
