Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 813E7D8D38
	for <lists+linux-mtd@lfdr.de>; Wed, 16 Oct 2019 12:04:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e47PWjFParsnzLV9D2nHmi5wuss+IispYYXnRoeL0gM=; b=AekXQ3mRyquBmo
	fdl+kjMJbZCJgHqo2GcXCt/8lxf2rwwQm95MgmxlDPfDHD510Il6wCZdNvbcmK+hQYC5LG3eZDoU9
	3CFoqL0QwbQdnEtR56AQxZw9IxKD5B2EPujMIQx0xMPlr8fVKuD0KraS1HJuvlX4JgcvA+Zy30Ury
	IRJiNFJlwNV/sHw9/O5toqKuOaEw7GaSGmvP8bbqsZcDgXG6NM6pRIe/x1ayHbs0BmR+0btved+xi
	8+1TYbHcjxa9CxsJfPgixFwjLZAEqT+Y8zjwdn7bqW+2LLsZmos3udNIETbKdHViojPYGMWpAZdEf
	c13JAeO/DIhRQdJuUcRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKgAO-0005d6-RU; Wed, 16 Oct 2019 10:04:28 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKgAH-0005ca-1I
 for linux-mtd@lists.infradead.org; Wed, 16 Oct 2019 10:04:22 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iKgA8-0002jl-As; Wed, 16 Oct 2019 11:04:12 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iKgA7-0004VB-RR; Wed, 16 Oct 2019 11:04:11 +0100
From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] ubifs: force prandom result to __le32
Date: Wed, 16 Oct 2019 11:04:09 +0100
Message-Id: <20191016100409.17262-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_030421_224721_19C7B4A4 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Artem Bityutskiy <dedekind1@gmail.com>, Richard Weinberger <richard@nod.at>,
 Adrian Hunter <adrian.hunter@intel.com>, linux-kernel@vger.kernel.org,
 "Ben Dooks \(Codethink\)" <ben.dooks@codethink.co.uk>,
 linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

In set_dent_cookie() the result of prandom_u32() is
assinged to an __le32 type. Make this a forced conversion
to remove the following sparse warning:

fs/ubifs/journal.c:506:30: warning: incorrect type in assignment (different base types)
fs/ubifs/journal.c:506:30:    expected restricted __le32 [usertype] cookie
fs/ubifs/journal.c:506:30:    got unsigned int

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Richard Weinberger <richard@nod.at>
Cc: Artem Bityutskiy <dedekind1@gmail.com>
Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: linux-mtd@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 fs/ubifs/journal.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ubifs/journal.c b/fs/ubifs/journal.c
index 4fd9683b8245..d6136f7c1cfc 100644
--- a/fs/ubifs/journal.c
+++ b/fs/ubifs/journal.c
@@ -503,7 +503,7 @@ static void mark_inode_clean(struct ubifs_info *c, struct ubifs_inode *ui)
 static void set_dent_cookie(struct ubifs_info *c, struct ubifs_dent_node *dent)
 {
 	if (c->double_hash)
-		dent->cookie = prandom_u32();
+		dent->cookie = (__force __le32) prandom_u32();
 	else
 		dent->cookie = 0;
 }
-- 
2.23.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
