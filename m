Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3BD52318
	for <lists+linux-mtd@lfdr.de>; Tue, 25 Jun 2019 07:49:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IzJ4Z0BtVs28Q9n3KISdPG5WAawmBVyl7mIWPyeg7RA=; b=qqMXDB0E2VaottVXJ7tfOIhrFN
	L5SmRS/evWGBiM5+MO/BGur695+CaxresHojuYkQlEE+dJMJ06M0Bkw4WGIaPmUHrdk/yIXuy9cjQ
	Ar15ym/Afg6la0+eku5mUAvLByqa6ilKVSPe6zxgPV+jlUa8RaqhqwMcpeVcyNiKMj+OpeQuni3+6
	/1w0vCXLJsjTWUWXvSlvA69Wb/lX4rMMhWrLVoosDB8XvWcPpQcEVXF7dBOspZFb7OMMMCdNHKTL3
	AzGx9MibnlQUw6eM9kzN+4d8QaLlxJWcri1E3QArqqOSyMd6ySBriwgOVSyoHJbj9HMkn15MTjeYf
	rX+4pMEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfeKj-0008E8-PT; Tue, 25 Jun 2019 05:49:34 +0000
Received: from twhmllg3.macronix.com ([211.75.127.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfeKS-0008D8-6V
 for linux-mtd@lists.infradead.org; Tue, 25 Jun 2019 05:49:17 +0000
Received: from localhost.localdomain ([172.17.195.96])
 by TWHMLLG3.macronix.com with ESMTP id x5P5mKt2093478;
 Tue, 25 Jun 2019 13:48:23 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
From: Mason Yang <masonccyang@mxic.com.tw>
To: miquel.raynal@bootlin.com, marek.vasut@gmail.com,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 bbrezillon@kernel.org, dwmw2@infradead.org,
 computersforpeace@gmail.com, vigneshr@ti.com, paul.burton@mips.com,
 liang.yang@amlogic.com, richard@nod.at, anders.roxell@linaro.org,
 christophe.kerello@st.com, paul@crapouillou.net,
 jianxin.pan@amlogic.com, stefan@agner.ch, devicetree@vger.kernel.org
Subject: [PATCH v4 2/2] dt-bindings: mtd: Document Macronix raw NAND
 controller bindings
Date: Tue, 25 Jun 2019 14:10:56 +0800
Message-Id: <1561443056-13766-3-git-send-email-masonccyang@mxic.com.tw>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1561443056-13766-1-git-send-email-masonccyang@mxic.com.tw>
References: <1561443056-13766-1-git-send-email-masonccyang@mxic.com.tw>
X-MAIL: TWHMLLG3.macronix.com x5P5mKt2093478
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_224916_496010_80E6E0AC 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.127.131 listed in list.dnswl.org]
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
Cc: juliensu@mxic.com.tw, broonie@kernel.org, masonccyang@mxic.com.tw,
 lee.jones@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Document the bindings used by the Macronix raw NAND controller.

Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
---
 .../devicetree/bindings/mtd/mxic-nand.txt          | 26 ++++++++++++++++++++++
 1 file changed, 26 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/mxic-nand.txt

diff --git a/Documentation/devicetree/bindings/mtd/mxic-nand.txt b/Documentation/devicetree/bindings/mtd/mxic-nand.txt
new file mode 100644
index 0000000..3d198e4
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/mxic-nand.txt
@@ -0,0 +1,26 @@
+Macronix Raw NAND Controller Device Tree Bindings
+-------------------------------------------------
+
+Required properties:
+- compatible: should be "mxic,raw-nand-ctlr"
+- reg: should contain 1 entrie for the registers
+- reg-names: should contain "regs"
+- interrupts: interrupt line connected to this NAND controller
+- clock-names: should contain "ps_clk", "send_clk" and "send_dly_clk"
+- clocks: should contain 3 entries for the "ps_clk", "send_clk" and
+	 "send_dly_clk" clocks
+
+Example:
+
+	nand: mxic-nfc@43c30000 {
+		compatible = "mxic,raw-nand-ctlr";
+		reg = <0x43c30000 0x10000>;
+		reg-names = "regs";
+		clocks = <&clkwizard 0>, <&clkwizard 1>, <&clkc 15>;
+		clock-names = "send_clk", "send_dly_clk", "ps_clk";
+
+		nand-ecc-mode = "soft";
+		nand-ecc-algo = "bch";
+		nand-ecc-step-size = <512>;
+		nand-ecc-strength = <8>;
+	};
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
