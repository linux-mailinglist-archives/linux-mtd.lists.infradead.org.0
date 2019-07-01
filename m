Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0802D25B0A
	for <lists+linux-mtd@lfdr.de>; Wed, 22 May 2019 02:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pMG8+KBNhJB+mUsYdtGXgS67I2O2tfQa5c9wLvxYf4k=; b=KV4WfIdtUpMwOY
	bo4DiNRGrxIO0dfu8vg39F7klJPzEKR01Q+tPiZTLjDKvpl3HItH4hPMUfa1GxSg+DndwWutibQaE
	atMfXeoLm3ZRC6e4oUdu9M+e12wiCtiWmkPRlrwMOkjnAlbbGxT64B7ai1ZVSApPGywyExzOFviZ+
	azgP/cP2R0HhR/2V0N1yoa6zbMrBdzhKgV9o/MbNQaf3FlaHBK8xeqDRmVHfm44n9QtqZfVZNUCNz
	X/vMZy705kOR8OvGF7jZY12Ogjqo2+lxQnnOTgDnOybpj22NCx/9YKpnsMOSDLeaPe8fTxL5pTPvX
	JZOGeQeiIHGtNjlG1ONA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTEmf-0000FD-Nj; Wed, 22 May 2019 00:07:05 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTEmV-0000EH-Si
 for linux-mtd@lists.infradead.org; Wed, 22 May 2019 00:06:57 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 3A41A8365B;
 Wed, 22 May 2019 12:06:46 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1558483606;
 bh=MlTgnlsatXuH34Bkw+JA8k8YCTZyVZxlECoV11VrIxs=;
 h=From:To:Cc:Subject:Date;
 b=E8zIP9sC59ehXJK6VZy6paV6rHo+NiA0P6WHFN7rqz0VDtXvd4v8BCB2WbiZ5jTSQ
 z+Y3tmvIDGXTczXZEhdXs5WFpCYgJpP/IA4VU5/aueTMbDpo20pfWzHFwI3qSwBI6w
 NPEooA4J8+7l2ca+CiONV2z6ZPgsYM2zE/c2TwDu6AhAFzAf0ex0r2oIXHbA9ldLxt
 OBKOnR7iopWpnK0Pln9+S/xYa+dGsWeI0RPgRs8PnzmV1Tq+EOKO7vc7UAAFCTGXOQ
 89fccHlyzPNrAwPAktwLOMzbPsvZDjqWSeg2Q2zp4RoACPb/Lh7tOVBJPf2+cKurL4
 a2+ggnp9eqNcg==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5ce492920000>; Wed, 22 May 2019 12:06:45 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
 by smtp (Postfix) with ESMTP id 1BE1213ED45;
 Wed, 22 May 2019 12:06:43 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 726621E1DDA; Wed, 22 May 2019 12:06:42 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: dwmw2@infradead.org, computersforpeace@gmail.com, marek.vasut@gmail.com,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com
Subject: [PATCH] mtd: cfi_cmdset_0002: dynamically determine the max sectors
Date: Wed, 22 May 2019 12:06:28 +1200
Message-Id: <20190522000628.13073-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_170656_117277_51388684 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: sr@denx.de, linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Because PPB unlocking unlocks the whole chip cfi_ppb_unlock() needs to
remember the locked status for each sector so it can re-lock the
unaddressed sectors. Dynamically calculate the maximum number of sectors
rather than using a hardcoded value that is too small for larger chips.

Tested with Spansion S29GL01GS11TFI flash device.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
 drivers/mtd/chips/cfi_cmdset_0002.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/chips/cfi_cmdset_0002.c b/drivers/mtd/chips/cfi_cmdset_0002.c
index c8fa5906bdf9..a1a7d334aa82 100644
--- a/drivers/mtd/chips/cfi_cmdset_0002.c
+++ b/drivers/mtd/chips/cfi_cmdset_0002.c
@@ -2533,8 +2533,6 @@ struct ppb_lock {
 	int locked;
 };
 
-#define MAX_SECTORS			512
-
 #define DO_XXLOCK_ONEBLOCK_LOCK		((void *)1)
 #define DO_XXLOCK_ONEBLOCK_UNLOCK	((void *)2)
 #define DO_XXLOCK_ONEBLOCK_GETLOCK	((void *)3)
@@ -2633,6 +2631,7 @@ static int __maybe_unused cfi_ppb_unlock(struct mtd_info *mtd, loff_t ofs,
 	int i;
 	int sectors;
 	int ret;
+	int max_sectors;
 
 	/*
 	 * PPB unlocking always unlocks all sectors of the flash chip.
@@ -2640,7 +2639,11 @@ static int __maybe_unused cfi_ppb_unlock(struct mtd_info *mtd, loff_t ofs,
 	 * first check the locking status of all sectors and save
 	 * it for future use.
 	 */
-	sect = kcalloc(MAX_SECTORS, sizeof(struct ppb_lock), GFP_KERNEL);
+	max_sectors = 0;
+	for (i = 0; i < mtd->numeraseregions; i++)
+		max_sectors += regions[i].numblocks;
+
+	sect = kcalloc(max_sectors, sizeof(struct ppb_lock), GFP_KERNEL);
 	if (!sect)
 		return -ENOMEM;
 
@@ -2689,9 +2692,9 @@ static int __maybe_unused cfi_ppb_unlock(struct mtd_info *mtd, loff_t ofs,
 		}
 
 		sectors++;
-		if (sectors >= MAX_SECTORS) {
+		if (sectors >= max_sectors) {
 			printk(KERN_ERR "Only %d sectors for PPB locking supported!\n",
-			       MAX_SECTORS);
+			       max_sectors);
 			kfree(sect);
 			return -EINVAL;
 		}
-- 
2.21.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
