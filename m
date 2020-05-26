Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19EE51B937F
	for <lists+linux-mtd@lfdr.de>; Sun, 26 Apr 2020 21:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rncFLbfyj5LMSFYovNNRCH4GODkwwPookBvnCDMwQxE=; b=VTKyJYIsF3t28y
	+142+RTHxdzxouecT1p5QyTb3h018ABll/5Gxr34VtSIKa2np2DdTBBEeQZmdB/6/+0BR4hEQB+lA
	2+OluRZq7xRyAp7hFSWFB1MU70UpSRsPHsvUlhhBnLw4duaYp1DB30A2wgRfeZ/hYHQdhWWo2VkW/
	kknlaJF+PjMB9cz1jxeYLsTdLcTojUXIs4jebsP3BsrsI6KSg7ShDO+AHEjQsOqi0kqB3/gylew2E
	doDzun8EQe/nOokDMBIgNGBK6O7IaLHUAlHePKakb6SqoSN7n42/3vPiW+hdBBTeUb0ymYSbrapoK
	f9nYMJ9ZdVb0+Ro6uBVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSmXX-0003W1-Bb; Sun, 26 Apr 2020 19:02:07 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSmVq-0001yv-AB
 for linux-mtd@lists.infradead.org; Sun, 26 Apr 2020 19:00:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1587927552; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Jh2ddJMVI7j8PzDuCFU41+bSxoW1q7AM13axcnTvN5s=;
 b=pOeCX0LYioFgu/D4E6/DRhHGVFLi1F4A6C6Vu6Hgd85n6Dzd6QuXzQoZvR6OfRpnNpEkE8
 MbILWvBsuQOJVE8eUZ7coJ+ZFYfxpeyocbnfTmyFwFsMwLgDKrW2V6gohDJ1H9PFhkO1vT
 CWXjW3opKnhvBj7MQpYM84UA/fflAhM=
From: Paul Cercueil <paul@crapouillou.net>
To: Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 7/8] dt-bindings: serial: Convert ingenic,uart.txt to YAML
Date: Sun, 26 Apr 2020 20:58:55 +0200
Message-Id: <20200426185856.38826-7-paul@crapouillou.net>
In-Reply-To: <20200426185856.38826-1-paul@crapouillou.net>
References: <20200426185856.38826-1-paul@crapouillou.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_120022_753932_9A098E5A 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 =?UTF-8?q?=E5=91=A8=E7=90=B0=E6=9D=B0?= <zhouyanjie@wanyeetech.com>,
 Paul Cercueil <paul@crapouillou.net>, linux-gpio@vger.kernel.org, od@zcrc.me,
 linux-mtd@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-serial@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Convert the ingenic,uart.txt to a new ingenic,uart.yaml file.

A few things were changed in the process:
- the dmas and dma-names properties are now required.
- the ingenic,jz4770-uart and ingenic,jz4775-uart compatible strings now
  require the ingenic,jz4760-uart string to be used as fallback, since
  the hardware is compatible.
- the ingenic,jz4725b-uart compatible string was added, with a fallback
  to ingenic,jz4740-uart.

Signed-off-by: Paul Cercueil <paul@crapouillou.net>
---
 .../bindings/serial/ingenic,uart.txt          | 28 ------
 .../bindings/serial/ingenic,uart.yaml         | 94 +++++++++++++++++++
 2 files changed, 94 insertions(+), 28 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/serial/ingenic,uart.txt
 create mode 100644 Documentation/devicetree/bindings/serial/ingenic,uart.yaml

diff --git a/Documentation/devicetree/bindings/serial/ingenic,uart.txt b/Documentation/devicetree/bindings/serial/ingenic,uart.txt
deleted file mode 100644
index 24ed8769f4af..000000000000
--- a/Documentation/devicetree/bindings/serial/ingenic,uart.txt
+++ /dev/null
@@ -1,28 +0,0 @@
-* Ingenic SoC UART
-
-Required properties:
-- compatible : One of:
-  - "ingenic,jz4740-uart",
-  - "ingenic,jz4760-uart",
-  - "ingenic,jz4770-uart",
-  - "ingenic,jz4775-uart",
-  - "ingenic,jz4780-uart",
-  - "ingenic,x1000-uart".
-- reg : offset and length of the register set for the device.
-- interrupts : should contain uart interrupt.
-- clocks : phandles to the module & baud clocks.
-- clock-names: tuple listing input clock names.
-	Required elements: "baud", "module"
-
-Example:
-
-uart0: serial@10030000 {
-	compatible = "ingenic,jz4740-uart";
-	reg = <0x10030000 0x100>;
-
-	interrupt-parent = <&intc>;
-	interrupts = <9>;
-
-	clocks = <&ext>, <&cgu JZ4740_CLK_UART0>;
-	clock-names = "baud", "module";
-};
diff --git a/Documentation/devicetree/bindings/serial/ingenic,uart.yaml b/Documentation/devicetree/bindings/serial/ingenic,uart.yaml
new file mode 100644
index 000000000000..c023d650e9c1
--- /dev/null
+++ b/Documentation/devicetree/bindings/serial/ingenic,uart.yaml
@@ -0,0 +1,94 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/serial/ingenic,uart.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Ingenic SoCs UART controller devicetree bindings
+
+maintainers:
+  - Paul Cercueil <paul@crapouillou.net>
+
+properties:
+  $nodename:
+    pattern: "^serial@[0-9a-f]+$"
+
+  compatible:
+    oneOf:
+      - enum:
+        - ingenic,jz4740-uart
+        - ingenic,jz4760-uart
+        - ingenic,jz4780-uart
+        - ingenic,x1000-uart
+      - items:
+        - enum:
+          - ingenic,jz4770-uart
+          - ingenic,jz4775-uart
+        - const: ingenic,jz4760-uart
+      - items:
+        - const: ingenic,jz4725b-uart
+        - const: ingenic,jz4740-uart
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Baud clock
+      - description: UART module clock
+
+  clock-names:
+    items:
+      - const: baud
+      - const: module
+
+  dmas:
+    items:
+      - description: DMA controller phandle and request line for RX
+      - description: DMA controller phandle and request line for TX
+
+  dma-names:
+    items:
+      - const: rx
+      - const: tx
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - dmas
+  - dma-names
+
+examples:
+  - |
+    #include <dt-bindings/clock/jz4780-cgu.h>
+    #include <dt-bindings/dma/jz4780-dma.h>
+    #include <dt-bindings/gpio/gpio.h>
+    serial@10032000 {
+      compatible = "ingenic,jz4780-uart";
+      reg = <0x10032000 0x100>;
+
+      interrupt-parent = <&intc>;
+      interrupts = <49>;
+
+      clocks = <&ext>, <&cgu JZ4780_CLK_UART2>;
+      clock-names = "baud", "module";
+
+      dmas = <&dma JZ4780_DMA_UART2_RX 0xffffffff>,
+             <&dma JZ4780_DMA_UART2_TX 0xffffffff>;
+      dma-names = "rx", "tx";
+
+      bluetooth {
+        compatible = "brcm,bcm4330-bt";
+        reset-gpios = <&gpf 8 GPIO_ACTIVE_HIGH>;
+        vcc-supply = <&wlan0_power>;
+        device-wakeup-gpios = <&gpf 5 GPIO_ACTIVE_HIGH>;
+        host-wakeup-gpios = <&gpf 6 GPIO_ACTIVE_HIGH>;
+        shutdown-gpios = <&gpf 4 GPIO_ACTIVE_LOW>;
+      };
+    };
-- 
2.26.2


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
