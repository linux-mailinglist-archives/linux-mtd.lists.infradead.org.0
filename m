Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFCE22B8A
	for <lists+linux-mtd@lfdr.de>; Mon, 20 May 2019 07:58:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3zGQUw30mfuKUKm4eszxsZW+iVvGU2l1wV8zRwP0Elg=; b=PZxqn86Kgw/QkE
	6RohwmJF7K1/IZORIaNJjO4GImugMRu2KNpHxtQztZswsdK4Ubhz1b4XAq5tLdmdFcgTHEFbGeU7H
	58wnJj26lgUVaJgZByRDEbq8bMLkz8lCeSGf/JnKMhbUSBx2XYIOjJu06xxDxj72WpNFTY/OQwupB
	0D1dcWs9iB5rB8e6XtldRBHVJyv35EkVPRH61oTqxSLKWxVQh8Jd86cYKoYEwrHGpJLBeUpQmyjUe
	WPtT1rNd+Pcrz+1fZH8wsiXLA8JKYqlVR/3PHdPG0X/3LRPhbhbA+/7WYm9OfpVmlNrWhdxdrXcGB
	TdR+v3GLo2Q1tQ5stTjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSbJq-0006N4-Js; Mon, 20 May 2019 05:58:42 +0000
Received: from 089144206147.atnat0015.highway.bob.at ([89.144.206.147]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSbJa-0006Eo-Oh; Mon, 20 May 2019 05:58:28 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 1/4] mm: fix an overly long line in read_cache_page
Date: Mon, 20 May 2019 07:57:28 +0200
Message-Id: <20190520055731.24538-2-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520055731.24538-1-hch@lst.de>
References: <20190520055731.24538-1-hch@lst.de>
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
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 mm/filemap.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/mm/filemap.c b/mm/filemap.c
index c5af80c43d36..6a8048477bc6 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -2862,7 +2862,8 @@ struct page *read_cache_page(struct address_space *mapping,
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
