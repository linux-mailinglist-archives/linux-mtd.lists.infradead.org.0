Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 268C6137713
	for <lists+linux-mtd@lfdr.de>; Fri, 10 Jan 2020 20:31:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LdIQIG2EYNU72d4B9+pFr63km9N6Ur/jEhqQw71E/v8=; b=jbB3YwXzCiF3mv
	DhWiolEnUMxlhZThDVu9pXbqQw5v93+A4ivcTAdPQypNZAkAikBXyX+heaChtn/59p/ozYhWNwmqm
	aExsvbwgi7dPMCNbphHIKDJrdGFoxdSBhxfFfr5FaX2BNTmdgRybE8SzCCnSEbWWRktoap8bUCzcO
	iVPcoc9s4ipAK9Xg8o1fd0758IVHmGwysW7iXd1Hs7Huq60v9shmDNdHXIcTkxFReRwbfXziIq8ed
	USXZxqpBtuxPsQoZNiHYInd+iaNudc091lY+lbLxko0cw1hBq4gVVsnHxCOrXt1XT3G0QSdVCr/VA
	A3Beruq8Y/bL7mXLK0PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq00I-0002HA-II; Fri, 10 Jan 2020 19:31:30 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq00A-0002G2-H5
 for linux-mtd@lists.infradead.org; Fri, 10 Jan 2020 19:31:24 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 11:31:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,418,1571727600"; d="scan'208";a="422217933"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga005.fm.intel.com with ESMTP; 10 Jan 2020 11:31:18 -0800
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1iq007-0003bl-4D; Fri, 10 Jan 2020 21:31:19 +0200
Date: Fri, 10 Jan 2020 21:31:19 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v2 2/3] spi: Add HiSilicon v3xx SPI NOR flash controller
 driver
Message-ID: <20200110193119.GI32742@smile.fi.intel.com>
References: <1575900490-74467-1-git-send-email-john.garry@huawei.com>
 <1575900490-74467-3-git-send-email-john.garry@huawei.com>
 <0dc5cb2e-b765-9e13-b05e-9e3c835c5985@huawei.com>
 <20200109212842.GK3702@sirena.org.uk>
 <df67b562-7d82-19f6-7581-680190a7772d@huawei.com>
 <20200110140726.GB5889@sirena.org.uk>
 <6db83881-927c-d11c-9c77-23a45892ddab@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6db83881-927c-d11c-9c77-23a45892ddab@huawei.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_113122_576593_8B6273AD 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Mark Brown <broonie@kernel.org>, linux-mtd@lists.infradead.org,
 xuejiancheng@hisilicon.com, Mika Westerberg <mika.westerberg@linux.intel.com>,
 wanghuiqiang <wanghuiqiang@huawei.com>, fengsheng5@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 02:58:54PM +0000, John Garry wrote:
> On 10/01/2020 14:07, Mark Brown wrote:
> > On Fri, Jan 10, 2020 at 11:55:37AM +0000, John Garry wrote: >

...

> > > I will note that PRP0001+"jedec,spi-nor" compatible DSD seems to be the
> > > defacto method to describe the SPI NOR-compat part for ACPI - that's what
> > > I'm using. We could add properties there, but that seems improper.
> > 
> > OK, so that's just reusing the DT binding in which case everything
> > that's valid for the DT binding should also be valid for ACPI - I
> > thought that actually worked automatically without you having to do
> > anything in the code but ICBW.
> 
> I thought that it would be improper as we could be mixing ACPI methods to
> describe the serial bus (SPI Serial Bus Connection Resource Descriptor) and
> also DT properties which could conflict, like CS active high.
> 
> However I do see extra properties than "compatible" being added in DSD for
> PRP0001:
> https://patchwork.ozlabs.org/patch/662813/ (see EEPROM part)

PRP method is only for vendors to *test* the hardware in ACPI environment.
The proper method is to allocate correct ACPI ID.

Properties (_DSD in ACPI) may be used in the same way as for DT if we have no
other means in ACPI specification for them.

> And if we were to do this, I think that we would need to add some
> device_property_read_u32("spi-rx-bus-width", ...), etc calls in the SPI FW
> parsing for ACPI path - I couldn't see that.

It's okay as long as you have ACPI ID.

P.S. Most of the sensor drivers were updated in order to support ACPI PRP
method due to DIY hobbyist on IoT sector and embedded devices. This should not
be an official way how we support hardware on ACPI-based platforms.

-- 
With Best Regards,
Andy Shevchenko



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
