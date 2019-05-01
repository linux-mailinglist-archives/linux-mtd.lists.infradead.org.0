Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFB710AA5
	for <lists+linux-mtd@lfdr.de>; Wed,  1 May 2019 18:07:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3IDY3cbXX+y7mCBo9KCjnvUBLt3vKikU/zV6t4A0lws=; b=RhdU3mwA0dNrhC
	8mDX66Pbxv2Kb4MpeVOTHD9l22eokxy/R9TIx91/UUrjeJPE1IjBwg9N91pN1ar75GHuNAowg+oW7
	qqEvJRbxIghbNzsjygQuP3C84hYKfczXnGuptuT0y1KangBiCfgIAyCPszEqEpyTtMQpbbdEoAfXK
	yS8QHEDmGw4W0lWCjQKgNHRHS8fZAN9hZJn/esFuuKnaG5DoiJG3xE0XqHyOwOxFtCPwEibKOspr0
	FprT6MZBDztZkccPH2ntELaXB4dsav4InUGjKDNi4gxhDAulpZcRfHRFRaxWOjveqrPkpkobq4AxP
	2SgFQNtI/nRBmbgTCMJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrlm-0000LC-A0; Wed, 01 May 2019 16:07:42 +0000
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLrlM-0008L9-Sy; Wed, 01 May 2019 16:07:17 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 2/4] mm: don't cast ->readpage to filler_t for
 do_read_cache_page
Date: Wed,  1 May 2019 12:06:34 -0400
Message-Id: <20190501160636.30841-3-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501160636.30841-1-hch@lst.de>
References: <20190501160636.30841-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: linux-nfs@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-mtd@lists.infradead.org,
 Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

We can just pass a NULL filler and do the right thing inside of
do_read_cache_page based on the NULL parameter.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/pagemap.h |  3 +--
 mm/filemap.c            | 10 ++++++----
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index bcf909d0de5f..f52c3a2074cd 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -386,8 +386,7 @@ extern int read_cache_pages(struct address_space *mapping,
 static inline struct page *read_mapping_page(struct address_space *mapping,
 				pgoff_t index, void *data)
 {
-	filler_t *filler = (filler_t *)mapping->a_ops->readpage;
-	return read_cache_page(mapping, index, filler, data);
+	return read_cache_page(mapping, index, NULL, data);
 }
 
 /*
diff --git a/mm/filemap.c b/mm/filemap.c
index a2fc59f56f50..51f5b02c299a 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -2866,7 +2866,11 @@ static struct page *do_read_cache_page(struct address_space *mapping,
 		}
 
 filler:
-		err = filler(data, page);
+		if (filler)
+			err = filler(data, page);
+		else
+			err = mapping->a_ops->readpage(data, page);
+
 		if (err < 0) {
 			put_page(page);
 			return ERR_PTR(err);
@@ -2978,9 +2982,7 @@ struct page *read_cache_page_gfp(struct address_space *mapping,
 				pgoff_t index,
 				gfp_t gfp)
 {
-	filler_t *filler = (filler_t *)mapping->a_ops->readpage;
-
-	return do_read_cache_page(mapping, index, filler, NULL, gfp);
+	return do_read_cache_page(mapping, index, NULL, NULL, gfp);
 }
 EXPORT_SYMBOL(read_cache_page_gfp);
 
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
