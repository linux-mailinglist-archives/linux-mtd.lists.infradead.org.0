Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4730E1747DC
	for <lists+linux-mtd@lfdr.de>; Sat, 29 Feb 2020 17:05:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TWr/9ZnGWRtofgEpqRTXkJRCeRbCLvbZhoR0ZSiA3Z4=; b=E2pFe06zhqRZJ4
	h/nhZkAIriRJShqaqLmBl84alQrIFc1l2i43mfvTb/UgPV5ajZtE7PwKi/fYDKXOyoFHM/bCmaoiQ
	6c+ZuvO3ky32LPdQFnRUumpEMshoJNwyurbK8BAYCvwSmV6S4BbXoJlhOApVmw2ghnrdEdWY8WJvk
	219EoegfdavmIOSF8/WSsxGhF12H4wA8QbGFDINWAMREvsY02G9Rmx+8oSbvO3OAGMMLerb/yvXeV
	LipxBH4whrrTMiFIxgpFNdlJ0n15i8Y2TkbLisCczmeBAs8AQHFYoQGui4Ths/hc7NRBzeZZcbwMD
	x9QG2hlFpHWcIUQLHnkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j84cB-00060u-U6; Sat, 29 Feb 2020 16:05:19 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j84bx-00055M-Ic
 for linux-mtd@lists.infradead.org; Sat, 29 Feb 2020 16:05:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1582992293; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-transfer-encoding:content-transfer-encoding:
 in-reply-to:references; bh=U+bTaqw3ChcPXdwAu0239Q0g38tlXUK/Pg8FxcX6kas=;
 b=pIeEPB4OqTEnN5H7AVgAqjPxxHNLHLAyDjL3waCtxnnfexnXd3HoWD+rtrT9K02lW2k/Ps
 kvTmt55RSCj2s/WrU8evemxBsmEm3rjaZDa67x/z8VNznIY9dS1zK3YxUMZ34OXfrrqCmY
 +JdRg/W5CZmTdUPjH1HBydyJ6eliCLQ=
From: Paul Cercueil <paul@crapouillou.net>
To: Harvey Hunt <harveyhuntnexus@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>
Subject: [PATCH] mtd: rawnand: ingenic: Fix unmet dependency if COMPILE_TEST
Date: Sat, 29 Feb 2020 13:04:43 -0300
Message-Id: <20200229160443.11208-1-paul@crapouillou.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_080505_848606_79A8A2A8 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>, od@zcrc.me,
 linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Commit 7c779cf7c1f7 ("mtd: rawnand: ingenic: Allow to compile test the
new Ingenic driver") dropped the dependency on JZ4780_NEMC when
COMPILE_TEST was set, which is wrong, as the driver requires symbols
provided by the jz4780-nemc driver.

Change the dependency to (MIPS || COMPILE_TEST) && JZ4780_NEMC to
address the issue.

Fixes: 7c779cf7c1f7 ("mtd: rawnand: ingenic: Allow to compile test the new Ingenic driver")
Cc: stable@vger.kernel.org
Signed-off-by: Paul Cercueil <paul@crapouillou.net>
---
 drivers/mtd/nand/raw/ingenic/Kconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/ingenic/Kconfig b/drivers/mtd/nand/raw/ingenic/Kconfig
index 485abfa3f80b..96c5ae8b1bbc 100644
--- a/drivers/mtd/nand/raw/ingenic/Kconfig
+++ b/drivers/mtd/nand/raw/ingenic/Kconfig
@@ -1,7 +1,8 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config MTD_NAND_JZ4780
 	tristate "JZ4780 NAND controller"
-	depends on JZ4780_NEMC || COMPILE_TEST
+	depends on MIPS || COMPILE_TEST
+	depends on JZ4780_NEMC
 	help
 	  Enables support for NAND Flash connected to the NEMC on JZ4780 SoC
 	  based boards, using the BCH controller for hardware error correction.
-- 
2.25.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
