Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 616961114F
	for <lists+linux-mtd@lfdr.de>; Thu,  2 May 2019 04:20:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=sWtYmCOkdE63umI/1iXWXvtlUXLSlDYuBOtxu+YYUNc=; b=Fl6
	8bk12IRAW8UlXxop0gGODZekodzCSEJhTj1j2D1AIt6rG/TGuO29NcQMIyq3w/NYSmx0FqfMLMK51
	XHAPVHtoMHtSxTBAdIGVechMbjagg3X3VBUFYNioxKJoOqXl47SXM1euGgJck4R/ZAAbnKniXwNrY
	W5VWaaiXWt6zFg5h7YGUIqiKHeE/6yHsyK3nUud69R5OiphmLgX85c2C1IwPH8FH9HL1URnxz7wpC
	0Fwr64aw15XWQXnuElOybJiNVYET7foGMgD/+88OWCVFTeAdIlseKCgOdvhQQfNoMx0/tfPO/hv5A
	trZGeVJXf66vzIMd/Lp4aOTLW/wVhdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM1KT-0005l2-NJ; Thu, 02 May 2019 02:20:09 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM1Jm-00054j-H5
 for linux-mtd@bombadil.infradead.org; Thu, 02 May 2019 02:19:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Date:Message-Id:In-Reply-To:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C9XRTvvku7YohEoOselFNompaVQM73w7LtDDtIUkluY=; b=K07MjxJdEyGaxP/Z7/bw19M7Kr
 ggKqIOtc5CXYlJCBeFxjY0loGMDQuVKJuPJgjplPUV2d2L6uPamJU9HRW0YDGPsWoaU69UMLcFyzz
 xOXq8QcNgPyen39fqR4R893Qttn9hRo22fcctDYgAGdZ7u6QZu0xfJMhwHFgGLS8mqDUWoR70jg3i
 NHglixPtdS0ak4IFJ4IrTb+5fI7bMAu1+pISZoOomOcfW1jNTs0fyMNL8KL22U+hSz6kkkPk6Szqu
 DPlRpaOPn25BTiJTr/0rWUGU4HxEF+CpjIhr7FBoV6oBTZ9Iof9X4efZOR7iG23WfERceaMvvTrlc
 CVkgrbyA==;
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM1Ji-0004ND-Ao
 for linux-mtd@lists.infradead.org; Thu, 02 May 2019 02:19:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=C9XRTvvku7YohEoOselFNompaVQM73w7LtDDtIUkluY=; b=wJ3NgXseGvrx
 iT+1+Lz86m37j/B8N7zsETj6gF1yNMJPOnMGLyfYsa0eyGk26tu1pgcPCFFkSOYQ6bg0RoKSwh6SK
 5lF7hwsuu7fMpSqi3tl1Ro6DiXr4bqSkQfPXdxeD8wMuGFxIf4w+mRPBeoDAXNsDnqF9CGu5cPCI5
 GJ2RE=;
Received: from [211.55.52.15] (helo=finisterre.ee.mobilebroadband)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hM1JQ-0005vW-3J; Thu, 02 May 2019 02:19:04 +0000
Received: by finisterre.ee.mobilebroadband (Postfix, from userid 1000)
 id EAF91441D41; Thu,  2 May 2019 03:19:00 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>
Subject: Applied "spi: spi-mem: zynq-qspi: Fix build error on architectures
 missing readsl/writesl" to the spi tree
In-Reply-To: <1555918009-13172-1-git-send-email-naga.sureshkumar.relli@xilinx.com>
X-Patchwork-Hint: ignore
Message-Id: <20190502021900.EAF91441D41@finisterre.ee.mobilebroadband>
Date: Thu,  2 May 2019 03:19:00 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_221922_476726_46BF9DBB 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: kbuild test robot <lkp@intel.com>, bbrezillon@kernel.org,
 nagasuresh12@gmail.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, marek.vasut@gmail.com,
 Mark Brown <broonie@kernel.org>, linux-mtd@lists.infradead.org, richard@nod.at,
 michals@xilinx.com, dwmw2@infradead.org, vigneshr@ti.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The patch

   spi: spi-mem: zynq-qspi: Fix build error on architectures missing readsl/writesl

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.2

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From ba3ce8cb3808cad0f9b8303fad4bd1c887834c82 Mon Sep 17 00:00:00 2001
From: Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>
Date: Mon, 22 Apr 2019 12:56:49 +0530
Subject: [PATCH] spi: spi-mem: zynq-qspi: Fix build error on architectures
 missing readsl/writesl

Alpha and some of the architectures are missing readsl/writesl functions.
so the zynq-qspi driver won't be able to build on these arches. hence use
ioread32_rep()/iowrite32_rep() instead of readsl()/writesl().

Signed-off-by: Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>
Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-zynq-qspi.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/spi/spi-zynq-qspi.c b/drivers/spi/spi-zynq-qspi.c
index 8079d0062d03..c6bee67decb5 100644
--- a/drivers/spi/spi-zynq-qspi.c
+++ b/drivers/spi/spi-zynq-qspi.c
@@ -407,8 +407,8 @@ static void zynq_qspi_write_op(struct zynq_qspi *xqspi, int txcount,
 		count = txcount;
 
 	if (xqspi->txbuf) {
-		writesl(xqspi->regs + ZYNQ_QSPI_TXD_00_00_OFFSET,
-			xqspi->txbuf, count);
+		iowrite32_rep(xqspi->regs + ZYNQ_QSPI_TXD_00_00_OFFSET,
+			      xqspi->txbuf, count);
 		xqspi->txbuf += count * 4;
 	} else {
 		for (k = 0; k < count; k++)
@@ -433,8 +433,8 @@ static void zynq_qspi_read_op(struct zynq_qspi *xqspi, int rxcount)
 	if (count > rxcount)
 		count = rxcount;
 	if (xqspi->rxbuf) {
-		readsl(xqspi->regs + ZYNQ_QSPI_RXD_OFFSET,
-		       xqspi->rxbuf, count);
+		ioread32_rep(xqspi->regs + ZYNQ_QSPI_RXD_OFFSET,
+			     xqspi->rxbuf, count);
 		xqspi->rxbuf += count * 4;
 	} else {
 		for (k = 0; k < count; k++)
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
