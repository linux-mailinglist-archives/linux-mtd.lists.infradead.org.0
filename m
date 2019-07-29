Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD50785EB
	for <lists+linux-mtd@lfdr.de>; Mon, 29 Jul 2019 09:10:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K+MpII73CBWjL24CC/bMELuPHgiqEJU7+nJpPh739Qg=; b=eVa5/R7nLHHSwD
	2gGaG/sum8afDgM9k0Mh4cFBpwV5NcUjo2ZwSFhqLdr2wJgqKY2q1tt9cwZTjkL3eMgp573xnOFE5
	9B+lEdYVe/NvgtJuOeLCW1+oyVjWhCAN620uRBrbLKrtYz2OZ08KzXOy302QBvKoqtV8R2KD4pjHL
	1HfpC/I2XKxC5EzalvI5v7ko9xtaW6XThmu+oz2MVfpmJtubZKEQ8EieExC55zYo10vQpiJqzc3dG
	4IPFJsg/m9sIpSUhlywgNNYfC2/Qk+fFx7sguGWtOYgvwX9pT3Dt2xYQQCWHlVbYOgoxeeukNkont
	BZ2AxINFpTlVuCu7R/ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrznv-0003NY-P2; Mon, 29 Jul 2019 07:10:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrzkt-0000pX-Mb
 for linux-mtd@lists.infradead.org; Mon, 29 Jul 2019 07:07:37 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1hrzkq-0001rk-1M; Mon, 29 Jul 2019 09:07:32 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1hrzkp-0003Ts-6M; Mon, 29 Jul 2019 09:07:31 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: richard.weinberger@gmail.com, boris.brezillon@collabora.com,
 miquel.raynal@bootlin.com
Subject: [PATCH v2] mtd: rawnand: micron: handle on-die "ECC-off" devices
 correctly
Date: Mon, 29 Jul 2019 09:06:52 +0200
Message-Id: <20190729070652.12629-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_000735_784711_57B1582E 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-mtd@lists.infradead.org, stable@vger.kernel.org,
 kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Some devices are supposed to do not support on-die ECC but experience
shows that internal ECC machinery can actually be enabled through the
"SET FEATURE (EFh)" command, even if a read of the "READ ID Parameter
Tables" returns that it is not.

Currently, the driver checks the "READ ID Parameter" field directly
after having enabled the feature. If the check fails it returns
immediately but leaves the ECC on. When using buggy chips like
MT29F2G08ABAGA and MT29F2G08ABBGA, all future read/program cycles will
go through the on-die ECC, confusing the host controller which is
supposed to be the one handling correction.

To address this in a common way we need to turn off the on-die ECC
directly after reading the "READ ID Parameter" and before checking the
"ECC status".

Cc: stable@vger.kernel.org
Fixes: dbc44edbf833 ("mtd: rawnand: micron: Fix on-die ECC detection logic")
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
v2:
- adapt commit message according Miquel comments
- add fixes, stable tags
- add Boris rb-tag

 drivers/mtd/nand/raw/nand_micron.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_micron.c b/drivers/mtd/nand/raw/nand_micron.c
index 1622d3145587..fb199ad2f1a6 100644
--- a/drivers/mtd/nand/raw/nand_micron.c
+++ b/drivers/mtd/nand/raw/nand_micron.c
@@ -390,6 +390,14 @@ static int micron_supports_on_die_ecc(struct nand_chip *chip)
 	    (chip->id.data[4] & MICRON_ID_INTERNAL_ECC_MASK) != 0x2)
 		return MICRON_ON_DIE_UNSUPPORTED;
 
+	/*
+	 * It seems that there are devices which do not support ECC official.
+	 * At least the MT29F2G08ABAGA / MT29F2G08ABBGA devices supports
+	 * enabling the ECC feature but don't reflect that to the READ_ID table.
+	 * So we have to guarantee that we disable the ECC feature directly
+	 * after we did the READ_ID table command. Later we can evaluate the
+	 * ECC_ENABLE support.
+	 */
 	ret = micron_nand_on_die_ecc_setup(chip, true);
 	if (ret)
 		return MICRON_ON_DIE_UNSUPPORTED;
@@ -398,13 +406,13 @@ static int micron_supports_on_die_ecc(struct nand_chip *chip)
 	if (ret)
 		return MICRON_ON_DIE_UNSUPPORTED;
 
-	if (!(id[4] & MICRON_ID_ECC_ENABLED))
-		return MICRON_ON_DIE_UNSUPPORTED;
-
 	ret = micron_nand_on_die_ecc_setup(chip, false);
 	if (ret)
 		return MICRON_ON_DIE_UNSUPPORTED;
 
+	if (!(id[4] & MICRON_ID_ECC_ENABLED))
+		return MICRON_ON_DIE_UNSUPPORTED;
+
 	ret = nand_readid_op(chip, 0, id, sizeof(id));
 	if (ret)
 		return MICRON_ON_DIE_UNSUPPORTED;
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
