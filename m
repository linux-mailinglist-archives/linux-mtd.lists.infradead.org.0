Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E71176301
	for <lists+linux-mtd@lfdr.de>; Mon,  2 Mar 2020 19:45:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sDZ/j5q4c4GgSH8tKWn+4p3ueMkMeCC74ZrPNx19Uck=; b=Fg/tjxfCu9AF/F
	Uyr05Ko08ebgKVXGfqrLXMtEXQ3W8qF63Dtmm82W2yHxrmiQWPArSXw0s6TcburxyL2Rg8Hqzp/Hb
	blw1PjOiME33YUOHgbl18mulGWEtID8V7SEWUaLRGCRxk/Z5XIU7s4MJGZzpmuWWaNXMDBx6M6NEk
	rUIs8Ks/EKi4SL1DZ3TN1XvtZwtV4OcrdarqKKQccsjdOH8CHO783b59AspKYgQLOk/Mr/uB38oFf
	PHQOfd9/jS/gz7RGXYdbKZhJ/MlL8w2+jRKhLU5c1VAVSRum+W7NgNCmC7K9qHHZeWrDc2G+hPBEU
	FAiJmK96Dn7jYAjECWnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8q4M-0003Hs-BM; Mon, 02 Mar 2020 18:45:34 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8q4E-0003GV-06
 for linux-mtd@lists.infradead.org; Mon, 02 Mar 2020 18:45:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1583174720; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-transfer-encoding:content-transfer-encoding:
 in-reply-to:references; bh=65imB97fK5UkeTIsY1eu7JNJkrbGko3YL2cXYKsIADg=;
 b=guCvFs1/5UNEpHFBMynHCEUToXgijU93Jn1wkXptVL0G0s1foa1wYRMQaZsAwnIsJcSn3J
 WljaVeX/PxAmyOhLhZJvvrMci944fZs4CZpqIRiU9D4dOFumETKEZTMo9TxRyPHy/atcnf
 aIdxP1aL9KvHTZCS80gDhyo7lUdzl3A=
From: Paul Cercueil <paul@crapouillou.net>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH] mtd: rawnand: ingenic: Add dependency on MIPS || COMPILE_TEST
Date: Mon,  2 Mar 2020 15:45:09 -0300
Message-Id: <20200302184509.10666-1-paul@crapouillou.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_104526_229715_85CEF333 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Paul Cercueil <paul@crapouillou.net>, Richard Weinberger <richard@nod.at>,
 Harvey Hunt <harveyhuntnexus@gmail.com>, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This driver has no arch-specific instructions but is only ever useful
on MIPS; so disable this driver if we're not compiling for MIPS, unless
the driver is compile-tested.

Signed-off-by: Paul Cercueil <paul@crapouillou.net>
---
 drivers/mtd/nand/raw/ingenic/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/nand/raw/ingenic/Kconfig b/drivers/mtd/nand/raw/ingenic/Kconfig
index e30feb56b650..96c5ae8b1bbc 100644
--- a/drivers/mtd/nand/raw/ingenic/Kconfig
+++ b/drivers/mtd/nand/raw/ingenic/Kconfig
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config MTD_NAND_JZ4780
 	tristate "JZ4780 NAND controller"
+	depends on MIPS || COMPILE_TEST
 	depends on JZ4780_NEMC
 	help
 	  Enables support for NAND Flash connected to the NEMC on JZ4780 SoC
-- 
2.25.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
