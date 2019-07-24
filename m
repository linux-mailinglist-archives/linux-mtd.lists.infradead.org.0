Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA02732A3
	for <lists+linux-mtd@lfdr.de>; Wed, 24 Jul 2019 17:22:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mFrTkKPwFtI+/kh7fLueVSDinMdrrjtbO8S46i8PCgI=; b=Y8i
	r0L96TDKUH5zh54eURpNJHdT9PWLLnf3IF9pH/XsSuRRKIOahBwuvaI5lSeCdIYQWRCFT76B1S8lY
	/YcGLXBI5xlYwHUech0HzSFlFmk0xS2XPCj3zQXhBgFgAs7ug2Kw/2F6hPST1HCKK7He14eNUb61f
	T1EgxQQK3q9bTfaJPbnLqLUBNNInHODnPMNG+nWYch9K2SsOgzBLuKgMh026fWeRR58qRGUz8DjcZ
	/UWILGOU+hQGc2aGuP6f6zJIL4T6WFUJfabQUfxyO8Qmr/sONmF4GYH/XeA0uppoO8tskzT5jh6g3
	kpv6tyTNDKCh1ohcZ5GngvBsCNNkz6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqJ5e-0007U5-7f; Wed, 24 Jul 2019 15:22:02 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqJ5X-0007TY-43
 for linux-mtd@lists.infradead.org; Wed, 24 Jul 2019 15:21:56 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 08:21:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,303,1559545200"; d="scan'208";a="345131765"
Received: from tthayer-hp-z620.an.intel.com ([10.122.105.146])
 by orsmga005.jf.intel.com with ESMTP; 24 Jul 2019 08:21:52 -0700
From: thor.thayer@linux.intel.com
To: marek.vasut@gmail.com, tudor.ambarus@microchip.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com
Subject: [PATCH] mtd: spi-nor: Fix Cadence QSPI RCU Schedule Stall
Date: Wed, 24 Jul 2019 10:23:50 -0500
Message-Id: <1563981830-12562-1-git-send-email-thor.thayer@linux.intel.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_082155_209696_F5121F42 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Thor Thayer <thor.thayer@linux.intel.com>, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Thor Thayer <thor.thayer@linux.intel.com>

The current Cadence QSPI driver sometimes caused a
"rcu_sched self-detected stall" while writing large files.

Stall Report:
'# mtd_debug write /dev/mtd1 0 48816464 blob.img
[ 1815.454227] rcu: INFO: rcu_sched self-detected stall on CPU
[ 1815.459789] rcu:     0-....: (2099 ticks this GP) idle=8c6/1/0x40000002
 softirq=6492/6492 fqs=935
[ 1815.468442] rcu:      (t=2100 jiffies g=8749 q=247)
	<snip> (abbreviated backtrace)
[ 1815.772086] [<c05a3ea0>] (cqspi_exec_flash_cmd) (cqspi_read_reg)
[ 1815.786203] [<c05a5488>] (cqspi_read_reg) from (read_sr)
[ 1815.803790] [<c05a0330>] (read_sr) from
	(spi_nor_wait_till_ready_with_timeout)
[ 1815.816610] [<c05a182c>] (spi_nor_wait_till_ready_with_timeout) from
	(spi_nor_write+0x104/0x1d0)
[ 1815.836791] [<c05a1a44>] (spi_nor_write) from (part_write+0x50/0x58)
	<snip>
[ 1815.997961] cadence-qspi ff809000.spi: Flash command execution timed out.
[ 1816.004733] error -110 reading SR
file_to_flash: write, size 0x2e8e150, n 0x2e8e150
write(): Connection timed out

This was caused by a tight loop in cqspi_wait_for_bit(). Fix by using
readl_relaxed_poll_timeout() which sleeps 10us while polling a register.

Fit onto 80 character line by truncating the bool clear parameter

Fixes: 140623410536 ("mtd: spi-nor: Add driver for Cadence Quad SPI Flash Controller")
Signed-off-by: Thor Thayer <thor.thayer@linux.intel.com>
---
 drivers/mtd/spi-nor/cadence-quadspi.c | 19 +++++--------------
 1 file changed, 5 insertions(+), 14 deletions(-)

diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
index 67f15a1f16fd..7bef63947b29 100644
--- a/drivers/mtd/spi-nor/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/cadence-quadspi.c
@@ -13,6 +13,7 @@
 #include <linux/errno.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
+#include <linux/iopoll.h>
 #include <linux/jiffies.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
@@ -241,23 +242,13 @@ struct cqspi_driver_platdata {
 
 #define CQSPI_IRQ_STATUS_MASK		0x1FFFF
 
-static int cqspi_wait_for_bit(void __iomem *reg, const u32 mask, bool clear)
+static int cqspi_wait_for_bit(void __iomem *reg, const u32 mask, bool clr)
 {
-	unsigned long end = jiffies + msecs_to_jiffies(CQSPI_TIMEOUT_MS);
 	u32 val;
 
-	while (1) {
-		val = readl(reg);
-		if (clear)
-			val = ~val;
-		val &= mask;
-
-		if (val == mask)
-			return 0;
-
-		if (time_after(jiffies, end))
-			return -ETIMEDOUT;
-	}
+	return readl_relaxed_poll_timeout(reg, val,
+					  (((clr ? ~val : val) & mask) == mask),
+					  10, CQSPI_TIMEOUT_MS * 1000);
 }
 
 static bool cqspi_is_idle(struct cqspi_st *cqspi)
-- 
2.7.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
