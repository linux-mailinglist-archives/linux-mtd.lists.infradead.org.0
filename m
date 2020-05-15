Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 365AA1D4369
	for <lists+linux-mtd@lfdr.de>; Fri, 15 May 2020 04:08:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ois2zc8Mxii/Cl/O4XW/l4VynApngepxkfzdKUNy3UI=; b=p4F7WMduBwtm6i
	dkZRNQW0vSiJj5vDyTa5Mz25Cr41AMkNBm2M6xRws24MAbPYtJn6qdFoR/4ztqOSEFJFKsUf5P+0x
	MY7PG53QWVPbuq4q42afB6Azpvozvip1HX+AJoggQCU+qIPqIuu6YJFOguhty69IW9vQ/WXJZYsD8
	tJC6QL1CdZcbqRjy5Ki8gW65AZqDB+bMj5SyWU58XB99Q9EZXXjiN+FvITC0Yclrx9iZqc9Tl5wR/
	e25yM5wxCYPb9hPJBmUG/oFQ5YXitwapGwmbB6YT6nZgVyOC4t9cxjcDH3v1rW41JNyIkcIUN1vWG
	RIQZ0ggJRMCtzjKWmjHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZPmJ-0000MB-E2; Fri, 15 May 2020 02:08:47 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZPm8-0000LJ-I3
 for linux-mtd@lists.infradead.org; Fri, 15 May 2020 02:08:40 +0000
IronPort-SDR: Hxw8SN6WvXa5+SDXSO29FcnMD3e3SRiAH/g2gKGxUFgLtJWSV+TV7taNxpxvbhq4T9OKjFALfO
 4DBYGjzJlUfw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 19:08:33 -0700
IronPort-SDR: 1f4FaMHXUF1m1FclHsU2xHyV/zNOmhnfioLdKMvGi71FDnnmOBvxoYvqz4KRZlMBiL3zA3kx/H
 C7GEUVJbqF9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,393,1583222400"; d="scan'208";a="298902877"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga008.jf.intel.com with ESMTP; 14 May 2020 19:08:33 -0700
Received: from [10.213.147.163] (vramuthx-mobl1.gar.corp.intel.com
 [10.213.147.163])
 by linux.intel.com (Postfix) with ESMTP id 000995804B6;
 Thu, 14 May 2020 19:08:19 -0700 (PDT)
Subject: Re: [PATCH v6 1/2] dt-bindings: mtd: Add Nand Flash Controller
 support for Intel LGM SoC
To: Rob Herring <robh@kernel.org>
References: <20200513104615.7905-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200513104615.7905-2-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200514125709.GA8436@bogus>
From: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
Message-ID: <dc51e6af-bda8-d8b9-1782-f5c4d5d3fed7@linux.intel.com>
Date: Fri, 15 May 2020 10:08:16 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200514125709.GA8436@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_190836_636223_A7252AC2 
X-CRM114-Status: GOOD (  14.18  )
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
Cc: cheol.yong.kim@intel.com, hauke.mehrtens@intel.com, qi-ming.wu@intel.com,
 anders.roxell@linaro.org, vigneshr@ti.com, arnd@arndb.de,
 devicetree@vger.kernel.org, richard@nod.at, brendanhiggins@google.com,
 linux-mips@vger.kernel.org, robh+dt@kernel.org, linux-kernel@vger.kernel.org,
 boris.brezillon@collabora.com, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com, tglx@linutronix.de, masonccyang@mxic.com.tw,
 andriy.shevchenko@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Rob,

On 14/5/2020 8:57 pm, Rob Herring wrote:
> On Wed, 13 May 2020 18:46:14 +0800, Ramuthevar,Vadivel MuruganX wrote:
>> From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
>>
>> Add YAML file for dt-bindings to support NAND Flash Controller
>> on Intel's Lightning Mountain SoC.
>>
>> Signed-off-by: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
>> ---
>>   .../devicetree/bindings/mtd/intel,lgm-nand.yaml    | 83 ++++++++++++++++++++++
>>   1 file changed, 83 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/mtd/intel,lgm-nand.yaml
>>
> 
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/intel,lgm-nand.example.dt.yaml: nand-controller@e0f00000: 'dmas' is a dependency of 'dma-names'
> 
> See https://patchwork.ozlabs.org/patch/1289160
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure dt-schema is up to date:
> 
> pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade
> 
> Please check and re-submit.
Thank you very much for review comments...
I didn't find build errors, successfully built.

Regards
Vadivel

> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
