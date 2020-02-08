Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF43F1562C0
	for <lists+linux-mtd@lfdr.de>; Sat,  8 Feb 2020 04:00:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+oUMLXPI69lcqMF40tiqXEaWeDyglKsL5PLD33GctCQ=; b=ZLkIQdK36/e1Kv
	p2nieoFrKRJKGP7iXhD0/SG1+2GNT2MMZsCLAtzHQmW/4JdgSiyK1/x1zbrpnZ6ygBr6/WUpNHeKC
	CuARNdk6qvYTZ+sdj1SyhjJajM8103woU9pATK6GUOAd9Z1jFMeK5meFP1Gd/Vlz8599S51CWVQTu
	Vcu/tEthiaRqkmT1h2mVa4UCHDCdXg0L20K2muSQjl449DawBaoDvXeWtDzFgKErMWC0jHURUxqN6
	9Gh5yq1aNtft70RdeInJbE917TueX0qlK2w/EN5HSGAsxKcoxX/gSJU/V5CqKSLFbtdhMchCA5k6p
	ChDuNuZbAZyAkbDtX0sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0GMN-0003tq-6Y; Sat, 08 Feb 2020 03:00:43 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0GMG-0003pX-QH
 for linux-mtd@lists.infradead.org; Sat, 08 Feb 2020 03:00:38 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 383721DB7146CE327F82;
 Sat,  8 Feb 2020 11:00:17 +0800 (CST)
Received: from [127.0.0.1] (10.133.219.224) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0;
 Sat, 8 Feb 2020 11:00:16 +0800
Subject: Re: [PATCH] ubi: fix memory leak from ubi->fm_anchor
To: Richard Weinberger <richard.weinberger@gmail.com>, Quanyang Wang
 <quanyang.wang@windriver.com>
References: <20200114093305.666-1-quanyang.wang@windriver.com>
 <415718c7-4c55-fb5d-0b10-ad5323daa5a0@windriver.com>
 <CAFLxGvw-q3N98RhbtWCE5mGGv6qwrJBDTMTs_yMe9QDY6U4TAQ@mail.gmail.com>
From: Hou Tao <houtao1@huawei.com>
Message-ID: <a1b8f42b-9076-cc73-a298-4ddba7cfbc32@huawei.com>
Date: Sat, 8 Feb 2020 11:00:15 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <CAFLxGvw-q3N98RhbtWCE5mGGv6qwrJBDTMTs_yMe9QDY6U4TAQ@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.133.219.224]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_190037_024926_AE2AB97C 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 Sascha Hauer <s.hauer@pengutronix.de>, LKML <linux-kernel@vger.kernel.org>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

The same problem has already been fixed by the patch in the following link early:

https://lore.kernel.org/linux-mtd/0000000000006d0a820599366088@google.com/T/#medffabe29b65eb5feb387bff84c6ec7ad235c310

I will send a v2 next week.

Regards,
Tao

On 2020/2/7 23:54, Richard Weinberger wrote:
> On Mon, Feb 3, 2020 at 10:14 AM Quanyang Wang
> <quanyang.wang@windriver.com> wrote:
>>
>> Ping?
>>
>> On 1/14/20 5:33 PM, quanyang.wang@windriver.com wrote:
>>> From: Quanyang Wang <quanyang.wang@windriver.com>
>>>
>>> Some ubi_wl_entry are allocated in erase_aeb() and one of them is
>>> assigned to ubi->fm_anchor in __erase_worker(). And it should be freed
>>> like others which are freed in tree_destroy(). Otherwise, it will
>>> cause a memory leak:
>>>
>>> unreferenced object 0xbc094318 (size 24):
>>>    comm "ubiattach", pid 491, jiffies 4294954015 (age 420.110s)
>>>    hex dump (first 24 bytes):
>>>      30 43 09 bc 00 00 00 00 00 00 00 00 01 00 00 00  0C..............
>>>      02 00 00 00 04 00 00 00                          ........
>>>    backtrace:
>>>      [<6c2d5089>] erase_aeb+0x28/0xc8
>>>      [<a1c68fb1>] ubi_wl_init+0x1d8/0x4a8
>>>      [<d4f408f8>] ubi_attach+0xffc/0x10d0
>>>      [<add3b5d8>] ubi_attach_mtd_dev+0x5b4/0x9fc
>>>      [<d375a11c>] ctrl_cdev_ioctl+0xb8/0x1d8
>>>      [<72b250f2>] vfs_ioctl+0x28/0x3c
>>>      [<b80095d7>] do_vfs_ioctl+0xb0/0x798
>>>      [<bf9ef69e>] ksys_ioctl+0x58/0x74
>>>      [<5355bdbe>] ret_fast_syscall+0x0/0x54
>>>      [<90c6c3ca>] 0x7eadf854
>>>
>>> Signed-off-by: Quanyang Wang <quanyang.wang@windriver.com>
>>> ---
>>>   drivers/mtd/ubi/wl.c | 2 ++
>>>   1 file changed, 2 insertions(+)
> 
> Good catch!
> Fixes: f9c34bb52997 ("ubi: Fix producing anchor PEBs")
> 
> ---
> Thanks,
> //richard
> 
> ______________________________________________________
> Linux MTD discussion mailing list
> http://lists.infradead.org/mailman/listinfo/linux-mtd/
> 
> 


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
