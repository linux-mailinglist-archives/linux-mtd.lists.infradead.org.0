Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC191DCCAD
	for <lists+linux-mtd@lfdr.de>; Thu, 21 May 2020 14:14:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KrCTnenTXjiAaMZWu/NQES/YmPJkZQvm2+CKJpqclTw=; b=o7YaeutOhXzlUD
	PpfDGF3h7LAgvrE1srHTrTsYgQRX4h83c+pVOOShG9XxB+J4cO9KQTScpv2htcYZJc6Zy2ZkVhsc9
	uVsUMfZArqAzx3wX1kWIpIMsCLQ4J2h1mqyKpi1eHdg8IUGgTS1hXgkpT/QjDvJ3+YcZezlshlR9Y
	kK+d2IiUctOCWgNEC8YwTRHfRvsMpgScW3/+hRdB88AJQDRSDPjprGuVL1s4MAtt3/wg7EbyNAmbD
	bLRCpyK42oMuAvzP0FTyq/gXFzPt3R3TY8m9dURG28pROdL2LXQQKadpYemY6yCnITLeoannZ4vg7
	wiVuUvn76rG93I79c9Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbk5b-0001f3-ET; Thu, 21 May 2020 12:14:19 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbk5U-0001eO-NN
 for linux-mtd@lists.infradead.org; Thu, 21 May 2020 12:14:13 +0000
IronPort-SDR: cMdCnwiwxRokIYRsAkIi3UvO56d0AP8JJVtPDZ0n9pH0w1usTZ6DtYjYimldCKeJxJ+RaHakhC
 1DDK9eBB5Eew==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2020 05:14:12 -0700
IronPort-SDR: MFQk67iCXel4hNSRiGw0kw3tkSFQSs0WGWIE0LscF3gapHDp7VHSj1sMLjVmuLywmuKyIbkWIl
 2i7szTVcA3ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,417,1583222400"; d="scan'208";a="466762230"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga005.fm.intel.com with ESMTP; 21 May 2020 05:14:11 -0700
Received: from [10.215.164.158] (vramuthx-mobl1.gar.corp.intel.com
 [10.215.164.158])
 by linux.intel.com (Postfix) with ESMTP id AD60A5804B4;
 Thu, 21 May 2020 05:14:05 -0700 (PDT)
Subject: Re: [PATCH v2 1/1] dt-bindings: spi: Add schema for Cadence QSPI
 Controller driver
To: Mark Brown <broonie@kernel.org>
References: <20200520123612.11797-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200520124329.GF4823@sirena.org.uk>
 <fd086da7-7e18-83bc-d423-56095b0cff96@linux.intel.com>
 <20200521105646.GA4770@sirena.org.uk>
From: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
Message-ID: <24b0297c-5c33-f690-9514-68b76fc2c9ea@linux.intel.com>
Date: Thu, 21 May 2020 20:14:04 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200521105646.GA4770@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_051412_782237_348CA97F 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Reply-To: vadivel.muruganx.ramuthevar@linux.intel.com
Cc: cheol.yong.kim@intel.com, robh@kernel.org, vigneshr@ti.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-mtd@lists.infradead.org, qi-ming.wu@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Hi Mark,

On 21/5/2020 6:56 pm, Mark Brown wrote:
> On Thu, May 21, 2020 at 10:18:26AM +0800, Ramuthevar, Vadivel MuruganX wrote:
>> On 20/5/2020 8:43 pm, Mark Brown wrote:
>>> On Wed, May 20, 2020 at 08:36:12PM +0800, Ramuthevar,Vadivel MuruganX wrote:
> 
>>>>    .../devicetree/bindings/mtd/cadence-quadspi.txt    |  67 -----------
>>>>    .../devicetree/bindings/spi/cdns,qspi-nor.yaml     | 133 +++++++++++++++++++++
> 
>>> The changelog says this is adding a new binding but the actual change is
>>> mostly a conversion to YAML.  Please split the additions out into a
>>> separate change, ideally doing that before the conversion since there is
>>> a backlog on review of YAML conversions.
> 
>> Initially was sending the only YAML file alone, then reviewers suggest to me
>> do this way so I did, next by split the patches like below...
> 
>> 1. remove the cadence-quadspi.txt (patch1)
>> 2. convert txt to YAML (patch2)
> 
> That doesn't address either of the issues.  The removal of the old
> bindings and addition of the YAML ones needs to be in a single patch
> doing that conversion.  What I'm suggesting should be done separately is
> whatever changes to the semantics of the bindings you are (according to
> your changelog) doing.
You mean semantics of the binding as a single patch you are suggesting 
me, right? , Thanks!

Regards
Vadivel

> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
