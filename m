Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1B113727E
	for <lists+linux-mtd@lfdr.de>; Fri, 10 Jan 2020 17:09:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vSoeT8hVPl0pNQ12qwAi53WyJSDB3hrC23wdNS/7A/M=; b=BycXjSlM0jica/zk96Mnh0xeG
	o1bV0TTdMGhOuSpqc8DMct5EJV/VnGG0lfbHp/6XHSWp3ZFxf71AZZSe9+bSC/VEBLBPju//7T+yz
	NzrCdXUoX/FNjgde0yVhRaT35gKXpAsPaIrt8tvZ+BmecUPHgsfNluABcjKVnPIFdOPPW2kQT0lHo
	BAA1NnK9m+QtEWLHR7LzI6zkF/aOVPuie6MuupTQW2+K8d4HYtNYkJv2w+s9X8liCFkgbOR0IFL5y
	Ka15TgM9Yn565piqCTCFNwtLzA2a03ntt40TADYdq2AIkw+cWY7DxQJ8/AwuYdw+FTrfOszT3l6sg
	wkMY3/Z1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwrC-000869-Re; Fri, 10 Jan 2020 16:09:54 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwr3-00084u-71
 for linux-mtd@lists.infradead.org; Fri, 10 Jan 2020 16:09:47 +0000
Received: from LHREML712-CAH.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id CF4D7A976DFC985B08FF;
 Fri, 10 Jan 2020 16:09:40 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 LHREML712-CAH.china.huawei.com (10.201.108.35) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 10 Jan 2020 16:09:40 +0000
Received: from [127.0.0.1] (10.202.226.43) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Fri, 10 Jan
 2020 16:09:40 +0000
Subject: Re: [PATCH v2 2/3] spi: Add HiSilicon v3xx SPI NOR flash controller
 driver
To: Mark Brown <broonie@kernel.org>
References: <1575900490-74467-1-git-send-email-john.garry@huawei.com>
 <1575900490-74467-3-git-send-email-john.garry@huawei.com>
 <0dc5cb2e-b765-9e13-b05e-9e3c835c5985@huawei.com>
 <20200109212842.GK3702@sirena.org.uk>
 <df67b562-7d82-19f6-7581-680190a7772d@huawei.com>
 <20200110140726.GB5889@sirena.org.uk>
 <6db83881-927c-d11c-9c77-23a45892ddab@huawei.com>
 <20200110151220.GC5889@sirena.org.uk>
From: John Garry <john.garry@huawei.com>
Message-ID: <876fdbb7-1e2f-13a6-ea8b-48b0470136c1@huawei.com>
Date: Fri, 10 Jan 2020 16:09:39 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200110151220.GC5889@sirena.org.uk>
Content-Language: en-US
X-Originating-IP: [10.202.226.43]
X-ClientProxiedBy: lhreml729-chm.china.huawei.com (10.201.108.80) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_080945_402780_900EFCA9 
X-CRM114-Status: GOOD (  13.52  )
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

On 10/01/2020 15:12, Mark Brown wrote:
> On Fri, Jan 10, 2020 at 02:58:54PM +0000, John Garry wrote:
>> On 10/01/2020 14:07, Mark Brown wrote:
>>> On Fri, Jan 10, 2020 at 11:55:37AM +0000, John Garry wrote: >
> 

Hi Mark,

>>> OK, so that's just reusing the DT binding in which case everything
>>> that's valid for the DT binding should also be valid for ACPI - I
>>> thought that actually worked automatically without you having to do
>>> anything in the code but ICBW.
> 
>> I thought that it would be improper as we could be mixing ACPI methods to
>> describe the serial bus (SPI Serial Bus Connection Resource Descriptor) and
>> also DT properties which could conflict, like CS active high.
> 
> Yes, that's one of the issues with importing bits of DT into ACPI
> unfortunately - you will get conflicts, it's not clear it's a good idea
> to be using PRP0001 for SPI stuff given that there's bus level bindings
> for both ACPI and SPI and they don't line up exactly.

Yeah, I'm not entirely comfortable with this yet.

> 
>> However I do see extra properties than "compatible" being added in DSD for
>> PRP0001:
>> https://patchwork.ozlabs.org/patch/662813/ (see EEPROM part)
> 
>> And if we were to do this, I think that we would need to add some
>> device_property_read_u32("spi-rx-bus-width", ...), etc calls in the SPI FW
>> parsing for ACPI path - I couldn't see that.
> 
> You'd need parsing code, yes.
> 

I'll continue to check the options.

Thanks,
john

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
