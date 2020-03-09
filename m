Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D76817E695
	for <lists+linux-mtd@lfdr.de>; Mon,  9 Mar 2020 19:15:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QtHFNS8vRNcdXmfbZHfBa+p1Kwy1CjfCe1JlfQIj1lQ=; b=qRySGfgweTVjrW
	ATsBMyUNWXEOCBXEMG4CaNaP0+FbqG+HqJ0gdVrx5wrQLu84MGSnAgoujHMAiCDMd+nBKSABMzjOJ
	8L0Dt9B5JnXIYNMlJLv90AjaRhvn+Kpl1VwYnlKMIvcvj8Ko6jxpmiiag0WnmenkUYUBgEX86ckKp
	7Y7KGzF0ms89C6Sb46vhSQ+KwyiFSdtg6d+kK8ttwV6hyjlWR7QTGWXYm7/caxkXLSsxas9Uchk5F
	VM3fiS6Dww+Xf8GSactRn4OjuH6PMTNvcIZggDk/k8wM5kf0FQkFR1p62CA/9t+hemSUIoSAST94o
	DNWBlplO9IrP44n90ZXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBMvs-0007uM-2D; Mon, 09 Mar 2020 18:15:16 +0000
Received: from gateway23.websitewelcome.com ([192.185.50.107])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBMvE-0007R1-2s
 for linux-mtd@lists.infradead.org; Mon, 09 Mar 2020 18:14:37 +0000
Received: from cm17.websitewelcome.com (cm17.websitewelcome.com [100.42.49.20])
 by gateway23.websitewelcome.com (Postfix) with ESMTP id 2BED4C51B
 for <linux-mtd@lists.infradead.org>; Mon,  9 Mar 2020 13:14:22 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id BMuxjWnixAGTXBMuxjyZux; Mon, 09 Mar 2020 13:14:22 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vYQCUGL8WumeOljv/tFtg8GMy2fmDWSq54tfp3yvR1k=; b=JlJqa8bMCe6Uu467Ig6hPMZ6Xa
 Y9J2KXLqm8ZydzgY2DSlqdugt9OUFmN5pudvQRxXp7lOviaHe/43Nlt2wOe6uCs29v4rKmEWDIIBW
 MW1+HAOp8rVwpFc4X72dx/mM1EJLHI6JNcPweXxKrwhXc3QWVIu+Wv5lXX5XARDD4GTGLapNZ6yf/
 qPeAGQVllAJuQPCLvgTR3wnZALj0rHax1hB91T+XBIiWfUuL4ia6r7TAmZwhIERl4mxfiigP/jnze
 z11Mu7IYSLup0UgNh5qiPgS9ih4PkaurO/YJb9dxtlzpRKVN4JtVNgDQCMvJH2X18GWObCqWEqXro
 mgSTByvw==;
Received: from [201.162.240.150] (port=16463 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1jBMuv-004Hez-7K; Mon, 09 Mar 2020 13:14:17 -0500
Date: Mon, 9 Mar 2020 13:17:29 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: David Woodhouse <dwmw2@infradead.org>, Richard Weinberger <richard@nod.at>
Subject: [PATCH][next] jffs2: nodelist.h: Replace zero-length array with
 flexible-array member
Message-ID: <20200309181729.GA4420@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 201.162.240.150
X-Source-L: No
X-Exim-ID: 1jBMuv-004Hez-7K
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [201.162.240.150]:16463
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 19
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_111436_290826_B8FDF3F2 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.50.107 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
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

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 fs/jffs2/nodelist.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

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
-- 
2.25.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
