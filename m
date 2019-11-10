Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B37F2F69BA
	for <lists+linux-mtd@lfdr.de>; Sun, 10 Nov 2019 16:33:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GhswpJalBhYGqkffhVAj8N8o+aLDrgq89K94rTy6vTk=; b=SMChaX3q8K7g3a
	tv02O9aySb9NzCbvio56BXyHWyAUO6ZCweSkkUrI9v6L6acmwo/ymWl7iLeA09OQZcOj3iXyQAzvL
	0ZswaBXIcIad+ZcYBxccQDZ8k86uwnwYgBs0FB4DbAWV7cYT840ZBPxk8QAyALGIucuNtlU/8XM8E
	P7I1I51FZltvDmqPFuhJ+upEur2BIuM/ARVUQmH2TNwt82m1fKwWgZ1TVfs9U4OsD/pbYcxCbKjzj
	eEpRV1OpUxuZOYfdxHjyHrx3jJ+XX8rXJLjGESK6dGOKrAkko4yJu0NNV2wzsbww13nD1DVGfcijK
	dpEpzZeirRLqxuqjoJ7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTpDj-0006pd-Dm; Sun, 10 Nov 2019 15:33:43 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTpCG-0005Zb-3c
 for linux-mtd@lists.infradead.org; Sun, 10 Nov 2019 15:32:13 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id 110C1181099F9;
 Sun, 10 Nov 2019 16:32:08 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id YGyapT4x0nKH; Sun, 10 Nov 2019 16:32:07 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id HolptSotvYON; Sun, 10 Nov 2019 16:32:06 +0100 (CET)
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 06/15] mkfs.ubifs: propperly cleanup in ALL
 interpret_table_entry error paths
Date: Sun, 10 Nov 2019 16:30:50 +0100
Message-Id: <20191110153059.28878-7-david.oberhollenzer@sigma-star.at>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191110153059.28878-1-david.oberhollenzer@sigma-star.at>
References: <20191110153059.28878-1-david.oberhollenzer@sigma-star.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_073212_315884_B646B019 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
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

Signed-off-by: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
---
 ubifs-utils/mkfs.ubifs/devtable.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/ubifs-utils/mkfs.ubifs/devtable.c b/ubifs-utils/mkfs.ubifs/devtable.c
index 0afea90..aa815fb 100644
--- a/ubifs-utils/mkfs.ubifs/devtable.c
+++ b/ubifs-utils/mkfs.ubifs/devtable.c
@@ -219,8 +219,10 @@ static int interpret_table_entry(const char *line)
 		}
 	}
 
-	if (increment != 0 && count == 0)
-		return err_msg("count cannot be zero if increment is non-zero");
+	if (increment != 0 && count == 0) {
+		err_msg("count cannot be zero if increment is non-zero");
+		goto out_free;
+	}
 
 	/*
 	 * Add the file/directory/device node (last component of the path) to
@@ -245,8 +247,10 @@ static int interpret_table_entry(const char *line)
 		dbg_msg(3, "inserting '%s' into name hash table (major %d, minor %d)",
 			name, major(nh_elt->dev), minor(nh_elt->dev));
 
-		if (hashtable_search(ph_elt->name_htbl, name))
-			return err_msg("'%s' is referred twice", buf);
+		if (hashtable_search(ph_elt->name_htbl, name)) {
+			err_msg("'%s' is referred twice", buf);
+			goto out_free;
+		}
 
 		nh_elt->name = name;
 		if (!hashtable_insert(ph_elt->name_htbl, name, nh_elt)) {
-- 
2.21.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
