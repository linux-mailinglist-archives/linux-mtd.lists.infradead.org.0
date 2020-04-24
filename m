Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE991B7D40
	for <lists+linux-mtd@lfdr.de>; Fri, 24 Apr 2020 19:48:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UX0oZhI7ajotEOWeEeSM+OWXlFDMZG6yFPkHRh3ifm0=; b=jyeLZ9/4gRMcnY
	XXGvjSNJHg2yUJCyZfqd0cuCQNY5Z2vU1CGx58PK5KFB8N+oVkUnehyFkSmoY5kzWx01JKOcb/z5i
	nMWvzM6/M0zC1Pabu5eVJuPfi76KB79wHIikKty+0HDQUg4/fELxOjOGuYvhBYh2vylooB3sT4aZj
	zOBEjSVfT+oZ55iVJ1ZAd+A0evBA9naS88k6WoHpC4JT/bFv1cQ0j/Z7ymAKxIG1to8qtG4JhS3s0
	TUXgEv37IQdBTtjWxAcv0piH7SjXAu+J/31wItAZQRuXe6Rf+q4umdeYfjHtY81s5Y5/6s2hXhUyr
	Ck5YSyP2fYpgAuRQt1uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS2Qs-00009t-9G; Fri, 24 Apr 2020 17:48:10 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS2QS-0008QQ-Q2
 for linux-mtd@lists.infradead.org; Fri, 24 Apr 2020 17:47:46 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 9169FFF808;
 Fri, 24 Apr 2020 17:47:41 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 1/2] dt-bindings: mtd: Document ARASAN NAND bindings
Date: Fri, 24 Apr 2020 19:47:37 +0200
Message-Id: <20200424174738.22304-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424174738.22304-1-miquel.raynal@bootlin.com>
References: <20200424174738.22304-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_104744_980113_71B0A7AF 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Michal Simek <monstr@monstr.eu>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Document the Arasan NAND controller bindings.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../bindings/mtd/arasan,nand-controller.yaml  | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/arasan,nand-controller.yaml

diff --git a/Documentation/devicetree/bindings/mtd/arasan,nand-controller.yaml b/Documentation/devicetree/bindings/mtd/arasan,nand-controller.yaml
new file mode 100644
index 000000000000..db8f115a13ec
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/arasan,nand-controller.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/arasan,nand-controller.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Arasan NAND Flash Controller with ONFI 3.1 support device tree bindings
+
+allOf:
+  - $ref: "nand-controller.yaml"
+
+maintainers:
+  - Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+        - enum:
+          - xlnx,zynqmp-nand-controller
+        - enum:
+          - arasan,nfc-v3p10
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Controller clock
+      - description: NAND bus clock
+
+  clock-names:
+    items:
+      - const: controller
+      - const: bus
+
+  interrupts:
+    maxItems: 1
+
+  "#address-cells": true
+  "#size-cells": true
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - interrupts
+
+additionalProperties: true
+
+examples:
+  - |
+    nfc: nand-controller@ff100000 {
+        compatible = "xlnx,zynqmp-nand-controller", "arasan,nfc-v3p10";
+        reg = <0x0 0xff100000 0x0 0x1000>;
+        clock-names = "controller", "bus";
+        clocks = <&clk200>, <&clk100>;
+        interrupt-parent = <&gic>;
+        interrupts = <0 14 4>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+    };
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
