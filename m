Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2114E1D2472
	for <lists+linux-mtd@lfdr.de>; Thu, 14 May 2020 03:04:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tR+xs08uHE7kgQgDEkxL+pB6zPJ/L4aIb6XwL573yVI=; b=bgqhSp9pWSaafF
	IHLuiQBaiQ7iDsSNkD4PLkDbLSCwbPL9NlPFvsj9TY0pShPrVTKpxb9uJgRhc5btb0kDSk+fgcJOs
	Qec5gpvyHMxSrRDhPLFDKt34UwC9vZBW7W7RBkdMLRvYwkniy7pUj6vBm7RIBJJHVwbryHwo+PCgV
	XXDf9StjKIzNm89v2jXUF5p7Oj/dc0QuJFhZYDnfjxKs7C6LU9PqG4aGM1Du2W7/p1OXc4PCaedfX
	Id43KcAhky8ZIugqBS8T5kFi9dLIbt/TKUJTv44rD57enQ5T74TvRuOrjfDdOVe65PRo3UBK3r9kv
	AbA8k3oO/+qcNUHzxqXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ2Ib-0001ux-Rn; Thu, 14 May 2020 01:04:33 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ2IT-0001u6-RC
 for linux-mtd@lists.infradead.org; Thu, 14 May 2020 01:04:27 +0000
IronPort-SDR: FTH/gFp32Z5gb1fbcmLCnfFZqKxexOVClShl4l5uph34pVt0dvyGkxz++UvTIGHhlj5cO57MN2
 8ukJ9P1EHCgQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 18:04:23 -0700
IronPort-SDR: 7bbX+hPA/cSQi2+URin7m/oJ0Xx1k4B/wxePUY4vh+nXrzcqZQGlZIAlMmzI28irXsfEwaAHJw
 7Y15zIhRrQJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,389,1583222400"; d="scan'208";a="298544452"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga008.jf.intel.com with ESMTP; 13 May 2020 18:04:22 -0700
Received: from [10.249.66.53] (vramuthx-mobl1.gar.corp.intel.com
 [10.249.66.53])
 by linux.intel.com (Postfix) with ESMTP id D48F5580646;
 Wed, 13 May 2020 18:04:17 -0700 (PDT)
Subject: Re: [PATCH v6 2/2] mtd: rawnand: Add NAND controller support on Intel
 LGM SoC
To: Andy Shevchenko <andriy.shevchenko@intel.com>
References: <20200513104615.7905-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200513104615.7905-3-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200513153405.GS185537@smile.fi.intel.com>
 <20200513153532.GT185537@smile.fi.intel.com>
From: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
Message-ID: <364cb1f3-1a66-20d3-f256-739ee9c915f0@linux.intel.com>
Date: Thu, 14 May 2020 09:04:14 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200513153532.GT185537@smile.fi.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_180425_893124_F22F4964 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: cheol.yong.kim@intel.com, devicetree@vger.kernel.org, qi-ming.wu@intel.com,
 anders.roxell@linaro.org, vigneshr@ti.com, arnd@arndb.de,
 hauke.mehrtens@intel.com, richard@nod.at, brendanhiggins@google.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-mips@vger.kernel.org,
 boris.brezillon@collabora.com, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com, tglx@linutronix.de, masonccyang@mxic.com.tw
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Andy,

On 13/5/2020 11:35 pm, Andy Shevchenko wrote:
> On Wed, May 13, 2020 at 06:34:05PM +0300, Andy Shevchenko wrote:
>> On Wed, May 13, 2020 at 06:46:15PM +0800, Ramuthevar,Vadivel MuruganX wrote:
> 
> ...
> 
>>> +static int ebu_nand_remove(struct platform_device *pdev)
>>> +{
>>> +	struct ebu_nand_controller *ebu_host = platform_get_drvdata(pdev);
>>> +
>>
>>> +	if (ebu_host) {
>>
>> How it can be NULL here?
>>
>>> +		mtd_device_unregister(nand_to_mtd(&ebu_host->chip));
>>> +		nand_cleanup(&ebu_host->chip);
>>> +		ebu_nand_disable(&ebu_host->chip);
>>> +
> 
>>> +		if (ebu_host->dma_rx || ebu_host->dma_tx)
> 
> This is duplicate and thus redundant.
Let me check and update, Thanks!

Regards
Vadivel
> 
>>> +			ebu_dma_cleanup(ebu_host);
>>> +
>>> +		clk_disable_unprepare(ebu_host->clk);
>>> +	}
>>> +
>>> +	return 0;
>>> +}
> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
