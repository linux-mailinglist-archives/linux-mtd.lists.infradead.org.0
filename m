Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A2BDB4AD
	for <lists+linux-mtd@lfdr.de>; Thu, 17 Oct 2019 19:48:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JL8ytjHeiJuzOHdqmJa0qjk7rRXKo4eSCKOz0Gi2Rao=; b=RT8yxgUZ1WHahX
	G9EO0ajb3uf/vHTZIN1kj/ljtakniN23HzCJ3JKDuyR2SjkZIH7g5p2itOkk299nUdMaGmhjQxQSb
	k70PpJjNwmRcgOLG5jt0LfkRLdjdOWIp0oZJ/Y9rki/uu84C61ems+XMskVv8ex8MI9hWRmfYGIVO
	bIO9xMlhLBGu26LcxQBjbYURaFklH7ohCB06ucKBDnMuNiqqCzfQLEU+8K8+pWonWv0o+mMk+tDij
	zyKz2bomBwZFwLmSy2gD362aenN4syGDz0XPNmqcc0Pw7FpF3oL5+sOJIs4tdHbiYYXMuOQ9vvFTq
	0LOnDgzDFFnq0ZDOc6iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL9sy-0007Vf-DL; Thu, 17 Oct 2019 17:48:28 +0000
Received: from [2001:4bb8:18c:d7b:c70:4a89:bc61:3] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL9qb-0005Rn-DA; Thu, 17 Oct 2019 17:46:01 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 02/21] unicore32: remove ioremap_cached
Date: Thu, 17 Oct 2019 19:45:35 +0200
Message-Id: <20191017174554.29840-3-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191017174554.29840-1-hch@lst.de>
References: <20191017174554.29840-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-ia64@vger.kernel.org, linux-parisc@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-hexagon@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, linux-mtd@lists.infradead.org,
 linux-alpha@vger.kernel.org, sparclinux@vger.kernel.org,
 nios2-dev@lists.rocketboards.org, linux-riscv@lists.infradead.org,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

No users of ioremap_cached are left, remove it.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/unicore32/include/asm/io.h | 4 +---
 arch/unicore32/mm/ioremap.c     | 8 --------
 2 files changed, 1 insertion(+), 11 deletions(-)

diff --git a/arch/unicore32/include/asm/io.h b/arch/unicore32/include/asm/io.h
index c71aa4b95996..4b460e01acfa 100644
--- a/arch/unicore32/include/asm/io.h
+++ b/arch/unicore32/include/asm/io.h
@@ -18,10 +18,9 @@
 #include <asm-generic/io.h>
 
 /*
- * __uc32_ioremap and __uc32_ioremap_cached takes CPU physical address.
+ * __uc32_ioremap takes CPU physical address.
  */
 extern void __iomem *__uc32_ioremap(unsigned long, size_t);
-extern void __iomem *__uc32_ioremap_cached(unsigned long, size_t);
 extern void __uc32_iounmap(volatile void __iomem *addr);
 
 /*
@@ -32,7 +31,6 @@ extern void __uc32_iounmap(volatile void __iomem *addr);
  *
  */
 #define ioremap(cookie, size)		__uc32_ioremap(cookie, size)
-#define ioremap_cached(cookie, size)	__uc32_ioremap_cached(cookie, size)
 #define ioremap_nocache(cookie, size)	__uc32_ioremap(cookie, size)
 #define iounmap(cookie)			__uc32_iounmap(cookie)
 
diff --git a/arch/unicore32/mm/ioremap.c b/arch/unicore32/mm/ioremap.c
index cf6d656f240c..46a64bd6156a 100644
--- a/arch/unicore32/mm/ioremap.c
+++ b/arch/unicore32/mm/ioremap.c
@@ -220,14 +220,6 @@ __uc32_ioremap(unsigned long phys_addr, size_t size)
 }
 EXPORT_SYMBOL(__uc32_ioremap);
 
-void __iomem *
-__uc32_ioremap_cached(unsigned long phys_addr, size_t size)
-{
-	return __uc32_ioremap_caller(phys_addr, size, MT_DEVICE_CACHED,
-			__builtin_return_address(0));
-}
-EXPORT_SYMBOL(__uc32_ioremap_cached);
-
 void __uc32_iounmap(volatile void __iomem *io_addr)
 {
 	void *addr = (void *)(PAGE_MASK & (unsigned long)io_addr);
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
