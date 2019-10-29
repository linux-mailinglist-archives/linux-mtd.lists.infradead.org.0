Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D9DE8193
	for <lists+linux-mtd@lfdr.de>; Tue, 29 Oct 2019 07:55:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hjZ5cH95xZCf9B3+EKufagh5N22TvxiXvgNsW4V2H58=; b=eQqYfgQf5PmW9w
	MIdes0TtzV2PUJz/i3DRwFJoFFZOoUMWgB1/uUH6WR+1LKzmKiIif+fWmyUdFFvjmd9l+0XFRXRn8
	/jQJWc/p8lZH7iMUXgClunaD+sWtjb/jjZPsqa/s/oPMsC8noOtGgPkbEFZ1oceFxSMcigjKfQvLh
	EjhQFCU3QC2JGr06TC9xzdxgYI17DhEaXL6wSiQdlNz/OeazpXfRhquQcjcaTaQgtFHp47STLlOVm
	y+AvKc5z57rGCQx9MsR+BQVt9Uu0IGbBGU5LICfmt7ZU/BRbHFqr0on+/S26zm5r+h2wGVa9l1axu
	Vf1HUm1xZhx7o46FQpRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPLPx-0003jQ-Bp; Tue, 29 Oct 2019 06:55:49 +0000
Received: from [2001:4bb8:18c:c7d:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPLJJ-0003WJ-Mb; Tue, 29 Oct 2019 06:48:58 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 07/21] parisc: remove __ioremap
Date: Tue, 29 Oct 2019 07:48:20 +0100
Message-Id: <20191029064834.23438-8-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029064834.23438-1-hch@lst.de>
References: <20191029064834.23438-1-hch@lst.de>
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

__ioremap is always called with the _PAGE_NO_CACHE, so fold the whole
thing and rename it to ioremap.  This also allows to remove the special
EISA quirk to force _PAGE_NO_CACHE.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/parisc/include/asm/io.h | 11 +----------
 arch/parisc/mm/ioremap.c     | 10 ++++------
 2 files changed, 5 insertions(+), 16 deletions(-)

diff --git a/arch/parisc/include/asm/io.h b/arch/parisc/include/asm/io.h
index 93d37010b375..46212b52c23e 100644
--- a/arch/parisc/include/asm/io.h
+++ b/arch/parisc/include/asm/io.h
@@ -127,16 +127,7 @@ static inline void gsc_writeq(unsigned long long val, unsigned long addr)
 /*
  * The standard PCI ioremap interfaces
  */
-
-extern void __iomem * __ioremap(unsigned long offset, unsigned long size, unsigned long flags);
-
-/* Most machines react poorly to I/O-space being cacheable... Instead let's
- * define ioremap() in terms of ioremap_nocache().
- */
-static inline void __iomem * ioremap(unsigned long offset, unsigned long size)
-{
-	return __ioremap(offset, size, _PAGE_NO_CACHE);
-}
+void __iomem *ioremap(unsigned long offset, unsigned long size);
 #define ioremap_nocache(off, sz)	ioremap((off), (sz))
 #define ioremap_wc			ioremap_nocache
 #define ioremap_uc			ioremap_nocache
diff --git a/arch/parisc/mm/ioremap.c b/arch/parisc/mm/ioremap.c
index f29f682352f0..6e7c005aa09b 100644
--- a/arch/parisc/mm/ioremap.c
+++ b/arch/parisc/mm/ioremap.c
@@ -25,7 +25,7 @@
  * have to convert them into an offset in a page-aligned mapping, but the
  * caller shouldn't need to know that small detail.
  */
-void __iomem * __ioremap(unsigned long phys_addr, unsigned long size, unsigned long flags)
+void __iomem *ioremap(unsigned long phys_addr, unsigned long size)
 {
 	void __iomem *addr;
 	struct vm_struct *area;
@@ -36,10 +36,8 @@ void __iomem * __ioremap(unsigned long phys_addr, unsigned long size, unsigned l
 	unsigned long end = phys_addr + size - 1;
 	/* Support EISA addresses */
 	if ((phys_addr >= 0x00080000 && end < 0x000fffff) ||
-	    (phys_addr >= 0x00500000 && end < 0x03bfffff)) {
+	    (phys_addr >= 0x00500000 && end < 0x03bfffff))
 		phys_addr |= F_EXTEND(0xfc000000);
-		flags |= _PAGE_NO_CACHE;
-	}
 #endif
 
 	/* Don't allow wraparound or zero size */
@@ -65,7 +63,7 @@ void __iomem * __ioremap(unsigned long phys_addr, unsigned long size, unsigned l
 	}
 
 	pgprot = __pgprot(_PAGE_PRESENT | _PAGE_RW | _PAGE_DIRTY |
-			  _PAGE_ACCESSED | flags);
+			  _PAGE_ACCESSED | _PAGE_NO_CACHE);
 
 	/*
 	 * Mappings have to be page-aligned
@@ -90,7 +88,7 @@ void __iomem * __ioremap(unsigned long phys_addr, unsigned long size, unsigned l
 
 	return (void __iomem *) (offset + (char __iomem *)addr);
 }
-EXPORT_SYMBOL(__ioremap);
+EXPORT_SYMBOL(ioremap);
 
 void iounmap(const volatile void __iomem *io_addr)
 {
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
