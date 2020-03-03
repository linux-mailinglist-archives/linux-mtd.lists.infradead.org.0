Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F83317727C
	for <lists+linux-mtd@lfdr.de>; Tue,  3 Mar 2020 10:34:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EC3rg2KtqWc1k0ux06Pw2vr5AFeDhvlDs1+a3b/U4TU=; b=tlFA1YCNe5xkiS
	FDr6beoQ+xFJBCegYPeLQvPONo2x1S4429P1bYF+S2fwI38++wi4nUjA2SA5Uvn/kzDats3X28XjF
	cUCW+2FmuXUluAX8cuO0bbKhldXMDRRp4oWSVPqnnzUXZpYLvSCtcw9sQUOsUQUeJRoZTz/hz7e5X
	KKvIhsKWhotZxDua39Sf3xhDtf9gNpiiS2AsggFrivW+B3QppuNL9jJVK5ZETq2+R051muM5pvqhv
	wnMF/ddiNlbUhXNEmNXd2mBIh15T2mLYTv4x2lz4sphiKPRsSKAbffI3GH6jgkVdl9+/eD+tdDDLU
	6+Br8ySJ20rW3VtXpCPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j93vz-0002gY-Ny; Tue, 03 Mar 2020 09:33:51 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j93vf-0002X5-12
 for linux-mtd@lists.infradead.org; Tue, 03 Mar 2020 09:33:32 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id A4A8367BBFF010DE1032;
 Tue,  3 Mar 2020 17:33:21 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0; Tue, 3 Mar 2020
 17:33:12 +0800
From: Zhihao Cheng <chengzhihao1@huawei.com>
To: <richard@nod.at>, <s.hauer@pengutronix.de>, <yi.zhang@huawei.com>
Subject: [PATCH 1/2] ubifs: ubifs_jnl_write_inode: Fix a memory leak bug
Date: Tue, 3 Mar 2020 17:40:22 +0800
Message-ID: <1583228423-60816-2-git-send-email-chengzhihao1@huawei.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583228423-60816-1-git-send-email-chengzhihao1@huawei.com>
References: <1583228423-60816-1-git-send-email-chengzhihao1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_013331_637027_5345DF48 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

When inodes with extended attributes are evicted, xent is not freed in one
exit branch.

Signed-off-by: Zhihao Cheng <chengzhihao1@huawei.com>
Fixes: 9ca2d732644484488db3112 ("ubifs: Limit number of xattrs per inode")
---
 fs/ubifs/journal.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/ubifs/journal.c b/fs/ubifs/journal.c
index 3bf8b1fda9d7..e5ec1afe1c66 100644
--- a/fs/ubifs/journal.c
+++ b/fs/ubifs/journal.c
@@ -905,6 +905,7 @@ int ubifs_jnl_write_inode(struct ubifs_info *c, const struct inode *inode)
 				ubifs_err(c, "dead directory entry '%s', error %d",
 					  xent->name, err);
 				ubifs_ro_mode(c, err);
+				kfree(xent);
 				goto out_release;
 			}
 			ubifs_assert(c, ubifs_inode(xino)->xattr);
-- 
2.7.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
