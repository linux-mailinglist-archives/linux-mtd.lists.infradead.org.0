Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3F91B934D
	for <lists+linux-mtd@lfdr.de>; Sun, 26 Apr 2020 21:00:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7MzKcnKXZ/R1G+DHhQh4bGvNsp+Jy3TrItC7MTxx+I0=; b=TO6EhBFLc/ajNM
	R+NonOHrjDxEJIupbkQ1kPRqqGbvLL++I7LaWI4O6Yd9vUuKMJsgDSQsf1VqogCxTH0Mt3GTiOmFY
	syS3XRbLk+2baTK1PM2jSqGko0LRfb5XGln//3p37QO7xqbEk/x4U1fAzfFhbKq6gyvacSVGlSvRT
	PfpgEdBHMSDQ71ePqoGFI7lGB+A7bn9A+JpLqzWsELO/cRmunG83/uwLSSywjd21TKRzI2/isyNHg
	I1mqpmHU5AEMoNiQt/YKviHEeNJKmhK/8jk7XWFPj7eYFlYo4SGZAzADKolEgy2e7QtrDpJbfkNrS
	yRtVD7dI/6qj+6dRJhGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSmVp-0007hd-36; Sun, 26 Apr 2020 19:00:21 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSmUd-0006mA-Mc
 for linux-mtd@lists.infradead.org; Sun, 26 Apr 2020 18:59:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1587927544; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-transfer-encoding:content-transfer-encoding:
 in-reply-to:references; bh=MPcskCveO2zpxatA04dSJRF87yAOrKmZ9Wd1I3xcHTU=;
 b=Z6/fqZftGdOUEtMtcu02nGndmzyxIBgeOF9dPZBgE5ifLiRAyektZNhiEL0ueCc3Iuk9Fo
 hXLnc6XscOR9Fbncc4E7XDFz9GllPXw7KS0Xn/IGPrD2HbdBeplzxpdR6vHzuRIWSpa3ff
 Y+t9/96FUmUzzA+qCK1I+9CPwK4JJhY=
From: Paul Cercueil <paul@crapouillou.net>
To: Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 1/8] dt-bindings: clock: Convert ingenic,cgu.txt to YAML
Date: Sun, 26 Apr 2020 20:58:49 +0200
Message-Id: <20200426185856.38826-1-paul@crapouillou.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_115908_145762_4A25583B 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
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

Convert the ingenic,cgu.txt doc file to ingenic,cgu.yaml.

The binding documentation has been updated as well. The node can have a
child node that corresponds to the USB PHY, which happens to be present
in the middle of the CGU registers.

Signed-off-by: Paul Cercueil <paul@crapouillou.net>
---
 .../devicetree/bindings/clock/ingenic,cgu.txt |  57 --------
 .../bindings/clock/ingenic,cgu.yaml           | 122 ++++++++++++++++++
 2 files changed, 122 insertions(+), 57 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/ingenic,cgu.txt
 create mode 100644 Documentation/devicetree/bindings/clock/ingenic,cgu.yaml

diff --git a/Documentation/devicetree/bindings/clock/ingenic,cgu.txt b/Documentation/devicetree/bindings/clock/ingenic,cgu.txt
deleted file mode 100644
index 75598e655067..000000000000
--- a/Documentation/devicetree/bindings/clock/ingenic,cgu.txt
+++ /dev/null
@@ -1,57 +0,0 @@
-Ingenic SoC CGU binding
-
-The CGU in an Ingenic SoC provides all the clocks generated on-chip. It
-typically includes a variety of PLLs, multiplexers, dividers & gates in order
-to provide many different clock signals derived from only 2 external source
-clocks.
-
-Required properties:
-- compatible : Should be one of:
-  * ingenic,jz4740-cgu
-  * ingenic,jz4725b-cgu
-  * ingenic,jz4770-cgu
-  * ingenic,jz4780-cgu
-  * ingenic,x1000-cgu
-- reg : The address & length of the CGU registers.
-- clocks : List of phandle & clock specifiers for clocks external to the CGU.
-  Two such external clocks should be specified - first the external crystal
-  "ext" and second the RTC clock source "rtc".
-- clock-names : List of name strings for the external clocks.
-- #clock-cells: Should be 1.
-  Clock consumers specify this argument to identify a clock. The valid values
-  may be found in <dt-bindings/clock/<soctype>-cgu.h>.
-
-Example SoC include file:
-
-/ {
-	cgu: jz4740-cgu {
-		compatible = "ingenic,jz4740-cgu";
-		reg = <0x10000000 0x100>;
-		#clock-cells = <1>;
-	};
-
-	uart0: serial@10030000 {
-		clocks = <&cgu JZ4740_CLK_UART0>;
-	};
-};
-
-Example board file:
-
-/ {
-	ext: clock@0 {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <12000000>;
-	};
-
-	rtc: clock@1 {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <32768>;
-	};
-
-	&cgu {
-		clocks = <&ext> <&rtc>;
-		clock-names: "ext", "rtc";
-	};
-};
diff --git a/Documentation/devicetree/bindings/clock/ingenic,cgu.yaml b/Documentation/devicetree/bindings/clock/ingenic,cgu.yaml
new file mode 100644
index 000000000000..0281cd1d7e1b
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/ingenic,cgu.yaml
@@ -0,0 +1,122 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/ingenic,cgu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Ingenic SoCs CGU devicetree bindings
+
+description: |
+  The CGU in an Ingenic SoC provides all the clocks generated on-chip. It
+  typically includes a variety of PLLs, multiplexers, dividers & gates in order
+  to provide many different clock signals derived from only 2 external source
+  clocks.
+
+maintainers:
+  - Paul Cercueil <paul@crapouillou.net>
+
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - ingenic,jz4740-cgu
+          - ingenic,jz4725b-cgu
+          - ingenic,jz4770-cgu
+          - ingenic,jz4780-cgu
+          - ingenic,x1000-cgu
+  required:
+    - compatible
+
+properties:
+  $nodename:
+    pattern: "^clock-controller@[0-9a-f]+$"
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+  "#clock-cells":
+    const: 1
+
+  ranges: true
+
+  compatible:
+    items:
+      - enum:
+        - ingenic,jz4740-cgu
+        - ingenic,jz4725b-cgu
+        - ingenic,jz4770-cgu
+        - ingenic,jz4780-cgu
+        - ingenic,x1000-cgu
+      - const: simple-mfd
+    minItems: 1
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: External oscillator clock
+      - description: Internal 32 kHz RTC clock
+
+  clock-names:
+    items:
+      - const: ext
+      - enum:
+        - rtc
+        - osc32k # Different name, same clock
+
+  assigned-clocks:
+    minItems: 1
+    maxItems: 64
+
+  assigned-clock-parents:
+    minItems: 1
+    maxItems: 64
+
+  assigned-clock-rates:
+    minItems: 1
+    maxItems: 64
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+
+patternProperties:
+  "^usb-phy@[a-f0-9]+$":
+    allOf: [ $ref: "../usb/ingenic,jz4770-phy.yaml#" ]
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/jz4770-cgu.h>
+    cgu: clock-controller@10000000 {
+      compatible = "ingenic,jz4770-cgu", "simple-mfd";
+      reg = <0x10000000 0x100>;
+      #address-cells = <1>;
+      #size-cells = <1>;
+      ranges = <0x0 0x10000000 0x100>;
+
+      clocks = <&ext>, <&osc32k>;
+      clock-names = "ext", "osc32k";
+
+      #clock-cells = <1>;
+
+      otg_phy: usb-phy@3c {
+        compatible = "ingenic,jz4770-phy";
+        reg = <0x3c 0x10>;
+
+        clocks = <&cgu JZ4770_CLK_OTG_PHY>;
+
+        vcc-supply = <&ldo5>;
+
+        #phy-cells = <0>;
+      };
+    };
-- 
2.26.2


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
