Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2356FBC262
	for <lists+linux-mtd@lfdr.de>; Tue, 24 Sep 2019 09:14:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BTfsdlIt8O4NVaJf7wZCHgK+YUmf8ub3xZ6XUnv2vRk=; b=PL1gYIREMP1o2s
	wH9nfKk0/7khVqorMch3MsflZ0h+Ac0q8BEveqBjj6Yqy87rWfPTgBghQHslL2QJjhl8oZYwuwrSW
	B5ARGHbSPn5vs02hIkBeVR9jax4LD8Ys78E3r3Dr53+mmhEhbv/5gofI2YfKGIVuGJPg/W6UcE+PP
	dCoZJHhS15h9Q7yotyVmFfKm3vrI8AlI3FyUTaq64M9dQ7BhGMz95p/Yci0BwrHrJ2Vw2ajh4b6Gw
	aQFcck1Ng/7MgGhpS2iOcSR1UYGySCQhW0OxjqC28+gT5I8WI+aLOSBqupuIYK7T7JPQpvweuFM56
	BMfQ0PFVRiAnXrlB+h0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCf1O-0005ms-UF; Tue, 24 Sep 2019 07:14:03 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCf0f-0005mO-EV
 for linux-mtd@lists.infradead.org; Tue, 24 Sep 2019 07:13:21 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 70FB7C89546E88A4DB4E;
 Tue, 24 Sep 2019 15:13:13 +0800 (CST)
Received: from SZXY1Y004550421.china.huawei.com (10.61.99.243) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.439.0; Tue, 24 Sep 2019 15:13:03 +0800
From: Huaijie Yi <yihuaijie@huawei.com>
To: <f.fainelli@gmail.com>
Subject: RE: Re: [PATCH] mtd: fix oops when writing to phram device on arm64
Date: Tue, 24 Sep 2019 07:12:37 +0000
Message-ID: <1569309157-25356-1-git-send-email-yihuaijie@huawei.com>
X-Mailer: git-send-email 2.6.4.windows.1
In-Reply-To: <3b1e2913-fd88-4c60-3889-313512e365c5@gmail.com>
References: <3b1e2913-fd88-4c60-3889-313512e365c5@gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.61.99.243]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_001319_081224_55AA1365 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
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
Cc: richard.weinberger@gmail.com, yihuaijie@huawei.com, joern@lazybastard.org,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

>On 9/21/2019 11:03 PM, Huaijie Yi wrote:
>>> On Mon, Aug 19, 2019 at 3:39 PM Huaijie Yi <yihuaijie@huawei.com> wrote:
>>>>
>>>> From: yihuaijie <yihuaijie@huawei.com>
>>>>
>>>> memcpy() to memory remaped by ioremap() at an address not aligned to 
>>>> 8-bytes will cause oops on arm64 platform, fixing this by using 
>>>> ioremap_wc().
>>>
>>> This might be the right thing on arm64, but I fear not for all other archs and configurations.
>>>
>>> We had a similar chain of problems already with our sram driver.
>>> See:
>>> eb43e023130b ("misc: sram: add optional ioremap without write 
>>> combining")
>>> 0ab163ad1ea0 ("misc: sram: switch to ioremap_wc from ioremap")
>>>
>>> --
>>> Thanks,
>>> //richard
>> 
>> Hi, richard
>> 
>> I verified this on x86_64, and there isn't the problem.
>> 
>> I will resend a V2 to fix this only on ARM64.
>
>The SRAM driver also takes care of using memcpy_{to,from}io() which the PHRAM does not make use, that sounds like a possible issue too. There is the alignment that is important, but also how you access the underlying memory (e.g.: beats that you generate on the bus connecting you to that memory area). ARM64 may be forgiving and allow memcpy() to work against a WC mapping, other architectures, maybe not so much.
>
>It sounds like adopting the solution that the SRAM driver did, whereby adding an optional boolean Device Tree property to indicate whether
>ioremap_wc() or ioremap() is to be used seems like the most flexible solution.
>--
>Florian

PHRAM does't use Device Tree property, so I'm going to use a boolean module param to achieve it.

--
Thanks,
//Huaijie Yi


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
