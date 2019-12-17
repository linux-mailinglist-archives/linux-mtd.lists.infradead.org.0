Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 202D4123829
	for <lists+linux-mtd@lfdr.de>; Tue, 17 Dec 2019 22:03:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ESJxrzS8Sc59yEST661MAGHXMvPMOpX+EYzuCZo68w0=; b=uD0l2BgEuIpOJ0
	lFxZM/1kQ9xhgkDpmSY1q+uZddpEM3PFi4p2bKTkKo+ncXlBEfDNgBBHco+c7gbwemhKW1meXHha5
	2jByu3oh71YOyVdEmRmdDx3+sR9w3eK1qvU+8StYo6Q/NSDRZaEPoFosjZW7XDqS+oh051urwnfL6
	myEcKfMXYLcr8J84oAvDho+RlT2Uz062N7pJtcT1B2KvffaYLGFa8dJ6DbPYlkqVol1LNdUvRaG3e
	RW8E8VVz0Ob75gHM+pYqo01Zj+Sp+FXej0PxLpPLp6Z15ejhANxf9TpCrk48id1vXqY1GpyTHLU0f
	xfwC+tIkvX9L0kwby49w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihJzc-0000Ww-35; Tue, 17 Dec 2019 21:02:56 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihJzU-0000WL-92
 for linux-mtd@lists.infradead.org; Tue, 17 Dec 2019 21:02:50 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 1F0E0806AC;
 Wed, 18 Dec 2019 10:02:40 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1576616560;
 bh=SusQQxADCsTEaVGCSglO1q7NW432RlUPE3y3af7AknE=;
 h=From:To:Cc:Subject:Date;
 b=21Tu+ApoBemJ3ugxAvSnD+E8g2DKSXMbgDsYAx1TMURDi8CsV41l/Vd/RipM30UK9
 rpaXG/ptkfybW9abznrf72aoaDaxWOpppPNkvr1ITOft4Tgp4LfsJ/Ws+0oIasTmYu
 //8DI1+VnivYEqAy8+/Eiuwhf02z+MtYn/g+bqv9oixUK+2KKm2kWhk+REocxRXsv9
 vVwKyUPlL7jyvV+Q1C/ZFFFqBuKefW6+eIgztkeXu4j8pyhetbkIerMujFYmgkAaO4
 DfWXPrffrYIGaviFc72n8lwkcKXtswKMTneCslHYZOY6BLAkuSMe7GwCHb6ov9PxGt
 2UgojfoXgBZ7Q==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5df9426f0000>; Wed, 18 Dec 2019 10:02:39 +1300
Received: from oscarr-dl.ws.atlnz.lc (oscarr-dl.ws.atlnz.lc [10.33.24.28])
 by smtp (Postfix) with ESMTP id A89C813EEA8;
 Wed, 18 Dec 2019 10:02:39 +1300 (NZDT)
Received: by oscarr-dl.ws.atlnz.lc (Postfix, from userid 1607)
 id D5B083C01D1; Wed, 18 Dec 2019 10:02:39 +1300 (NZDT)
From: Oscar Ravadilla <oscar.ravadilla@alliedtelesis.co.nz>
To: miquel.raynal@bootlin.com,
	f.fainelli@gmail.com,
	kdasu.kdev@gmail.com
Subject: [PATCH v2] mtd: rawnand: brcmnand: Add bad block marker option.
Date: Wed, 18 Dec 2019 10:02:30 +1300
Message-Id: <20191217210230.24745-1-oscar.ravadilla@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_130248_890410_EA9EC0D1 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Fixes: 04649ec1335f ("mtd: rawnand: Always store info about bad
block markers in chip struct")

The commit above changed where the information of the bad block
markers are stored. It is now stored in nand_chip.options and
nand_chip.badblockpos. However brcmnand driver wasn't updated
so it now fails to handle bad blocks.

So update brcmnand driver to add bad block markers to nand_chip.options.

Signed-off-by: Oscar Ravadilla <oscar.ravadilla@alliedtelesis.co.nz>
---
Notes:
    Changelog
    v1->v2:
    - Update commit message to add the "Fixes: ... " tag.
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
