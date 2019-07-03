Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9BA5DE4A
	for <lists+linux-mtd@lfdr.de>; Wed,  3 Jul 2019 08:55:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=119XzTAI6TMiH1eNwSbK3aKc2s+duKXZWtaQOJT/PJU=; b=I1t3rXo3Kn26zoAovUyS+9iYnh
	aerPmWr8cqfTLfxy5ItunWYTUhcXd28c15JaS9Ladbn94VtFUgwny/yBkBhD+SxvGb0xk/ULQ4mY6
	17IJABwIDhrmNlHtBwQhBYZYmelJpF5RB7g6rcHLAWLV4+51oerKBoRLmRd5ixh4eJNGWFiZbDOw3
	4/EoS+t4D0PlkBVB979qJJlWapJszLZHXnfVH8Z5d78W6VcTUdm+yYa1pNCWUElt34eSYFgUm3hgC
	nz4oHDXAIkBo4jlVjgGrOUSME076SOyv3ov63sgJoVADJwOxTn39Ru3mEzSiwBZ2x7lk/oyk3N1oo
	C6xN4NFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiZAQ-0001n7-N6; Wed, 03 Jul 2019 06:54:58 +0000
Received: from twhmllg3.macronix.com ([211.75.127.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiZ9i-0001Ol-S7
 for linux-mtd@lists.infradead.org; Wed, 03 Jul 2019 06:54:16 +0000
Received: from localhost.localdomain ([172.17.195.96])
 by TWHMLLG3.macronix.com with ESMTP id x636rBC5005738;
 Wed, 3 Jul 2019 14:53:13 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
From: Mason Yang <masonccyang@mxic.com.tw>
To: miquel.raynal@bootlin.com, marek.vasut@gmail.com, bbrezillon@kernel.org,
 dwmw2@infradead.org, computersforpeace@gmail.com, vigneshr@ti.com,
 richard@nod.at, robh+dt@kernel.org, stefan@agner.ch, mark.rutland@arm.com
Subject: [PATCH v5 2/2] dt-bindings: mtd: Document Macronix raw NAND
 controller bindings
Date: Wed,  3 Jul 2019 15:15:44 +0800
Message-Id: <1562138144-2212-3-git-send-email-masonccyang@mxic.com.tw>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1562138144-2212-1-git-send-email-masonccyang@mxic.com.tw>
References: <1562138144-2212-1-git-send-email-masonccyang@mxic.com.tw>
X-MAIL: TWHMLLG3.macronix.com x636rBC5005738
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_235415_169735_0D7FA50A 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.127.131 listed in list.dnswl.org]
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
 Documentation/devicetree/bindings/mtd/mxic-nand.txt | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/mxic-nand.txt

diff --git a/Documentation/devicetree/bindings/mtd/mxic-nand.txt b/Documentation/devicetree/bindings/mtd/mxic-nand.txt
new file mode 100644
index 0000000..ddd7660
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/mxic-nand.txt
@@ -0,0 +1,20 @@
+Macronix Raw NAND Controller Device Tree Bindings
+-------------------------------------------------
+
+Required properties:
+- compatible: should be "macronix,nand-controller"
+- reg: should contain 1 entrie for the registers
+- interrupts: interrupt line connected to this raw NAND controller
+- clock-names: should contain "ps_clk", "send_clk" and "send_dly_clk"
+- clocks: should contain 3 phandles for the "ps_clk", "send_clk" and
+	 "send_dly_clk" clocks
+
+Example:
+
+	nand: mxic-nfc@43c30000 {
+		compatible = "macronix,nand-controller";
+		reg = <0x43c30000 0x10000>;
+		reg-names = "regs";
+		clocks = <&clkwizard 0>, <&clkwizard 1>, <&clkc 15>;
+		clock-names = "send_clk", "send_dly_clk", "ps_clk";
+	};
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
