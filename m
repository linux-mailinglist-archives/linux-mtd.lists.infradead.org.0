Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A35613DC73
	for <lists+linux-mtd@lfdr.de>; Thu, 16 Jan 2020 14:55:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VwDiFxK/SUeqDOVFSL/tXCpuPyCfuBExhyxKjlxVkdo=; b=NiCEqDbGgCGbyf
	RyawLKulli7tIxg0Rjf7kiYHG63gr3dubRp8T9snk6uvI9UXIy6q/huDbdGiPVXO0SGY6QmUT2lTW
	+Vb+HPcTK5xOgaC/IyH09ExIbnHoLSZkQR8qsEUousefL6BWbVdPOgtPF3NPD8TDiJHfXJnzg7hqf
	gj4AWCwag4mbn0sohpaz+LzuhR7FzXUIi+HvTvFmdl3/aQ8YGait5P9NBM/4jA3UADAwH/cuPpuZD
	4YSPrjodblZ3IQqMKLp4UrFxz5Da/tiNQ3JMxbR5dqMWZgwZglSfCJyevN+pVrCJSjeSHkjEIMimm
	HEh+NVWD3w3J4oDG+mfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is5cK-00034o-VC; Thu, 16 Jan 2020 13:55:24 +0000
Received: from ms9.eaxlabs.cz ([147.135.177.209])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is5c6-0002hV-W7
 for linux-mtd@lists.infradead.org; Thu, 16 Jan 2020 13:55:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=eaxlabs.cz;
 s=mail; 
 h=References:In-Reply-To:Message-Id:Date:Subject:To:From;
 bh=AypbPHseSp9PDoOGaACFm6NHLlTUiqThA0oEdf/FZa8=; 
 b=4O03aVWMzz2cILAb454sLxtOzXPEuV1cvmBjiTLzeue5H0qWx2g8uiPaWw+s5NW/EyfEF044c/70CDrVQk1SpkmMr4cSyrxSIyc+S5U+nE7BzrStnxCWR2icM005MNzNjD6xEzhWvGuNXWPAnWUA2HCZ2BgJq1uU6WwUdJDZr4Y=;
Received: from [82.99.129.6] (helo=localhost.localdomain)
 by ms9.eaxlabs.cz with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.84_2) (envelope-from <devik@eaxlabs.cz>)
 id 1is5bs-0007Nb-Fo; Thu, 16 Jan 2020 14:54:59 +0100
From: Martin Devera <devik@eaxlabs.cz>
To: Boris Brezillon <boris.brezillon@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 "GitAuthor: Martin Devera" <devik@eaxlabs.cz>,
 linux-mtd@lists.infradead.org
Subject: [PATCH] mtd: rawnand: Ensure nand_soft_waitrdy wait period is enough
Date: Thu, 16 Jan 2020 14:54:31 +0100
Message-Id: <20200116135431.17480-1-devik@eaxlabs.cz>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200109190423.60070968@xps13>
References: <20200109190423.60070968@xps13>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_055511_337887_616DF7A6 
X-CRM114-Status: GOOD (  12.66  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The used way to compute jiffies timeout brokes when
jiffie difference is 1.
Assume that nand_soft_waitrdy is called with timeout_ms==1.
Jiffies are 1000 for example (assume something more like 1000.99
- just before incrementing to 1001).
We compute timeout_ms = 1000+msecs_to_jiffies(1) = 1001.
nand_read_data_op is called for the first time and returns 0.
During the call jiffies changes to 1001 thus "while loop" ends
here (wrongly). Notice that routine was called with expected timeout
1ms but actual timeout used was something between 0...1ms.

Fixes STM32MP1 FMC2 NAND controller which sometimes failed
exactly in this way.

Signed-off-by: Martin Devera <devik@eaxlabs.cz>
---
 drivers/mtd/nand/raw/nand_base.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index d527e448ce19..9a7e09c8d8be 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -721,7 +721,12 @@ int nand_soft_waitrdy(struct nand_chip *chip, unsigned long timeout_ms)
 	if (ret)
 		return ret;
 
-	timeout_ms = jiffies + msecs_to_jiffies(timeout_ms);
+	/*
+	 * +1 below is necessary because if we are now in the last fraction
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
