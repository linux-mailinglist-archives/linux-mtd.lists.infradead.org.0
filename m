Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70106137074
	for <lists+linux-mtd@lfdr.de>; Fri, 10 Jan 2020 15:59:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pJdaVP5YszXG77q5AH26ZM9VV9Brx7/fb+Bn2mJrXcs=; b=LSNcq5hsV3jA4k/V5p3oLLhX5
	BQZJ0frGWOTOz+Jd5ejibM6IAwOTEAn53sZ+UrbL4XdbJMo4sZ4n3pXUE5YP/1jfCImaphjAkJ7c9
	8VoIHgGkFdWSNRjZZlI4HHeG/V47RMK+mDSE0ig5TlcDhjfpUW49RdiY+SrJx46dB/BCrFCWyCskV
	4I4P7IDLIxqVe7XkX7PbEpLU5D9IHQb8CSkmppBHYYR6GGkCX9FVGZ1OW6IowH09/9icSSb4bYIZt
	mk9XsbpF8QsamcKfJCb5dmVTDVlgZ1SR3Qj4Gz0JZMbQCUou1FxRN/lzbh8BKItY4wAM8NK7iGtSI
	8uOJI+Lng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipvkk-0000eb-6p; Fri, 10 Jan 2020 14:59:10 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipvkY-0000di-MT
 for linux-mtd@lists.infradead.org; Fri, 10 Jan 2020 14:59:00 +0000
Received: from LHREML713-CAH.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 02E66D8DC01B37666DED;
 Fri, 10 Jan 2020 14:58:56 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 LHREML713-CAH.china.huawei.com (10.201.108.36) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 10 Jan 2020 14:58:55 +0000
Received: from [127.0.0.1] (10.202.226.43) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Fri, 10 Jan
 2020 14:58:55 +0000
Subject: Re: [PATCH v2 2/3] spi: Add HiSilicon v3xx SPI NOR flash controller
 driver
To: Mark Brown <broonie@kernel.org>
References: <1575900490-74467-1-git-send-email-john.garry@huawei.com>
 <1575900490-74467-3-git-send-email-john.garry@huawei.com>
 <0dc5cb2e-b765-9e13-b05e-9e3c835c5985@huawei.com>
 <20200109212842.GK3702@sirena.org.uk>
 <df67b562-7d82-19f6-7581-680190a7772d@huawei.com>
 <20200110140726.GB5889@sirena.org.uk>
From: John Garry <john.garry@huawei.com>
Message-ID: <6db83881-927c-d11c-9c77-23a45892ddab@huawei.com>
Date: Fri, 10 Jan 2020 14:58:54 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200110140726.GB5889@sirena.org.uk>
Content-Language: en-US
X-Originating-IP: [10.202.226.43]
X-ClientProxiedBy: lhreml729-chm.china.huawei.com (10.201.108.80) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_065858_882677_342E74A7 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
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
Cc: chenxiang66@hisilicon.com, linux-kernel@vger.kernel.org,
 tudor.ambarus@microchip.com, liusimin4@huawei.com, linuxarm@huawei.com,
 linux-spi@vger.kernel.org, marek.vasut@gmail.com,
 linux-mtd@lists.infradead.org, xuejiancheng@hisilicon.com,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 wanghuiqiang <wanghuiqiang@huawei.com>, fengsheng5@huawei.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 10/01/2020 14:07, Mark Brown wrote:

+ Mika, Andy

> On Fri, Jan 10, 2020 at 11:55:37AM +0000, John Garry wrote: >
Hi Mark,

>> I will note that PRP0001+"jedec,spi-nor" compatible DSD seems to be the
>> defacto method to describe the SPI NOR-compat part for ACPI - that's what
>> I'm using. We could add properties there, but that seems improper.
> 
> OK, so that's just reusing the DT binding in which case everything
> that's valid for the DT binding should also be valid for ACPI - I
> thought that actually worked automatically without you having to do
> anything in the code but ICBW.

I thought that it would be improper as we could be mixing ACPI methods 
to describe the serial bus (SPI Serial Bus Connection Resource 
Descriptor) and also DT properties which could conflict, like CS active 
high.

However I do see extra properties than "compatible" being added in DSD 
for PRP0001:
https://patchwork.ozlabs.org/patch/662813/ (see EEPROM part)

And if we were to do this, I think that we would need to add some 
device_property_read_u32("spi-rx-bus-width", ...), etc calls in the SPI 
FW parsing for ACPI path - I couldn't see that.

Thanks,
John

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
