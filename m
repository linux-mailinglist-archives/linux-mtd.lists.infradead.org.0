Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEED1CA46D
	for <lists+linux-mtd@lfdr.de>; Fri,  8 May 2020 08:44:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uHmytoJOfjY9KKsT2Nsys3OgzWy5fqLFr/gI2fi7ceQ=; b=BkNsNyFrfA9GPE
	lbdsPG0Lvia2WZT6X7MZl51FHtsXrzlW96M8tlomfMqT+d92nHqBj56+QAJ2zde4O+2jSmYHUg0vs
	b4w6nFV0HH9V9rWPO592JL2yoIOiptGCVTREstGKPZmi+Rq5WjEmAGToFpZn3TC8BFhW0tLkp+1K1
	FBW5MhsOasdem4qdf0femVNNZ1wSyf7zB63Sn9x5rnlS6m1u/F+B8SVVeefWZitZeQfxFsMQcUp6l
	49gYLRnY27bSj772D/MGli3/SzIR3HK+ARDQdMLYW5B+JrpYAOUhoWDCwjiQG6TrNWAgoK6QPMPmK
	N3QtlQj8GACzlcnJi2bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWwjw-0002nW-Pj; Fri, 08 May 2020 06:44:08 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWwgK-0008Kw-Ls
 for linux-mtd@lists.infradead.org; Fri, 08 May 2020 06:40:29 +0000
Received: by mail-pg1-x541.google.com with SMTP id b8so415396pgi.11
 for <linux-mtd@lists.infradead.org>; Thu, 07 May 2020 23:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A9neXBR05MUL9vEaQ9mRI0TbgTkVv6cPYpCY06G9plI=;
 b=I9AEJF6xE1m2ArfgUBehlDT/7Shw20pyxDR51SDMPivd1W41H0jifCl/U3KeSw+CEC
 bSMVl9oQPq7CfC1Hbyd/yNzGzrEEgQLX+ZTf5BbelFZAXWX7NaE+22SK5c6R5BR+oflO
 ahOaggVqNjgLnU+N3grkVa0EMlx3WmwflQSPE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A9neXBR05MUL9vEaQ9mRI0TbgTkVv6cPYpCY06G9plI=;
 b=gygYjodEPxO1lRuVL92jLCC+CP4TEwt+LcjPhRo5x6vXUjtTmSBm3flSPtn4gpxJJ7
 4C3KleQ8ZJDVEcS+y+R5Lb24ArGpuv5QKjggRVuhyKE4oDIp3a0izu1cFYTfGubmDtGF
 n7rFLRgAq0f6OY2BTwFHWYc30+zOSwu9VRe/M9B5PWuyl9Q7USdMSYrpMwIF/0zNs2fi
 3YMj7jgHhMyOMQ1ih4A5XiTDt42p0VT3t8hN/FO3TAVMp9yS/Db4kFhUkxeA45hTuVex
 PmWfKqU/r3pzUixDhihZJMJEsoFbVv/HsGxTikuaX4BGPv5ir6pTSqcvk1HU3Bd45Np/
 XLJg==
X-Gm-Message-State: AGi0Pua3SHaCFFjrf1D6jvi2lUIUWMLc5EY5LzGvSi3hRJRMmFV0hhLJ
 VpHr9h9wOo21052NhuvwhtpDn7ZJOfk=
X-Google-Smtp-Source: APiQypIMKBv6SpNoX+l1sR49hnoyIGXv/rKVkzKO5jpSGNSR1sQVIAC1Z+87cMUken1r1ooFCe8Z8A==
X-Received: by 2002:a63:745:: with SMTP id 66mr866333pgh.337.1588920023022;
 Thu, 07 May 2020 23:40:23 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id c124sm708726pfb.187.2020.05.07.23.40.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 23:40:17 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: [PATCH v4 12/12] mtd: Support kmsg dumper based on pstore/blk
Date: Thu,  7 May 2020 23:40:04 -0700
Message-Id: <20200508064004.57898-13-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200508064004.57898-1-keescook@chromium.org>
References: <20200508064004.57898-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_234024_838336_A9442B3D 
X-CRM114-Status: GOOD (  26.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Petr Mladek <pmladek@suse.com>, Tony Luck <tony.luck@intel.com>,
 Kees Cook <keescook@chromium.org>, linux-doc@vger.kernel.org,
 Anton Vorontsov <anton@enomsg.org>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 linux-mtd@lists.infradead.org, Colin Cross <ccross@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: WeiXiong Liao <liaoweixiong@allwinnertech.com>

This introduces mtdpstore, which is similar to mtdoops but more
powerful. It uses pstore/blk, and aims to store panic and oops logs to
a flash partition, where pstore can later read back and present as files
in the mounted pstore filesystem.

To make mtdpstore work, the "blkdev" of pstore/blk should be set
as MTD device name or MTD device number. For more details, see
Documentation/admin-guide/pstore-blk.rst

This solves a number of issues:
- Work duplication: both of pstore and mtdoops do the same job storing
  panic/oops log. They have very similar logic, registering to kmsg
  dumper and storing logs to several chunks one by one.
- Layer violations: drivers should provides methods instead of polices.
  MTD should provide read/write/erase operations, and allow a higher
  level drivers to provide the chunk management, kmsg dump
  configuration, etc.
- Missing features: pstore provides many additional features, including
  presenting the logs as files, logging dump time and count, and
  supporting other frontends like pmsg, console, etc.

Signed-off-by: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Link: https://lore.kernel.org/r/1585126506-18635-12-git-send-email-liaoweixiong@allwinnertech.com
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 Documentation/admin-guide/pstore-blk.rst |   9 +-
 drivers/mtd/Kconfig                      |  10 +
 drivers/mtd/Makefile                     |   1 +
 drivers/mtd/mtdpstore.c                  | 564 +++++++++++++++++++++++
 fs/pstore/platform.c                     |  22 +-
 5 files changed, 583 insertions(+), 23 deletions(-)
 create mode 100644 drivers/mtd/mtdpstore.c

diff --git a/Documentation/admin-guide/pstore-blk.rst b/Documentation/admin-guide/pstore-blk.rst
index 2f3602397715..bf0b5a227e24 100644
--- a/Documentation/admin-guide/pstore-blk.rst
+++ b/Documentation/admin-guide/pstore-blk.rst
@@ -43,9 +43,9 @@ blkdev
 ~~~~~~
 
 The block device to use. Most of the time, it is a partition of block device.
-It's required for pstore/blk.
+It's required for pstore/blk. It is also used for MTD device.
 
-It accepts the following variants:
+It accepts the following variants for block device:
 
 1. <hex_major><hex_minor> device number in hexadecimal represents itself; no
    leading 0x, for example b302.
@@ -64,6 +64,11 @@ It accepts the following variants:
    partition with a known unique id.
 #. <major>:<minor> major and minor number of the device separated by a colon.
 
+It accepts the following variants for MTD device:
+
+1. <device name> MTD device name. "pstore" is recommended.
+#. <device number> MTD device number.
+
 kmsg_size
 ~~~~~~~~~
 
diff --git a/drivers/mtd/Kconfig b/drivers/mtd/Kconfig
index 42d401ea60ee..6ddab796216d 100644
--- a/drivers/mtd/Kconfig
+++ b/drivers/mtd/Kconfig
@@ -170,6 +170,16 @@ config MTD_OOPS
 	  buffer in a flash partition where it can be read back at some
 	  later point.
 
+config MTD_PSTORE
+	tristate "Log panic/oops to an MTD buffer based on pstore"
+	depends on PSTORE_BLK
+	help
+	  This enables panic and oops messages to be logged to a circular
+	  buffer in a flash partition where it can be read back as files after
+	  mounting pstore filesystem.
+
+	  If unsure, say N.
+
 config MTD_SWAP
 	tristate "Swap on MTD device support"
 	depends on MTD && SWAP
diff --git a/drivers/mtd/Makefile b/drivers/mtd/Makefile
index 56cc60ccc477..593d0593a038 100644
--- a/drivers/mtd/Makefile
+++ b/drivers/mtd/Makefile
@@ -20,6 +20,7 @@ obj-$(CONFIG_RFD_FTL)		+= rfd_ftl.o
 obj-$(CONFIG_SSFDC)		+= ssfdc.o
 obj-$(CONFIG_SM_FTL)		+= sm_ftl.o
 obj-$(CONFIG_MTD_OOPS)		+= mtdoops.o
+obj-$(CONFIG_MTD_PSTORE)	+= mtdpstore.o
 obj-$(CONFIG_MTD_SWAP)		+= mtdswap.o
 
 nftl-objs		:= nftlcore.o nftlmount.o
diff --git a/drivers/mtd/mtdpstore.c b/drivers/mtd/mtdpstore.c
new file mode 100644
index 000000000000..50c8fc746f39
--- /dev/null
+++ b/drivers/mtd/mtdpstore.c
@@ -0,0 +1,564 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#define dev_fmt(fmt) "mtdoops-pstore: " fmt
+
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/pstore_blk.h>
+#include <linux/mtd/mtd.h>
+#include <linux/bitops.h>
+
+static struct mtdpstore_context {
+	int index;
+	struct pstore_blk_info info;
+	struct psblk_device dev;
+	struct mtd_info *mtd;
+	unsigned long *rmmap;		/* removed bit map */
+	unsigned long *usedmap;		/* used bit map */
+	/*
+	 * used for panic write
+	 * As there are no block_isbad for panic case, we should keep this
+	 * status before panic to ensure panic_write not failed.
+	 */
+	unsigned long *badmap;		/* bad block bit map */
+} oops_cxt;
+
+static int mtdpstore_block_isbad(struct mtdpstore_context *cxt, loff_t off)
+{
+	int ret;
+	struct mtd_info *mtd = cxt->mtd;
+	u64 blknum = div_u64(off, mtd->erasesize);
+
+	if (test_bit(blknum, cxt->badmap))
+		return true;
+	ret = mtd_block_isbad(mtd, off);
+	if (ret < 0) {
+		dev_err(&mtd->dev, "mtd_block_isbad failed, aborting\n");
+		return ret;
+	} else if (ret > 0) {
+		set_bit(blknum, cxt->badmap);
+		return true;
+	}
+	return false;
+}
+
+static inline int mtdpstore_panic_block_isbad(struct mtdpstore_context *cxt,
+		loff_t off)
+{
+	struct mtd_info *mtd = cxt->mtd;
+	u64 blknum = div_u64(off, mtd->erasesize);
+
+	return test_bit(blknum, cxt->badmap);
+}
+
+static inline void mtdpstore_mark_used(struct mtdpstore_context *cxt,
+		loff_t off)
+{
+	struct mtd_info *mtd = cxt->mtd;
+	u64 zonenum = div_u64(off, cxt->info.kmsg_size);
+
+	dev_dbg(&mtd->dev, "mark zone %llu used\n", zonenum);
+	set_bit(zonenum, cxt->usedmap);
+}
+
+static inline void mtdpstore_mark_unused(struct mtdpstore_context *cxt,
+		loff_t off)
+{
+	struct mtd_info *mtd = cxt->mtd;
+	u64 zonenum = div_u64(off, cxt->info.kmsg_size);
+
+	dev_dbg(&mtd->dev, "mark zone %llu unused\n", zonenum);
+	clear_bit(zonenum, cxt->usedmap);
+}
+
+static inline void mtdpstore_block_mark_unused(struct mtdpstore_context *cxt,
+		loff_t off)
+{
+	struct mtd_info *mtd = cxt->mtd;
+	u64 zonenum = div_u64(off, cxt->info.kmsg_size);
+	u32 zonecnt = cxt->mtd->erasesize / cxt->info.kmsg_size;
+
+	while (zonecnt > 0) {
+		dev_dbg(&mtd->dev, "mark zone %llu unused\n", zonenum);
+		clear_bit(zonenum, cxt->usedmap);
+		zonenum++;
+		zonecnt--;
+	}
+}
+
+static inline int mtdpstore_is_used(struct mtdpstore_context *cxt, loff_t off)
+{
+	u64 zonenum = div_u64(off, cxt->info.kmsg_size);
+	u64 blknum = div_u64(off, cxt->mtd->erasesize);
+
+	if (test_bit(blknum, cxt->badmap))
+		return true;
+	return test_bit(zonenum, cxt->usedmap);
+}
+
+static int mtdpstore_block_is_used(struct mtdpstore_context *cxt,
+		loff_t off)
+{
+	u64 zonenum = div_u64(off, cxt->info.kmsg_size);
+	u32 zonecnt = cxt->mtd->erasesize / cxt->info.kmsg_size;
+
+	while (zonecnt > 0) {
+		if (test_bit(zonenum, cxt->usedmap))
+			return true;
+		zonenum++;
+		zonecnt--;
+	}
+	return false;
+}
+
+static int mtdpstore_is_empty(struct mtdpstore_context *cxt, char *buf,
+		size_t size)
+{
+	struct mtd_info *mtd = cxt->mtd;
+	size_t sz;
+	int i;
+
+	sz = min_t(uint32_t, size, mtd->writesize / 4);
+	for (i = 0; i < sz; i++) {
+		if (buf[i] != (char)0xFF)
+			return false;
+	}
+	return true;
+}
+
+static void mtdpstore_mark_removed(struct mtdpstore_context *cxt, loff_t off)
+{
+	struct mtd_info *mtd = cxt->mtd;
+	u64 zonenum = div_u64(off, cxt->info.kmsg_size);
+
+	dev_dbg(&mtd->dev, "mark zone %llu removed\n", zonenum);
+	set_bit(zonenum, cxt->rmmap);
+}
+
+static void mtdpstore_block_clear_removed(struct mtdpstore_context *cxt,
+		loff_t off)
+{
+	u64 zonenum = div_u64(off, cxt->info.kmsg_size);
+	u32 zonecnt = cxt->mtd->erasesize / cxt->info.kmsg_size;
+
+	while (zonecnt > 0) {
+		clear_bit(zonenum, cxt->rmmap);
+		zonenum++;
+		zonecnt--;
+	}
+}
+
+static int mtdpstore_block_is_removed(struct mtdpstore_context *cxt,
+		loff_t off)
+{
+	u64 zonenum = div_u64(off, cxt->info.kmsg_size);
+	u32 zonecnt = cxt->mtd->erasesize / cxt->info.kmsg_size;
+
+	while (zonecnt > 0) {
+		if (test_bit(zonenum, cxt->rmmap))
+			return true;
+		zonenum++;
+		zonecnt--;
+	}
+	return false;
+}
+
+static int mtdpstore_erase_do(struct mtdpstore_context *cxt, loff_t off)
+{
+	struct mtd_info *mtd = cxt->mtd;
+	struct erase_info erase;
+	int ret;
+
+	dev_dbg(&mtd->dev, "try to erase off 0x%llx\n", off);
+	erase.len = cxt->mtd->erasesize;
+	erase.addr = off;
+	ret = mtd_erase(cxt->mtd, &erase);
+	if (!ret)
+		mtdpstore_block_clear_removed(cxt, off);
+	else
+		dev_err(&mtd->dev, "erase of region [0x%llx, 0x%llx] on \"%s\" failed\n",
+		       (unsigned long long)erase.addr,
+		       (unsigned long long)erase.len, cxt->info.device);
+	return ret;
+}
+
+/*
+ * called while removing file
+ *
+ * Avoiding over erasing, do erase block only when the whole block is unused.
+ * If the block contains valid log, do erase lazily on flush_removed() when
+ * unregister.
+ */
+static ssize_t mtdpstore_erase(size_t size, loff_t off)
+{
+	struct mtdpstore_context *cxt = &oops_cxt;
+
+	if (mtdpstore_block_isbad(cxt, off))
+		return -EIO;
+
+	mtdpstore_mark_unused(cxt, off);
+
+	/* If the block still has valid data, mtdpstore do erase lazily */
+	if (likely(mtdpstore_block_is_used(cxt, off))) {
+		mtdpstore_mark_removed(cxt, off);
+		return 0;
+	}
+
+	/* all zones are unused, erase it */
+	off = ALIGN_DOWN(off, cxt->mtd->erasesize);
+	return mtdpstore_erase_do(cxt, off);
+}
+
+/*
+ * What is security for mtdpstore?
+ * As there is no erase for panic case, we should ensure at least one zone
+ * is writable. Otherwise, panic write will fail.
+ * If zone is used, write operation will return -ENOMSG, which means that
+ * pstore/blk will try one by one until gets an empty zone. So, it is not
+ * needed to ensure the next zone is empty, but at least one.
+ */
+static int mtdpstore_security(struct mtdpstore_context *cxt, loff_t off)
+{
+	int ret = 0, i;
+	struct mtd_info *mtd = cxt->mtd;
+	u32 zonenum = (u32)div_u64(off, cxt->info.kmsg_size);
+	u32 zonecnt = (u32)div_u64(cxt->mtd->size, cxt->info.kmsg_size);
+	u32 blkcnt = (u32)div_u64(cxt->mtd->size, cxt->mtd->erasesize);
+	u32 erasesize = cxt->mtd->erasesize;
+
+	for (i = 0; i < zonecnt; i++) {
+		u32 num = (zonenum + i) % zonecnt;
+
+		/* found empty zone */
+		if (!test_bit(num, cxt->usedmap))
+			return 0;
+	}
+
+	/* If there is no any empty zone, we have no way but to do erase */
+	off = ALIGN_DOWN(off, erasesize);
+	while (blkcnt--) {
+		div64_u64_rem(off + erasesize, cxt->mtd->size, (u64 *)&off);
+
+		if (mtdpstore_block_isbad(cxt, off))
+			continue;
+
+		ret = mtdpstore_erase_do(cxt, off);
+		if (!ret) {
+			mtdpstore_block_mark_unused(cxt, off);
+			break;
+		}
+	}
+
+	if (ret)
+		dev_err(&mtd->dev, "all blocks bad!\n");
+	dev_dbg(&mtd->dev, "end security\n");
+	return ret;
+}
+
+static ssize_t mtdpstore_write(const char *buf, size_t size, loff_t off)
+{
+	struct mtdpstore_context *cxt = &oops_cxt;
+	struct mtd_info *mtd = cxt->mtd;
+	size_t retlen;
+	int ret;
+
+	if (mtdpstore_block_isbad(cxt, off))
+		return -ENOMSG;
+
+	/* zone is used, please try next one */
+	if (mtdpstore_is_used(cxt, off))
+		return -ENOMSG;
+
+	dev_dbg(&mtd->dev, "try to write off 0x%llx size %zu\n", off, size);
+	ret = mtd_write(cxt->mtd, off, size, &retlen, (u_char *)buf);
+	if (ret < 0 || retlen != size) {
+		dev_err(&mtd->dev, "write failure at %lld (%zu of %zu written), err %d\n",
+				off, retlen, size, ret);
+		return -EIO;
+	}
+	mtdpstore_mark_used(cxt, off);
+
+	mtdpstore_security(cxt, off);
+	return retlen;
+}
+
+static inline bool mtdpstore_is_io_error(int ret)
+{
+	return ret < 0 && !mtd_is_bitflip(ret) && !mtd_is_eccerr(ret);
+}
+
+/*
+ * All zones will be read as pstore/blk will read zone one by one when do
+ * recover.
+ */
+static ssize_t mtdpstore_read(char *buf, size_t size, loff_t off)
+{
+	struct mtdpstore_context *cxt = &oops_cxt;
+	struct mtd_info *mtd = cxt->mtd;
+	size_t retlen, done;
+	int ret;
+
+	if (mtdpstore_block_isbad(cxt, off))
+		return -ENOMSG;
+
+	dev_dbg(&mtd->dev, "try to read off 0x%llx size %zu\n", off, size);
+	for (done = 0, retlen = 0; done < size; done += retlen) {
+		retlen = 0;
+
+		ret = mtd_read(cxt->mtd, off + done, size - done, &retlen,
+				(u_char *)buf + done);
+		if (mtdpstore_is_io_error(ret)) {
+			dev_err(&mtd->dev, "read failure at %lld (%zu of %zu read), err %d\n",
+					off + done, retlen, size - done, ret);
+			/* the zone may be broken, try next one */
+			return -ENOMSG;
+		}
+
+		/*
+		 * ECC error. The impact on log data is so small. Maybe we can
+		 * still read it and try to understand. So mtdpstore just hands
+		 * over what it gets and user can judge whether the data is
+		 * valid or not.
+		 */
+		if (mtd_is_eccerr(ret)) {
+			dev_err(&mtd->dev, "ecc error at %lld (%zu of %zu read), err %d\n",
+					off + done, retlen, size - done, ret);
+			/* driver may not set retlen when ecc error */
+			retlen = retlen == 0 ? size - done : retlen;
+		}
+	}
+
+	if (mtdpstore_is_empty(cxt, buf, size))
+		mtdpstore_mark_unused(cxt, off);
+	else
+		mtdpstore_mark_used(cxt, off);
+
+	mtdpstore_security(cxt, off);
+	return retlen;
+}
+
+static ssize_t mtdpstore_panic_write(const char *buf, size_t size, loff_t off)
+{
+	struct mtdpstore_context *cxt = &oops_cxt;
+	struct mtd_info *mtd = cxt->mtd;
+	size_t retlen;
+	int ret;
+
+	if (mtdpstore_panic_block_isbad(cxt, off))
+		return -ENOMSG;
+
+	/* zone is used, please try next one */
+	if (mtdpstore_is_used(cxt, off))
+		return -ENOMSG;
+
+	ret = mtd_panic_write(cxt->mtd, off, size, &retlen, (u_char *)buf);
+	if (ret < 0 || size != retlen) {
+		dev_err(&mtd->dev, "panic write failure at %lld (%zu of %zu read), err %d\n",
+				off, retlen, size, ret);
+		return -EIO;
+	}
+	mtdpstore_mark_used(cxt, off);
+
+	return retlen;
+}
+
+static void mtdpstore_notify_add(struct mtd_info *mtd)
+{
+	int ret;
+	struct mtdpstore_context *cxt = &oops_cxt;
+	struct pstore_blk_info *info = &cxt->info;
+	unsigned long longcnt;
+
+	if (!strcmp(mtd->name, info->device))
+		cxt->index = mtd->index;
+
+	if (mtd->index != cxt->index || cxt->index < 0)
+		return;
+
+	dev_dbg(&mtd->dev, "found matching MTD device %s\n", mtd->name);
+
+	if (mtd->size < info->kmsg_size * 2) {
+		dev_err(&mtd->dev, "MTD partition %d not big enough\n",
+				mtd->index);
+		return;
+	}
+	/*
+	 * kmsg_size must be aligned to 4096 Bytes, which is limited by
+	 * psblk. The default value of kmsg_size is 64KB. If kmsg_size
+	 * is larger than erasesize, some errors will occur since mtdpsotre
+	 * is designed on it.
+	 */
+	if (mtd->erasesize < info->kmsg_size) {
+		dev_err(&mtd->dev, "eraseblock size of MTD partition %d too small\n",
+				mtd->index);
+		return;
+	}
+	if (unlikely(info->kmsg_size % mtd->writesize)) {
+		dev_err(&mtd->dev, "record size %lu KB must align to write size %d KB\n",
+				info->kmsg_size / 1024,
+				mtd->writesize / 1024);
+		return;
+	}
+
+	longcnt = BITS_TO_LONGS(div_u64(mtd->size, info->kmsg_size));
+	cxt->rmmap = kcalloc(longcnt, sizeof(long), GFP_KERNEL);
+	cxt->usedmap = kcalloc(longcnt, sizeof(long), GFP_KERNEL);
+
+	longcnt = BITS_TO_LONGS(div_u64(mtd->size, mtd->erasesize));
+	cxt->badmap = kcalloc(longcnt, sizeof(long), GFP_KERNEL);
+
+	cxt->dev.total_size = mtd->size;
+	/* just support dmesg right now */
+	cxt->dev.flags = PSTORE_FLAGS_DMESG;
+	cxt->dev.read = mtdpstore_read;
+	cxt->dev.write = mtdpstore_write;
+	cxt->dev.erase = mtdpstore_erase;
+	cxt->dev.panic_write = mtdpstore_panic_write;
+
+	ret = psblk_register_device(&cxt->dev);
+	if (ret) {
+		dev_err(&mtd->dev, "mtd%d register to psblk failed\n",
+				mtd->index);
+		return;
+	}
+	cxt->mtd = mtd;
+	dev_info(&mtd->dev, "Attached to MTD device %d\n", mtd->index);
+}
+
+static int mtdpstore_flush_removed_do(struct mtdpstore_context *cxt,
+		loff_t off, size_t size)
+{
+	struct mtd_info *mtd = cxt->mtd;
+	u_char *buf;
+	int ret;
+	size_t retlen;
+	struct erase_info erase;
+
+	buf = kmalloc(mtd->erasesize, GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
+
+	/* 1st. read to cache */
+	ret = mtd_read(mtd, off, mtd->erasesize, &retlen, buf);
+	if (mtdpstore_is_io_error(ret))
+		goto free;
+
+	/* 2nd. erase block */
+	erase.len = mtd->erasesize;
+	erase.addr = off;
+	ret = mtd_erase(mtd, &erase);
+	if (ret)
+		goto free;
+
+	/* 3rd. write back */
+	while (size) {
+		unsigned int zonesize = cxt->info.kmsg_size;
+
+		/* there is valid data on block, write back */
+		if (mtdpstore_is_used(cxt, off)) {
+			ret = mtd_write(mtd, off, zonesize, &retlen, buf);
+			if (ret)
+				dev_err(&mtd->dev, "write failure at %lld (%zu of %u written), err %d\n",
+						off, retlen, zonesize, ret);
+		}
+
+		off += zonesize;
+		size -= min_t(unsigned int, zonesize, size);
+	}
+
+free:
+	kfree(buf);
+	return ret;
+}
+
+/*
+ * What does mtdpstore_flush_removed() do?
+ * When user remove any log file on pstore filesystem, mtdpstore should do
+ * something to ensure log file removed. If the whole block is no longer used,
+ * it's nice to erase the block. However if the block still contains valid log,
+ * what mtdpstore can do is to erase and write the valid log back.
+ */
+static int mtdpstore_flush_removed(struct mtdpstore_context *cxt)
+{
+	struct mtd_info *mtd = cxt->mtd;
+	int ret;
+	loff_t off;
+	u32 blkcnt = (u32)div_u64(mtd->size, mtd->erasesize);
+
+	for (off = 0; blkcnt > 0; blkcnt--, off += mtd->erasesize) {
+		ret = mtdpstore_block_isbad(cxt, off);
+		if (ret)
+			continue;
+
+		ret = mtdpstore_block_is_removed(cxt, off);
+		if (!ret)
+			continue;
+
+		ret = mtdpstore_flush_removed_do(cxt, off, mtd->erasesize);
+		if (ret)
+			return ret;
+	}
+	return 0;
+}
+
+static void mtdpstore_notify_remove(struct mtd_info *mtd)
+{
+	struct mtdpstore_context *cxt = &oops_cxt;
+
+	if (mtd->index != cxt->index || cxt->index < 0)
+		return;
+
+	mtdpstore_flush_removed(cxt);
+
+	psblk_unregister_device(&cxt->dev);
+	kfree(cxt->badmap);
+	kfree(cxt->usedmap);
+	kfree(cxt->rmmap);
+	cxt->mtd = NULL;
+	cxt->index = -1;
+}
+
+static struct mtd_notifier mtdpstore_notifier = {
+	.add	= mtdpstore_notify_add,
+	.remove	= mtdpstore_notify_remove,
+};
+
+static int __init mtdpstore_init(void)
+{
+	int ret;
+	struct mtdpstore_context *cxt = &oops_cxt;
+	struct mtd_info *mtd = cxt->mtd;
+	struct pstore_blk_info *info = &cxt->info;
+
+	ret = pstore_blk_usr_info(info);
+	if (unlikely(ret))
+		return ret;
+
+	if (strlen(info->device) == 0) {
+		dev_err(&mtd->dev, "mtd device must be supplied\n");
+		return -EINVAL;
+	}
+	if (!info->kmsg_size) {
+		dev_err(&mtd->dev, "no backend enabled\n");
+		return -EINVAL;
+	}
+
+	/* Setup the MTD device to use */
+	ret = kstrtoint((char *)info->device, 0, &cxt->index);
+	if (ret)
+		cxt->index = -1;
+
+	register_mtd_user(&mtdpstore_notifier);
+	return 0;
+}
+module_init(mtdpstore_init);
+
+static void __exit mtdpstore_exit(void)
+{
+	unregister_mtd_user(&mtdpstore_notifier);
+}
+module_exit(mtdpstore_exit);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("WeiXiong Liao <liaoweixiong@allwinnertech.com>");
+MODULE_DESCRIPTION("MTD backend for pstore/blk");
diff --git a/fs/pstore/platform.c b/fs/pstore/platform.c
index b882919b8784..4fb8ec9f3a1c 100644
--- a/fs/pstore/platform.c
+++ b/fs/pstore/platform.c
@@ -130,26 +130,6 @@ enum pstore_type_id pstore_name_to_type(const char *name)
 }
 EXPORT_SYMBOL_GPL(pstore_name_to_type);
 
-static const char *get_reason_str(enum kmsg_dump_reason reason)
-{
-	switch (reason) {
-	case KMSG_DUMP_PANIC:
-		return "Panic";
-	case KMSG_DUMP_OOPS:
-		return "Oops";
-	case KMSG_DUMP_EMERG:
-		return "Emergency";
-	case KMSG_DUMP_RESTART:
-		return "Restart";
-	case KMSG_DUMP_HALT:
-		return "Halt";
-	case KMSG_DUMP_POWEROFF:
-		return "Poweroff";
-	default:
-		return "Unknown";
-	}
-}
-
 static void pstore_timer_kick(void)
 {
 	if (pstore_update_ms < 0)
@@ -402,7 +382,7 @@ static void pstore_dump(struct kmsg_dumper *dumper,
 	unsigned int	part = 1;
 	int		ret;
 
-	why = get_reason_str(reason);
+	why = kmsg_dump_reason_str(reason);
 
 	if (down_trylock(&psinfo->buf_lock)) {
 		/* Failed to acquire lock: give up if we cannot wait. */
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
