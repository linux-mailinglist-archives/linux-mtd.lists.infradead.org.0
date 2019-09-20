Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6F5B8FAD
	for <lists+linux-mtd@lfdr.de>; Fri, 20 Sep 2019 14:22:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fDxXMqGt+wMLWy6qV3xWEEy3Gb5izfjxHjNTrGKBzFU=; b=SDnUQf4mgHt6w9
	OH8czfHW1Uu0aYB7lkr9fjAyOrNEjFJYX4uwxiYnYavHSA4Z5vBCXOf2ktD+YEcCBVyH44wL1PU/l
	qGCqeMhs4sVJgmUQWC4HJrt+cTlgaf7ezuUj8ahZ6643VN/Elm/PHqucXlZm+mOxgDOlxz1u0ShZG
	UdJ++7df6nRoNF1XIxUceabsCjqbx6oVKPfmpX9c+WVQK3ixB10eUKulToboGcXjrg+C1Ouh56qJe
	eSlkpPcb3xhkwroTb7MDwdl1JdLRpMMyPRjpstXt/YFPZeUP42mVVlGzA8ZTN3GJcCakD2qiEPj9S
	WTFyst/qDy80iaHy6ixg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBHvT-0005Lx-UU; Fri, 20 Sep 2019 12:22:15 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBHvM-0005LC-06
 for linux-mtd@lists.infradead.org; Fri, 20 Sep 2019 12:22:09 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 9B838EC4FBE89CAAA15E;
 Fri, 20 Sep 2019 20:22:02 +0800 (CST)
Received: from [127.0.0.1] (10.57.88.168) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Fri, 20 Sep 2019
 20:21:54 +0800
Subject: Re: [PATCH] jffs2:freely allocate memory when parameters are invalid
To: Al Viro <viro@zeniv.linux.org.uk>
References: <1568962478-126260-1-git-send-email-nixiaoming@huawei.com>
 <20190920114336.GM1131@ZenIV.linux.org.uk>
From: Xiaoming Ni <nixiaoming@huawei.com>
Message-ID: <206f8d57-dad9-26c3-6bf6-1d000f5698d4@huawei.com>
Date: Fri, 20 Sep 2019 20:21:53 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190920114336.GM1131@ZenIV.linux.org.uk>
X-Originating-IP: [10.57.88.168]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_052208_209695_1DE3EA41 
X-CRM114-Status: UNSURE (   6.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: bbrezillon@kernel.org, richard@nod.at, dilinger@queued.net,
 linux-kernel@vger.kernel.org, daniel.santos@pobox.com,
 linux-mtd@lists.infradead.org, houtao1@huawei.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 2019/9/20 19:43, Al Viro wrote:
> On Fri, Sep 20, 2019 at 02:54:38PM +0800, Xiaoming Ni wrote:
>> Use kzalloc() to allocate memory in jffs2_fill_super().
>> Freeing memory when jffs2_parse_options() fails will cause
>> use-after-free and double-free in jffs2_kill_sb()
> 
> ... so we are not freeing it there.  What's the problem?

No code logic issues, no memory leaks

But there is too much code logic between memory allocation and free,
which is difficult to understand.

The modified code is easier to understand.

thanks

Xiaoming Ni


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
