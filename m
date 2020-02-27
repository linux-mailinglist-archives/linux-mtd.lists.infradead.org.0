Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 678BA17251A
	for <lists+linux-mtd@lfdr.de>; Thu, 27 Feb 2020 18:31:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CnDdRGrp5Q3Qs6tVEpnmL6Pp2ZjF1rOkymvY+3VbA44=; b=V3mC+K5jFxbAfL
	AUjqmkemWaXBNJb9VmVylefokhNarQ8R5lXHfC+ytj4srN+lxVoCcVtcKx4diq9ajEUj//CYVn8JJ
	1RJleBRru+XZ+8nBH/WgXczX4VLn2uX87ysiPIeRm3ma7ZMWPZN9G054DMff1N9UYIU2XNRkq1dGt
	9+/C4wUTztvM+4QzJkPFL7ovBXqlUON3QPadZyu3mh8tHNhArLYY7+GE603Pmrpjccm0Xv/igZp8b
	aZlKOGKc6MzLNB6N10IllML6y3AqUhKe3XV0aBJGprs5sM6ewWiL36y2f+GEeWhvQGrG/GSzKSMuR
	gqIlsCoOQ5JFN0X4ZaIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Mzq-0003YR-F2; Thu, 27 Feb 2020 17:30:50 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Mzf-0003WQ-8y
 for linux-mtd@lists.infradead.org; Thu, 27 Feb 2020 17:30:41 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 09A3E296482;
 Thu, 27 Feb 2020 17:30:36 +0000 (GMT)
Date: Thu, 27 Feb 2020 18:30:32 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
Subject: Re: [PATCH v11 2/2] spi: cadence-quadspi: Add support for the
 Cadence QSPI controller
Message-ID: <20200227183032.77ef0795@collabora.com>
In-Reply-To: <20200227062708.21544-3-vadivel.muruganx.ramuthevar@linux.intel.com>
References: <20200227062708.21544-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200227062708.21544-3-vadivel.muruganx.ramuthevar@linux.intel.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_093040_048489_4C7C8687 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, tudor.ambarus@gmail.com, vigneshr@ti.com,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 cyrille.pitchen@atmel.com, marex@denx.de, boris.brezillon@free-electrons.com,
 tien.fong.chee@intel.com, richard@nod.at, simon.k.r.goldschmidt@gmail.com,
 devicetree@vger.kernel.org, cheol.yong.kim@intel.com, robh+dt@kernel.org,
 qi-ming.wu@intel.com, david.oberhollenzer@sigma-star.at,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, dinguyen@kernel.org,
 broonie@kernel.org, computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 27 Feb 2020 14:27:08 +0800
"Ramuthevar, Vadivel MuruganX"
<vadivel.muruganx.ramuthevar@linux.intel.com> wrote:

> From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
> 
> Add support for the Cadence QSPI controller. This controller is
> present in the Intel Lightning Mountain(LGM) SoCs, Altera and TI SoCs.
> This driver has been tested on the Intel LGM SoCs.
> 
> This driver does not support generic SPI and also the implementation
> only supports spi-mem interface to replace the existing driver in
> mtd/spi-nor/cadence-quadspi.c, the existing driver only support SPI-NOR
> flash memory.

Is it really supporting SPI NORs only, or is it just that you only
tested it with a spi-nor?

> 
> Signed-off-by: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> Reported-by: kbuild test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

Reported-by? What has been reported?

> ---
>  drivers/mtd/spi-nor/Kconfig                        |  11 -
>  drivers/mtd/spi-nor/Makefile                       |   1 -
>  drivers/spi/Kconfig                                |  10 +
>  drivers/spi/Makefile                               |   1 +
>  .../spi-cadence-quadspi.c}                         | 641 ++++++++++-----------

Looks like this could be split in several patches to ease the review:

1/ convert to spi-mem
2/ move the driver to drivers/spi
3/ add support for intel,lgm-qspi

other than that, that's good to see one more spi-nor controller driver
converted to spi-mem.


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
