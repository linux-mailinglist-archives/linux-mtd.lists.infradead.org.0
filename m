Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1486FBC265
	for <lists+linux-mtd@lfdr.de>; Tue, 24 Sep 2019 09:14:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:From:To:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h5Fl7mhmRa6m+H/XynDHQDr6jfmMAl/GTKdHkAvce8E=; b=iLCtpw3RsYoz/4
	unRmWUDLe29l+V0jCSMhSL0LvS+Xh2SFMIjPvahp2QBC079Nijo1ySrGLherZ8/19Cq4zs3WRHe5W
	bWkX8Dj1XHPTp7coAS4wBFMJS40pMimze6wJGNSPM842NuxMYVE0G7PeEq95KnaK3jM+8KtBJmefP
	pe2vva/19a/vYx2qAf/uh4kN5piBH4YXX3GRjSojdkSvYTARJHYNYAml+P3x67P4Q45GPidaCLJoh
	vj5aA+avkz6/z5HMtsyLmsuRnmrQhFjwofPe4uhIOBA0gED9qXWkCW0fmPw85JbiEin6txXrTNKLB
	Q1KAE8Chs7Ie4s9ANoow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCf1z-0006Cx-NK; Tue, 24 Sep 2019 07:14:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCf13-0005pf-JU
 for linux-mtd@lists.infradead.org; Tue, 24 Sep 2019 07:13:45 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C3A4C21783;
 Tue, 24 Sep 2019 07:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569309221;
 bh=KBHMnPmU4dLqOsn/c3x2/zl6B/gLCaoStBwTlHvaOPw=;
 h=Subject:To:Cc:From:Date:From;
 b=O+6HH96BTxqeIGBKbWzJQzy1pKYUP7bLtidylIQ9Sxs+vbSvyNsetq3e+j3+tZX+s
 K2R2atzRDJpKjfUfzoL/UlyYWTaC00eLOT0I+1zHWX6rsi7HcWUFNTqm4y390qHqLk
 +WTy/42EhXLCDpBv2EKOJC6bJByc4r4sA7G2xxto=
Subject: Patch "mtd: cfi_cmdset_0002: Use chip_good() to retry in
 do_write_oneword()" has been added to the 4.9-stable tree
To: Joakim.Tjernlund@infinera.com, chris.packham@alliedtelesis.co.nz,
 fbettoni@gmail.com, gregkh@linuxfoundation.org, hauke@hauke-m.de,
 ikegami.t@gmail.com, linux-mtd@lists.infradead.org, nbd@nbd.name,
 vigneshr@ti.com
From: <gregkh@linuxfoundation.org>
Date: Tue, 24 Sep 2019 09:13:24 +0200
Message-ID: <156930920417339@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_001342_102388_B07FEBBB 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: stable-commits@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


This is a note to let you know that I've just added the patch titled

    mtd: cfi_cmdset_0002: Use chip_good() to retry in do_write_oneword()

to the 4.9-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     mtd-cfi_cmdset_0002-use-chip_good-to-retry-in-do_write_oneword.patch
and it can be found in the queue-4.9 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From 37c673ade35c707d50583b5b25091ff8ebdeafd7 Mon Sep 17 00:00:00 2001
From: Tokunori Ikegami <ikegami.t@gmail.com>
Date: Tue, 6 Aug 2019 04:03:18 +0900
Subject: mtd: cfi_cmdset_0002: Use chip_good() to retry in do_write_oneword()

From: Tokunori Ikegami <ikegami.t@gmail.com>

commit 37c673ade35c707d50583b5b25091ff8ebdeafd7 upstream.

As reported by the OpenWRT team, write requests sometimes fail on some
platforms.
Currently to check the state chip_ready() is used correctly as described by
the flash memory S29GL256P11TFI01 datasheet.
Also chip_good() is used to check if the write is succeeded and it was
implemented by the commit fb4a90bfcd6d8 ("[MTD] CFI-0002 - Improve error
checking").
But actually the write failure is caused on some platforms and also it can
be fixed by using chip_good() to check the state and retry instead.
Also it seems that it is caused after repeated about 1,000 times to retry
the write one word with the reset command.
By using chip_good() to check the state to be done it can be reduced the
retry with reset.
It is depended on the actual flash chip behavior so the root cause is
unknown.

Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
Cc: linux-mtd@lists.infradead.org
Cc: stable@vger.kernel.org
Reported-by: Fabio Bettoni <fbettoni@gmail.com>
Signed-off-by: Felix Fietkau <nbd@nbd.name>
Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
Signed-off-by: Tokunori Ikegami <ikegami.t@gmail.com>
[vigneshr@ti.com: Fix a checkpatch warning]
Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>


---
 drivers/mtd/chips/cfi_cmdset_0002.c |   18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

--- a/drivers/mtd/chips/cfi_cmdset_0002.c
+++ b/drivers/mtd/chips/cfi_cmdset_0002.c
@@ -1624,29 +1624,35 @@ static int __xipram do_write_oneword(str
 			continue;
 		}
 
-		if (time_after(jiffies, timeo) && !chip_ready(map, adr)){
+		/*
+		 * We check "time_after" and "!chip_good" before checking
+		 * "chip_good" to avoid the failure due to scheduling.
+		 */
+		if (time_after(jiffies, timeo) && !chip_good(map, adr, datum)) {
 			xip_enable(map, chip, adr);
 			printk(KERN_WARNING "MTD %s(): software timeout\n", __func__);
 			xip_disable(map, chip, adr);
+			ret = -EIO;
 			break;
 		}
 
-		if (chip_ready(map, adr))
+		if (chip_good(map, adr, datum))
 			break;
 
 		/* Latency issues. Drop the lock, wait a while and retry */
 		UDELAY(map, chip, adr, 1);
 	}
+
 	/* Did we succeed? */
-	if (!chip_good(map, adr, datum)) {
+	if (ret) {
 		/* reset on all failures. */
 		map_write( map, CMD(0xF0), chip->start );
 		/* FIXME - should have reset delay before continuing */
 
-		if (++retry_cnt <= MAX_RETRIES)
+		if (++retry_cnt <= MAX_RETRIES) {
+			ret = 0;
 			goto retry;
-
-		ret = -EIO;
+		}
 	}
 	xip_enable(map, chip, adr);
  op_done:


Patches currently in stable-queue which might be from ikegami.t@gmail.com are

queue-4.9/mtd-cfi_cmdset_0002-use-chip_good-to-retry-in-do_write_oneword.patch

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
