Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33EB3ABB94
	for <lists+linux-mtd@lfdr.de>; Fri,  6 Sep 2019 16:59:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0pvYNDan+2TfkD3YczTtt0/zrKgukRUOexJ87RHHa4I=; b=YWV1W6G20xiOiNKNmo3zGe2Ew
	KyGJ4boAeNMW0ktLeHZI1Wkygou9MYHZpjubkXaNVgVLL5AFapdE6CNa0SwH3uAVaLDbxVta5Qr4N
	qTMoNAD5+Y1/3LuaMZ7d2nbuSdkBVaPYYMkPuQtKLMPdOFyHXr/5H2FMBIeo8Q1wv+ToDOIni6gWv
	nLmsiusK/n5xTsdew8TjXwcNOU4j+cXbLifeA1fPmvjad3YJXc8IydZeHlo+h/ds0zV13My5TeXbY
	jmuNW1UZ/56UsO8UTl5NbQhjTV5IOCh5c9oP8mD1XWl4SjH6NgXNfPccngWpl5J0BklSeR3xyiBaM
	yHa9v8hyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6FhX-0001X1-1C; Fri, 06 Sep 2019 14:59:03 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6FhO-0001WC-5L
 for linux-mtd@lists.infradead.org; Fri, 06 Sep 2019 14:58:55 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id DF006601A9709E8FC318;
 Fri,  6 Sep 2019 22:58:49 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.238) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0;
 Fri, 6 Sep 2019 22:58:45 +0800
Subject: Re: [PATCH] docs: mtd: Update spi nor reference driver
To: Jonathan Corbet <corbet@lwn.net>
References: <1565107583-68506-1-git-send-email-john.garry@huawei.com>
 <20190906085212.79ec917c@lwn.net>
From: John Garry <john.garry@huawei.com>
Message-ID: <9110efc4-35e6-ff04-1a6d-d5d9f93927de@huawei.com>
Date: Fri, 6 Sep 2019 15:58:41 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20190906085212.79ec917c@lwn.net>
X-Originating-IP: [10.202.227.238]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_075854_374981_60DA5435 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mchehab+samsung@kernel.org, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, frieder.schrempf@kontron.de,
 linux-doc@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 06/09/2019 15:52, Jonathan Corbet wrote:
> On Wed, 7 Aug 2019 00:06:23 +0800
> John Garry <john.garry@huawei.com> wrote:
>
>> The reference driver no longer exists since commit 50f1242c6742 ("mtd:
>> fsl-quadspi: Remove the driver as it was replaced by spi-fsl-qspi.c").
>>
>> Update reference to spi-fsl-qspi.c driver.
>>
>> Signed-off-by: John Garry <john.garry@huawei.com>
>
> So this appears to have languished for a month...applied now, sorry for
> the delay.
>
> Thanks,
>
> jon
>
> .
>

Hi Jon,

I don't think that it was appropriate to apply this patch in the end - 
maybe this could have been communicated better. If you check the 
subsequent discussion in this thread, it seems that completely new 
documentation is required:

"Actually it seems like the whole file is obsolete and needs to be
removed or replaced by proper documentation of the SPI MEM API."

But nothing seems to be happening there...

Thanks,
John




______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
