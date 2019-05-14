Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 712151CFA6
	for <lists+linux-mtd@lfdr.de>; Tue, 14 May 2019 21:11:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gGe7jLdGfhTIj01trSdaGtFGrDl59E76Tc6LSu1Iiqw=; b=axTRlKiqbdGSP0CPDOKqaRauDX
	HqllySB2acM7cqbVqfkt04WkhwfUy4zH9pHoenKllPvOrgq581ybZLmqV6zzdrH1HBo0qHGJu5NJA
	EJDj92Lo9Z8J3BWn80VG9YzT/U7dHjO7ReGLBCnyT1/E2bdXmohn9wqOJN8knART4aoL/lCQSSWOT
	3p5XOCaeP1qEvp4ygXrVyu0Ixsn/WCVjmKg6AzmbP6EzNDnX0WAw9cWGePl+YXHTzejL8YJO6ENZC
	q2Dj/Hu4jmhMc0eJavnUNoABMj6VbgTUh+TOPXUqHVCgb+vRrQtZpUvUTVo9AURG1/3FjkhjNeHbt
	cxFdpJWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQcpj-00046d-HQ; Tue, 14 May 2019 19:11:27 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQcpS-0003xS-JQ
 for linux-mtd@lists.infradead.org; Tue, 14 May 2019 19:11:12 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id 15C951809AD8D;
 Tue, 14 May 2019 21:11:04 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 2/2] ubifs: Convert xattr inum  to host order
Date: Tue, 14 May 2019 21:10:50 +0200
Message-Id: <20190514191050.13181-2-richard@nod.at>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190514191050.13181-1-richard@nod.at>
References: <20190514191050.13181-1-richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_121110_855798_E03CDFCD 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

UBIFS stores inode numbers as LE64 integers.
We have to convert them to host oder, otherwise
BE hosts won't be able to use the integer correctly.

Reported-by: kbuild test robot <lkp@intel.com>
Fixes: 9ca2d7326444 ("ubifs: Limit number of xattrs per inode")
Signed-off-by: Richard Weinberger <richard@nod.at>
---
 fs/ubifs/xattr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ubifs/xattr.c b/fs/ubifs/xattr.c
index acab3181ab35..bcfed27e8997 100644
--- a/fs/ubifs/xattr.c
+++ b/fs/ubifs/xattr.c
@@ -527,7 +527,7 @@ int ubifs_purge_xattrs(struct inode *host)
 		fname_name(&nm) = xent->name;
 		fname_len(&nm) = le16_to_cpu(xent->nlen);
 
-		xino = ubifs_iget(c->vfs_sb, xent->inum);
+		xino = ubifs_iget(c->vfs_sb, le64_to_cpu(xent->inum));
 		if (IS_ERR(xino)) {
 			err = PTR_ERR(xino);
 			ubifs_err(c, "dead directory entry '%s', error %d",
-- 
2.16.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
