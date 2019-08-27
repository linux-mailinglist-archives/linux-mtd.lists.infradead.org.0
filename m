Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 564F39DD2D
	for <lists+linux-mtd@lfdr.de>; Tue, 27 Aug 2019 07:33:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1QOpQNq/2M3BpdGsZZTcWRuXIIR9YYYMQxQD7Ve6/hI=; b=Hy+SYQgUxd/P7u4mRS/Lme4xmd
	yA2Crv6ySyvFQxnr7UuGKkCF48Pj2cFcU30/NNxCGIuGQvRpRvkBneh2CbibccgECWZRAxJ0qxqhl
	vZEk5P06+ycAeRQA+nXnNgZp6RoJWEdIcWvbeTNMQ7VZZ6OS0sMp7WCHEOz4l3NQZaNDV9Fq/wxOa
	c+lvs17NggtA63uY8iPvZWYgo16ghusXnmL45Yn8wYQmMWPqGK7ecz7l6zeF/YRSGV+FxZzsJ06pC
	cyaN2jD5djVtdCrcoi7gJa0GReFQ0JD1zLnohtHfA+RqHILL6L0OSnQvb60SNXANAr2TnCibJBY0D
	FTVu664g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2U6S-0007Ax-K5; Tue, 27 Aug 2019 05:33:12 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2U6A-00079G-DQ
 for linux-mtd@lists.infradead.org; Tue, 27 Aug 2019 05:32:55 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7R5WmOf083296;
 Tue, 27 Aug 2019 00:32:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566883968;
 bh=ZOBbzQh94UfeCL8yLtF+6xVYeEmFxPdI6e7CvV3hTzM=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=wUk9ilqktGaFxEiH/+rKN+HVtB8E02XJGpfhA6usfpIxMXXvauQ+7lPgSHfLmFoTL
 irrUt+o7acSoP3nGXvLgGBELUgnBeguDj4Et8fj5iKMzdMKPfi4mSpVVkTCIlDObdV
 4Et5BEKHeDTL5DN/3xB5/Bad5Awulaf9Edum5TPs=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7R5Wm33103738
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 27 Aug 2019 00:32:48 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 27
 Aug 2019 00:32:48 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 27 Aug 2019 00:32:48 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7R5Wird016346;
 Tue, 27 Aug 2019 00:32:45 -0500
Subject: Re: [RESEND PATCH v3 00/20] mtd: spi-nor: move manuf out of the core
To: <Tudor.Ambarus@microchip.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20190826120821.16351-1-tudor.ambarus@microchip.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <c70b4cc8-466d-3b20-2b0c-ff456f1b7b97@ti.com>
Date: Tue, 27 Aug 2019 11:03:22 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190826120821.16351-1-tudor.ambarus@microchip.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_223254_582038_7EBBA9D2 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 26/08/19 5:38 PM, Tudor.Ambarus@microchip.com wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
[...]
> 
> Tested on sst26vf064b with atmel-quadspi SPIMEM driver.
> 

Tested s25fl256s, mx66l51235l with ti-qspi and s25fl512s with
cadence-quadspi. n25q128a13 with legacy 1 bit SPI controller.

> Boris Brezillon (7):
>   mtd: spi-nor: Add a default_init() fixup hook for gd25q256
>   mtd: spi-nor: Create a ->set_4byte() method
>   mtd: spi-nor: Rework the SPI NOR lock/unlock logic
>   mtd: spi-nor: Add post_sfdp() hook to tweak flash config
>   mtd: spi-nor: Add spansion_post_sfdp_fixups()
>   mtd: spi-nor: Add a ->convert_addr() method
>   mtd: spi-nor: Add the SPI_NOR_XSR_RDY flag
> 
> Tudor Ambarus (13):
>   mtd: spi-nor: Regroup flash parameter and settings
>   mtd: spi-nor: Use nor->params
>   mtd: spi-nor: Drop quad_enable() from 'struct spi-nor'
>   mtd: spi-nor: Move erase_map to 'struct spi_nor_flash_parameter'
>   mtd: spi-nor: Add default_init() hook to tweak flash parameters
>   mtd: spi_nor: Move manufacturer quad_enable() in ->default_init()
>   mtd: spi-nor: Split spi_nor_init_params()
>   mtd: spi_nor: Add a ->setup() method
>   mtd: spi-nor: Add s3an_post_sfdp_fixups()
>   mtd: spi-nor: Bring flash params init together
>   mtd: spi_nor: Introduce spi_nor_set_addr_width()
>   mtd: spi-nor: Introduce spi_nor_get_flash_info()
>   mtd: spi-nor: Rework the disabling of block write protection
> 
>  drivers/mtd/spi-nor/spi-nor.c | 1304 +++++++++++++++++++++++------------------
>  include/linux/mtd/spi-nor.h   |  298 +++++++---
>  2 files changed, 927 insertions(+), 675 deletions(-)
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
