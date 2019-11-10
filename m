Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A67F6982
	for <lists+linux-mtd@lfdr.de>; Sun, 10 Nov 2019 15:46:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YO81K7+J635k4hKeeT/ZGOlA2qpU4v85aMmGTaCP0ek=; b=cVPECk9vNYq/oY
	GB1jHgAN8f1m92IeaCDDRS9JAfHlECNRMld+phDjwT4w/NNo/8l4F4vDjxSiERdj7cTPmNO68TGKI
	cZNQsV7PzNZodRJjwJlG7GjC2Uvkul9ckgRnQze9MhyotrbsnjSYHsmU+CE8rQccxwMK9NZScYIip
	I8lw/xgRJWMqlfYqpYnVFawH+K59AScN9dtjiEbhb8vv0+QU1QtzRYnAr57Ci0nAWOMlJAtxs/ZeD
	EvVmaB8VaPCdz3bqXuHY8uKUQ1jtSB0xMYb9m4QxBBawAKViobbzgpHLJcU27UdnrVVcm4xxNe8cA
	vEGlzlb/P2Hwyep/g9zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iToTa-0006zj-Jv; Sun, 10 Nov 2019 14:46:02 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iToT3-0006cT-7G
 for linux-mtd@lists.infradead.org; Sun, 10 Nov 2019 14:45:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id 83E61181099F1;
 Sun, 10 Nov 2019 15:45:24 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id qc-I65X8voTb; Sun, 10 Nov 2019 15:45:23 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id yoJJfGItDbgN; Sun, 10 Nov 2019 15:45:23 +0100 (CET)
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 2/2] mkfs.ubifs: abort add_directory if readdir fails
Date: Sun, 10 Nov 2019 15:44:42 +0100
Message-Id: <20191110144442.26680-3-david.oberhollenzer@sigma-star.at>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191110144442.26680-1-david.oberhollenzer@sigma-star.at>
References: <20191110144442.26680-1-david.oberhollenzer@sigma-star.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_064529_410819_20717431 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: richard@nod.at, David Oberhollenzer <david.oberhollenzer@sigma-star.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The existing code sets 'err' to -1 and breaks the readdir loop, but
the error state is never read. This patch modifies the readdir loop
to actualy jump to the error handling branch if readdir fails.

Signed-off-by: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
---
 ubifs-utils/mkfs.ubifs/mkfs.ubifs.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/ubifs-utils/mkfs.ubifs/mkfs.ubifs.c b/ubifs-utils/mkfs.ubifs/mkfs.ubifs.c
index 5748aaa..72ae1b4 100644
--- a/ubifs-utils/mkfs.ubifs/mkfs.ubifs.c
+++ b/ubifs-utils/mkfs.ubifs/mkfs.ubifs.c
@@ -2043,8 +2043,7 @@ static int add_directory(const char *dir_name, ino_t dir_inum, struct stat *st,
 			if (errno == 0)
 				break;
 			sys_err_msg("error reading directory '%s'", dir_name);
-			err = -1;
-			break;
+			goto out_free;
 		}
 
 		if (strcmp(".", entry->d_name) == 0)
-- 
2.21.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
