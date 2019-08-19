Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B623C91D5F
	for <lists+linux-mtd@lfdr.de>; Mon, 19 Aug 2019 08:56:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sIT7fWT+52twLUUQ0+iF53EdYvbomFOcDJNE+9RzF/M=; b=Z9iu8pSA3tViEwsN2rJoYVYs+J
	fEMK+yrPEI5gIdhLlC9J0q2Yzg1Az4seH9T7UgwFVbdy5Vp8HAwuR6flB25fU13WiisiMw9JdTtST
	ZX0UdcWRaYRjAZr9NAs60nBTzRGcV9zZDhShhVPwVWsWeGO5/RqW1b+WJemoJb/9gRRBS+93CXvai
	c+tKzyELAxSpA+tlr1I1+o+BmQ9tbio72HhDQP11wfAfbcVG2ozc0fWe2PIuQK3RQOQCz8i/p5h8K
	vt6Eo6PAcx2leJXM/+4XMZg1YzW8Qa8P7XvTPefH4zfJAVtLla9ka6QPo7drU5fvlbfKuQOh1WqQy
	+BE7t+Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzbaD-0001i0-L3; Mon, 19 Aug 2019 06:56:01 +0000
Received: from twhmllg4.macronix.com ([211.75.127.132])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzbZt-0001gQ-I2
 for linux-mtd@lists.infradead.org; Mon, 19 Aug 2019 06:55:43 +0000
Received: from localhost.localdomain ([172.17.195.96])
 by TWHMLLG4.macronix.com with ESMTP id x7J6sIRK002951;
 Mon, 19 Aug 2019 14:54:21 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
From: Mason Yang <masonccyang@mxic.com.tw>
To: miquel.raynal@bootlin.com, richard@nod.at, marek.vasut@gmail.com,
 dwmw2@infradead.org, bbrezillon@kernel.org,
 computersforpeace@gmail.com, vigneshr@ti.com, robh+dt@kernel.org,
 stefan@agner.ch, mark.rutland@arm.com
Subject: [PATCH v7 2/2] dt-bindings: mtd: Document Macronix raw NAND
 controller bindings
Date: Mon, 19 Aug 2019 15:19:09 +0800
Message-Id: <1566199149-5669-3-git-send-email-masonccyang@mxic.com.tw>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566199149-5669-1-git-send-email-masonccyang@mxic.com.tw>
References: <1566199149-5669-1-git-send-email-masonccyang@mxic.com.tw>
X-MAIL: TWHMLLG4.macronix.com x7J6sIRK002951
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_235541_855378_C8297317 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.127.132 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, anders.roxell@linaro.org, juliensu@mxic.com.tw,
 linux-kernel@vger.kernel.org, paul@crapouillou.net, paul.burton@mips.com,
 liang.yang@amlogic.com, linux-mtd@lists.infradead.org,
 christophe.kerello@st.com, masonccyang@mxic.com.tw, lee.jones@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Document the bindings used by the Macronix raw NAND controller.

Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
---
 .../devicetree/bindings/mtd/mxic-nand.txt          | 36 ++++++++++++++++++++++
 1 file changed, 36 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/mxic-nand.txt

diff --git a/Documentation/devicetree/bindings/mtd/mxic-nand.txt b/Documentation/devicetree/bindings/mtd/mxic-nand.txt
new file mode 100644
index 0000000..46c5529
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/mxic-nand.txt
@@ -0,0 +1,36 @@
+Macronix Raw NAND Controller Device Tree Bindings
+-------------------------------------------------
+
+Required properties:
+- compatible: should be "mxic,multi-itfc-v009-nand-controller"
+- reg: should contain 1 entry for the registers
+- #address-cells: should be set to 1
+- #size-cells: should be set to 0
+- interrupts: interrupt line connected to this raw NAND controller
+- clock-names: should contain "ps", "send" and "send_dly"
+- clocks: should contain 3 phandles for the "ps", "send" and
+	 "send_dly" clocks
+
+Children nodes:
+- children nodes represent the available NAND chips.
+
+See Documentation/devicetree/bindings/mtd/nand-controller.yaml
+for more details on generic bindings.
+
+Example:
+
+	nand: nand-controller@43c30000 {
+		compatible = "mxic,multi-itfc-v009-nand-controller";
+		reg = <0x43c30000 0x10000>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interrupts = <GIC_SPI 0x1d IRQ_TYPE_EDGE_RISING>;
+		clocks = <&clkwizard 0>, <&clkwizard 1>, <&clkc 15>;
+		clock-names = "send", "send_dly", "ps";
+
+		nand@0 {
+			reg = <0>;
+			nand-ecc-mode = "soft";
+			nand-ecc-algo = "bch";
+		};
+	};
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
