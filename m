Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2141C1DC51C
	for <lists+linux-mtd@lfdr.de>; Thu, 21 May 2020 04:20:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mzg0YgR31fGlofx9J2AqMm4rNY3eH0Wsjy9R2t5xT5g=; b=Y/BhMmqORs02mL
	XTV2B/pPWFukgY1fqvGbADqmZdNO+qGbNYKduqkB8YhmXNugYK5nSgL0jCRi9udZ+O+4LixGOp2ji
	Z6yGhYRRazMvjjnUyGuLtOZQYEjRJF5JyGj4x0WioJ9UD2LYUp+yYfOP2YeEcmzEqM1CvUpfzQW2O
	vTFd4G9yatVVyg0V0fWGnGlSCadiLA3lLcunYWeKJIDOResU45lDc0rDn9YC5oQguqYouO71bGf3c
	WIFJ1nanAGA1j2QJ1NZBj/KXXCbdNJOXvVyIazfbsVE148L6xKO3XJRsTrG7FhCb/0aHMU6k/GtDK
	aueZWbv0YRPcv+Zx4v+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbap6-0008CX-03; Thu, 21 May 2020 02:20:40 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbaoz-0005ZQ-OD
 for linux-mtd@lists.infradead.org; Thu, 21 May 2020 02:20:34 +0000
IronPort-SDR: KRTzYJ5umSBOzcwk71E1yjMTbAKyx3izfI0sPFg1GmAYSGVolbMLO+GjGl0Eh7opzC+rf3Njh3
 f2c9rZGV0UUw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 19:18:31 -0700
IronPort-SDR: ej73RVr5VXW1YFsQO2RnXxS2Gz6PpL1WryA3R0i9OZOzz47haLbA6uGuM5NSc3gblLeTdBhlYP
 ofEnlu51jN9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,416,1583222400"; d="scan'208";a="300642970"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga008.jf.intel.com with ESMTP; 20 May 2020 19:18:31 -0700
Received: from [10.214.148.54] (vramuthx-MOBL1.gar.corp.intel.com
 [10.214.148.54])
 by linux.intel.com (Postfix) with ESMTP id 99B9E580613;
 Wed, 20 May 2020 19:18:28 -0700 (PDT)
Subject: Re: [PATCH v2 1/1] dt-bindings: spi: Add schema for Cadence QSPI
 Controller driver
To: Mark Brown <broonie@kernel.org>
References: <20200520123612.11797-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200520124329.GF4823@sirena.org.uk>
From: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
Message-ID: <fd086da7-7e18-83bc-d423-56095b0cff96@linux.intel.com>
Date: Thu, 21 May 2020 10:18:26 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200520124329.GF4823@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_192033_831301_4C0D0FDB 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
Reply-To: vadivel.muruganx.ramuthevar@linux.intel.com
Cc: cheol.yong.kim@intel.com, robh@kernel.org, vigneshr@ti.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-mtd@lists.infradead.org, qi-ming.wu@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Mark,

  Thank you for the review comments...

On 20/5/2020 8:43 pm, Mark Brown wrote:
> On Wed, May 20, 2020 at 08:36:12PM +0800, Ramuthevar,Vadivel MuruganX wrote:
>> From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
>>
>> Add dt-bindings documentation for Cadence-QSPI controller to support
>> spi based flash memories.
>>
>> Signed-off-by: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
>> ---
>>   .../devicetree/bindings/mtd/cadence-quadspi.txt    |  67 -----------
>>   .../devicetree/bindings/spi/cdns,qspi-nor.yaml     | 133 +++++++++++++++++++++
> 
> The changelog says this is adding a new binding but the actual change is
> mostly a conversion to YAML.  Please split the additions out into a
> separate change, ideally doing that before the conversion since there is
> a backlog on review of YAML conversions.

Initially was sending the only YAML file alone, then reviewers suggest 
to me do this way so I did, next by split the patches like below...

1. remove the cadence-quadspi.txt (patch1)
2. convert txt to YAML (patch2)

Regards
Vadivel
> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
