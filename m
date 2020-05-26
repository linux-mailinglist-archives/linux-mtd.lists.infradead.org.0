Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B991E1B3B41
	for <lists+linux-mtd@lfdr.de>; Wed, 22 Apr 2020 11:25:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:From:To:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gvQJkV1mHQya5Syquz9bi9F/07NyRcogbxZ3b18VDm0=; b=DZuCMzxhVH6+ct
	Uc+D2y49IOJMMj/DiUDo/b737OclYRO9n75Rp96+Kp/oPt/HP9wMa6qpDmhkOm8Rqi2ruowy3MtP4
	csnj3ag8Xa7XM5lS5Y4UopfDFrAUlnVJ2ZqwM1sJdxJiQeiAOsj5+Mx5BbGQKsDkR34iPEXA/WgcP
	f1e62lQD3FaxVgt4nEF7ZlQhVXmYqTXoaKbcPuwtdjrZhzm1mrnTN2DUYITg7gVArqij3t+HJlPfM
	Bo27Se0C4MmL5FtNlhHucWG2Yuazigmgoa2HENxzoEDvioVEoa9V83CxcVTfyq6bkjAGm8VycEN+h
	FXw+U18kv/B9GMDcO6xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRBdb-0001Jv-7W; Wed, 22 Apr 2020 09:25:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRBd1-0007yG-5T
 for linux-mtd@lists.infradead.org; Wed, 22 Apr 2020 09:25:21 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DFF0D206D9;
 Wed, 22 Apr 2020 09:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587547508;
 bh=iTy6kfL38BYCJuAFAA3BXXZzL5hZGekv5+yjT4/eORY=;
 h=Subject:To:Cc:From:Date:From;
 b=HO7beA9wovW5PL/aJa+DzjMGdoBSK03xO+63cPd1r//vyKCze+iURmXIs7I03q9dT
 JIj9a+T/Yg6cFF4+mF+IDtWgamVWijWJtlyMfi63K0uKychNPQ8FDnYGfaapZ2ggAI
 ev4aoNmYdJiuw6BYIONkxAo8xGSi8UbBxnu/kuSQ=
Subject: Patch "mtd: phram: fix a double free issue in error path" has been
 added to the 4.14-stable tree
To: gregkh@linuxfoundation.org, joern@lazybastard.org,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com, wenyang@linux.alibaba.com
From: <gregkh@linuxfoundation.org>
Date: Wed, 22 Apr 2020 11:24:43 +0200
Message-ID: <1587547483232181@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_022511_701232_56DF43A3 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

    mtd: phram: fix a double free issue in error path

to the 4.14-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     mtd-phram-fix-a-double-free-issue-in-error-path.patch
and it can be found in the queue-4.14 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From 49c64df880570034308e4a9a49c4bc95cf8cdb33 Mon Sep 17 00:00:00 2001
From: Wen Yang <wenyang@linux.alibaba.com>
Date: Wed, 18 Mar 2020 23:31:56 +0800
Subject: mtd: phram: fix a double free issue in error path

From: Wen Yang <wenyang@linux.alibaba.com>

commit 49c64df880570034308e4a9a49c4bc95cf8cdb33 upstream.

The variable 'name' is released multiple times in the error path,
which may cause double free issues.
This problem is avoided by adding a goto label to release the memory
uniformly. And this change also makes the code a bit more cleaner.

Fixes: 4f678a58d335 ("mtd: fix memory leaks in phram_setup")
Signed-off-by: Wen Yang <wenyang@linux.alibaba.com>
Cc: Joern Engel <joern@lazybastard.org>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Richard Weinberger <richard@nod.at>
Cc: Vignesh Raghavendra <vigneshr@ti.com>
Cc: linux-mtd@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Link: https://lore.kernel.org/linux-mtd/20200318153156.25612-1-wenyang@linux.alibaba.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
 drivers/mtd/devices/phram.c |   15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

--- a/drivers/mtd/devices/phram.c
+++ b/drivers/mtd/devices/phram.c
@@ -247,22 +247,25 @@ static int phram_setup(const char *val)
 
 	ret = parse_num64(&start, token[1]);
 	if (ret) {
-		kfree(name);
 		parse_err("illegal start address\n");
+		goto error;
 	}
 
 	ret = parse_num64(&len, token[2]);
 	if (ret) {
-		kfree(name);
 		parse_err("illegal device length\n");
+		goto error;
 	}
 
 	ret = register_device(name, start, len);
-	if (!ret)
-		pr_info("%s device: %#llx at %#llx\n", name, len, start);
-	else
-		kfree(name);
+	if (ret)
+		goto error;
 
+	pr_info("%s device: %#llx at %#llx\n", name, len, start);
+	return 0;
+
+error:
+	kfree(name);
 	return ret;
 }
 


Patches currently in stable-queue which might be from wenyang@linux.alibaba.com are

queue-4.14/ipmi-fix-hung-processes-in-__get_guid.patch
queue-4.14/mtd-phram-fix-a-double-free-issue-in-error-path.patch

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
