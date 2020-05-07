Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC161C83DD
	for <lists+linux-mtd@lfdr.de>; Thu,  7 May 2020 09:54:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J6kU1bJFmAOWSm0TIiMc/Z+BOhlc+PHAiGNanRVcexc=; b=tPxSKz4gNIHa8IOpvsqDf1FKw
	8eKjYcGoQsEnJiijxpv5pGiLDGbZAWqVPHO5BQ5tZV8GEr0SCG9SQ+IxkNGtbcEN0+G398iPf+5ZO
	O2iExcbsYN9FnpeK+kil9U1aZhVBw0Es1tEqBcGZil3xRaj7lQIXEtCi8RvLJCrbySr8LYg57xGnF
	BWvTZP9WHZGhd75UTHUS/IhmuKQQ1llOkFK43B5i+UBOahFNr0Tp4DKP7+1xLTxhu6eWQc5LB23tY
	Kbs+2dl/QWfxnfUzwLf99e2oT3VsXVn2O7cA4Q+L1IBntzdz0ROEPVz7HogFwnzn3cyoYFikDtxhy
	sWflLGUaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWbM5-0007dM-WC; Thu, 07 May 2020 07:54:06 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWbLw-0007cj-JA
 for linux-mtd@lists.infradead.org; Thu, 07 May 2020 07:53:58 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 1481E6579506A334BFF2;
 Thu,  7 May 2020 15:53:44 +0800 (CST)
Received: from [127.0.0.1] (10.67.102.197) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.487.0; Thu, 7 May 2020
 15:53:38 +0800
Subject: ping; [PATCH v4] mtd: clear cache_state to avoid writing to bad
 blocks repeatedly
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>
References: <1585618319-119741-1-git-send-email-nixiaoming@huawei.com>
From: Xiaoming Ni <nixiaoming@huawei.com>
Message-ID: <528b61f3-bddb-d508-8f18-37cebec9e5eb@huawei.com>
Date: Thu, 7 May 2020 15:53:32 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <1585618319-119741-1-git-send-email-nixiaoming@huawei.com>
X-Originating-IP: [10.67.102.197]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_005356_797993_77F2DD77 
X-CRM114-Status: GOOD (  18.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [45.249.212.191 listed in wl.mailspike.net]
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
Cc: wangle6@huawei.com, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, zhangweimin12@huawei.com, houtao1@huawei.com,
 yebin10@huawei.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

ping

On 2020/3/31 9:31, Xiaoming Ni wrote:
> The function call process is as follows:
> 	mtd_blktrans_work()
> 	  while (1)
> 	    do_blktrans_request()
> 	      mtdblock_writesect()
> 	        do_cached_write()
> 	          write_cached_data() /*if cache_state is STATE_DIRTY*/
> 	            erase_write()
> 
> write_cached_data() returns failure without modifying cache_state
> and cache_offset. So when do_cached_write() is called again,
> write_cached_data() will be called again to perform erase_write()
> on the same cache_offset.
> 
> But if this cache_offset points to a bad block, erase_write() will
> always return -EIO. Writing to this mtdblk is equivalent to losing
> the current data, and repeatedly writing to the bad block.
> 
> Repeatedly writing a bad block has no real benefits,
> but brings some negative effects:
> 1 Lost subsequent data
> 2 Loss of flash device life
> 3 erase_write() bad blocks are very time-consuming. For example:
> 	the function do_erase_oneblock() in chips/cfi_cmdset_0020.c or
> 	chips/cfi_cmdset_0002.c may take more than 20 seconds to return
> 
> Therefore, when erase_write() returns -EIO in write_cached_data(),
> clear cache_state to avoid writing to bad blocks repeatedly.
> 
> Signed-off-by: Xiaoming Ni <nixiaoming@huawei.com>
> Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>   drivers/mtd/mtdblock.c | 11 +++++++----
>   1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/mtd/mtdblock.c b/drivers/mtd/mtdblock.c
> index 078e0f6..32e52d8 100644
> --- a/drivers/mtd/mtdblock.c
> +++ b/drivers/mtd/mtdblock.c
> @@ -89,8 +89,6 @@ static int write_cached_data (struct mtdblk_dev *mtdblk)
>   
>   	ret = erase_write (mtd, mtdblk->cache_offset,
>   			   mtdblk->cache_size, mtdblk->cache_data);
> -	if (ret)
> -		return ret;
>   
>   	/*
>   	 * Here we could arguably set the cache state to STATE_CLEAN.
> @@ -98,9 +96,14 @@ static int write_cached_data (struct mtdblk_dev *mtdblk)
>   	 * be notified if this content is altered on the flash by other
>   	 * means.  Let's declare it empty and leave buffering tasks to
>   	 * the buffer cache instead.
> +	 *
> +	 * If this cache_offset points to a bad block, data cannot be
> +	 * written to the device. Clear cache_state to avoid writing to
> +	 * bad blocks repeatedly.
>   	 */
> -	mtdblk->cache_state = STATE_EMPTY;
> -	return 0;
> +	if (ret == 0 || ret == -EIO)
> +		mtdblk->cache_state = STATE_EMPTY;
> +	return ret;
>   }
>   
>   
> 



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
