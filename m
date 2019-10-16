Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A78ED8D4E
	for <lists+linux-mtd@lfdr.de>; Wed, 16 Oct 2019 12:08:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tkF3pkL85b8PUM1/WCVstji+wKz6iWjabgCUyuTUUAM=; b=nNbGQlBtWW2HP4
	YWGVGh3eZ91HLZCPBtXag97S3TFGZd8s98GjWPeWW1ldycBPNP4rzvflBRdcUDuv9uh3btBwN5y9I
	Y4C0lyEkIK19kCxgQWEUu2iJ1GVzpRx5PfeVouTpgvfw2R7zHcRASV+OHUaw23fqttmhANB3qZnFq
	PjM51wjoiD6lJaUmqJztswFoR45IgCE6ohBowA5JHuN+GB6c5DqrbcHrYTO0LMOHdWLEqSsURq8jA
	obj2GiKm3zVI6K27RjUTd7C4ZZhqulJKPxAq0xIRX3wOR6YwKZnS5aidHF3a6JlBnN9u3ecZxetBi
	vCWJcX7wxeH4V28u0EmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKgE8-0007pt-Ql; Wed, 16 Oct 2019 10:08:20 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKgDx-0007pL-PJ
 for linux-mtd@lists.infradead.org; Wed, 16 Oct 2019 10:08:11 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iKgDs-0002s6-TA; Wed, 16 Oct 2019 11:08:05 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iKgDs-00084o-6a; Wed, 16 Oct 2019 11:08:04 +0100
From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] ubifs: possible missed le64_to_cpu() in journal
Date: Wed, 16 Oct 2019 11:08:03 +0100
Message-Id: <20191016100803.31003-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_030809_970387_CE6D7290 
X-CRM114-Status: GOOD (  13.14  )
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

In the ubifs_jnl_write_inode() functon, it calls ubifs_iget()
with xent->inum. The xent->inum is __le64, but the ubifs_iget()
takes native cpu endian.

I think that this should be changed to passing le64_to_cpu(xent->inum)
to fix the following sparse warning:

fs/ubifs/journal.c:902:58: warning: incorrect type in argument 2 (different base types)
fs/ubifs/journal.c:902:58:    expected unsigned long inum
fs/ubifs/journal.c:902:58:    got restricted __le64 [usertype] inum

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
index d6136f7c1cfc..388fe8f5dc51 100644
--- a/fs/ubifs/journal.c
+++ b/fs/ubifs/journal.c
@@ -899,7 +899,7 @@ int ubifs_jnl_write_inode(struct ubifs_info *c, const struct inode *inode)
 			fname_name(&nm) = xent->name;
 			fname_len(&nm) = le16_to_cpu(xent->nlen);
 
-			xino = ubifs_iget(c->vfs_sb, xent->inum);
+			xino = ubifs_iget(c->vfs_sb, le64_to_cpu(xent->inum));
 			if (IS_ERR(xino)) {
 				err = PTR_ERR(xino);
 				ubifs_err(c, "dead directory entry '%s', error %d",
-- 
2.23.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
