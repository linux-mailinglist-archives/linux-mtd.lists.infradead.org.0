Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A792F18F7E6
	for <lists+linux-mtd@lfdr.de>; Mon, 23 Mar 2020 16:00:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JhFEb6kkXoAeZfc7si/8aA/U/ZQY3WZOhMd8/incWj4=; b=XquOzOX6/mOXrl
	dfLas4zfzzvUSEgLO1m4Rlno7znzRVDR45juRSh8oxsItSQ6WlUw/T1+0PiccrxPLKDieGFo4bRkr
	bH9jwvVS+P06WK7c9OMAectrE2SinRROSV2sKSPRiAW+YgnWUNz1nIS2hjoyLO5r3sD8iILhgm/SN
	ldmCN84O39WVZUT22hZ37WBGxsYEZEsBJXWQzgQcvQxnYgkWSe2oTe3vPuaiwGuSigxsN/4WlZ11t
	qoqfwHdxST8j5GUlBppXbSnNqIQaGCh3agt0sbCwLMXSjNH8cllZtgYa/MFAcSl3ypYgWEm4g4grs
	T2ILl6UiHl4ZHyjDf73A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGOYg-0007es-N2; Mon, 23 Mar 2020 15:00:06 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGOYK-0007Vc-9o
 for linux-mtd@lists.infradead.org; Mon, 23 Mar 2020 14:59:46 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02NEc1XU029528; Mon, 23 Mar 2020 15:59:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=5+wPLTXf7KCWI+acfIrjcQ/PREWC0t0gEQB9xOF7Ecw=;
 b=cc9Wr50vDBHZsn+Wxrb1ySLPYwrmszvWMpt9ZOAY2aYlCTDer7mW8Nlmx7sPhmHaz/P6
 1BeLXuENeQw1s8ijqi8GdULQQYf32+eBX9gEU+zh0hbwDh8NOQHXaj39pgJHgvEE+RKZ
 hu16OnFaQsthpxneNf3oefmWYF7H/1+89B5hgNxbaErB7a/KZC0PciyEkDpgKWlNItjQ
 7xJz0wgGcwiS6j2viSUwam2Pous8MArtY5KQwmgT7b3LxbfnMW4z8Xe9jZdP8Cdm+hA/
 MD2Xsw7Q6JXNFfreNixsvNadWNno36F7Eb0y4OSXf5i8gh/jAKe0Q+3YSPIifhqFNJRE nQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yw8xdtnar-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 23 Mar 2020 15:59:32 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D534C10002A;
 Mon, 23 Mar 2020 15:59:31 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id BB7FA22193C;
 Mon, 23 Mar 2020 15:59:31 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Mon, 23 Mar 2020 15:59:30 +0100
From: Christophe Kerello <christophe.kerello@st.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>,
 <lee.jones@linaro.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <tony@atomide.com>
Subject: [01/12] dt-bindings: mfd: stm32-fmc2: add STM32 FMC2 controller
 documentation
Date: Mon, 23 Mar 2020 15:58:41 +0100
Message-ID: <1584975532-8038-2-git-send-email-christophe.kerello@st.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1584975532-8038-1-git-send-email-christophe.kerello@st.com>
References: <1584975532-8038-1-git-send-email-christophe.kerello@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-23_05:2020-03-21,
 2020-03-23 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_075944_645944_49FCABBC 
X-CRM114-Status: GOOD (  21.04  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: marex@denx.de, Christophe Kerello <christophe.kerello@st.com>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This patch adds the documentation of the device tree bindings for the STM32
FMC2 controller.

Signed-off-by: Christophe Kerello <christophe.kerello@st.com>
---
 .../devicetree/bindings/mfd/st,stm32-fmc2.yaml     | 370 +++++++++++++++++++++
 1 file changed, 370 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/st,stm32-fmc2.yaml

diff --git a/Documentation/devicetree/bindings/mfd/st,stm32-fmc2.yaml b/Documentation/devicetree/bindings/mfd/st,stm32-fmc2.yaml
new file mode 100644
index 0000000..0ce1340
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/st,stm32-fmc2.yaml
@@ -0,0 +1,370 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/st,stm32-fmc2.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics Flexible Memory Controller 2 (FMC2) Bindings
+
+description: |
+  The FMC2 functional block makes the interface with: synchronous and
+  asynchronous static devices (such as PSNOR, PSRAM or other memory-mapped
+  peripherals) and NAND flash memories.
+  Its main purposes are:
+    - to translate AXI transactions into the appropriate external device
+      protocol
+    - to meet the access time requirements of the external devices
+  All external devices share the addresses, data and control signals with the
+  controller. Each external device is accessed by means of a unique Chip
+  Select. The FMC2 performs only one access at a time to an external device.
+
+maintainers:
+  - Christophe Kerello <christophe.kerello@st.com>
+
+properties:
+  compatible:
+    const: st,stm32mp1-fmc2
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+  ranges: true
+
+patternProperties:
+  "^ebi(@.*)?":
+    type: object
+
+    properties:
+      compatible:
+        const: st,stm32mp1-fmc2-ebi
+
+      "#address-cells":
+        const: 2
+
+      "#size-cells":
+        const: 1
+
+      ranges: true
+
+    patternProperties:
+      "^[a-zA-Z]*-ebi@[a-f0-9,]*$":
+        type: object
+
+        properties:
+          reg:
+            maxItems: 1
+
+          st,fmc2_ebi_cs_transaction_type:
+            allOf:
+              - $ref: /schemas/types.yaml#/definitions/uint32
+              - minimum: 0
+                maximum: 11
+            description: |
+                         Select one of the transactions type supported
+                           0: Asynchronous mode 1 SRAM/FRAM
+                           1: Asynchronous mode 1 PSRAM.
+                           2: Asynchronous mode A SRAM/FRAM.
+                           3: Asynchronous mode A PSRAM.
+                           4: Asynchronous mode 2 NOR.
+                           5: Asynchronous mode B NOR.
+                           6: Asynchronous mode C NOR.
+                           7: Asynchronous mode D NOR.
+                           8: Synchronous read synchronous write PSRAM.
+                           9: Synchronous read asynchronous write PSRAM.
+                           10: Synchronous read synchronous write NOR.
+                           11: Synchronous read asynchronous write NOR.
+
+          st,fmc2_ebi_cs_cclk_enable:
+            $ref: /schemas/types.yaml#/definitions/flag
+            description: Continuous clock enable (first bank must be configured
+                         in synchronous mode). The FMC_CLK is generated continuously
+                         during asynchronous and synchronous access. By default, the
+                         FMC_CLK is only generated during synchronous access.
+
+          st,fmc2_ebi_cs_mux_enable:
+            $ref: /schemas/types.yaml#/definitions/flag
+            description: Address/Data multiplexed on databus (valid only with
+                         NOR and PSRAM transactions type). By default, Address/Data are
+                         not multiplexed.
+
+          st,fmc2_ebi_cs_buswidth:
+            allOf:
+              - $ref: /schemas/types.yaml#/definitions/uint32
+              - enum: [ 8, 16 ]
+              - default: 16
+            description: Data bus width
+
+          st,fmc2_ebi_cs_waitpol_high:
+            $ref: /schemas/types.yaml#/definitions/flag
+            description: Wait signal polarity (NWAIT signal active high).
+                         By default, NWAIT is active low.
+
+          st,fmc2_ebi_cs_waitcfg_enable:
+            $ref: /schemas/types.yaml#/definitions/flag
+            description: The NWAIT signal indicates wheither the data from the
+                         device are valid or if a wait state must be inserted when
+                         accessing the device in synchronous mode. By default, the NWAIT
+                         signal is active one data cycle before wait state.
+
+          st,fmc2_ebi_cs_wait_enable:
+            $ref: /schemas/types.yaml#/definitions/flag
+            description: The NWAIT signal is enabled (its level is taken into
+                         account after the programmed latency period to insert wait states
+                         if asserted). By default, the NWAIT signal is disabled.
+
+          st,fmc2_ebi_cs_asyncwait_enable:
+            $ref: /schemas/types.yaml#/definitions/flag
+            description: The NWAIT signal is taken into account during
+                         asynchronous transactions. By default, the NWAIT signal is not
+                         taken into account during asynchronous transactions.
+
+          st,fmc2_ebi_cs_cpsize:
+            allOf:
+              - $ref: /schemas/types.yaml#/definitions/uint32
+              - enum: [ 0, 128, 256, 512, 1024 ]
+              - default: 0
+            description: CRAM page size. The controller splits the burst access
+                         when the memory page is reached. By default, no burst split when
+                         crossing page boundary.
+
+          st,fmc2_ebi_cs_byte_lane_setup:
+            allOf:
+              - $ref: /schemas/types.yaml#/definitions/uint32
+            description: This property configures the byte lane setup timing
+                         defined in ns from NBLx low to Chip Select NEx low.
+
+          st,fmc2_ebi_cs_address_setup:
+            allOf:
+              - $ref: /schemas/types.yaml#/definitions/uint32
+            description: This property defines the duration of the address
+                         setup phase in ns used for asynchronous read/write transactions.
+
+          st,fmc2_ebi_cs_address_hold:
+            allOf:
+              - $ref: /schemas/types.yaml#/definitions/uint32
+            description: This property defines the duration of the address
+                         hold phase in ns used for asynchronous multiplexed
+                         read/write transactions.
+
+          st,fmc2_ebi_cs_data_setup:
+            allOf:
+              - $ref: /schemas/types.yaml#/definitions/uint32
+            description: This property defines the duration of the data
+                         setup phase in ns used for asynchronous read/write transactions.
+
+          st,fmc2_ebi_cs_bus_turnaround:
+            allOf:
+              - $ref: /schemas/types.yaml#/definitions/uint32
+            description: This property defines the delay between the end of
+                         current read/write transaction and the next transaction.
+
+          st,fmc2_ebi_cs_data_hold:
+            allOf:
+              - $ref: /schemas/types.yaml#/definitions/uint32
+            description: This property defines the duration of the data
+                         hold phase in ns used for asynchronous read/write transactions.
+
+          st,fmc2_ebi_cs_clk_period:
+            allOf:
+              - $ref: /schemas/types.yaml#/definitions/uint32
+            description: This property defines the FMC_CLK output signal period in ns.
+
+          st,fmc2_ebi_cs_data_latency:
+            allOf:
+              - $ref: /schemas/types.yaml#/definitions/uint32
+            description: This property defines the data latency before reading or writing
+                         the first data. This timing is expressed in FMC_CLK periods.
+
+          st,fmc2_ebi_cs_write_address_setup:
+            allOf:
+              - $ref: /schemas/types.yaml#/definitions/uint32
+            description: This property defines the duration of the address
+                         setup phase in ns used for asynchronous write transactions.
+
+          st,fmc2_ebi_cs_write_address_hold:
+            allOf:
+              - $ref: /schemas/types.yaml#/definitions/uint32
+            description: This property defines the duration of the address hold phase in
+                         ns used for asynchronous multiplexed write transactions.
+
+          st,fmc2_ebi_cs_write_data_setup:
+            allOf:
+              - $ref: /schemas/types.yaml#/definitions/uint32
+            description: This property defines the duration of the data setup phase in
+                         ns used for asynchronous write transactions.
+
+          st,fmc2_ebi_cs_write_bus_turnaround:
+            allOf:
+              - $ref: /schemas/types.yaml#/definitions/uint32
+            description: This property defines the delay between the end of current
+                         write transaction and the next transaction.
+
+          st,fmc2_ebi_cs_write_data_hold:
+            allOf:
+              - $ref: /schemas/types.yaml#/definitions/uint32
+            description: This property defines the duration of the data hold phase
+                         in ns used for asynchronous write transactions.
+
+          st,fmc2_ebi_cs_max_low_pulse:
+            allOf:
+              - $ref: /schemas/types.yaml#/definitions/uint32
+            description: This property defines the maximum chip select low pulse duration
+                         in ns for synchronous transactions. When this timing reaches 0,
+                         the controller splits the current access, toggles NE to allow
+                         device refresh and restarts a new access.
+
+        required:
+          - reg
+          - st,fmc2_ebi_cs_transaction_type
+
+    additionalProperties: false
+
+    required:
+      - compatible
+      - "#address-cells"
+      - "#size-cells"
+      - ranges
+
+  nand-controller:
+    allOf:
+      - $ref: "../mtd/nand-controller.yaml#"
+
+    type: object
+
+    properties:
+      compatible:
+        const: st,stm32mp1-fmc2-nand
+
+      reg:
+        items:
+          - description: Chip select 0 data
+          - description: Chip select 0 command
+          - description: Chip select 0 address space
+          - description: Chip select 1 data
+          - description: Chip select 1 command
+          - description: Chip select 1 address space
+
+      interrupts:
+        maxItems: 1
+
+      dmas:
+        items:
+          - description: tx DMA channel
+          - description: rx DMA channel
+          - description: ecc DMA channel
+
+      dma-names:
+        items:
+          - const: tx
+          - const: rx
+          - const: ecc
+
+      "#address-cells":
+        const: 1
+
+      "#size-cells":
+        const: 0
+
+    patternProperties:
+      "^nand@[a-f0-9]$":
+        type: object
+
+        properties:
+          nand-ecc-step-size:
+            const: 512
+
+          nand-ecc-strength:
+            enum: [1, 4 ,8 ]
+
+    additionalProperties: false
+
+    required:
+      - "#address-cells"
+      - "#size-cells"
+      - compatible
+      - reg
+      - interrupts
+
+  additionalProperties: false
+
+required:
+  - "#address-cells"
+  - "#size-cells"
+  - compatible
+  - reg
+  - clocks
+  - ranges
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/stm32mp1-clks.h>
+    #include <dt-bindings/reset/stm32mp1-resets.h>
+    fmc@58002000 {
+      #address-cells = <1>;
+      #size-cells = <1>;
+      compatible = "st,stm32mp1-fmc2";
+      reg = <0x58002000 0x1000>;
+      clocks = <&rcc FMC_K>;
+      resets = <&rcc FMC_R>;
+      ranges;
+
+      ebi@0 {
+        #address-cells = <2>;
+        #size-cells = <1>;
+        compatible = "st,stm32mp1-fmc2-ebi";
+        ranges = <0 0 0x60000000 0x4000000>,
+                 <1 0 0x64000000 0x4000000>,
+                 <2 0 0x68000000 0x4000000>,
+                 <3 0 0x6c000000 0x4000000>;
+
+        psram-ebi@0,0 {
+          compatible = "mtd-ram";
+          reg = <0 0x00000000 0x100000>;
+          bank-width = <2>;
+
+          st,fmc2_ebi_cs_transaction_type = <1>;
+          st,fmc2_ebi_cs_address_setup = <60>;
+          st,fmc2_ebi_cs_data_setup = <30>;
+          st,fmc2_ebi_cs_bus_turnaround = <5>;
+        };
+      };
+
+      nand-controller@1 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        compatible = "st,stm32mp1-fmc2-nand";
+        reg = <0x80000000 0x1000>,
+              <0x88010000 0x1000>,
+              <0x88020000 0x1000>,
+              <0x81000000 0x1000>,
+              <0x89010000 0x1000>,
+              <0x89020000 0x1000>;
+        interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
+        dmas = <&mdma1 20 0x2 0x12000a02 0x0 0x0>,
+               <&mdma1 20 0x2 0x12000a08 0x0 0x0>,
+               <&mdma1 21 0x2 0x12000a0a 0x0 0x0>;
+        dma-names = "tx", "rx", "ecc";
+
+        nand@0 {
+          reg = <0>;
+          nand-on-flash-bbt;
+          #address-cells = <1>;
+          #size-cells = <1>;
+        };
+      };
+    };
+
+...
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
