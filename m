Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B15B51F934F
	for <lists+linux-mtd@lfdr.de>; Mon, 15 Jun 2020 11:25:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/N1wf3uoEwva7IcHgp/4E32/Y4NN8fiaYSClMOrLBU=; b=hxJv9ZAOMAZqjP
	yG8ZJpS62bEaOj0Atxpo49LP7EplEpl59yLE8eco3x9tod8T3QtKxErjMogYVZUgddAg9nlrcLARy
	L9eVQkWYEi1pPQxg27YJzLGHho2K/WazmCcbVieMUWmpHfftzrZtssSDXttxiBnOwhZDxpSbDctcp
	b1rK2JTCqqwDdPru59nuS9wfQ6wGphJZTgKnuCvDC1cJxdhCOFujfiuyvOz0bGOLwQ3YxgNjnFwwH
	xOBPAAujBVv4EpM50ubZiGrOYOmV2ZQIydiiF1iuBnyF4UKrudEAxFG+qhItG3WxJEZacvUI6f9xH
	gc73c3kTSaWEUhBYd9/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklMj-0001QJ-7V; Mon, 15 Jun 2020 09:25:17 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jklFw-0001j3-V9
 for linux-mtd@lists.infradead.org; Mon, 15 Jun 2020 09:18:18 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 09B667927415FEDBAA23;
 Mon, 15 Jun 2020 17:18:04 +0800 (CST)
Received: from [10.65.58.147] (10.65.58.147) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.487.0;
 Mon, 15 Jun 2020 17:17:55 +0800
Subject: Re: [PATCH] mtd:spi-nor: Fix an issue of releasing resources during
 read/write
To: <tudor.ambarus@microchip.com>, <linux-mtd@lists.infradead.org>
References: <1589542063-6703-1-git-send-email-yangyicong@hisilicon.com>
From: Yicong Yang <yangyicong@hisilicon.com>
Message-ID: <de34a767-c9b4-55c3-5a2c-3cda8008d77b@hisilicon.com>
Date: Mon, 15 Jun 2020 17:18:04 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <1589542063-6703-1-git-send-email-yangyicong@hisilicon.com>
X-Originating-IP: [10.65.58.147]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_021817_278028_90D69C37 
X-CRM114-Status: GOOD (  18.77  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: vigneshr@ti.com, chenxiang66@hisilicon.com, richard@nod.at,
 john.garry@huawei.com, linuxarm@huawei.com, miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

A friendly ping...

Thanks.

On 2020/5/15 19:27, Yicong Yang wrote:
> From: Xiang Chen <chenxiang66@hisilicon.com>
>
> If rmmod the driver during read or write, the driver will release the
> resources which are used during read or write, so it is possible to
> refer to NULL pointer.
>
> Use the testcase "mtd_debug read /dev/mtd0 0xc00000 0x400000 dest_file &
> sleep 0.5;rmmod spi_hisi_sfc_v3xx.ko", the issue can be reproduced in
> hisi_sfc_v3xx driver.
>
> To avoid the issue, fill the interface _get_device and _put_device of
> mtd_info to grab the reference to the spi controller driver module, so
> the request of rmmod the driver is rejected before read/write is finished.
>
> Signed-off-by: Xiang Chen <chenxiang66@hisilicon.com>
> Signed-off-by: Yicong Yang <yangyicong@hisilicon.com>
> ---
> The patch has been tested with hisi_sfc_v3xx controller. May someone
> could test it on a spi-nor-controller device as we don't have one
> aside.
>
>  drivers/mtd/spi-nor/core.c | 33 +++++++++++++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
>
> diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
> index cc68ea8..05370cb 100644
> --- a/drivers/mtd/spi-nor/core.c
> +++ b/drivers/mtd/spi-nor/core.c
> @@ -2977,6 +2977,37 @@ static void spi_nor_resume(struct mtd_info *mtd)
>  		dev_err(dev, "resume() failed\n");
>  }
>
> +static int spi_nor_get_device(struct mtd_info *mtd)
> +{
> +	struct mtd_info *master = mtd_get_master(mtd);
> +	struct spi_nor *nor = mtd_to_spi_nor(master);
> +	struct device *dev;
> +
> +	if (nor->spimem)
> +		dev = nor->spimem->spi->controller->dev.parent;
> +	else
> +		dev = nor->dev;
> +
> +	if (!try_module_get(dev->driver->owner))
> +		return -ENODEV;
> +
> +	return 0;
> +}
> +
> +static void spi_nor_put_device(struct mtd_info *mtd)
> +{
> +	struct mtd_info *master = mtd_get_master(mtd);
> +	struct spi_nor *nor = mtd_to_spi_nor(master);
> +	struct device *dev;
> +
> +	if (nor->spimem)
> +		dev = nor->spimem->spi->controller->dev.parent;
> +	else
> +		dev = nor->dev;
> +
> +	module_put(dev->driver->owner);
> +}
> +
>  void spi_nor_restore(struct spi_nor *nor)
>  {
>  	/* restore the addressing mode */
> @@ -3151,6 +3182,8 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
>  	mtd->_erase = spi_nor_erase;
>  	mtd->_read = spi_nor_read;
>  	mtd->_resume = spi_nor_resume;
> +	mtd->_get_device = spi_nor_get_device;
> +	mtd->_put_device = spi_nor_put_device;
>
>  	if (nor->params->locking_ops) {
>  		mtd->_lock = spi_nor_lock;
> --
> 2.8.1
>
> .
>


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
