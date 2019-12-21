Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 404EA1285C6
	for <lists+linux-mtd@lfdr.de>; Sat, 21 Dec 2019 00:55:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mHQ7hJd+rDJ1u2LBCPG1MXM1E3VpOgQkIpjVZaBD4J0=; b=UTF
	GyWVQt5HWKFPpLlQ4G3mIlJjJppM7KpBNbI51RThPWf65YdklYf7xj1lW9LBC+V1ZJ7CqEEIDJ5Lx
	aM4IUoJOlJWrR8rOnLzDPN6R/DzB3YmCGFN5tM+794wCB0qIkBgGepiXlZJZtlWzrzukioWEPUGA1
	G2enO+oezCftBAv+uEv+Eleier3A6Hs+iTqZDPca0dPlzQhprLH4sISBJH1PYzfhsCBtM06qtjLs2
	ltaPE+nMn4Kj4Ts5PtbP9KAq1uDlRljiofy/HNXJsDhdwRUAzsuItWpural5FANe+zO7qEahiUlSx
	DInSF5qL8w003aQ7chtoiBxltt4kNUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiS70-0006nP-E0; Fri, 20 Dec 2019 23:55:14 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiS6m-0006Uy-JK
 for linux-mtd@lists.infradead.org; Fri, 20 Dec 2019 23:55:01 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 15:54:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,337,1571727600"; d="scan'208";a="206691571"
Received: from romley-ivt3.sc.intel.com ([172.25.110.60])
 by orsmga007.jf.intel.com with ESMTP; 20 Dec 2019 15:54:59 -0800
From: Fenghua Yu <fenghua.yu@intel.com>
To: "David Woodhouse" <dwmw2@infradead.org>,
 "Brian Norris" <computersforpeace@gmail.com>,
 "Boris Brezillon" <bbrezillon@kernel.org>,
 "linux-mtd" <linux-mtd@lists.infradead.org>
Subject: [PATCH] mtd: rawnand: fsmc: Change to non-atomic bit operations
Date: Fri, 20 Dec 2019 16:05:55 -0800
Message-Id: <1576886755-9788-1-git-send-email-fenghua.yu@intel.com>
X-Mailer: git-send-email 2.5.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_155500_675603_0E31BE00 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Ravi V Shankar <ravi.v.shankar@intel.com>, Tony Luck <tony.luck@intel.com>,
 Fenghua Yu <fenghua.yu@intel.com>, Peter Zijlstra <peterz@infradead.org>,
 David Laight <David.Laight@ACULAB.COM>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

No need to use expensive atomic change_bit() on dat[] and err_idx[]:
1. fsmc_bch8_correct_data() is called while mutex chip->lock is held
2. err_idx[] is a local variable.

To avoid big endian concern due to type cast to unsigned long, directly
change the bit in the specified byte instead of using non-atomic
__change_bit().

Suggested-by: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Fenghua Yu <fenghua.yu@intel.com>
Reviewed-by: Tony Luck <tony.luck@intel.com>
---

This driver only works on ARM. We find unaligned access in change_bit()
is quite expensive on x86. Although this driver is not configured
and compiled on x86, I send this patch to you in case it's useful.
I haven't compiled or tested this patch yet.

 drivers/mtd/nand/raw/fsmc_nand.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/raw/fsmc_nand.c b/drivers/mtd/nand/raw/fsmc_nand.c
index a6964feeec77..7e28311dffcb 100644
--- a/drivers/mtd/nand/raw/fsmc_nand.c
+++ b/drivers/mtd/nand/raw/fsmc_nand.c
@@ -809,11 +809,12 @@ static int fsmc_bch8_correct_data(struct nand_chip *chip, u8 *dat,
 
 	i = 0;
 	while (num_err--) {
-		change_bit(0, (unsigned long *)&err_idx[i]);
-		change_bit(1, (unsigned long *)&err_idx[i]);
+		err_idx[i] ^= 3;
 
 		if (err_idx[i] < chip->ecc.size * 8) {
-			change_bit(err_idx[i], (unsigned long *)dat);
+			int err = err_idx[i];
+
+			dat[err >> 3] ^= BIT(err & 7);
 			i++;
 		}
 	}
-- 
2.19.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
