Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1221B3DB7
	for <lists+linux-mtd@lfdr.de>; Wed, 22 Apr 2020 12:18:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PMMyZNxfg8QRQ54YJHrFFy1n7wJ69JZ26eGVSTQsNSs=; b=pr+hY3H74evZZC
	9oGt6oGOK5xl4YbyN1ZEaw6iRRM05DHUAwi4rjR+Ja671SrbCV4gS+D0HTnsZpTR5roATEuwrXuc6
	COmAO9XlhFSq3IKDG/jXK+QA59uhC7OAICRiCpyGNDur43laNJcL89Wn4IQS2bK9P2vbg9O7M3J13
	lRxHWOGJvaH9TvfG1lWO16HmhxgmPjtogkEN2tlqoKw/zoMdHdfgtfjRmP/UW3JXGhRuUiWfPT7VY
	iCHG/c/3ZhdI0yn2gTMKsa3Efje06SQD8rDcB6hLC2DkkUh5yVFjqzACSsou1JnT6k6Y0/4z/w+r8
	wLpI4ExMYMaZTw8ZDmpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRCSD-0000a5-14; Wed, 22 Apr 2020 10:18:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRCQL-0008VG-6e
 for linux-mtd@lists.infradead.org; Wed, 22 Apr 2020 10:16:10 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 54D4720575;
 Wed, 22 Apr 2020 10:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587550568;
 bh=w2PUQYTQ73NwbewyrZ1u9QihBf5HuPs7RlYsAgFI3/c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MXXSggWKAZIJvvqqtcGA1DDoV9ppZO3e4DsEVOsKgw4SnnRrMnXVXHMrGMX6MvYV2
 Z6DTmGj7DnNOBhpzW/BaL0p3NLkOMzPzZYr+t9hYhZHWQE+YEyAXg04Gn7FDybSS/y
 CLLMcPlsdM8ryl+r7Gv3ggTpNPldB2n82qTLsBVE=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4.19 62/64] mtd: phram: fix a double free issue in error path
Date: Wed, 22 Apr 2020 11:57:46 +0200
Message-Id: <20200422095024.382706291@linuxfoundation.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200422095008.799686511@linuxfoundation.org>
References: <20200422095008.799686511@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_031609_260453_1002D4BB 
X-CRM114-Status: GOOD (  11.76  )
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
Cc: Wen Yang <wenyang@linux.alibaba.com>, Richard Weinberger <richard@nod.at>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Joern Engel <joern@lazybastard.org>,
 stable@vger.kernel.org, linux-mtd@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

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
@@ -240,22 +240,25 @@ static int phram_setup(const char *val)
 
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
 



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
