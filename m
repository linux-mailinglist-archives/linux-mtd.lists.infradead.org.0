Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D241D8EE4
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 06:51:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a5wNqv493sIHl/qEL7QZFFApUB66Y36wpnJ2aWipEGM=; b=WzIvHOp5gbcG1y
	iGUHkwralMb24mr6lYkda5sexqysaY3NdhafUvOhkVfgaY33559Ye2+1CwZnKCShV2ynhVEJ0auUq
	VsLg4Rfp4DQwocCzXc4Hsk7rvcgxo8AeNrUDDN2Z+AjIHyjwTycqygY/QICGXUXtzKWjiY1zc7KS3
	fsoTt46EiltwresVa+FJhhm8GdrDJc47B8ECuj7gGvWYSjiBmoGFM0u6j18xppGYFrlRCabL2hYBP
	2HrsyIwbkWju4AeEDebchg3ryelFXpPJgLkC68AIYPd5xhVX2FZBb9+Iv5dhZOArO27v6Rt9eYs4+
	ITN5qLSQUdrj/IQQI6yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jauEA-0002Wv-UF; Tue, 19 May 2020 04:51:42 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jauDz-0002WL-TQ
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 04:51:35 +0000
IronPort-SDR: E7c5rRgfZ5kYigx0LFHXuhqVn29O4QieX1Of+daiQbTwtgcb1vUY4RnH5P+leVJyGO4sdRyyqo
 PUbFJrqwn+dA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 21:51:29 -0700
IronPort-SDR: sDHDPLv0Zq2i/WryGB8ccV16p9q6KiAsv59U/AzhorfKCPdIZhdApcc3OowqzcDABrgj7mbV8E
 MD2I0g/K96kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,409,1583222400"; d="scan'208";a="282205960"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga002.jf.intel.com with ESMTP; 18 May 2020 21:51:28 -0700
Received: from [10.213.130.44] (vramuthx-mobl1.gar.corp.intel.com
 [10.213.130.44])
 by linux.intel.com (Postfix) with ESMTP id C523E580613;
 Mon, 18 May 2020 21:51:23 -0700 (PDT)
Subject: Re: [PATCH v6 1/2] dt-bindings: mtd: Add Nand Flash Controller
 support for Intel LGM SoC
To: Rob Herring <robh@kernel.org>
References: <20200513104615.7905-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200513104615.7905-2-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200514125709.GA8436@bogus>
 <dc51e6af-bda8-d8b9-1782-f5c4d5d3fed7@linux.intel.com>
 <CAL_JsqJxqdi2MmyHZteMOpx5yy_o+ZxaqGHMUV7aCknWWQ0ptg@mail.gmail.com>
From: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
Message-ID: <bed51658-68a7-605b-ebdb-f471690e226f@linux.intel.com>
Date: Tue, 19 May 2020 12:51:22 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJxqdi2MmyHZteMOpx5yy_o+ZxaqGHMUV7aCknWWQ0ptg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_215131_963040_6608FE6A 
X-CRM114-Status: GOOD (  16.49  )
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
Cc: cheol.yong.kim@intel.com, "hauke.mehrtens" <hauke.mehrtens@intel.com>,
 qi-ming.wu@intel.com, Anders Roxell <anders.roxell@linaro.org>,
 Vignesh R <vigneshr@ti.com>, Arnd Bergmann <arnd@arndb.de>,
 devicetree@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 Brendan Higgins <brendanhiggins@google.com>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 =?UTF-8?Q?Miqu=c3=a8l_Raynal?= <miquel.raynal@bootlin.com>,
 Thomas Gleixner <tglx@linutronix.de>, Mason Yang <masonccyang@mxic.com.tw>,
 Andy Shevchenko <andriy.shevchenko@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Rob,

On 19/5/2020 2:27 am, Rob Herring wrote:
> On Thu, May 14, 2020 at 8:08 PM Ramuthevar, Vadivel MuruganX
> <vadivel.muruganx.ramuthevar@linux.intel.com> wrote:
>>
>> Hi Rob,
>>
>> On 14/5/2020 8:57 pm, Rob Herring wrote:
>>> On Wed, 13 May 2020 18:46:14 +0800, Ramuthevar,Vadivel MuruganX wrote:
>>>> From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
>>>>
>>>> Add YAML file for dt-bindings to support NAND Flash Controller
>>>> on Intel's Lightning Mountain SoC.
>>>>
>>>> Signed-off-by: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
>>>> ---
>>>>    .../devicetree/bindings/mtd/intel,lgm-nand.yaml    | 83 ++++++++++++++++++++++
>>>>    1 file changed, 83 insertions(+)
>>>>    create mode 100644 Documentation/devicetree/bindings/mtd/intel,lgm-nand.yaml
>>>>
>>>
>>>
>>> My bot found errors running 'make dt_binding_check' on your patch:
>>>
>>> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/intel,lgm-nand.example.dt.yaml: nand-controller@e0f00000: 'dmas' is a dependency of 'dma-names'
>>>
>>> See https://patchwork.ozlabs.org/patch/1289160
>>>
>>> If you already ran 'make dt_binding_check' and didn't see the above
>>> error(s), then make sure dt-schema is up to date:
>>>
>>> pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade
>>>
>>> Please check and re-submit.
>> Thank you very much for review comments...
>> I didn't find build errors, successfully built.
> 
> You need to build without DT_SCHEMA_FILES set or be on 5.7-rc (you
> should be on a current -rcX at least for any patch submission). This
> comes from the core schema.
Yes, reproduced the issue as above mentioned and fixed it. Thanks!

Regards
Vadivel
> 
> Rob
> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
