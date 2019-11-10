Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4742F69B8
	for <lists+linux-mtd@lfdr.de>; Sun, 10 Nov 2019 16:33:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nt3YUr3hnPrSERC3N5AoJ1MrUiKnTAOEwNX8+bDtJec=; b=AWm4qYfu6w0PHM
	pUk+UongMqY4gB78MzllkRw9OKHh+J0y2uLt93ag81ABhlbfOUA7cp9qgyIR1yeBZD0j2qBEEP3kz
	/JgoIwxxp8Zx+it2hbuRJecYr7yjt7Orml3AhfRoLXRHm+rEDxkf6j57XIDsgjcr8fBv4zucV37tt
	gKhI0RSK61O+03NEB0vdDvNpi4sqDl6ZdN9bzrkyAxikgqMSBdASZcXval3Byd1QyqbLuN959suz+
	EQiOHmynycd+kLtXBWX8AegFI5OLdPeAhsw+qPQ+nZUC1f9gK72YvgKOSBLXCxz6o8ZswcwlgpHw2
	dWswMrH31plg14AmSTxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTpDJ-0006OT-Ib; Sun, 10 Nov 2019 15:33:17 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTpCD-0005W4-4M
 for linux-mtd@lists.infradead.org; Sun, 10 Nov 2019 15:32:11 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id 92088181099FB;
 Sun, 10 Nov 2019 16:32:07 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id q7W6NSW7kDds; Sun, 10 Nov 2019 16:32:06 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id NKayHsXCiz_n; Sun, 10 Nov 2019 16:32:06 +0100 (CET)
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 04/15] mkfs.ubifs: don't leak hastable iterators
Date: Sun, 10 Nov 2019 16:30:48 +0100
Message-Id: <20191110153059.28878-5-david.oberhollenzer@sigma-star.at>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191110153059.28878-1-david.oberhollenzer@sigma-star.at>
References: <20191110153059.28878-1-david.oberhollenzer@sigma-star.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_073209_328352_FACD8503 
X-CRM114-Status: GOOD (  10.67  )
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
 ubifs-utils/mkfs.ubifs/devtable.c   | 1 +
 ubifs-utils/mkfs.ubifs/mkfs.ubifs.c | 3 ++-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/ubifs-utils/mkfs.ubifs/devtable.c b/ubifs-utils/mkfs.ubifs/devtable.c
index 10faaca..0afea90 100644
--- a/ubifs-utils/mkfs.ubifs/devtable.c
+++ b/ubifs-utils/mkfs.ubifs/devtable.c
@@ -525,6 +525,7 @@ void free_devtable_info(void)
 			 */
 			hashtable_destroy(ph_elt->name_htbl, 1);
 		} while (hashtable_iterator_advance(ph_itr));
+		free(ph_itr);
 	}
 	hashtable_destroy(path_htbl, 1);
 }
diff --git a/ubifs-utils/mkfs.ubifs/mkfs.ubifs.c b/ubifs-utils/mkfs.ubifs/mkfs.ubifs.c
index 87f7b4f..4247270 100644
--- a/ubifs-utils/mkfs.ubifs/mkfs.ubifs.c
+++ b/ubifs-utils/mkfs.ubifs/mkfs.ubifs.c
@@ -2013,7 +2013,7 @@ static int add_directory(const char *dir_name, ino_t dir_inum, struct stat *st,
 	unsigned int nlink = 2;
 	struct path_htbl_element *ph_elt;
 	struct name_htbl_element *nh_elt = NULL;
-	struct hashtable_itr *itr;
+	struct hashtable_itr *itr = NULL;
 	ino_t inum;
 	unsigned char type;
 	unsigned long long dir_creat_sqnum = ++c->max_sqnum;
@@ -2218,6 +2218,7 @@ static int add_directory(const char *dir_name, ino_t dir_inum, struct stat *st,
 	return 0;
 
 out_free:
+	free(itr);
 	free(name);
 	if (existing)
 		closedir(dir);
-- 
2.21.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
