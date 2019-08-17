Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5FB90E12
	for <lists+linux-mtd@lfdr.de>; Sat, 17 Aug 2019 09:44:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JjzuTD9kHQBJC+kWZFsqup/uzfeBcePlRDFs9DkKAq0=; b=AJ8pUMtR2PLN55
	vUiOFHtTQ7Xt9zAbc47KptvZ/ypWuQkEs2qFjGayijbN2mqkRwBL3inIVVPAmMAR2y7FvNSrafajy
	U7ZDWCOFXjMJ3X2EA4Qd6xt6jhsI0FQhbwm+XEFhp0VHNCrpJeYnYJcmodOeESaTx0YrVvGqRUbMZ
	4x7QmgHXfxZ+HnFnkUF8g9vFEYZ0pPvkmXB+GZI3i78NJgSIO+qp2MLNNqAKG4p7j/eWfma9fbF51
	qMKGFhFONySBPulwnHmR0Zk04RGmwEpFHnj2h8d4pw4kDm9KwKd66REPUzocSnKzeX02MQspY453R
	H35LG4HzOI/AE63Z6t4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hytNz-00026o-Ja; Sat, 17 Aug 2019 07:44:27 +0000
Received: from 089144199030.atnat0008.highway.a1.net ([89.144.199.30]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hytNX-0001rF-8R; Sat, 17 Aug 2019 07:43:59 +0000
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>, Guo Ren <guoren@kernel.org>,
 Michal Simek <monstr@monstr.eu>, Greentime Hu <green.hu@gmail.com>,
 Vincent Chen <deanbo422@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 x86@kernel.org
Subject: [PATCH 04/26] mips: remove ioremap_cachable
Date: Sat, 17 Aug 2019 09:32:31 +0200
Message-Id: <20190817073253.27819-5-hch@lst.de>
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

Just define ioremap_cache directly.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/mips/include/asm/io.h | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index 97a280640daf..c02db986ddf5 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -262,11 +262,11 @@ static inline void __iomem *ioremap_prot(phys_addr_t offset,
 #define ioremap_uc ioremap_nocache
 
 /*
- * ioremap_cachable -	map bus memory into CPU space
+ * ioremap_cache -	map bus memory into CPU space
  * @offset:	    bus address of the memory
  * @size:	    size of the resource to map
  *
- * ioremap_nocache performs a platform specific sequence of operations to
+ * ioremap_cache performs a platform specific sequence of operations to
  * make bus memory CPU accessible via the readb/readw/readl/writeb/
  * writew/writel functions and the other mmio helpers. The returned
  * address is not guaranteed to be usable directly as a virtual
@@ -276,9 +276,8 @@ static inline void __iomem *ioremap_prot(phys_addr_t offset,
  * the CPU.  Also enables full write-combining.	 Useful for some
  * memory-like regions on I/O busses.
  */
-#define ioremap_cachable(offset, size)					\
+#define ioremap_cache(offset, size)					\
 	__ioremap_mode((offset), (size), _page_cachable_default)
-#define ioremap_cache ioremap_cachable
 
 /*
  * ioremap_wc     -   map bus memory into CPU space
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
