Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F80ADB54A
	for <lists+linux-mtd@lfdr.de>; Thu, 17 Oct 2019 19:58:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tcjw6Cok0d1QPAdZS5WapO4Oqida2jjGbLBSI2TQOwA=; b=QXw/QuGEwo4tGO
	c9ttIjnj9GHv45lDJkjc0qNJuyaYGRs1760xGcwbwHJTagmPkUkTw1u4XNI0lUSzkjC1feRexovV8
	n3VtZcrK4m1M5l1/r9PGZxs7I8oNpeFswhvlQvSD7P6gouPSD1UHlf+fAPSfc8VNFI92nQU/zZRIH
	zRq3Mp+crLZsRi+XLRxQpfMt7HB26iyZKU+BkSSABqbsi9Dwk7yBiIfjO0d2VFkCGv7aefP+VT/gO
	DWa5akYy84gqaUFjdql1Ly+Vub1zYoRKp306+5VPFTxIoanPxsNQO/Hr4pQOmVEZWjuZDuteQiD7b
	Fi/Uo+2INhPSFqgMaTMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLA32-0002n5-F4; Thu, 17 Oct 2019 17:58:52 +0000
Received: from [2001:4bb8:18c:d7b:c70:4a89:bc61:3] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL9rI-0006GX-Ff; Thu, 17 Oct 2019 17:46:44 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 17/21] lib: provide a simple generic ioremap implementation
Date: Thu, 17 Oct 2019 19:45:50 +0200
Message-Id: <20191017174554.29840-18-hch@lst.de>
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

A lot of architectures reuse the same simple ioremap implementation, so
start lifting the most simple variant to lib/ioremap.c.  It provides
ioremap_prot and iounmap, plus a default ioremap that uses prot_noncached,
although that can be overridden by asm/io.h.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/asm-generic/io.h | 20 ++++++++++++++++----
 lib/Kconfig              |  3 +++
 lib/ioremap.c            | 39 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 58 insertions(+), 4 deletions(-)

diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
index 4e45e1cb6560..4a661fdd1937 100644
--- a/include/asm-generic/io.h
+++ b/include/asm-generic/io.h
@@ -923,9 +923,10 @@ static inline void *phys_to_virt(unsigned long address)
  * DOC: ioremap() and ioremap_*() variants
  *
  * Architectures with an MMU are expected to provide ioremap() and iounmap()
- * themselves.  For NOMMU architectures we provide a default nop-op
- * implementation that expect that the physical address used for MMIO are
- * already marked as uncached, and can be used as kernel virtual addresses.
+ * themselves or rely on GENERIC_IOREMAP.  For NOMMU architectures we provide
+ * a default nop-op implementation that expect that the physical address used
+ * for MMIO are already marked as uncached, and can be used as kernel virtual
+ * addresses.
  *
  * ioremap_wc() and ioremap_wt() can provide more relaxed caching attributes
  * for specific drivers if the architecture choses to implement them.  If they
@@ -946,7 +947,18 @@ static inline void iounmap(void __iomem *addr)
 {
 }
 #endif
-#endif /* CONFIG_MMU */
+#elif defined(CONFIG_GENERIC_IOREMAP)
+#include <asm/pgtable.h>
+
+void __iomem *ioremap_prot(phys_addr_t addr, size_t size, unsigned long prot);
+void iounmap(volatile void __iomem *addr);
+
+static inline void __iomem *ioremap(phys_addr_t addr, size_t size)
+{
+	/* _PAGE_IOREMAP needs to be supplied by the architecture */
+	return ioremap_prot(addr, size, _PAGE_IOREMAP);
+}
+#endif /* !CONFIG_MMU || CONFIG_GENERIC_IOREMAP */
 
 #ifndef ioremap_nocache
 #define ioremap_nocache ioremap
diff --git a/lib/Kconfig b/lib/Kconfig
index 183f92a297ca..afc78aaf2b25 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -638,6 +638,9 @@ config STRING_SELFTEST
 
 endmenu
 
+config GENERIC_IOREMAP
+	bool
+
 config GENERIC_LIB_ASHLDI3
 	bool
 
diff --git a/lib/ioremap.c b/lib/ioremap.c
index 0a2ffadc6d71..3f0e18543de8 100644
--- a/lib/ioremap.c
+++ b/lib/ioremap.c
@@ -231,3 +231,42 @@ int ioremap_page_range(unsigned long addr,
 
 	return err;
 }
+
+#ifdef CONFIG_GENERIC_IOREMAP
+void __iomem *ioremap_prot(phys_addr_t addr, size_t size, unsigned long prot)
+{
+	unsigned long offset, vaddr;
+	phys_addr_t last_addr;
+	struct vm_struct *area;
+
+	/* Disallow wrap-around or zero size */
+	last_addr = addr + size - 1;
+	if (!size || last_addr < addr)
+		return NULL;
+
+	/* Page-align mappings */
+	offset = addr & (~PAGE_MASK);
+	addr -= offset;
+	size = PAGE_ALIGN(size + offset);
+
+	area = get_vm_area_caller(size, VM_IOREMAP,
+			__builtin_return_address(0));
+	if (!area)
+		return NULL;
+	vaddr = (unsigned long)area->addr;
+
+	if (ioremap_page_range(vaddr, vaddr + size, addr, __pgprot(prot))) {
+		free_vm_area(area);
+		return NULL;
+	}
+
+	return (void __iomem *)(vaddr + offset);
+}
+EXPORT_SYMBOL(ioremap_prot);
+
+void iounmap(volatile void __iomem *addr)
+{
+	vunmap((void *)((unsigned long)addr & PAGE_MASK));
+}
+EXPORT_SYMBOL(iounmap);
+#endif /* CONFIG_GENERIC_IOREMAP */
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
