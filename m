Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 758C8197E4B
	for <lists+linux-mtd@lfdr.de>; Mon, 30 Mar 2020 16:26:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V7nrqCyMtCn4G6ftwSvGS1rDVAJ7qK7NwwvFjuZOspQ=; b=Fyyy8OKSqtu+jfgaiYm5SDdif
	n83FBaXP5Zwif0AmrJ3ElQOEonAYiQZI7NSWKLJCNsEURghUhsjABSzO8C2bRCMSr6sMBaZ3lQasD
	GPU4lY7ucc/aRL87x0wjCqli/SKTBnKhtiuB47F+cS4gaL5bdWkEfFq+AbhGZs80yhdzViYZ+P5pO
	8PkT6RAQnyb1Qv6pwcIbDFJ2/swgxQcUeVXzPP2IauoCFUj79JfL/nRtaL89FWP4Nb7ohwig1lHIh
	YaTDvCQPB9VLptykhH0O25TV/22jC2x1RNJlSIj4na8SjVAi6Q2gg5K+aCsfd66GSFMvbwbcMCCii
	jbb7MvdjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIvMq-0003RQ-BY; Mon, 30 Mar 2020 14:26:20 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvMh-0003QQ-I4
 for linux-mtd@lists.infradead.org; Mon, 30 Mar 2020 14:26:14 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id EF5D03B0274E1140F657;
 Mon, 30 Mar 2020 22:26:05 +0800 (CST)
Received: from [127.0.0.1] (10.67.102.197) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.487.0; Mon, 30 Mar 2020
 22:25:56 +0800
Subject: Re: [PATCH v3] mtd:fix cache_state to avoid writing to bad blocks
 repeatedly
To: Miquel Raynal <miquel.raynal@bootlin.com>
References: <1585575925-84017-1-git-send-email-nixiaoming@huawei.com>
 <20200330155222.20359293@xps13>
From: Xiaoming Ni <nixiaoming@huawei.com>
Message-ID: <5bf71fe1-2dd1-f45a-5858-433f340b167e@huawei.com>
Date: Mon, 30 Mar 2020 22:25:36 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200330155222.20359293@xps13>
X-Originating-IP: [10.67.102.197]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_072612_629531_33928516 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: wangle6@huawei.com, vigneshr@ti.com, richard@nod.at, houtao1@huawei.com,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 zhangweimin12@huawei.com, gregkh@linuxfoundation.org, stable@kernel.org,
 yebin10@huawei.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 2020/3/30 21:52, Miquel Raynal wrote:
> Hi Xiaoming,
> 
> Xiaoming Ni <nixiaoming@huawei.com> wrote on Mon, 30 Mar 2020 21:45:25
> +0800:
> 
>> The function call process is as follows:
>> 	mtd_blktrans_work()
>> 	  while (1)
>> 	    do_blktrans_request()
>> 	      mtdblock_writesect()
>> 	        do_cached_write()
>> 	          write_cached_data() /*if cache_state is STATE_DIRTY*/
>> 	            erase_write()
>>
>> write_cached_data() returns failure without modifying cache_state
>> and cache_offset. So when do_cached_write() is called again,
>> write_cached_data() will be called again to perform erase_write()
>> on the same cache_offset.
>>
>> But if this cache_offset points to a bad block, erase_write() will
>> always return -EIO. Writing to this mtdblk is equivalent to losing
>> the current data, and repeatedly writing to the bad block.
>>
>> Repeatedly writing a bad block has no real benefits,
>> but brings some negative effects:
>> 1 Lost subsequent data
>> 2 Loss of flash device life
>> 3 erase_write() bad blocks are very time-consuming. For example:
>> 	the function do_erase_oneblock() in chips/cfi_cmdset_0020.c or
>> 	chips/cfi_cmdset_0002.c may take more than 20 seconds to return
>>
>> Therefore, when erase_write() returns -EIO in write_cached_data(),
>> clear cache_state to avoid writing to bad blocks repeatedly.
>>
>> Signed-off-by: Xiaoming Ni <nixiaoming@huawei.com>
>> Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>
>> Cc: stable@vger.kernel.org
> 
> Still missing:
> * Fixes: tag
> * Wrong title prefix
> 

Fixes: 	1da177e4c3f41524e88 "Linux-2.6.12-rc2"

Is it described like this?

Do I need to go to
https://git.kernel.org/pub/scm/linux/kernel/git/history/history.git
to trace back the older commit records?

Thanks
Xiaoming Ni





______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
