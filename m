Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 818BD17516B
	for <lists+linux-mtd@lfdr.de>; Mon,  2 Mar 2020 01:43:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=v7ESvXPvWZe8RjIzv1XarW8MQPuX5X/SYqZ3W+GmJs8=; b=eKmPL3qpH5aC4dQfptOKnI0nwA
	oYvSO+SrEk8HdWQ5dri0v0bt4P4evZ+pI/vy2QGFwpcKCrLBaJ4YNKm+YQr38c9sBczW8BAUJQmWB
	t78aRgoITLKL5z89ua8hLDTJjSQ9FyY49u+lJqG0wpeIeWCSSjlWnF0SsWVUG3e/a59mCNOM+1nQR
	swElsvaxfz43N0zyFnjElkvHlQxn730n7psKbRsOVHWNYtX4cwdk3+a6nqEC4YwF5LUmxC1TVBB7y
	dAFiZ2YRGbygKN6laTqxOvbZkO/Ixb3eGZvhN9B3HjIizt074+kTrDnxmcpc2iirJXHhLCYQ8rU3S
	kcbXpsuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8ZAV-0005GW-Nw; Mon, 02 Mar 2020 00:42:47 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8ZAO-0005G6-PJ; Mon, 02 Mar 2020 00:42:42 +0000
Received: from localhost (unknown [192.168.167.13])
 by lucky1.263xmail.com (Postfix) with ESMTP id 48B9FA27EF;
 Mon,  2 Mar 2020 08:42:30 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P3521T140169829132032S1583109744046925_; 
 Mon, 02 Mar 2020 08:42:30 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <4192909b6d47e22ef0e119a7b8b5e01d>
X-RL-SENDER: yifeng.zhao@rock-chips.com
X-SENDER: zyf@rock-chips.com
X-LOGIN-NAME: yifeng.zhao@rock-chips.com
X-FST-TO: miquel.raynal@bootlin.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Yifeng Zhao <yifeng.zhao@rock-chips.com>
To: miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 robh+dt@kernel.org
Subject: [PATCH 2/3] mtd: rockchip: device tree bindings for Rockchip
Date: Mon,  2 Mar 2020 08:42:16 +0800
Message-Id: <1583109736-27801-1-git-send-email-yifeng.zhao@rock-chips.com>
X-Mailer: git-send-email 2.0.0
In-Reply-To: <1582884076-27615-1-git-send-email-yifeng.zhao@rock-chips.com>
References: <1582884076-27615-1-git-send-email-yifeng.zhao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_164241_010540_7C62D81C 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.132 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: devicetree@vger.kernel.org, Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 linux-mtd@lists.infradead.org, heiko@sntech.de,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Documentation support for Rockchip NAND controllers

Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
---

 .../bindings/mtd/rockchip,nand.yaml           | 95 +++++++++++++++++++
 1 file changed, 95 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/rockchip,nand.yaml

diff --git a/Documentation/devicetree/bindings/mtd/rockchip,nand.yaml b/Documentation/devicetree/bindings/mtd/rockchip,nand.yaml
new file mode 100644
index 000000000000..9a81f682ac01
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/rockchip,nand.yaml
@@ -0,0 +1,95 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/rockchip,nand.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip SoCs NAND FLASH Controller (NFC) Device Tree Bindings
+
+allOf:
+  - $ref: "nand-controller.yaml"
+
+maintainers:
+  - Yifeng Zhao <yifeng.zhao@rock-chips.com>
+
+properties:
+  "#address-cells": true
+  "#size-cells": true
+
+  compatible:
+    const: rockchip,nfc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Module Clock
+      - description: Bus Clock
+
+  clock-names:
+    items:
+      - const: clk_nfc
+      - const: clk_ahb
+
+  clock-rates:
+      maximum: 150000000
+
+  pinctrl-names: true
+
+patternProperties:
+  "^pinctrl-[0-9]+$": true
+
+  "^nand@[a-f0-9]$":
+    type: object
+    properties:
+      reg:
+        minimum: 0
+        maximum: 3
+
+      nand-ecc-step-size:
+        const: 1024
+
+      nand-ecc-strength:
+        enum: [16, 24 , 40, 60, 70]
+
+      nand-bus-width:
+        const: 8
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/rk3308-cru.h>
+    nfc: nand-controller@ff4b0000 {
+      compatible = "rockchip,nfc";
+      reg = <0x0 0xff4b0000 0x0 0x4000>;
+      interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru SCLK_NANDC>, <&cru HCLK_NANDC>;
+      clock-names = "clk_nfc", "clk_ahb";
+      clock-rates = <150000000>;
+      pinctrl-names = "default";
+      pinctrl-0 = <&flash_csn0 &flash_rdy &flash_ale &flash_cle
+                  &flash_wrn &flash_rdn &flash_bus8>;
+
+      #address-cells = <1>;
+      #size-cells = <0>;
+      nand@0 {
+        reg = <0>;
+        nand-ecc-mode = "hw";
+        nand-ecc-strength = <16>;
+        nand-ecc-step-size = <1024>;
+        nand-bus-width = <8>;
+      };
+    };
+
+...
-- 
2.17.1




______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
