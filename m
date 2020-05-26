Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2EC1B0344
	for <lists+linux-mtd@lfdr.de>; Mon, 20 Apr 2020 09:40:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RYb9ib7/C8VcmydMteyW2Bbyt5Bl0Gt7jvij1SyfuRM=; b=rlfl4icXm3PXIA
	zVcBY15Mp15C2jvh39xh9qK5tqIhlssG+/u6MoxDG501pv/brMpbvq+a1s5R/mkhDlV/VDe/gpwiG
	48QmG/R5+8Cy0CNsQADKDgfIfIGs5VMEZbslpCQTVhKGbP2jdpTGaNo4euovuc2y2I+AXfi6Lzbsd
	LuItiaZ15fFnUwa/E0fzTIM9eDnYA+eilwsw8sDvgG4YuN/z06Z+fnZ80YiheHRw5+zRCLa7OpqUE
	DV0c5hMZNfxCR3cobY3vUi6q9p8TDI62RpH7EPT47kj74jm4+YIY74i4J6e5ibl9dwVeECJy8DLIu
	oXGULA81MfEgxHLnaezQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQR2e-0002kY-LZ; Mon, 20 Apr 2020 07:40:32 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQR2W-0002js-QG
 for linux-mtd@lists.infradead.org; Mon, 20 Apr 2020 07:40:26 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 0FEDC2A0A21;
 Mon, 20 Apr 2020 08:40:21 +0100 (BST)
Date: Mon, 20 Apr 2020 09:40:18 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
Subject: Re: [PATCH v2 2/2] mtd: rawnand: Add NAND controller support on
 Intel LGM SoC
Message-ID: <20200420094018.6fdbda68@collabora.com>
In-Reply-To: <79e186a8-68fb-0e75-910b-9f1b40679ca2@linux.intel.com>
References: <20200417082147.43384-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200417082147.43384-3-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200418105533.477ce529@collabora.com>
 <79e186a8-68fb-0e75-910b-9f1b40679ca2@linux.intel.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_004024_983198_2E412A28 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On Mon, 20 Apr 2020 12:18:34 +0800
"Ramuthevar, Vadivel MuruganX"
<vadivel.muruganx.ramuthevar@linux.intel.com> wrote:


> >> diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfig
> >> index a80a46bb5b8b..9efc4bbaf4a3 100644
> >> --- a/drivers/mtd/nand/raw/Kconfig
> >> +++ b/drivers/mtd/nand/raw/Kconfig
> >> @@ -457,6 +457,13 @@ config MTD_NAND_CADENCE
> >>   	  Enable the driver for NAND flash on platforms using a Cadence NAND
> >>   	  controller.
> >>   
> >> +config MTD_NAND_INTEL_LGM
> >> +	tristate "Support for NAND controller on Intel LGM SoC"
> >> +	depends on X86  
> > Do we have a hard dependency on x86 here? Maybe 'depends on HAS_MMIO'
> > would be enough.  
> yes Boris, we have hard dependency on x86.

Given that the driver will also be used on a MIPS platform I would say
no :P. Just to be clear, I was suggesting to replace the soon to emerge

	depends on X86 || MIPS || COMPILE_TEST
	depends HAS_IOMEM

rule by

	depends on OF || COMPILE_TEST
	depends HAS_IOMEM


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
