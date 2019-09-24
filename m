Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFE5BC20F
	for <lists+linux-mtd@lfdr.de>; Tue, 24 Sep 2019 08:51:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:From:To:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+cI4j0RPPwSyr9kKPwWeAAXmP1kzEI8FVQdVEf30HLE=; b=QTDrzrTTU7b0FO
	Eu/B/0XTCBbuNj/NMW7AqFp8gvNRLurnYKXOnKvghKbQSk5bxkHKMth3TJEV8lPG4ciFlvWWhru4j
	H+hvGjOYCN31Sgss2nFll7FmAnaabDAy2YK7QSVpLGdN9jxuapfC2kerLVEwPCAnnfAwGjOaJvng/
	nA8phOrjkelv5KaJ1X5YryeBM7KoWGsb3wGmS5qMitK9D6GUvpDne6NgUhxAOfmOtVVJ4A1DBBqzc
	eTT8uCb/ZCUNQp9n4meBiwcia4+mzwF/lqQnBWtOpnm8EZALn3BScHv31+ZVhV00hcQ8XP+A9TTMu
	n992DWl8I0Futq4VQLkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCefC-0005Qx-JU; Tue, 24 Sep 2019 06:51:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCef4-0005Q3-Fn
 for linux-mtd@lists.infradead.org; Tue, 24 Sep 2019 06:51:00 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7FD2A214DA;
 Tue, 24 Sep 2019 06:50:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569307858;
 bh=fbu5eJRLzW5mqkNJ+KMkgwXI84cbo/CVPFXOsWWu2pE=;
 h=Subject:To:Cc:From:Date:From;
 b=Zf6XuSv3ynhjU902mtbgPoprnP79WNTKxyqhv4EuDxvCc6VlFVDseDsFWyjIJ0zp6
 6opG1gqGuuDfcuYDOcSSW0ppSHL2CF2vEG8h1ZdrqjW4UxUJs77v64PAwVksSnC+B3
 MkO7nxB54UJToSOvVp4V1YXvGu5kUhZJFk3alNks=
Subject: Patch "mtd: cfi_cmdset_0002: Use chip_good() to retry in
 do_write_oneword()" has been added to the 5.2-stable tree
To: Joakim.Tjernlund@infinera.com, chris.packham@alliedtelesis.co.nz,
 fbettoni@gmail.com, gregkh@linuxfoundation.org, hauke@hauke-m.de,
 ikegami.t@gmail.com, linux-mtd@lists.infradead.org, nbd@nbd.name,
 vigneshr@ti.com
From: <gregkh@linuxfoundation.org>
Date: Tue, 24 Sep 2019 08:50:33 +0200
Message-ID: <1569307833130235@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_235058_571019_E9228374 
X-CRM114-Status: GOOD (  16.26  )
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

to the 5.2-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     mtd-cfi_cmdset_0002-use-chip_good-to-retry-in-do_write_oneword.patch
and it can be found in the queue-5.2 subdirectory.

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
@@ -1628,29 +1628,35 @@ static int __xipram do_write_oneword(str
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
 		map_write(map, CMD(0xF0), chip->start);
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

queue-5.2/mtd-cfi_cmdset_0002-use-chip_good-to-retry-in-do_write_oneword.patch

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
