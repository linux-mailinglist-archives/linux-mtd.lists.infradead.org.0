Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBE21C99DE
	for <lists+linux-mtd@lfdr.de>; Thu,  7 May 2020 20:51:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y4wViwuaOlIzGpHKFQJBoV9Mi4oT0t4Gjxd6Jz9rr2c=; b=b6hTTVRwUn4WPA
	dgRxkNr6pLWLjP4h2QvgadObbQfHYZOG4NgwgrRxwyI5+2lQwsur42hq/rF6cP3UomaCBTTYR8XzB
	1okmnpRK1+D1V2eSTQXuxSOh5A68/JPk5fQj2NImr6ZJzaswL7N4k7BG93KQl/z/dm+pyg8VIERqo
	mu7J03o4RxMFOFfI1XAOppw0stCrKVhPb/pOqbKvTRRRuEEHATVovXBQxydmt7QwTAITzsn2NSIQi
	Jq7Q8EuH4wVHpi72k8BmGAm6k3pulxG/xJc7HEdgFfpHtCCbBykG39bMikgXP5TDGB3DzvOyFJwfF
	X7sNib7wUxXGzD2x/fIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWlcS-0007Sp-Jf; Thu, 07 May 2020 18:51:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWlcH-0007S6-O5
 for linux-mtd@lists.infradead.org; Thu, 07 May 2020 18:51:32 +0000
Received: from embeddedor (unknown [189.207.59.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 09BEA24957;
 Thu,  7 May 2020 18:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588877489;
 bh=jpe2+TjrMnwu2H2dyg8faPNc4w8u0PpZiuofrEf/xT4=;
 h=Date:From:To:Cc:Subject:From;
 b=hz8cQChXh4vf4srecpx8AKf9ARB4tro3ux3p9bC04rzou9lBEqxu5pkbcV3YwAtr2
 XUwYFhyS8iTI6CUN6Q+S9Uc74jYWdfW+65avnCLWTDVyt3HsikQ5A5dw0XkdBBQl+x
 oPrZRUZlVP/L2sy9TBxninEpu8ywVfKmb8NKsai0=
Date: Thu, 7 May 2020 13:55:55 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: David Woodhouse <dwmw2@infradead.org>, Richard Weinberger <richard@nod.at>
Subject: [PATCH] jffs2: Replace zero-length array with flexible-array
Message-ID: <20200507185555.GA14739@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_115130_933953_2066C63C 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The current codebase makes use of the zero-length array language
extension to the C90 standard, but the preferred mechanism to declare
variable-length types such as these ones is a flexible array member[1][2],
introduced in C99:

struct foo {
        int stuff;
        struct boo array[];
};

By making use of the mechanism above, we will get a compiler warning
in case the flexible array does not occur last in the structure, which
will help us prevent some kind of undefined behavior bugs from being
inadvertently introduced[3] to the codebase from now on.

Also, notice that, dynamic memory allocations won't be affected by
this change:

"Flexible array members have incomplete type, and so the sizeof operator
may not be applied. As a quirk of the original implementation of
zero-length arrays, sizeof evaluates to zero."[1]

sizeof(flexible-array-member) triggers a warning because flexible array
members have incomplete type[1]. There are some instances of code in
which the sizeof operator is being incorrectly/erroneously applied to
zero-length arrays and the result is zero. Such instances may be hiding
some bugs. So, this work (flexible-array member conversions) will also
help to get completely rid of those sorts of issues.

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 fs/jffs2/nodelist.h |    2 +-
 fs/jffs2/summary.h  |    4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/jffs2/nodelist.h b/fs/jffs2/nodelist.h
index 0637271f3770..8ff4d1a1e774 100644
--- a/fs/jffs2/nodelist.h
+++ b/fs/jffs2/nodelist.h
@@ -259,7 +259,7 @@ struct jffs2_full_dirent
 	uint32_t ino; /* == zero for unlink */
 	unsigned int nhash;
 	unsigned char type;
-	unsigned char name[0];
+	unsigned char name[];
 };
 
 /*
diff --git a/fs/jffs2/summary.h b/fs/jffs2/summary.h
index 60207a2ae952..e4131cb1f1d4 100644
--- a/fs/jffs2/summary.h
+++ b/fs/jffs2/summary.h
@@ -61,7 +61,7 @@ struct jffs2_sum_dirent_flash
 	jint32_t ino; 		/* == zero for unlink */
 	uint8_t nsize;		/* dirent name size */
 	uint8_t type;		/* dirent type */
-	uint8_t name[0];	/* dirent name */
+	uint8_t name[];	/* dirent name */
 } __attribute__((packed));
 
 struct jffs2_sum_xattr_flash
@@ -117,7 +117,7 @@ struct jffs2_sum_dirent_mem
 	jint32_t ino; 		/* == zero for unlink */
 	uint8_t nsize;		/* dirent name size */
 	uint8_t type;		/* dirent type */
-	uint8_t name[0];	/* dirent name */
+	uint8_t name[];	/* dirent name */
 } __attribute__((packed));
 
 struct jffs2_sum_xattr_mem


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
