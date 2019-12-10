Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 941DF118BF3
	for <lists+linux-mtd@lfdr.de>; Tue, 10 Dec 2019 16:04:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZfZqf8QtumuGFhpFRi5cQLqsFAOo3rFguLMuCi7i/E0=; b=OsB
	MQMCD8mcS5MtB2nhRUzVIB/FYypWN35wWWVLVbdVUZ2FQjDFVALBDyCYlhqASrBtQd/GEKdqh8n7c
	gz1dDE12N00ueIMEIaVzEf+mLQLbgoGTyEX5DTCwQKoeidZcdaNNPjtrEB/KSpQLM/B8YmvXDHq61
	ywa0IaNDZ3ACoIKHTWpqw1Z8eiVvLG4Db1AeW6PjHVFqLK/ZIwLDE9//UUpLT8nkIQMLMmn6ZIS9r
	aJ7xmJ0Bu4+mS70/IzkzujTQKDm/Bv5FbDzAArR4f0W2HXvtyNoyZIj9Kf6bvmUGCF3BESmDQTCPS
	LXlutVGy531flFhG3x8fabpAWsTuV4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieh46-0005Rs-Ge; Tue, 10 Dec 2019 15:04:42 +0000
Received: from ms9.eaxlabs.cz ([147.135.177.209])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieh3w-0005RM-1A
 for linux-mtd@lists.infradead.org; Tue, 10 Dec 2019 15:04:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=eaxlabs.cz;
 s=mail; h=Message-Id:Date:Subject:Cc:To:From;
 bh=JYLcJhGa26ePxUhCLaeVt5gG3fUkiaBnY+uXwvTg0qA=; 
 b=RLELJyUDmacFSXsa8R7Tt97fV3tJOUdtlPaZ1LeqB1ELIK4D7sgzOZiSTzIm4uEoC4mH3fMh7qGECVW48jpVxK3CZe1XC8vlBkn9M+F2Nm89MRzCrN5JR0XU/7BpDjOQ2YUoXJZyepDJtLXvmYJkjRfQOpzylpxnA9vKR4QfFI8=;
Received: from [82.99.129.6] (helo=localhost.localdomain)
 by ms9.eaxlabs.cz with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.84_2) (envelope-from <devik@eaxlabs.cz>)
 id 1ieh3e-0002ca-76; Tue, 10 Dec 2019 16:04:16 +0100
From: Martin Devera <devik@eaxlabs.cz>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] mtd: rawnand: Fix unexpected timeouts in waitrdy
Date: Tue, 10 Dec 2019 16:03:18 +0100
Message-Id: <20191210150319.3125-1-devik@eaxlabs.cz>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_070432_386717_B82294B3 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Christophe Kerello <christophe.kerello@st.com>,
 Marek Vasut <marek.vasut@gmail.com>, Richard Weinberger <richard@nod.at>,
 Martin Devera <devik@eaxlabs.cz>,
 Boris Brezillon <boris.brezillon@bootlin.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, jan.pohanka@merz.cz,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The used way to compute jiffies timeout brokes when
jiffie difference is 1. Simply add 1 - it has no other
side effects.
Fixes STM32MP1 FMC2 NAND controller which sometimes failed
exactly in this way.

Signed-off-by: Martin Devera <devik@eaxlabs.cz>
---
 drivers/mtd/nand/raw/nand_base.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index d527e448ce19..beab3a775cc7 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -721,7 +721,11 @@ int nand_soft_waitrdy(struct nand_chip *chip, unsigned long timeout_ms)
 	if (ret)
 		return ret;
 
-	timeout_ms = jiffies + msecs_to_jiffies(timeout_ms);
+	/* +1 below is necessary because if we are now in the last fraction
+	 * of jiffy and msecs_to_jiffies is 1 then we will wait only that
+	 * small jiffy fraction - possibly leading to false timeout
+	 */
+	timeout_ms = jiffies + msecs_to_jiffies(timeout_ms) + 1;
 	do {
 		ret = nand_read_data_op(chip, &status, sizeof(status), true);
 		if (ret)
-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
