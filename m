Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDF11893D7
	for <lists+linux-mtd@lfdr.de>; Wed, 18 Mar 2020 02:58:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3fX25AjWnTpMD2Iln3eCrEPc7PZokqQUNRDv09Dmt/o=; b=G6OD6pwaSkNAjI
	UVmnMOdOX5tKnmlVH1jwoLWjC8hO5KWtPQxF8Y0/gprH7MYClQm96y0IREOalxd8HZdO9sSNJTOHG
	99BS2IImpDeUaeLICdqV5ek338xigP3OcsyvPXx8Fx0ZE+xaZ75L2xJx7ogLVDK1GOogvEInDmdyG
	rB7iYu9m1B8F5xN4k4wzEQA54l8+t34jtdmE1LB/KLutytgm32VcQNUkW2l8kJHoV1vxLFpGuguyM
	2ACcQ9M5xUmxNA447FcRx+KRB6PHAYbKXNo/PQ1KHgxk1Orty8Mql/A6qOBnVrpflmmlVmedhRp7/
	ClvIn4/98pO2kYn6qBew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jENy0-0004ss-KL; Wed, 18 Mar 2020 01:57:56 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jENxv-0004ri-H9
 for linux-mtd@lists.infradead.org; Wed, 18 Mar 2020 01:57:53 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 3483D90AF2B2C1861CA2;
 Wed, 18 Mar 2020 09:57:33 +0800 (CST)
Received: from [127.0.0.1] (10.133.219.224) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.487.0;
 Wed, 18 Mar 2020 09:57:30 +0800
Subject: Re: [PATCH v3 2/2] ubifs: read node from wbuf when it fully sits in
 wbuf
To: Richard Weinberger <richard.weinberger@gmail.com>
References: <20200305092205.127758-1-houtao1@huawei.com>
 <20200305092205.127758-3-houtao1@huawei.com>
 <CAFLxGvzrZm=r03VFXWV+=XU_LaVq3XPGeKJxGm-YnV_HHVu_wg@mail.gmail.com>
From: Hou Tao <houtao1@huawei.com>
Message-ID: <f38832ea-bf94-a466-c3af-334c7ee312e8@huawei.com>
Date: Wed, 18 Mar 2020 09:57:29 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <CAFLxGvzrZm=r03VFXWV+=XU_LaVq3XPGeKJxGm-YnV_HHVu_wg@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.133.219.224]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_185751_727468_A514A7A2 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Adrian Hunter <ext-adrian.hunter@nokia.com>, Carson.Li1@unisoc.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

On 2020/3/17 6:33, Richard Weinberger wrote:
> On Thu, Mar 5, 2020 at 10:15 AM Hou Tao <houtao1@huawei.com> wrote:
>> The actual situation of the problem is the LEB is GCed, freed and then
>> reused as journal head, and finally ubifs_tnc_locate() reads
>> an invalid node. And it can be reproduced by the following steps:
>> * create 128 empty files
>> * overwrite 8 files in backgroup repeatedly to trigger GC
>> * drop inode cache and stat these 128 empty files repeatedly
> 
> So far I failed to reproduce. Do you have a script?
> Or even better, a xfstest?
> 
You can increase the probability by adding an extra delay (e.g. msleep(1))
between the unlock of tnc_mutex and the call of ubifs_get_wbuf().
And I will try to writ xfstest for the problem.

Regards,
Tao


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
