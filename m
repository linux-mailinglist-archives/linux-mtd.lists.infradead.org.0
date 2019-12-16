Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E18F71208E8
	for <lists+linux-mtd@lfdr.de>; Mon, 16 Dec 2019 15:52:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Mwt/AustqMGAbCkhOj7qJqYKURdcZodEmpOLtefUes0=; b=c+7zccPv6yT/d2kX9iRWMmdbY
	hrlaLs0picihnKpjCUKhwQSV26Ifh1URlqGPjS/WCaV++V5IYfiL9N8lqPZi75xxdvTn/9cd6Rox/
	SpTjb+Uv4yMkRErYI+iKN9Wt2EBnCrm9qk7VJz7VxArjMvv862MNy/JrWjYLorCMxTxSFAIoEWDFv
	5iuZxd/9FFzOyyMHaAbbSaJjhHkDOHsbZioDcvEMgd9/rdE9klN1hB5WnMtM8OgaNMtoSwkKYkNM5
	rm2BSDXHkKIVDhOsg5VFediP2r8BuG4bb9Ez5nH5irj2cjEIntpvVgwRCc6J2RIxZloneEfjDCnTY
	jpyoo8RCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igrjp-0001gf-Mp; Mon, 16 Dec 2019 14:52:45 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igrjh-0001dh-Ea
 for linux-mtd@lists.infradead.org; Mon, 16 Dec 2019 14:52:39 +0000
Received: from LHREML713-CAH.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 3B58AEB36E6F617BABE2;
 Mon, 16 Dec 2019 14:52:25 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 LHREML713-CAH.china.huawei.com (10.201.108.36) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 16 Dec 2019 14:52:24 +0000
Received: from [127.0.0.1] (10.202.226.46) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 16 Dec
 2019 14:52:24 +0000
Subject: Re: [PATCH v2 0/3] HiSilicon v3xx SFC driver
To: <broonie@kernel.org>, <marek.vasut@gmail.com>,
 <tudor.ambarus@microchip.com>
References: <1575900490-74467-1-git-send-email-john.garry@huawei.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <65a6d94b-95b7-b11b-2234-c091ba3f671e@huawei.com>
Date: Mon, 16 Dec 2019 14:52:23 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <1575900490-74467-1-git-send-email-john.garry@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.202.226.46]
X-ClientProxiedBy: lhreml728-chm.china.huawei.com (10.201.108.79) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_065237_640864_BC92898B 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: chenxiang66@hisilicon.com, linux-kernel@vger.kernel.org,
 linuxarm@huawei.com, fengsheng5@huawei.com, linux-spi@vger.kernel.org,
 linux-mtd@lists.infradead.org, xuejiancheng@hisilicon.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 09/12/2019 14:08, John Garry wrote:
> This patchset introduces support for the HiSilicon SFC V3XX driver.
> 

Hi guys,

Just a friendly reminder on this series.

Thanks,
John

> Whilst the kernel tree already includes support for a "HiSilicon SFC
> driver", that is for different HW. Indeed, as mentioned in patch #1, the
> naming for that driver could be better, as it should support more memory
> technologies than SPI NOR (as I have been told), and it is actually known
> internally as FMC. As such, maybe "hisi-fmc" would have been better, but
> we can't change that now.
> 
> I used V3XX in this driver name, as that is the unique versioning for
> this HW.
> 
> As for the driver itself, it is quite simple. Only ACPI firmware is
> supported, and we assume m25p80 compatible SPI NOR part will be used.
> 
> DMA is not supported, and we just use polling mode for operation
> completion notification. The driver uses the SPI MEM OPs.
> 
> Changes from v1:
> - Add ACPI kconfig dependency
> - Fix up header comment style
> - Change macros naming style
> - Try to enforce aligned accesses in hisi_sfc_v3xx_adjust_op_size()
> 
> John Garry (3):
>    mtd: spi-nor: hisi-sfc: Try to provide some clarity on which SFC we
>      are
>    spi: Add HiSilicon v3xx SPI NOR flash controller driver
>    MAINTAINERS: Add a maintainer for the HiSilicon v3xx SFC driver
> 
>   MAINTAINERS                     |   6 +
>   drivers/mtd/spi-nor/Kconfig     |   4 +-
>   drivers/mtd/spi-nor/hisi-sfc.c  |   2 +-
>   drivers/spi/Kconfig             |   9 +
>   drivers/spi/Makefile            |   1 +
>   drivers/spi/spi-hisi-sfc-v3xx.c | 284 ++++++++++++++++++++++++++++++++
>   6 files changed, 303 insertions(+), 3 deletions(-)
>   create mode 100644 drivers/spi/spi-hisi-sfc-v3xx.c
> 


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
