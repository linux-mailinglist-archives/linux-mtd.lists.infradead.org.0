Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6BD11395A
	for <lists+linux-mtd@lfdr.de>; Thu,  5 Dec 2019 02:33:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5OBmumoQfUSDVCWJEcIKfU2EzdxMTmu+Zg1bdGRhjtQ=; b=NoF2qoDkSDI7/p
	lAWfbFakWhubWS3fw9Ex71+ZEAcCi3n5Mx1A+dlwrvjzbaWzMfvTOP/09+r8R9UVzKHdaSCmU2FV9
	h9KPjBRKHxy1acLvVdy38erXBfhQ0sJPkTfXPqzN3YkpoSwe7xhmSM9ou/wqUsNEU24k/j9tA7o+M
	Jo5NN4IWE9iC8AFGf15de3CjKW4m1i7Oxh7xBf7OPd6kHWl91++qytXlnOmSpCpYXTzxFzEJDL3z5
	cxn2UtFTsTiTa3L4oz6KlvOhkStL/rKPRJi/yDpcxToiOeRs+SNpqHJxtFYtsDNmTGxyV+N/a1eFr
	g/O4mkGlLvEiyx0Fy9Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icg1X-0000V4-Ve; Thu, 05 Dec 2019 01:33:43 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icg1L-0000Ub-S9
 for linux-mtd@lists.infradead.org; Thu, 05 Dec 2019 01:33:34 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 83A93A039167D4FE9EDB;
 Thu,  5 Dec 2019 09:33:23 +0800 (CST)
Received: from [127.0.0.1] (10.133.219.224) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.439.0;
 Thu, 5 Dec 2019 09:33:19 +0800
Subject: Re: [PATCH] UBI: fix use after free in ubi_remove_volume()
From: Hou Tao <houtao1@huawei.com>
To: Wen Yang <wenyang@linux.alibaba.com>, Richard Weinberger <richard@nod.at>, 
 Miquel Raynal <miquel.raynal@bootlin.com>, Vignesh Raghavendra
 <vigneshr@ti.com>
References: <20191130093317.31352-1-wenyang@linux.alibaba.com>
 <65b49705-e28c-e077-c0de-c5167e34d1c5@huawei.com>
Message-ID: <58208ceb-4d72-c4a1-8a2b-9e38854e3672@huawei.com>
Date: Thu, 5 Dec 2019 09:33:18 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <65b49705-e28c-e077-c0de-c5167e34d1c5@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.133.219.224]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_173332_068961_5EB53406 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 xlpang@linux.alibaba.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

On 2019/12/3 21:13, Hou Tao wrote:
> Reviewed-by: Hou Tao <houtao1@huawei.com>
> 
Sorry for my early conclusion.

The reference of ubi_volume had already been increased in ubi_open_volume()
in ubi_cdev_ioctl(), so this reference dropped in ubi_remove_volume() will not
be the last one, and there will no use-after-free problem.

Regards,
Tao

> On 2019/11/30 17:33, Wen Yang wrote:
>> We can't use "vol" after it has been freed.
>>
>> Fixes: 493cfaeaa0c9 ("mtd: utilize new cdev_device_add helper function")
>> Signed-off-by: Wen Yang <wenyang@linux.alibaba.com>
>> Cc: Richard Weinberger <richard@nod.at>
>> Cc: Miquel Raynal <miquel.raynal@bootlin.com>
>> Cc: Vignesh Raghavendra <vigneshr@ti.com>
>> Cc: linux-mtd@lists.infradead.org
>> Cc: linux-kernel@vger.kernel.org
>> ---
>>  drivers/mtd/ubi/vmt.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/mtd/ubi/vmt.c b/drivers/mtd/ubi/vmt.c
>> index 139ee13..8ff1478 100644
>> --- a/drivers/mtd/ubi/vmt.c
>> +++ b/drivers/mtd/ubi/vmt.c
>> @@ -375,7 +375,6 @@ int ubi_remove_volume(struct ubi_volume_desc *desc, int no_vtbl)
>>  	}
>>  
>>  	cdev_device_del(&vol->cdev, &vol->dev);
>> -	put_device(&vol->dev);
>>  
>>  	spin_lock(&ubi->volumes_lock);
>>  	ubi->rsvd_pebs -= reserved_pebs;
>> @@ -388,6 +387,8 @@ int ubi_remove_volume(struct ubi_volume_desc *desc, int no_vtbl)
>>  	if (!no_vtbl)
>>  		self_check_volumes(ubi);
>>  
>> +	put_device(&vol->dev);
>> +
>>  	return 0;
>>  
>>  out_err:
>>
> 
> 
> ______________________________________________________
> Linux MTD discussion mailing list
> http://lists.infradead.org/mailman/listinfo/linux-mtd/
> 
> 


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
