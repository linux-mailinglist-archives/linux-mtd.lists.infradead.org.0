Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9429E1DCD02
	for <lists+linux-mtd@lfdr.de>; Thu, 21 May 2020 14:35:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AoxoBiPjyAG9Ivi4zHk9srJQfKMTmrLxxKgsIwclwr8=; b=A/O93/u+LijY1L
	/kxKyHgeAwP5rUFdSKudQZuTFqotNHYEraN6w2mzkgThl71K45mHHnfNA94H3/ywmrRjI9PD0CuNY
	ZvRmcdZWtw9zuAkTBfa07iGURfwC5hfwq3mI5NjoRkCNIpM51BeU/2SYOrvRyDM/V0AczEAOQFJon
	526wSsKbO+jmqqPxWnBGBlJVHas6D44UBUiFJSW6ZSo1gQImad/a7YCMjlbIUVkoenxEOgUUASLfW
	7Fl+Nzdjkc2s7TRC+XPAK+5qFHyOoGDyTdMEaKGL0mlJXWoYN3QJK8HeT9+vWWWIde38BO3Xqjqkz
	oJ5nIFfDLHNIL3Fquywg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbkPb-0005Kr-RK; Thu, 21 May 2020 12:34:59 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbkPR-0005KP-0U
 for linux-mtd@lists.infradead.org; Thu, 21 May 2020 12:34:50 +0000
IronPort-SDR: nz1wi0NBZviv6Ez/grwHW9l50DIerH6an1ce2yNaoxcjHTQfoSFttR+vtPqNPM2Fu5PBTz7hH+
 OQbWEHX22UMw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2020 05:34:47 -0700
IronPort-SDR: Lctipwjy10ADkgk+KPH2ghdvELhfA1XPXfoH87Hxjm7JiX00WoBPlneW7usHOfpG0ZhBXRw/iV
 xdbRbECBOLwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,417,1583222400"; d="scan'208";a="268618473"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga006.jf.intel.com with ESMTP; 21 May 2020 05:34:47 -0700
Received: from [10.215.164.158] (vramuthx-mobl1.gar.corp.intel.com
 [10.215.164.158])
 by linux.intel.com (Postfix) with ESMTP id AA28A580101;
 Thu, 21 May 2020 05:34:44 -0700 (PDT)
Subject: Re: [PATCH v2 1/1] dt-bindings: spi: Add schema for Cadence QSPI
 Controller driver
To: Mark Brown <broonie@kernel.org>
References: <20200520123612.11797-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200520124329.GF4823@sirena.org.uk>
 <fd086da7-7e18-83bc-d423-56095b0cff96@linux.intel.com>
 <20200521105646.GA4770@sirena.org.uk>
 <24b0297c-5c33-f690-9514-68b76fc2c9ea@linux.intel.com>
 <20200521122035.GB4770@sirena.org.uk>
From: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
Message-ID: <463b24a4-0a6a-9fcf-7eb9-8fde602c0c13@linux.intel.com>
Date: Thu, 21 May 2020 20:34:43 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200521122035.GB4770@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_053449_058583_56A17219 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
Cc: cheol.yong.kim@intel.com, robh@kernel.org, vigneshr@ti.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-mtd@lists.infradead.org, qi-ming.wu@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Mark,

On 21/5/2020 8:20 pm, Mark Brown wrote:
> On Thu, May 21, 2020 at 08:14:04PM +0800, Ramuthevar, Vadivel MuruganX wrote:
>> On 21/5/2020 6:56 pm, Mark Brown wrote:
> 
>>> That doesn't address either of the issues.  The removal of the old
>>> bindings and addition of the YAML ones needs to be in a single patch
>>> doing that conversion.  What I'm suggesting should be done separately is
>>> whatever changes to the semantics of the bindings you are (according to
>>> your changelog) doing.
> 
>> You mean semantics of the binding as a single patch you are suggesting me,
>> right? , Thanks!
> 
> I mean that any changes to the bindings ought to be split out into
> separate patches, if there's multiple changes it may make sense for
> there to be multiple patches.
Got it, we do not have multiple changes since it is new YAML file.
in case if we feel anything to be added , we add as separate patches.
Thanks!

Regards
Vadivel

> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
