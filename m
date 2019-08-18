Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A42B917DF
	for <lists+linux-mtd@lfdr.de>; Sun, 18 Aug 2019 18:37:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=eUG7eY0p8bTHlXMePdExjWlcIhYbYdVGGNhU0KwUppI=; b=rxT
	jWzkDPdS8rpTdYo00aT+lnPQ6HQVtKyx/Bw1ERXA5V+36TtAH2h+3KV0z4/u1ZPDayzMf8QWWIvNT
	xaF3GoNH2c1EqEI2Y8C0rqtEfn33kWbhjqH349PffRK/XmZ7hv+CgZ2Kskwzj4ZPuleSEbPZO0JNk
	p+rOWV9oBxpp+ZhKe+s8fKoyRjsd0f3As+jolnFY4sXClUrivb7ixlKJzkZUydicY/c9oRSr6O+F/
	ZRlod9FH8q0i2aiIFK47V/swRaMljZ0SnWo05zw15GJ0lb1iKEEKLtVGp5f3/dW4/HKKAixn2hLeZ
	bSZ0aWpmLaeFwJnUOGgxcV6uN9iBGoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzOAt-0001Ul-IC; Sun, 18 Aug 2019 16:36:59 +0000
Received: from mail-yb1-f195.google.com ([209.85.219.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzOAl-0001UR-Gd
 for linux-mtd@lists.infradead.org; Sun, 18 Aug 2019 16:36:52 +0000
Received: by mail-yb1-f195.google.com with SMTP id o82so3556380ybg.10
 for <linux-mtd@lists.infradead.org>; Sun, 18 Aug 2019 09:36:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=/z1lnlqAbeq6x6turKShcmzG9kg9OUp9/TqeSNEaN7o=;
 b=LKEt1YYinble4UF7KkpMZYST8Faz8IDLoiAPnE3tO3ieC/VHLx7xONXlWNxi5mROSX
 RGGLMNBgUA6ditELFhB8wIeqHkGIjgOkG0pmnlg4LUWMkSi3GSj1BWZTq8wh3ucBq4Lr
 DUvpzz2wBAobKmHruze4ze/EFRXb+qibps+TKZ8qSSDO5jqJdnvApsXetUvkXcjP57Qq
 YNvGlqCZQcfDj0HqRS4KBykNJqn3TuBqigcRDwYUiQZDrmPDicAF4plrvyuacl9QK1/s
 tyX6AsE7evhVXnkmlliat0lfD0MIgDLGjreshnN4RB5NcX8YOLbLrCAqmOGD7Ht+eF9a
 qPAA==
X-Gm-Message-State: APjAAAXymYpS0eu1YVHxpkbe/z7+6YhRS7Vc78MeunMiBChq8ZyrFLfe
 +zgOOxSo9Se3rodt4L8Y+xA=
X-Google-Smtp-Source: APXvYqypLyrgn8MarlbnDVP6U8aKKLr5OF9Z3MKC7brXgqz8Mn3YHzZhGSaWibxCXf1VutIzwJs/cQ==
X-Received: by 2002:a25:cb12:: with SMTP id b18mr14027976ybg.92.1566146210435; 
 Sun, 18 Aug 2019 09:36:50 -0700 (PDT)
Received: from localhost.localdomain (24-158-240-219.dhcp.smyr.ga.charter.com.
 [24.158.240.219])
 by smtp.gmail.com with ESMTPSA id v141sm2595717ywe.66.2019.08.18.09.36.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 18 Aug 2019 09:36:49 -0700 (PDT)
From: Wenwen Wang <wenwen@cs.uga.edu>
To: Wenwen Wang <wenwen@cs.uga.edu>
Subject: [PATCH] mtd: sm_ftl: fix memory leaks
Date: Sun, 18 Aug 2019 11:36:44 -0500
Message-Id: <1566146205-2428-1-git-send-email-wenwen@cs.uga.edu>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_093651_553738_41D2FDEA 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wenwenict[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 open list <linux-kernel@vger.kernel.org>, Marek Vasut <marek.vasut@gmail.com>,
 "open list:MEMORY TECHNOLOGY DEVICES MTD" <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

In sm_init_zone(), 'zone->lba_to_phys_table' is allocated through
kmalloc_array() and 'zone->free_sectors' is allocated in kfifo_alloc()
respectively. However, they are not deallocated in the following execution
if sm_read_sector() fails, leading to memory leaks. To fix this issue, free
them before returning -EIO.

Signed-off-by: Wenwen Wang <wenwen@cs.uga.edu>
---
 drivers/mtd/sm_ftl.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/sm_ftl.c b/drivers/mtd/sm_ftl.c
index dfc47a4..4744bf9 100644
--- a/drivers/mtd/sm_ftl.c
+++ b/drivers/mtd/sm_ftl.c
@@ -774,8 +774,11 @@ static int sm_init_zone(struct sm_ftl *ftl, int zone_num)
 			continue;
 
 		/* Read the oob of first sector */
-		if (sm_read_sector(ftl, zone_num, block, 0, NULL, &oob))
+		if (sm_read_sector(ftl, zone_num, block, 0, NULL, &oob)) {
+			kfifo_free(&zone->free_sectors);
+			kfree(zone->lba_to_phys_table);
 			return -EIO;
+		}
 
 		/* Test to see if block is erased. It is enough to test
 			first sector, because erase happens in one shot */
-- 
2.7.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
