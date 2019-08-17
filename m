Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4085190F41
	for <lists+linux-mtd@lfdr.de>; Sat, 17 Aug 2019 09:57:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T6jhV9M21K0VVK1pJzR7L2tyk1Ki0WLPDUJFCGBMW/w=; b=eDCIVYT0+9cUKi
	gXRCGj/IJuJcm0llbfWxrSmY0FrdMP0aD4oIonAuiFPPS3vpK876H8s17CXDpoNm3IUzW74XRKSWJ
	VSTOgh3yPtlEJFjzO+8EREdfTU0KAEoLKiJJ9Cb70+3azue29I0QGc5Cli9Nk+ScNSJs8x0PN4ZEr
	P5wbqmYTD60CvzcYMHr/ZPYebmQ+bzao0gtq2Y39h6CYOW96emc2NuI5V9rN/8x0Ry3fhBOscmZqr
	/oS4LiIdAq5fir+Zvj9QrCk295DkOhM2DUhj18pdPrPwQipBZfCAuRUx7/0gS7zeTCdaCKJEhfihp
	5w6ZVwz1LanpZAA+m3Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hytaK-0007B3-UX; Sat, 17 Aug 2019 07:57:12 +0000
Received: from [2001:4bb8:18c:28b5:44f9:d544:957f:32cb] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hytSb-0005Tx-3i; Sat, 17 Aug 2019 07:49:13 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 20/26] hexagon: remove __iounmap
Date: Sat, 17 Aug 2019 09:32:47 +0200
Message-Id: <20190817073253.27819-21-hch@lst.de>
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

No need to indirect iounmap for hexagon.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/hexagon/include/asm/io.h       | 7 +------
 arch/hexagon/kernel/hexagon_ksyms.c | 2 +-
 arch/hexagon/mm/ioremap.c           | 2 +-
 3 files changed, 3 insertions(+), 8 deletions(-)

diff --git a/arch/hexagon/include/asm/io.h b/arch/hexagon/include/asm/io.h
index 89537dc1cf97..539e3efcf39c 100644
--- a/arch/hexagon/include/asm/io.h
+++ b/arch/hexagon/include/asm/io.h
@@ -27,7 +27,7 @@
 extern int remap_area_pages(unsigned long start, unsigned long phys_addr,
 				unsigned long end, unsigned long flags);
 
-extern void __iounmap(const volatile void __iomem *addr);
+extern void iounmap(const volatile void __iomem *addr);
 
 /* Defined in lib/io.c, needed for smc91x driver. */
 extern void __raw_readsw(const void __iomem *addr, void *data, int wordlen);
@@ -175,11 +175,6 @@ void __iomem *ioremap(unsigned long phys_addr, unsigned long size);
 #define ioremap_nocache ioremap
 
 
-static inline void iounmap(volatile void __iomem *addr)
-{
-	__iounmap(addr);
-}
-
 #define __raw_writel writel
 
 static inline void memcpy_fromio(void *dst, const volatile void __iomem *src,
diff --git a/arch/hexagon/kernel/hexagon_ksyms.c b/arch/hexagon/kernel/hexagon_ksyms.c
index b3dbb472572e..6fb1aaab1c29 100644
--- a/arch/hexagon/kernel/hexagon_ksyms.c
+++ b/arch/hexagon/kernel/hexagon_ksyms.c
@@ -14,7 +14,7 @@
 EXPORT_SYMBOL(__clear_user_hexagon);
 EXPORT_SYMBOL(raw_copy_from_user);
 EXPORT_SYMBOL(raw_copy_to_user);
-EXPORT_SYMBOL(__iounmap);
+EXPORT_SYMBOL(iounmap);
 EXPORT_SYMBOL(__strnlen_user);
 EXPORT_SYMBOL(__vmgetie);
 EXPORT_SYMBOL(__vmsetie);
diff --git a/arch/hexagon/mm/ioremap.c b/arch/hexagon/mm/ioremap.c
index b103d83b5fbb..255c5b1ee1a7 100644
--- a/arch/hexagon/mm/ioremap.c
+++ b/arch/hexagon/mm/ioremap.c
@@ -38,7 +38,7 @@ void __iomem *ioremap(unsigned long phys_addr, unsigned long size)
 	return (void __iomem *) (offset + addr);
 }
 
-void __iounmap(const volatile void __iomem *addr)
+void iounmap(const volatile void __iomem *addr)
 {
 	vunmap((void *) ((unsigned long) addr & PAGE_MASK));
 }
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
