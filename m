Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6EBB9BD5
	for <lists+linux-mtd@lfdr.de>; Sat, 21 Sep 2019 03:24:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aBvC3TmF80JUILZTP4BQSp5U3MKiWziir0yoK0Jvi2k=; b=tCR7B4jqnioEc5
	t0LS3g45OkiQZxjfKWjckIwbLFR3BfbTKp0q2gZDKS1RChQo8UhU6Sk4v2RdNJ0+FCWcpMhN7kwuE
	VRXLDUZ6WrvLfeStXrVjsUTCQ5QtxGrmjkIdt3iyEze00stqfRKpQf5+Ig+MWu2qDe+5Xqx+ENHeI
	A2ay+XtxlkqoKOxVDJlT/HefOMNrhpi7XFYe/hEQVKDEPJIEzeGvq1iWpKx3QksijesYinC7gkl0H
	sXNFQOHCcSiTttzBCBOWSuim2IOWw5OsDfTX/oM+tnuPjBXfZxRJhnGLRDjF08uvBm80i+4hMgwg1
	37pPPUfU18su5SZANzYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBU8i-0001cl-QW; Sat, 21 Sep 2019 01:24:44 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBU8b-0001c5-O3
 for linux-mtd@lists.infradead.org; Sat, 21 Sep 2019 01:24:39 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 6A9ED10FCBC2F5B5A952;
 Sat, 21 Sep 2019 09:24:26 +0800 (CST)
Received: from [127.0.0.1] (10.177.31.14) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Sat, 21 Sep 2019
 09:24:18 +0800
Subject: Re: [PATCH] jffs2:freely allocate memory when parameters are invalid
To: Richard Weinberger <richard.weinberger@gmail.com>, Xiaoming Ni
 <nixiaoming@huawei.com>
References: <1568962478-126260-1-git-send-email-nixiaoming@huawei.com>
 <20190920114336.GM1131@ZenIV.linux.org.uk>
 <206f8d57-dad9-26c3-6bf6-1d000f5698d4@huawei.com>
 <20190920124532.GN1131@ZenIV.linux.org.uk>
 <20190920125442.GA20754@ZenIV.linux.org.uk>
 <eb679ad2-4020-951c-e4d1-60cb059a5ca8@huawei.com>
 <CAFLxGvzeLTVfA17DMEi5tSkzkUgJncjX5oHWe207x7bfUtugtw@mail.gmail.com>
From: Hou Tao <houtao1@huawei.com>
Message-ID: <b2425bd2-38e9-cb9b-4151-94891f3a71d1@huawei.com>
Date: Sat, 21 Sep 2019 09:24:17 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <CAFLxGvzeLTVfA17DMEi5tSkzkUgJncjX5oHWe207x7bfUtugtw@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.177.31.14]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_182437_954316_35C975F0 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: Boris Brezillon <bbrezillon@kernel.org>,
 Richard Weinberger <richard@nod.at>, LKML <linux-kernel@vger.kernel.org>,
 daniel.santos@pobox.com, linux-mtd@lists.infradead.org,
 Al Viro <viro@zeniv.linux.org.uk>, dilinger@queued.net,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Richard,

On 2019/9/20 22:38, Richard Weinberger wrote:
> On Fri, Sep 20, 2019 at 4:14 PM Xiaoming Ni <nixiaoming@huawei.com> wrote:
>> I still think this is easier to understand:
>>  Free the memory allocated by the current function in the failed branch
> 
> Please note that jffs2 is in "odd fixes only" maintenance mode.
> Therefore patches like this cannot be processed.
> 
> On my never ending review queue are some other jffs2 patches which
> seem to address
> real problems. These go first.
> 
> I see that many patches come form Huawei, maybe one of you can help
> maintaining jffs2?
> Reviews, tests, etc.. are very welcome!
> 
In Huawei we use jffs2 broadly in our products to support filesystem on raw
NOR flash and NAND flash, so fixing the bugs in jffs2 means a lot to us.

Although I have not read all of jffs2 code thoroughly, I had find and "fixed"
some bugs in jffs2 and I am willing to do any help in the jffs2 community. Maybe
we can start by testing and reviewing the pending patches in patch work ?

Regards,
Tao


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
