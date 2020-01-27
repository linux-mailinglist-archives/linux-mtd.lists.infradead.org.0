Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 474D914A407
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Jan 2020 13:40:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=B+Ihmv2v68csRC83FACkrk8aeqblAv0pgNhpkYjYg4E=; b=UHs
	CY1tmzET7GHyeuyHXVghc5No6w3t5kg8nEsBp0ui6bbXn3tsOvvU7M3ufNtn5j18PIoYsuMpWL82x
	VXCpeQM1Ath5o/a8CHBnvCcE1tiCScY7e4c4MVN9Ml5pRB/wHLc30LOD9TsDtbyUSDqGFPUytzd+n
	YTNw72Knaow6ji5J8S1ebX3yyPxHj0kofPq7l7w1KKP86ePaVybWOEWervVZdDeZSxZE3agI3lWKn
	t7okGxnW5nFeaD+EV6XCIbxvyXAHE6QKXoCV6PktgEiTEEZmBiVYpM45mHNTSViSCtuGdoyFQcBPd
	G6YigGr+PhOmpGiY6zQu8g1LzDxp1sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw3gd-0001uG-8z; Mon, 27 Jan 2020 12:40:15 +0000
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw3gV-00017P-Dr
 for linux-mtd@lists.infradead.org; Mon, 27 Jan 2020 12:40:09 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-10.nifty.com with ESMTP id 00RCdcZH001287;
 Mon, 27 Jan 2020 21:39:38 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 00RCdcZH001287
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1580128779;
 bh=ct4hR2SFtJIjSGrUUZxMPG18H6AE2oR0KNstaSmV6n8=;
 h=From:To:Cc:Subject:Date:From;
 b=s6Xg+yxtzaTk72msg7Iif1XiiCbN/rSWwZGAerAvb6VnNcACSJb693VxZNoPd05wd
 Y572qWqmaYwWCsyA8aYXSu3aNd6T/2aGcDwQ6PZY9sxqtow1gvTqg839zMWdPoCEoj
 mR31nUbeFm0VHpKir4taZK61fwwiHVetoyAT7RYMjYl2GtiIWpXalzaWFJkNeZ4UgW
 DHIqMkgT0Q71YXGQdf5prLTiE2SqIb1UPplz36d5NnFCJQR668g0BnaMEeuw0whYD3
 BFomzO1wJ+aMo/G4YyxC/A/aomYHcXjQa35xHaINZu0TQ3vmmfwHh36vMUY7OdNyUg
 tHijUaAZA9IxQ==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH] mtd: rawnand: denali: deassert write protect pin
Date: Mon, 27 Jan 2020 21:39:34 +0900
Message-Id: <20200127123934.11847-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_044007_829398_963A3454 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.77 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

If the write protect signal from this IP is connected to the NAND
device, this IP can handle the WP# pin via the WRITE_PROTECT
register.

The Denali NAND Flash Memory Controller User's Guide describes
this register like follows:

  When the controller is in reset, the WP# pin is always asserted
  to the device. Once the reset is removed, the WP# is de-asserted.
  The software will then have to come and program this bit to
  assert/de-assert the same.

    1 - Write protect de-assert
    0 - Write protect assert

The default value is 1, so the write protect is de-asserted after
the reset is removed. The driver can write to the device unless
someone has explicitly cleared register before booting the kernel.

The boot ROM of some UniPhier SoCs (LD4, Pro4, sLD8, Pro5) is the
case; the boot ROM clears the WRITE_PROTECT register when the system
is booting from the NAND device, so the NAND device becomes read-only.

Set it to 1 in the driver in order to allow the write access to the
device.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 drivers/mtd/nand/raw/denali.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/nand/raw/denali.c b/drivers/mtd/nand/raw/denali.c
index fafd0a0aa8e2..6a6c919b2569 100644
--- a/drivers/mtd/nand/raw/denali.c
+++ b/drivers/mtd/nand/raw/denali.c
@@ -1317,6 +1317,7 @@ int denali_init(struct denali_controller *denali)
 	iowrite32(CHIP_EN_DONT_CARE__FLAG, denali->reg + CHIP_ENABLE_DONT_CARE);
 	iowrite32(ECC_ENABLE__FLAG, denali->reg + ECC_ENABLE);
 	iowrite32(0xffff, denali->reg + SPARE_AREA_MARKER);
+	iowrite32(WRITE_PROTECT__FLAG, denali->reg + WRITE_PROTECT);
 
 	denali_clear_irq_all(denali);
 
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
