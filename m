Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 729711CEB09
	for <lists+linux-mtd@lfdr.de>; Tue, 12 May 2020 05:02:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C0LXCotztioiQGO+yxHkMhzovhI+C1Ej6Z/7H+ay+xA=; b=EkEXw8RYnFunn1
	DAGw7lOMjObUf9lPdOiiEzF4BaY35H8puLpzvR9md+6tcxga9j1ooDQDziYAugocExWH7k5S80y+O
	myek63Wh2vib5nUC+izADrhH3/ZQpCG0rchpkOP7be2By+lgfIxgQhYLQq3BbOwDQTZJMDk55NCsU
	BUUn31bAyw2z8ZgY0w8q6cNTTpqzrlW+GbFEdqqeX/FmzwnLUTYLHmjkcnoMDeR0C/dDE3lccjW6G
	Gs/b6V//oVTsoG4nmiInhpBlylyfcU4681uJonduRiw3WjfehUhkOg1phgcfJ+GWp+02VyG38789M
	j8eP91ejlVsR+Ga5X4uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYLBv-00064C-OR; Tue, 12 May 2020 03:02:47 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYLBo-00063b-Ce
 for linux-mtd@lists.infradead.org; Tue, 12 May 2020 03:02:42 +0000
IronPort-SDR: DrkC+cxAXgE9kDXsgpQKIF/QwbU7oSmoh6+gOMXKyB+g33zKy9mdq/XgLAZ1sz5E++J5v8vxJt
 ez/IkA1Oul1Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 20:02:38 -0700
IronPort-SDR: i7GYBvH7NWY5BhrLrDKVlLB4CtNS91qsG4blQFRYPkdRiwakAQyVDqsrzKVqLZVZMgcS7fpRbr
 aK0y2FXO+ZUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,381,1583222400"; d="scan'208";a="409140692"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga004.jf.intel.com with ESMTP; 11 May 2020 20:02:38 -0700
Received: from [10.214.160.177] (vramuthx-MOBL1.gar.corp.intel.com
 [10.214.160.177])
 by linux.intel.com (Postfix) with ESMTP id 88D37580646;
 Mon, 11 May 2020 20:02:33 -0700 (PDT)
Subject: Re: [PATCH v5 1/2] dt-bindings: mtd: Add YAML for Nand Flash
 Controller support
To: Rob Herring <robh@kernel.org>
References: <20200507001537.4034-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200507001537.4034-2-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200511153712.GA25497@bogus>
From: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
Message-ID: <b500fb0b-7793-7f08-890c-c2424299af34@linux.intel.com>
Date: Tue, 12 May 2020 11:02:32 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200511153712.GA25497@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_200240_469610_C45BA2A8 
X-CRM114-Status: GOOD (  18.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
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
Cc: cheol.yong.kim@intel.com, devicetree@vger.kernel.org, qi-ming.wu@intel.com,
 anders.roxell@linaro.org, vigneshr@ti.com, arnd@arndb.de,
 hauke.mehrtens@intel.com, richard@nod.at, brendanhiggins@google.com,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 boris.brezillon@collabora.com, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com, tglx@linutronix.de, masonccyang@mxic.com.tw,
 andriy.shevchenko@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Rob,

   Thank you for the review comments and your time...

On 11/5/2020 11:37 pm, Rob Herring wrote:
> On Thu, May 07, 2020 at 08:15:36AM +0800, Ramuthevar,Vadivel MuruganX wrote:
>> From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
>>
>> Add YAML file for dt-bindings to support NAND Flash Controller
>> on Intel's Lightning Mountain SoC.
> 
> The $subject should some how reflect this is for this SoC.
Noted, will update.
> 
>>
>> Signed-off-by: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
>> ---
>>   .../devicetree/bindings/mtd/intel,lgm-nand.yaml    | 85 ++++++++++++++++++++++
>>   1 file changed, 85 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/mtd/intel,lgm-nand.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/mtd/intel,lgm-nand.yaml b/Documentation/devicetree/bindings/mtd/intel,lgm-nand.yaml
>> new file mode 100644
>> index 000000000000..69b592ae62f4
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/mtd/intel,lgm-nand.yaml
>> @@ -0,0 +1,85 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/mtd/intel,lgm-nand.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Intel LGM SoC NAND Controller Device Tree Bindings
>> +
>> +allOf:
>> +  - $ref: "nand-controller.yaml"
>> +
>> +maintainers:
>> +  - Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
>> +
>> +properties:
>> +  compatible:
>> +    const: intel,lgm-nand-controller
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    maxItems: 1
>> +
>> +  dmas:
>> +    maxItems: 2
>> +
>> +  dma-names:
>> +    enum:
>> +      - rx
>> +      - tx
>> +
>> +  pinctrl-names: true
>> +
>> +patternProperties:
>> +  "^pinctrl-[0-9]+$": true
> 
> Don't need the pinctrl properties. The tooling adds them.
ok, will drop.
> 
>> +
>> +  "^nand@[a-f0-9]+$":
>> +    type: object
>> +    properties:
>> +      reg:
>> +        minimum: 0
>> +        maximum: 7
>> +
>> +      nand-ecc-mode: true
>> +
>> +      nand-ecc-algo:
>> +        const: hw
>> +
>> +    additionalProperties: false
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - clocks
>> +  - clock-names
>> +  - dmas
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/intel,lgm-clk.h>
> 
> Is this applied somewhere? It's missing in my check and will break the
> build.
You have already reviewed the below patch which has the file
https://lkml.org/lkml/2020/4/17/31

Regards
Vadivel

> 
>> +    nand-controller@e0f00000 {
>> +      compatible = "intel,nand-controller";
>> +      reg = <0xe0f00000 0x100>,
>> +            <0xe1000000 0x300>,
>> +            <0xe1400000 0x8000>,
>> +            <0xe1c00000 0x1000>;
>> +      reg-names = "ebunand", "hsnand", "nand_cs0", "nand_cs1";
>> +      clocks = <&cgu0 LGM_GCLK_EBU>;
>> +      dma-names = "tx", "rx";
>> +      #address-cells = <1>;
>> +      #size-cells = <0>;
>> +      #clock-cells = <1>;
>> +
>> +      nand@0 {
>> +        reg = <0>;
>> +        nand-on-flash-bbt;
>> +        #address-cells = <1>;
>> +        #size-cells = <1>;
>> +      };
>> +    };
>> +
>> +...
>> -- 
>> 2.11.0
>>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
