Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F9F1B60B1
	for <lists+linux-mtd@lfdr.de>; Thu, 23 Apr 2020 18:22:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Hd1m8+oVrP2EeEUJT7ao6WhHbEpODDfGhGcqNxD7iCI=; b=BUdIIKOsGybFe60OsLqtnZRKib
	pR1bZdFZxZu5HeYN+OirHk7MhJGz5xgJNB9GzOhPx27++0Irw6bdysEL39R5hx62ye2RUSpw46rKi
	Ap3jsjCv3g2iCxh1I/Fs04NJPhif+qAWqVaBpkWPBvVMw5rWAZhzqXJKqtVfpawNePUO+Wz+d/Ey/
	3JrWGyiYlMLJnkPW+haCxYgsD/hgAPvRiFNdHBlPokbM2K8etunQWsWkStvAqkirOBE1wCRDJq4A+
	rkHz52isUno4+hkcSDbbqSQ0ojvu06N23+quj0uJRkcj2gUROmHqeJ7aRsIarVFeTfV4mWERRZWEO
	UP3Jqu0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRecW-0005iT-H3; Thu, 23 Apr 2020 16:22:36 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRecA-0005WR-A1
 for linux-mtd@lists.infradead.org; Thu, 23 Apr 2020 16:22:15 +0000
IronPort-SDR: viz1t4iH4K6UL1OV6YfLjufqcirw7VejjyqpG4KthS2MHmFNWDCvYe9JRN1VwGo1tugprXcrh0
 QKIVOOQ1xU/w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 09:22:13 -0700
IronPort-SDR: qVw/wtqICpgOxq8oVe7bEECCf+wN4NqmPPYej1q060EteXm1TpS0ii33nzShAQIVTSZ1XJNUWY
 wwaHrfvVLDyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,307,1583222400"; d="scan'208";a="402967197"
Received: from sgsxdev004.isng.intel.com (HELO localhost) ([10.226.88.13])
 by orsmga004.jf.intel.com with ESMTP; 23 Apr 2020 09:22:08 -0700
From: "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
To: linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 devicetree@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: mtd: Add YAML for Nand Flash Controller
 support
Date: Fri, 24 Apr 2020 00:21:12 +0800
Message-Id: <20200423162113.38055-2-vadivel.muruganx.ramuthevar@linux.intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200423162113.38055-1-vadivel.muruganx.ramuthevar@linux.intel.com>
References: <20200423162113.38055-1-vadivel.muruganx.ramuthevar@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_092214_355785_957A1E68 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: cheol.yong.kim@intel.com, hauke.mehrtens@intel.com, qi-ming.wu@intel.com,
 anders.roxell@linaro.org, vigneshr@ti.com, arnd@arndb.de, richard@nod.at,
 brendanhiggins@google.com, linux-mips@vger.kernel.org, robh+dt@kernel.org,
 Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>,
 boris.brezillon@collabora.com, miquel.raynal@bootlin.com, tglx@linutronix.de,
 masonccyang@mxic.com.tw, andriy.shevchenko@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>

Add YAML file for dt-bindings to support NAND Flash Controller
on Intel's Lightning Mountain SoC.

Signed-off-by: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
---
 .../devicetree/bindings/mtd/intel,lgm-nand.yaml    | 61 ++++++++++++++++++++++
 1 file changed, 61 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/intel,lgm-nand.yaml

diff --git a/Documentation/devicetree/bindings/mtd/intel,lgm-nand.yaml b/Documentation/devicetree/bindings/mtd/intel,lgm-nand.yaml
new file mode 100644
index 000000000000..6dd899d367b4
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/intel,lgm-nand.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/intel,lgm-nand.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Intel LGM SoC NAND Controller Device Tree Bindings
+
+allOf:
+  - $ref: "nand-controller.yaml"
+
+maintainers:
+  - Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
+
+properties:
+  compatible:
+    const: intel,lgm-nand-controller
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  dmas:
+    maxItems: 2
+
+  dma-names:
+    enum:
+      - rx
+      - tx
+
+  pinctrl-names: true
+
+patternProperties:
+  "^pinctrl-[0-9]+$": true
+
+  "^nand@[a-f0-9]+$":
+    type: object
+    properties:
+      reg:
+        minimum: 0
+        maximum: 7
+
+      nand-ecc-mode: true
+
+      nand-ecc-algo:
+        const: hw
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - dmas
+
+additionalProperties: false
+
+...
-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
