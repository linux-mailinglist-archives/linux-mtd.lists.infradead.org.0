Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAADFB61C
	for <lists+linux-mtd@lfdr.de>; Wed, 13 Nov 2019 18:16:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CjOXgf1ietyQpF6MFOLn1L+k3dCthuLW4su6P7TfdGQ=; b=R7sNFDvRo99asc
	1CWq6g2kJGOaL+9NXJMu7GE/AL9xxtmn7RYpyYJjEY/zK2xrRrIY3cKKEWz4D7zLxoRqphsYLLo/B
	s0ExvOu65KcWhUtPpH++Puj4wqXSrqtapAu+Ky7WFEBTFiYJIO7YbrXxrCNGUgimbNxtpiJkrfOxN
	ek5sMMGVA9bMt0TcXYRdzRgn7oGBjkCZ2WsWKBYb31FKfEWdplRXwJYzkGa9f+M3tlVNorQfZTkkz
	e4PwyTiGTm7XU7oGqVzrk6N0xa4+Qt9xhLDpD7SkDBeVtSXs+fHkSRNdga4/ZNhiGUvRMvC9nLruu
	jBcTZ4O1m97U4K8z2wWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUwFg-00027f-7w; Wed, 13 Nov 2019 17:16:20 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUwEk-0001SJ-JO
 for linux-mtd@lists.infradead.org; Wed, 13 Nov 2019 17:15:26 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id EBC47E0012;
 Wed, 13 Nov 2019 17:15:14 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Subject: [PATCH v4 3/4] dt-bindings: mtd: Describe mtd-concat devices
Date: Wed, 13 Nov 2019 18:15:04 +0100
Message-Id: <20191113171505.26128-4-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113171505.26128-1-miquel.raynal@bootlin.com>
References: <20191113171505.26128-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_091522_912856_ADE89622 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Bernhard Frauendienst <kernel@nospam.obeliks.de>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Mark Brown <broonie@kernel.org>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Bernhard Frauendienst <kernel@nospam.obeliks.de>

The main use case to concatenate MTD devices is probably SPI-NOR
flashes where the number of address bits is limited to 24, which can
access a range of 16MiB. Board manufacturers might want to double the
SPI storage size by adding a second flash asserted thanks to a second
chip selects which enhances the addressing capabilities to 25 bits,
32MiB. Having two devices for twice the size is great but without more
glue, we cannot define partition boundaries spread across the two
devices. This is the gap mtd-concat intends to address.

There are two options to describe concatenated devices:
1/ One flash chip is described in the DT with two CS;
2/ Two flash chips are described in the DT with one CS each, a virtual
device is also created to describe the concatenation.

Solution 1/ presents at least 3 issues:
* The hardware description is abused;
* The concatenation only works for SPI devices (while it could be
  helpful for any MTD);
* It would require a lot of rework in the SPI core as most of the
  logic assumes there is and there always will be only one CS per
  chip.

Solution 2/ also has caveats:
* The virtual device has no hardware reality;
* Possible optimizations at the hardware level will be hard to enable
  efficiently (ie. a common direct mapping abstracted by a SPI
  memories oriented controller).

There is no easy and perfect answer to this need but it feels more
reasonable to address the problem with solution 2, with the
information/needs we have today.

Signed-off-by: Bernhard Frauendienst <kernel@nospam.obeliks.de>
[<miquel.raynal@bootlin.com>:
Wrote a commit message explaining what mtd-concat is.
Explained the implementation details.
Switched to yaml schema.]
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../devicetree/bindings/mtd/mtd-concat.yaml   | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/mtd-concat.yaml

diff --git a/Documentation/devicetree/bindings/mtd/mtd-concat.yaml b/Documentation/devicetree/bindings/mtd/mtd-concat.yaml
new file mode 100644
index 000000000000..7341198575cf
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/mtd-concat.yaml
@@ -0,0 +1,56 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/mtd-concat.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Virtual MTD concatenation device bindings
+
+maintainers:
+  - Miquel Raynal <miquel.raynal@bootlin.com>
+
+properties:
+  compatible:
+    const: "mtd-concat"
+
+  devices:
+    minItems: 2
+    description: |
+      List of phandles to MTD nodes that should be concatenated (in
+      order).
+
+required:
+  - compatible
+  - devices
+
+examples:
+  - |
+    &spi {
+            flash0: flash@0 {
+	            reg = <0>;
+            };
+            flash1: flash@1 {
+	            reg = <1>;
+            };
+    };
+
+    flash {
+            compatible = "mtd-concat";
+            devices = <&flash0 &flash1>;
+
+            partitions {
+                    compatible = "fixed-partitions";
+                    #address-cells = <1>;
+                    #size-cells = <1>;
+
+                    partition@0 {
+                            label = "boot";
+                            reg = <0x0000000 0x0040000>;
+                            read-only;
+                    };
+                    partition@40000 {
+                            label = "firmware";
+                            reg = <0x0040000 0x1fc0000>;
+                    };
+            };
+    };
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
