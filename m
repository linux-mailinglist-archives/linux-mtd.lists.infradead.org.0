Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B95112924
	for <lists+linux-mtd@lfdr.de>; Wed,  4 Dec 2019 11:19:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A6mjqW68jTmRWnkaCjBPeUBh798xw3iBQUXVnR/VIXU=; b=iRCgjcqyqZwP2U5qbgKhQBsKN
	SqSEUTVkdkgUCwbDgBGmTPKyPqd6oabC8ewa55B2onngQh8unaz4iixyf6jpaABNWgAWFZKFLQrYo
	jMREOGRRuegDJC3O55DkWMdINFRdpvp3gxc0JvCJamTcrDX/qe2zrDuIt/4E90vQefi8Afc5RXiGe
	tQ+k4VjLTw07gx+nlhCf2FhXOGuEvA/cPbLZjgY6zGtjEyEMRqkjTcQmpuE8VvkrIzgPBLUxINMS+
	XHkGDDskbZQtCqnvbFEy5H1zxkhijutG7ejLpfF/m+b2edjrn2Nez67TuYsHoMDJkXxOdzt7kC3OX
	FpmT21rtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icRkK-0000Od-MW; Wed, 04 Dec 2019 10:19:00 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icRk8-0000NH-Qq
 for linux-mtd@lists.infradead.org; Wed, 04 Dec 2019 10:18:50 +0000
Received: from lhreml703-cah.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 3C3903F29384EB174FB8;
 Wed,  4 Dec 2019 10:18:39 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml703-cah.china.huawei.com (10.201.108.44) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 4 Dec 2019 10:18:38 +0000
Received: from [127.0.0.1] (10.202.226.46) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Wed, 4 Dec 2019
 10:18:38 +0000
Subject: Re: [PATCH v2] mtd: spi-nor: Fix the writing of the Status Register
 on micron flashes
To: <Tudor.Ambarus@microchip.com>, <vigneshr@ti.com>, <richard@nod.at>,
 <miquel.raynal@bootlin.com>
References: <20191203141625.13839-1-tudor.ambarus@microchip.com>
 <20191203144948.15137-1-tudor.ambarus@microchip.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <4d293b14-c0b4-19c4-6a2b-031336937afa@huawei.com>
Date: Wed, 4 Dec 2019 10:18:37 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20191203144948.15137-1-tudor.ambarus@microchip.com>
Content-Language: en-US
X-Originating-IP: [10.202.226.46]
X-ClientProxiedBy: lhreml702-chm.china.huawei.com (10.201.108.51) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_021849_014825_AF8E4604 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.5 PDS_BTC_ID             FP reduced Bitcoin ID
 2.5 BITCOIN_SPAM_02        BitCoin spam pattern 02
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
Cc: fengsheng5@huawei.com, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, chenxiang <chenxiang66@hisilicon.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 03/12/2019 14:50, Tudor.Ambarus@microchip.com wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> Micron flashes do not support 16 bit writes on the Status Register.
> According to micron datasheets, when using the Write Status Register
> (01h) command, the chip select should be driven LOW and held LOW until
> the eighth bit of the last data byte has been latched in, after which
> it must be driven HIGH. If CS is not driven HIGH, the command is not
> executed, flag status register error bits are not set, and the write enable
> latch remains set to 1. This fixes the lock operations on micron flashes.
> 
> Reported-by: John Garry <john.garry@huawei.com>
> Fixes: 39d1e3340c73 ("mtd: spi-nor: Fix clearing of QE bit on lock()/unlock()")
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>

Thanks,

Tested-by: John Garry <john.garry@huawei.com>

> ---
> v2: reword commit subject
> 
>   drivers/mtd/spi-nor/spi-nor.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index f1490c7b5cb9..7e41493f69d8 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -4607,6 +4607,7 @@ static void sst_set_default_init(struct spi_nor *nor)
>   static void st_micron_set_default_init(struct spi_nor *nor)
>   {
>   	nor->flags |= SNOR_F_HAS_LOCK;
> +	nor->flags &= ~SNOR_F_HAS_16BIT_SR;
>   	nor->params.quad_enable = NULL;
>   	nor->params.set_4byte = st_micron_set_4byte;
>   }
> 


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
