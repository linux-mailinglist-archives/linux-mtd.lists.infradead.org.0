Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 030C417E311
	for <lists+linux-mtd@lfdr.de>; Mon,  9 Mar 2020 16:05:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ih/t74SYwDHmd4+nrwRJ9AdPV27bRvH7UBUObIlG25c=; b=a8d5nXJMZVlYvy3RxwrkJIohY
	b9H4Hl8G7jEJQCIZoVnJZzGWF4GGMRosqC/NX/A3ZYT8FIkWcGrnO7Iw5+aIdZPKaBtn4/N8F9LQS
	23jCrPeR8UJ0rxRjslZCb0LbuNuKaiN/fWl0H5NzYHR5h4yWrim2uaZKfjkMuALixEZhYyEUWcSHi
	PbUMtOgOUQSOSj95CaL5nmxu6dM+n8HWrQqUsaXq4CDy/G52Jf42URguEL70apnfinV8FvUT7imqL
	YrdLi7TJWKNfuyQ43JklNRndZAf6vBscqDzAknPuyv9pjlBYhjOCrDQPjkVqRhwxN/Y3D9HiMiTMd
	cIhenneRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBJy0-0005HZ-96; Mon, 09 Mar 2020 15:05:16 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBJxn-0004VF-8V
 for linux-mtd@lists.infradead.org; Mon, 09 Mar 2020 15:05:05 +0000
Received: from lhreml706-cah.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 98E2EFDCB4FBB79E5101;
 Mon,  9 Mar 2020 15:04:54 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml706-cah.china.huawei.com (10.201.108.47) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 9 Mar 2020 15:04:54 +0000
Received: from [127.0.0.1] (10.202.226.45) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 9 Mar 2020
 15:04:54 +0000
Subject: Re: [RESEND PATCH 1/2] mtd: spi-nor: Clear WEL bit when erase or
 program errors occur
To: <Tudor.Ambarus@microchip.com>, <vigneshr@ti.com>,
 <chenxiang66@hisilicon.com>
References: <3245882.KdgdznRmvK@localhost.localdomain>
 <20200309101501.191530-1-tudor.ambarus@microchip.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <3499f977-e176-52b0-63d1-23e1b4d67b7b@huawei.com>
Date: Mon, 9 Mar 2020 15:04:53 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200309101501.191530-1-tudor.ambarus@microchip.com>
Content-Language: en-US
X-Originating-IP: [10.202.226.45]
X-ClientProxiedBy: lhreml720-chm.china.huawei.com (10.201.108.71) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_080503_468310_89486996 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
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
Cc: linux-mtd@lists.infradead.org, js07.lee@samsung.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 09/03/2020 10:15, Tudor.Ambarus@microchip.com wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> When an Erase or Program error occurs on a spansion/cypress or a
> micron flash, the WEL bit remains set to one and should be cleared
> with a WRDI command in order to protect against inadvertent writes
> that can possible corrupt the contents of the memory.
> 
> Winbond, macronix, gd, etc., do not support the E_ERR and P_ERR bits in the
> Status Register and always clear the WEL bit regardless of the outcome
> of the erase or page program operation (ex w25q40bw, MX25L25635E).
> 
> Issue a WRDI command when erase or page program errors occur.
> 
> Reported-by: John Garry <john.garry@huawei.com>

Previously I would get this unlock complaint:

root@ubuntu:/home/john# flash_lock -l /dev/mtd0
root@ubuntu:/home/john# sudo mtd_debug erase /dev/mtd0 0xf80000 4096
[  167.458647] spi-nor spi-PRP0001:00: Erase operation failed.
[  167.464248] spi-nor spi-PRP0001:00: Attempted to modify a protected 
sector.
MEMERASE: Input/output error
root@ubuntu:/home/john# flash_lock -u /dev/mtd0
flash_lock: error!: could not unlock device: /dev/mtd0

             error 5 (Input/output error)

Now, no such issue. Thanks

Tested-by: John Garry <john.garry@huawei.com>

> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
>   drivers/mtd/spi-nor/spi-nor.c | 22 ++++++++++++++++++++++
>   1 file changed, 22 insertions(+)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index caf0c109cca0..4376d8ad5834 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -819,6 +819,17 @@ static int spi_nor_sr_ready(struct spi_nor *nor)
>   			dev_err(nor->dev, "Programming Error occurred\n");
>   
>   		spi_nor_clear_sr(nor);
> +
> +		/*
> +		 * WEL bit remains set to one when an erase or page program
> +		 * error occurs. Issue a Write Disable command to protect
> +		 * against inadvertent writes that can possibly corrupt the
> +		 * contents of the memory.
> +		 */
> +		ret = spi_nor_write_disable(nor);
> +		if (ret)
> +			return ret;
> +
>   		return -EIO;
>   	}
>   
> @@ -875,6 +886,17 @@ static int spi_nor_fsr_ready(struct spi_nor *nor)
>   			"Attempted to modify a protected sector.\n");
>   
>   		spi_nor_clear_fsr(nor);
> +
> +		/*
> +		 * WEL bit remains set to one when an erase or page program
> +		 * error occurs. Issue a Write Disable command to protect
> +		 * against inadvertent writes that can possibly corrupt the
> +		 * contents of the memory.
> +		 */
> +		ret = spi_nor_write_disable(nor);
> +		if (ret)
> +			return ret;
> +
>   		return -EIO;
>   	}
>   
> 


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
