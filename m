Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4CDE18C752
	for <lists+linux-mtd@lfdr.de>; Fri, 20 Mar 2020 07:06:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2qrQcU6Qwoq1i/pQ2LNchyce2UjcqKfU+QL+mLWnIUE=; b=HiXmj5/kEvQYyb
	ta3dV0CbC/V7pAt/Z7dx5X0mTCTWUTQRUN+ItCseAWYJzDU741WYmI9RwuOwrk7c+MOzeTVGnmsq2
	wSyG75ApBaiwiBCYfzJjmOkXnA7QHy79dto9jDMli2+RE0nl+d4KWRQsLfg9qOaroneh3iKNk3tI5
	Q4HsIKnXxTJs/vZiFsRqP2xuaEKI8GiqZyl9XX+dmX52Lngw+M+2cyWL9FZ6+Ad5sVJ/tHTZlXAlf
	2eTwB5a8QDLPuHHF6QJIGbtFpt/0M5n364CSOKdyqgg44+2wnvN78YR0MPN1R0Qld/iz6PtdepGH8
	poBEPO0l9ges79bEyLdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFAnj-0005Ry-7h; Fri, 20 Mar 2020 06:06:35 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFAnc-0005RV-09
 for linux-mtd@lists.infradead.org; Fri, 20 Mar 2020 06:06:29 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02K667HF013962;
 Fri, 20 Mar 2020 01:06:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584684367;
 bh=54+jme14f9l+F5m+jvtM+/CK152iu0QJDNvmuwSkKso=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=dF0p6Szc2W4e1lfCb0KUwKB5d934NjsUCmhvtLSgw3fGFK78HNvmwRI9UneGh7grT
 L/+MFnIw4JRXSgnGwaWBq4eqRlrnNFAT5GHTlXyWVPPYVwoMR499A8VY3GbMrWIg/H
 7odLbJCtgHV8ri0MfbVTUaaeCO0QJdwvUqD3xOpg=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02K666rY003898
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 20 Mar 2020 01:06:06 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 20
 Mar 2020 01:06:05 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 20 Mar 2020 01:06:06 -0500
Received: from [10.250.132.43] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02K65wsQ029497;
 Fri, 20 Mar 2020 01:05:59 -0500
Subject: Re: [PATCH v12 1/4] dt-bindings: spi: Add schema for Cadence QSPI
 Controller driver
To: "Ramuthevar,Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>,
 <linux-kernel@vger.kernel.org>, <linux-spi@vger.kernel.org>,
 <broonie@kernel.org>, <robh+dt@kernel.org>
References: <20200310015213.1734-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200310015213.1734-2-vadivel.muruganx.ramuthevar@linux.intel.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <c2ad909e-9042-6ba0-7213-83346c6b9908@ti.com>
Date: Fri, 20 Mar 2020 11:35:57 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200310015213.1734-2-vadivel.muruganx.ramuthevar@linux.intel.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_230628_128050_2F9D8A27 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: marex@denx.de, devicetree@vger.kernel.org, tien.fong.chee@intel.com,
 tudor.ambarus@gmail.com, boris.brezillon@free-electrons.com, richard@nod.at,
 qi-ming.wu@intel.com, simon.k.r.goldschmidt@gmail.com, dinguyen@kernel.org,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 cheol.yong.kim@intel.com, cyrille.pitchen@atmel.com,
 computersforpeace@gmail.com, dwmw2@infradead.org,
 david.oberhollenzer@sigma-star.at
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 10/03/20 7:22 am, Ramuthevar,Vadivel MuruganX wrote:
> From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
> 
> Add dt-bindings documentation for Cadence-QSPI controller to support
> spi based flash memories.
> 
> Signed-off-by: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
> ---
>  .../devicetree/bindings/mtd/cadence-quadspi.txt    |  67 -----------
>  .../devicetree/bindings/spi/cdns,qspi-nor.yaml     | 127 +++++++++++++++++++++
>  2 files changed, 127 insertions(+), 67 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mtd/cadence-quadspi.txt
>  create mode 100644 Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
> 
[...]

> +
> +# subnode's properties
> +patternProperties:
> +  "^.*@[0-9a-fA-F]+$":
> +    type: object
> +    description:
> +      flash device uses the subnodes below defined properties.
> +
> +  cdns,read-delay:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Delay in 4 microseconds, read capture logic, in clock cycles.


Not its not... See the old binding description please:

-- cdns,read-delay : Delay for read capture logic, in clock cycles

There is no mention of 4us. Range is 0x0 - 0xF

> +
> +  cdns,tshsl-ns:
> +    description: |
> +      Delay in 50 nanoseconds, for the length that the master mode chip select
> +      outputs are de-asserted between transactions.

Again see the description in old binding file:

 cdns,tshsl-ns : Delay in nanoseconds for the length that the master
                  mode chip select outputs are de-asserted between
	  	transactions.

Need not be 50ns or its multiple

> +
> +  cdns,tsd2d-ns:
> +    description: |
> +      Delay in 50 nanoseconds, between one chip select being de-activated
> +      and the activation of another.
> +

same here

> +  cdns,tchsh-ns:
> +    description: |
> +      Delay in 4 nanoseconds, between last bit of current transaction and
> +      deasserting the device chip select (qspi_n_ss_out).
> +

Same here... Need not be 4ns...

> +  cdns,tslch-ns:
> +    description: |
> +      Delay in 4 nanoseconds, between setting qspi_n_ss_out low and
> +      first bit transfer.


Same here...

Above four values ( cdns,*-ns) come directly from the flash datasheets.

These values are converted appropriate number of cycles depending upon
the QSPI ref_clk frequency. So, there is no easy way to express the
constraint (or range) in DT schema. I would recommend to just stick with
the description that is there in the old binding file without any
modifications.

Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
