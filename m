Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D8F121B31
	for <lists+linux-mtd@lfdr.de>; Mon, 16 Dec 2019 21:51:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e0nGg3LH9r0+HgMp2DRFCxyWCVc0GJpD76L9WvCTml8=; b=AkpnTrDKZV9Qdz
	q05dHAlQbE5XGJE47+KgwkJDzxKMuHS6NcNJnWuzzt5b9XBC1DRA5+BMqyG2o8mrPOcHlg4diwhgV
	qYjyiHbdBX5DRZ13fOgj/hWVzkZKvSVF2XBAqu8MNEcstVfuqkXaG3cw2ZdrCBOGQ9ZcUxq1li7+R
	sNOg3kuJBzsLVV68LVbrge4b8hiCenASErhjB96nVxNIt+wjGyCC47LVfr6C2J3/da4ilYhDk/by1
	Zv7E4p+VWr/1hMs5DajdYecowbRps/fLsrsaFAxVQZ+kYcM06IJ2Lw7N/T7wfSIYYr5TN3jgNqnTC
	/7x/ekmDfSo0EW1yvujw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igxKS-0005yl-1t; Mon, 16 Dec 2019 20:50:56 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igxKK-0005xr-RM
 for linux-mtd@lists.infradead.org; Mon, 16 Dec 2019 20:50:50 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 9D2A9891AA
 for <linux-mtd@lists.infradead.org>; Tue, 17 Dec 2019 09:50:42 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1576529442;
 bh=gz7O/ZQsS9198vO0r8pmAfVCLZeHpdOOGnhu/mvHoH4=;
 h=From:To:Cc:Subject:Date;
 b=LkD6InFFQfLwIuFIcgeDqQt1Wabu7MZwTDJKF0EBV9ITAc41SHTMKZ9S9kl8usGiy
 wQtW7A9O7WhD9u81J4uMqD4nyhsaPcoIyhb/rIdBTHFQfXpRB11nHTNCvAIjYxIBJp
 DNqDKHNQQDIO8fBOUlhCsjLF0eVTbROYNtlRfptj+cAkpDEAOvUWyksWVUKoHDJIJr
 pb/it81+qaMewnNse1A2Fm+bpd9f7pYECl8BfU1L7JNMOr0OvLYALCvABZaBu7yWNT
 fdKMP2F1XRI+CADgt+yK7hCzkP5FaDTEogD01Apl4HgucB0eP6F9dovuyaLU1WUJZR
 F7owgS4XHYVuw==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5df7ee200000>; Tue, 17 Dec 2019 09:50:40 +1300
Received: from oscarr-dl.ws.atlnz.lc (oscarr-dl.ws.atlnz.lc [10.33.24.28])
 by smtp (Postfix) with ESMTP id 8929913EC5A;
 Tue, 17 Dec 2019 09:50:41 +1300 (NZDT)
Received: by oscarr-dl.ws.atlnz.lc (Postfix, from userid 1607)
 id 53C2A3C0612; Tue, 17 Dec 2019 09:50:42 +1300 (NZDT)
From: Oscar Ravadilla <oscar.ravadilla@alliedtelesis.co.nz>
To: linux-mtd@lists.infradead.org
Subject: [PATCH] mtd: rawnand: brcmnand: Add bad block marker option.
Date: Tue, 17 Dec 2019 09:49:49 +1300
Message-Id: <20191216204949.5688-1-oscar.ravadilla@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_125049_243708_F61FF8B5 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Oscar Ravadilla <oscar.ravadilla@alliedtelesis.co.nz>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

In commit 04649ec1335f ("mtd: rawnand: Always store info about bad
block markers in chip struct") changed where the information of the
bad block markers are stored. It is now stored in nand_chip.options
and nand_chip.badblockpos. However brcmnand driver wasn't updated
so it now fails to handle bad blocks.

So update brcmnand driver to add bad block markers to nand_chip.options.

Signed-off-by: Oscar Ravadilla <oscar.ravadilla@alliedtelesis.co.nz>
---
 drivers/mtd/nand/raw/brcmnand/brcmnand.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
index 1a66b1cd51c0..68d37d1636ae 100644
--- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
+++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
@@ -2360,6 +2360,8 @@ static int brcmnand_attach_chip(struct nand_chip *chip)
 	 * needed.
 	 */
 	chip->options |= NAND_USE_BOUNCE_BUFFER;
+	chip->options |= NAND_BBM_FIRSTPAGE | NAND_BBM_SECONDPAGE |
+			NAND_BBM_LASTPAGE;
 
 	if (chip->bbt_options & NAND_BBT_USE_FLASH)
 		chip->bbt_options |= NAND_BBT_NO_OOB;
-- 
2.23.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
