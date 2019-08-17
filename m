Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE6A90F15
	for <lists+linux-mtd@lfdr.de>; Sat, 17 Aug 2019 09:51:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qtXhFtZgrlgz3vgAqss40FYXqf2CUraIsMxsEb9xDtw=; b=rJlh1Y4zcbtKON
	EMukG6eF8dsTw9QnhjLJToJZwuXKVwH0ONpt0tKTKG6YRxztqiPo22KSrPX0NhLcr4ZXRxdOp6KoJ
	r7i7jNZrzh1zBSBdxF8Sb9pbHvlMQTEcdOgGFzvEeVa/xp8vbi065D7rQMbflAs8z/M01PzgYX106
	/V/+Paf37i6YgyvHKuU4rdBGnbK4HTVrgT/2AK2hgMxabHN1qTObdLLgE/14Yt36msz+shUgNuQ4X
	iz3UNkazNQ9J/Jqv/zHa4YpRIDfw2Pl0QwO8Hp6g9FmhSqO2JPqXXvBKB0rONz9wRZaBAdGnwA0EY
	OpcOFD7skwdchlh9sAgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hytUx-0000Ds-PH; Sat, 17 Aug 2019 07:51:39 +0000
Received: from [2001:4bb8:18c:28b5:44f9:d544:957f:32cb] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hytS3-0004wM-1D; Sat, 17 Aug 2019 07:48:39 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 10/26] nios2: remove __ioremap
Date: Sat, 17 Aug 2019 09:32:37 +0200
Message-Id: <20190817073253.27819-11-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190817073253.27819-1-hch@lst.de>
References: <20190817073253.27819-1-hch@lst.de>
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

The cacheflag argument to __ioremap is always 0, so just implement
ioremap directly.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/nios2/include/asm/io.h | 20 ++++----------------
 arch/nios2/mm/ioremap.c     | 17 +++--------------
 2 files changed, 7 insertions(+), 30 deletions(-)

diff --git a/arch/nios2/include/asm/io.h b/arch/nios2/include/asm/io.h
index 9010243077ab..74ab34aa6731 100644
--- a/arch/nios2/include/asm/io.h
+++ b/arch/nios2/include/asm/io.h
@@ -25,29 +25,17 @@
 #define writew_relaxed(x, addr)	writew(x, addr)
 #define writel_relaxed(x, addr)	writel(x, addr)
 
-extern void __iomem *__ioremap(unsigned long physaddr, unsigned long size,
-			unsigned long cacheflag);
+void __iomem *ioremap(unsigned long physaddr, unsigned long size);
 extern void __iounmap(void __iomem *addr);
 
-static inline void __iomem *ioremap(unsigned long physaddr, unsigned long size)
-{
-	return __ioremap(physaddr, size, 0);
-}
-
-static inline void __iomem *ioremap_nocache(unsigned long physaddr,
-						unsigned long size)
-{
-	return __ioremap(physaddr, size, 0);
-}
-
 static inline void iounmap(void __iomem *addr)
 {
 	__iounmap(addr);
 }
 
-#define ioremap_nocache ioremap_nocache
-#define ioremap_wc ioremap_nocache
-#define ioremap_wt ioremap_nocache
+#define ioremap_nocache ioremap
+#define ioremap_wc ioremap
+#define ioremap_wt ioremap
 
 /* Pages to physical address... */
 #define page_to_phys(page)	virt_to_phys(page_to_virt(page))
diff --git a/arch/nios2/mm/ioremap.c b/arch/nios2/mm/ioremap.c
index 3a28177a01eb..7a1a27f3daa3 100644
--- a/arch/nios2/mm/ioremap.c
+++ b/arch/nios2/mm/ioremap.c
@@ -112,8 +112,7 @@ static int remap_area_pages(unsigned long address, unsigned long phys_addr,
 /*
  * Map some physical address range into the kernel address space.
  */
-void __iomem *__ioremap(unsigned long phys_addr, unsigned long size,
-			unsigned long cacheflag)
+void __iomem *ioremap(unsigned long phys_addr, unsigned long size)
 {
 	struct vm_struct *area;
 	unsigned long offset;
@@ -139,15 +138,6 @@ void __iomem *__ioremap(unsigned long phys_addr, unsigned long size,
 				return NULL;
 	}
 
-	/*
-	 * Map uncached objects in the low part of address space to
-	 * CONFIG_NIOS2_IO_REGION_BASE
-	 */
-	if (IS_MAPPABLE_UNCACHEABLE(phys_addr) &&
-	    IS_MAPPABLE_UNCACHEABLE(last_addr) &&
-	    !(cacheflag & _PAGE_CACHED))
-		return (void __iomem *)(CONFIG_NIOS2_IO_REGION_BASE + phys_addr);
-
 	/* Mappings have to be page-aligned */
 	offset = phys_addr & ~PAGE_MASK;
 	phys_addr &= PAGE_MASK;
@@ -158,14 +148,13 @@ void __iomem *__ioremap(unsigned long phys_addr, unsigned long size,
 	if (!area)
 		return NULL;
 	addr = area->addr;
-	if (remap_area_pages((unsigned long) addr, phys_addr, size,
-		cacheflag)) {
+	if (remap_area_pages((unsigned long) addr, phys_addr, size, 0)) {
 		vunmap(addr);
 		return NULL;
 	}
 	return (void __iomem *) (offset + (char *)addr);
 }
-EXPORT_SYMBOL(__ioremap);
+EXPORT_SYMBOL(ioremap);
 
 /*
  * __iounmap unmaps nearly everything, so be careful
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
