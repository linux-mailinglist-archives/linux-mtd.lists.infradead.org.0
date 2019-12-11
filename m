Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 219D311A401
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Dec 2019 06:46:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=efNQ0+AABKPDqdD0J+X5iHyknE0jockSXB2rJ8IWAZU=; b=T9l
	QpAbFat7PytxS9aOxJUVHuONHSeVX6zfYfcfTRQQBHv+UUh5RzryAeJqQ619o/tMw6vmXtViFMPtm
	zUMpw9BSNPX5gqgkNDSATqRn38iaUVJm/oMeQrwXPhHlIBVjvSJUurGfPLUSyerqio+U7Cy8W8dpT
	KQsEQZXXHZsF5C1WlAxhsyRKdMpk26xIYK/XY+nFGEs9bXdGHUoaA940bA4H4soGRFsCHzUL8fUSq
	QBzBYAUEYhiQ3aAg9mYd0zoKTAAHGx6poyvzc2O6AKZNgcl8x2Fw3OuoLwilriSSSvWUNjhKfc4GM
	/5UJxRK4G0y37OaQib2Ov17KkwuPGtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieupY-00053x-4K; Wed, 11 Dec 2019 05:46:36 +0000
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieuoz-0004tS-Qb
 for linux-mtd@lists.infradead.org; Wed, 11 Dec 2019 05:46:03 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-10.nifty.com with ESMTP id xBB5jdVa019523;
 Wed, 11 Dec 2019 14:45:40 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com xBB5jdVa019523
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1576043141;
 bh=UxDx8RnuQhkTN8+zyVJvCjCQ3hY035WRmN5rhX+qiCg=;
 h=From:To:Cc:Subject:Date:From;
 b=abIzf/VHWf80xkCNM9Nq9l7bCTZhTmzvAGgpyGNxWkKxeNhSUY0HzAoJS1K5AHGZx
 qcghRfQPNCejAohtVrKvGe/1q2hkoB7P1vRWONc2sa3mkdinujSyiHWkpZaoDcHVT2
 zLPKf8piCsaFj9Z/2bobrErHtgQrZf7eTZhphVaG76AjykCd1sXuqDV4q+Y4tejqhZ
 wZfufdLfCb6ZEkfRpHSeyvPdwg4bWncJdnoa0uyZE0hiubTf/osHL2jjna/WnDaNk1
 nEwqKSCGynuEPXml7xxwpm/HF52oewbK7/qwron40H4rYnyHkUjYBlZuDcRXj5UonQ
 V6RaKNL1cLNvQ==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH v2 1/2] dt-binding: mtd: denali_dt: document reset property
Date: Wed, 11 Dec 2019 14:45:37 +0900
Message-Id: <20191211054538.8283-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_214602_090290_FA135870 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.77 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Ley Foon Tan <ley.foon.tan@intel.com>, Dinh Nguyen <dinguyen@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Mark Rutland <mark.rutland@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

According to the Denali NAND Flash Memory Controller User's Guide,
this IP has two reset signals.

  rst_n:     reset most of FFs in the controller core
  reg_rst_n: reset all FFs in the register interface, and in the
             initialization sequencer

This commit specifies those reset signals.

It is possible to control them separately from the IP point of view
although they might be often tied up together in actual SoC integration.

At least for the upstream platforms, Altera/Intel SOCFPGA and Socionext
UniPhier, the reset controller seems to provide only 1-bit control for
the NAND controller. If it is the case, the resets property should
reference to the same phandles for "nand" and "reg" resets, like this:

    resets = <&nand_rst>, <&nand_rst>;
    reset-names = "nand", "reg";

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

Changes in v2:
 - Split into two patches

 Documentation/devicetree/bindings/mtd/denali-nand.txt | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/denali-nand.txt b/Documentation/devicetree/bindings/mtd/denali-nand.txt
index b32aed1db46d..98916a84bbf6 100644
--- a/Documentation/devicetree/bindings/mtd/denali-nand.txt
+++ b/Documentation/devicetree/bindings/mtd/denali-nand.txt
@@ -14,6 +14,11 @@ Required properties:
     interface clock, and the ECC circuit clock.
   - clock-names: should contain "nand", "nand_x", "ecc"
 
+Optional properties:
+  - resets: may contain phandles to the controller core reset, the register
+    reset
+  - reset-names: may contain "nand", "reg"
+
 Sub-nodes:
   Sub-nodes represent available NAND chips.
 
@@ -46,6 +51,8 @@ nand: nand@ff900000 {
 	reg-names = "nand_data", "denali_reg";
 	clocks = <&nand_clk>, <&nand_x_clk>, <&nand_ecc_clk>;
 	clock-names = "nand", "nand_x", "ecc";
+	resets = <&nand_rst>, <&nand_reg_rst>;
+	reset-names = "nand", "reg";
 	interrupts = <0 144 4>;
 
 	nand@0 {
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
