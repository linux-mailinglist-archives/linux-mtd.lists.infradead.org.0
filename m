Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EFD610A9E
	for <lists+linux-mtd@lfdr.de>; Wed,  1 May 2019 18:07:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H5sGdt8mZTdSMk66SemR7bxqcoLihqz+hSXNygOzizk=; b=FZDQU62u9kMJxX
	Q2HfDnNJI4WGwSTA8pg+BDG7tRQQMul9+zxqLmsjloL5vJsm+V7K4ACoCQ7fMA+H4g9bkIrdy/QT2
	sAvY32YrrM0nA/8pxUOZ7DLeN+2suqXjqtyDAmrYH1do0WkUCUi8ump1gVHcwrLlZT76jHUwEVf53
	3ITJsCezynQ9hwiDXWGjF8bg1nOZHFsh0QHp6fU6f4cwBfU5hSD1OI09b90pRz0q8Zg+Tyvdh4EFB
	iNjZoQ5Y2gMDh6pRbc0b7dRwwJhl/+g+ECRLkldlZNlGVAb5lu81gBuy+iwwka94Vh06ylazR5kSM
	HVE8tIMDwN4vyY8+WznA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrlZ-0008TC-ES; Wed, 01 May 2019 16:07:29 +0000
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLrlL-0008Kv-Eh; Wed, 01 May 2019 16:07:15 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 1/4] mm: fix an overly long line in read_cache_page
Date: Wed,  1 May 2019 12:06:33 -0400
Message-Id: <20190501160636.30841-2-hch@lst.de>
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

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 mm/filemap.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/mm/filemap.c b/mm/filemap.c
index d78f577baef2..a2fc59f56f50 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -2956,7 +2956,8 @@ struct page *read_cache_page(struct address_space *mapping,
 				int (*filler)(void *, struct page *),
 				void *data)
 {
-	return do_read_cache_page(mapping, index, filler, data, mapping_gfp_mask(mapping));
+	return do_read_cache_page(mapping, index, filler, data,
+			mapping_gfp_mask(mapping));
 }
 EXPORT_SYMBOL(read_cache_page);
 
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
