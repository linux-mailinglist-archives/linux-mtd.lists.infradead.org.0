Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 301031C6BAB
	for <lists+linux-mtd@lfdr.de>; Wed,  6 May 2020 10:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Rl2/hvmbF4sDl2+sAzMSjiukBtgshtFEGyPuXOSk9Pk=; b=qnthnO74swHoZnUz97lz5Y5v2
	idL8OQMo202chn/49s+FlaPnBKUPDBnUj9TgnuNRcAlm1JV7GHC2CC1fcTfVlDkPiTtN1M1HhjjuH
	4/a7gd+wlGEGOKgxwiKrVEt0tBBG2S3jNDS2waQz3yheIlPmMECIPTKQkWDxakyE68zypKJwUBa+M
	d4i4Ch2XS4aYQBHHQrRt0oQZ1aaWbHcaqRUcMU9YiCvjxhu1fYJnM8dtAtofLCue0sys5zUwQjzgz
	El/zaQBgEs8rcwVuHCllSbLQCFq9MZfqo/2eCpqFOil/FKMWYmMqLacM5ZaNIFPKg6POCDRB0kvB1
	dF7Ev9W9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWFOL-0000NB-4B; Wed, 06 May 2020 08:26:57 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFNh-00008l-K6
 for linux-mtd@lists.infradead.org; Wed, 06 May 2020 08:26:20 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0468NNwE012157; Wed, 6 May 2020 10:26:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=EEogFn0RVib216inVfllav3i/4NPiXwx/KVJAzii784=;
 b=UH55gPLvdOSYgEsIqotYjU1cZsnznh+e4QIPNGkU3KPzCRfwUbRkIbWbUW/6lXVSdoI8
 b0Z3d8Iky5IE1+iVVMvtvOhlEr+NKa2oVJ3ZSUTHa+Bs1I+n1wtWnbNYa6ptcJAw3jOp
 KShcoVLhrlUNO8QTVjzZMDF1x91tbxcAWFUE7fk4J/UnoZcjQtl10Z8PFiCELafHh4vo
 GmmpRskuygaBIMStyRdjCq8L5se2dLRfOadWH8KTHFtTtwCSiN/AEG+4AShfV9n82n3v
 N5mPUnSaXmKiKxOAToLnYKP9oDLH0zCVjUgOyDYP1Hgtg3h8M1AcuJijXUM+/2WGpg09 kg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30rx08n4g4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 06 May 2020 10:26:05 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7B6BF100034;
 Wed,  6 May 2020 10:26:04 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 61C292A7A75;
 Wed,  6 May 2020 10:26:04 +0200 (CEST)
Received: from [10.211.5.75] (10.75.127.51) by SFHDAG6NODE2.st.com
 (10.75.127.17) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 6 May
 2020 10:26:02 +0200
Subject: Re: [PATCH v3 07/10] dt-bindings: memory-controller: add STM32 FMC2
 EBI controller documentation
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <gregkh@linuxfoundation.org>, <boris.brezillon@collabora.com>
References: <1588698668-25288-1-git-send-email-christophe.kerello@st.com>
 <1588698668-25288-8-git-send-email-christophe.kerello@st.com>
From: Christophe Kerello <christophe.kerello@st.com>
Message-ID: <e7efbd78-977c-fc6c-3f6d-13400277434f@st.com>
Date: Wed, 6 May 2020 10:26:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1588698668-25288-8-git-send-email-christophe.kerello@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG2NODE1.st.com (10.75.127.4) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-05-06_03:2020-05-04,
 2020-05-06 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_012618_195401_8C450FC6 
X-CRM114-Status: GOOD (  32.21  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: marex@denx.de, devicetree@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 5/5/20 7:11 PM, Christophe Kerello wrote:
> This patch adds the documentation of the device tree bindings for the STM32
> FMC2 EBI controller.
> 
> Signed-off-by: Christophe Kerello <christophe.kerello@st.com>
> ---
> Changes in v3:
>   - pattern name has been modified
>   - vendor properties have been modified
>     - s/_/-/
>     - add unit suffix (-ns) on timing properties
> 
>   .../memory-controllers/st,stm32-fmc2-ebi.yaml      | 261 +++++++++++++++++++++
>   1 file changed, 261 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml b/Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml
> new file mode 100644
> index 0000000..3ec57d2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml
> @@ -0,0 +1,261 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/memory-controllers/st,stm32-fmc2.yaml#

Hi,

There is a mistake on the filename. It should be st,stm32-fmc2-ebi.yaml.
It will be solved in v4.

Regards,
Christophe Kerello.

> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics Flexible Memory Controller 2 (FMC2) Bindings
> +
> +description: |
> +  The FMC2 functional block makes the interface with: synchronous and
> +  asynchronous static devices (such as PSNOR, PSRAM or other memory-mapped
> +  peripherals) and NAND flash memories.
> +  Its main purposes are:
> +    - to translate AXI transactions into the appropriate external device
> +      protocol
> +    - to meet the access time requirements of the external devices
> +  All external devices share the addresses, data and control signals with the
> +  controller. Each external device is accessed by means of a unique Chip
> +  Select. The FMC2 performs only one access at a time to an external device.
> +
> +maintainers:
> +  - Christophe Kerello <christophe.kerello@st.com>
> +
> +properties:
> +  compatible:
> +    const: st,stm32mp1-fmc2-ebi
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  "#address-cells":
> +    const: 2
> +
> +  "#size-cells":
> +    const: 1
> +
> +  ranges:
> +    description: |
> +      Reflects the memory layout with four integer values per bank. Format:
> +      <bank-number> 0 <address of the bank> <size>
> +
> +patternProperties:
> +  "^.*@[0-4],[a-f0-9]+$":
> +    type: object
> +
> +    properties:
> +      reg:
> +        description: Bank number, base address and size of the device.
> +
> +      st,fmc2-ebi-cs-transaction-type:
> +        description: |
> +                     Select one of the transactions type supported
> +                       0: Asynchronous mode 1 SRAM/FRAM.
> +                       1: Asynchronous mode 1 PSRAM.
> +                       2: Asynchronous mode A SRAM/FRAM.
> +                       3: Asynchronous mode A PSRAM.
> +                       4: Asynchronous mode 2 NOR.
> +                       5: Asynchronous mode B NOR.
> +                       6: Asynchronous mode C NOR.
> +                       7: Asynchronous mode D NOR.
> +                       8: Synchronous read synchronous write PSRAM.
> +                       9: Synchronous read asynchronous write PSRAM.
> +                       10: Synchronous read synchronous write NOR.
> +                       11: Synchronous read asynchronous write NOR.
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        minimum: 0
> +        maximum: 11
> +
> +      st,fmc2-ebi-cs-cclk-enable:
> +        description: Continuous clock enable (first bank must be configured
> +                     in synchronous mode). The FMC_CLK is generated continuously
> +                     during asynchronous and synchronous access. By default, the
> +                     FMC_CLK is only generated during synchronous access.
> +        $ref: /schemas/types.yaml#/definitions/flag
> +
> +      st,fmc2-ebi-cs-mux-enable:
> +        description: Address/Data multiplexed on databus (valid only with
> +                     NOR and PSRAM transactions type). By default, Address/Data
> +                     are not multiplexed.
> +        $ref: /schemas/types.yaml#/definitions/flag
> +
> +      st,fmc2-ebi-cs-buswidth:
> +        description: Data bus width
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        enum: [ 8, 16 ]
> +        default: 16
> +
> +      st,fmc2-ebi-cs-waitpol-high:
> +        description: Wait signal polarity (NWAIT signal active high).
> +                     By default, NWAIT is active low.
> +        $ref: /schemas/types.yaml#/definitions/flag
> +
> +      st,fmc2-ebi-cs-waitcfg-enable:
> +        description: The NWAIT signal indicates wheither the data from the
> +                     device are valid or if a wait state must be inserted when
> +                     accessing the device in synchronous mode. By default, the
> +                     NWAIT signal is active one data cycle before wait state.
> +        $ref: /schemas/types.yaml#/definitions/flag
> +
> +      st,fmc2-ebi-cs-wait-enable:
> +        description: The NWAIT signal is enabled (its level is taken into
> +                     account after the programmed latency period to insert wait
> +                     states if asserted). By default, the NWAIT signal is
> +                     disabled.
> +        $ref: /schemas/types.yaml#/definitions/flag
> +
> +      st,fmc2-ebi-cs-asyncwait-enable:
> +        description: The NWAIT signal is taken into account during asynchronous
> +                     transactions. By default, the NWAIT signal is not taken
> +                     into account during asynchronous transactions.
> +        $ref: /schemas/types.yaml#/definitions/flag
> +
> +      st,fmc2-ebi-cs-cpsize:
> +        description: CRAM page size. The controller splits the burst access
> +                     when the memory page is reached. By default, no burst
> +                     split when crossing page boundary.
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        enum: [ 0, 128, 256, 512, 1024 ]
> +        default: 0
> +
> +      st,fmc2-ebi-cs-byte-lane-setup-ns:
> +        description: This property configures the byte lane setup timing
> +                     defined in nanoseconds from NBLx low to Chip Select NEx
> +                     low.
> +
> +      st,fmc2-ebi-cs-address-setup-ns:
> +        description: This property defines the duration of the address setup
> +                     phase in nanoseconds used for asynchronous read/write
> +                     transactions.
> +
> +      st,fmc2-ebi-cs-address-hold-ns:
> +        description: This property defines the duration of the address hold
> +                     phase in nanoseconds used for asynchronous multiplexed
> +                     read/write transactions.
> +
> +      st,fmc2-ebi-cs-data-setup-ns:
> +        description: This property defines the duration of the data setup phase
> +                     in nanoseconds used for asynchronous read/write
> +                     transactions.
> +
> +      st,fmc2-ebi-cs-bus-turnaround-ns:
> +        description: This property defines the delay in nanoseconds between the
> +                     end of current read/write transaction and the next
> +                     transaction.
> +
> +      st,fmc2-ebi-cs-data-hold-ns:
> +        description: This property defines the duration of the data hold phase
> +                     in nanoseconds used for asynchronous read/write
> +                     transactions.
> +
> +      st,fmc2-ebi-cs-clk-period-ns:
> +        description: This property defines the FMC_CLK output signal period in
> +                     nanoseconds.
> +
> +      st,fmc2-ebi-cs-data-latency-ns:
> +        description: This property defines the data latency before reading or
> +                     writing the first data in nanoseconds.
> +
> +      st,fmc2_ebi-cs-write-address-setup-ns:
> +        description: This property defines the duration of the address setup
> +                     phase in nanoseconds used for asynchronous write
> +                     transactions.
> +
> +      st,fmc2-ebi-cs-write-address-hold-ns:
> +        description: This property defines the duration of the address hold
> +                     phase in nanoseconds used for asynchronous multiplexed
> +                     write transactions.
> +
> +      st,fmc2-ebi-cs-write-data-setup-ns:
> +        description: This property defines the duration of the data setup
> +                     phase in nanoseconds used for asynchronous write
> +                     transactions.
> +
> +      st,fmc2-ebi-cs-write-bus-turnaround-ns:
> +        description: This property defines the delay between the end of current
> +                     write transaction and the next transaction in nanoseconds.
> +
> +      st,fmc2-ebi-cs-write-data-hold-ns:
> +        description: This property defines the duration of the data hold phase
> +                     in nanoseconds used for asynchronous write transactions.
> +
> +      st,fmc2-ebi-cs-max-low-pulse-ns:
> +        description: This property defines the maximum chip select low pulse
> +                     duration in nanoseconds for synchronous transactions. When
> +                     this timing reaches 0, the controller splits the current
> +                     access, toggles NE to allow device refresh and restarts a
> +                     new access.
> +
> +    required:
> +      - reg
> +
> +required:
> +  - "#address-cells"
> +  - "#size-cells"
> +  - compatible
> +  - reg
> +  - clocks
> +  - ranges
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/stm32mp1-clks.h>
> +    #include <dt-bindings/reset/stm32mp1-resets.h>
> +    memory-controller@58002000 {
> +      #address-cells = <2>;
> +      #size-cells = <1>;
> +      compatible = "st,stm32mp1-fmc2-ebi";
> +      reg = <0x58002000 0x1000>;
> +      clocks = <&rcc FMC_K>;
> +      resets = <&rcc FMC_R>;
> +
> +      ranges = <0 0 0x60000000 0x04000000>, /* EBI CS 1 */
> +               <1 0 0x64000000 0x04000000>, /* EBI CS 2 */
> +               <2 0 0x68000000 0x04000000>, /* EBI CS 3 */
> +               <3 0 0x6c000000 0x04000000>, /* EBI CS 4 */
> +               <4 0 0x80000000 0x10000000>; /* NAND */
> +
> +      psram@0,0 {
> +        compatible = "mtd-ram";
> +        reg = <0 0x00000000 0x100000>;
> +        bank-width = <2>;
> +
> +        st,fmc2-ebi-cs-transaction-type = <1>;
> +        st,fmc2-ebi-cs-address-setup-ns = <60>;
> +        st,fmc2-ebi-cs-data-setup-ns = <30>;
> +        st,fmc2-ebi-cs-bus-turnaround-ns = <5>;
> +      };
> +
> +      nand-controller@4,0 {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        compatible = "st,stm32mp15-fmc2";
> +        reg = <4 0x00000000 0x1000>,
> +              <4 0x08010000 0x1000>,
> +              <4 0x08020000 0x1000>,
> +              <4 0x01000000 0x1000>,
> +              <4 0x09010000 0x1000>,
> +              <4 0x09020000 0x1000>;
> +        interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
> +        dmas = <&mdma1 20 0x2 0x12000a02 0x0 0x0>,
> +               <&mdma1 20 0x2 0x12000a08 0x0 0x0>,
> +               <&mdma1 21 0x2 0x12000a0a 0x0 0x0>;
> +        dma-names = "tx", "rx", "ecc";
> +
> +        nand@0 {
> +          reg = <0>;
> +          nand-on-flash-bbt;
> +          #address-cells = <1>;
> +          #size-cells = <1>;
> +        };
> +      };
> +    };
> +
> +...
> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
