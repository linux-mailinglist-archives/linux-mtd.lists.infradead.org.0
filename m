Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC07D13D77D
	for <lists+linux-mtd@lfdr.de>; Thu, 16 Jan 2020 11:05:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5N+ndYu22AMSapJZxcbkARGffbSd9fyCPeH+m2FBmpM=; b=mh51XzHsaG0xbR/E3Kt5H9+Ime
	/ydQzdn3jL04VC/nZ4SJkrrCp9RlkpW9cB3J2keu6G3ghrFNvG31cL6s1JwFgm9blysMHKqztYtpJ
	KmjuoI3M9ryOLc/xGzt0AxFz855oowbP8XlDUHyMtqYvsywK8NOhiqo3zqRdRZJWN7w5E76cbV6uQ
	zj2gRTamtKeidNhjNvZIlSPxTAsLMIEzIL/W9RTg9Je2GEYqC33ThJgYO0iFFQS1ZQOVZ5GcPUvG/
	FU5MGlidVxDOxmqQms+Db4uOqim5TWkwvderA8LpGCrZqwjnX5KB2/T4shTx52sfMuV2R33zrUPOl
	fZdUNEgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is21i-0000Sj-7Z; Thu, 16 Jan 2020 10:05:22 +0000
Received: from smtp2207-205.mail.aliyun.com ([121.197.207.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is1xz-00063L-2y
 for linux-mtd@lists.infradead.org; Thu, 16 Jan 2020 10:01:39 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.06712966|-1; CH=green;
 DM=CONTINUE|CONTINUE|true|0.411496-0.0244548-0.56405;
 DS=CONTINUE|ham_system_inform|0.019721-0.00155348-0.978726;
 FP=0|0|0|0|0|-1|-1|-1; HT=e02c03267; MF=liaoweixiong@allwinnertech.com; NM=1;
 PH=DS; RN=17; RT=17; SR=0; TI=SMTPD_---.Gd3Kgdg_1579168866; 
Received: from
 PC-liaoweixiong.allwinnertech.com(mailfrom:liaoweixiong@allwinnertech.com
 fp:SMTPD_---.Gd3Kgdg_1579168866)
 by smtp.aliyun-inc.com(10.147.42.241);
 Thu, 16 Jan 2020 18:01:25 +0800
From: WeiXiong Liao <liaoweixiong@allwinnertech.com>
To: Kees Cook <keescook@chromium.org>, Anton Vorontsov <anton@enomsg.org>,
 Colin Cross <ccross@android.com>, Tony Luck <tony.luck@intel.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: [PATCH 11/11] mtd: new support oops logger based on pstore/blk
Date: Thu, 16 Jan 2020 18:00:31 +0800
Message-Id: <1579168831-16399-12-git-send-email-liaoweixiong@allwinnertech.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1579168831-16399-1-git-send-email-liaoweixiong@allwinnertech.com>
References: <1579168831-16399-1-git-send-email-liaoweixiong@allwinnertech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_020131_559061_6212EB7C 
X-CRM114-Status: GOOD (  26.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [121.197.207.205 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

It's the last one of a series of patches for adaptive to MTD device.

The mtdpstore is similar to mtdoops but more powerful. It bases on
pstore/blk, aims to store panic and oops log to a flash partition,
where it can be read back as files after mounting pstore filesystem.

The pstore/blk and blkoops, a wrapper for pstore/blk, are designed for
block device at the very beginning, but now, compatible to not only
block device. After this series of patches, pstore/blk can also work
for MTD device. To make it work, 'blkdev' on kconfig or module
parameter of blkoops should be set as mtd device name or mtd number.
See more about pstore/blk and blkoops on:
    Documentation/admin-guide/pstore-block.rst

Why do we need mtdpstore?
1. repetitive jobs between pstore and mtdoops
   Both of pstore and mtdoops do the same jobs that store panic/oops log.
   They have much similar logic that register to kmsg dumper and store
   log to several chunks one by one.
2. do what a driver should do
   To me, a driver should provide methods instead of policies. What MTD
   should do is to provide read/write/erase operations, geting rid of codes
   about chunk management, kmsg dumper and configuration.
3. enhanced feature
   Not only store log, but also show it as files.
   Not only log, but also trigger time and trigger count.
   Not only panic/oops log, but also log recorder for pmsg, console and
   ftrace in the future.

Signed-off-by: WeiXiong Liao <liaoweixiong@allwinnertech.com>
---
 drivers/mtd/Kconfig     |  10 +
 drivers/mtd/Makefile    |   1 +
 drivers/mtd/mtdpstore.c | 531 ++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 542 insertions(+)
 create mode 100644 drivers/mtd/mtdpstore.c

diff --git a/drivers/mtd/Kconfig b/drivers/mtd/Kconfig
index 42d401ea60ee..a6e59495a738 100644
--- a/drivers/mtd/Kconfig
+++ b/drivers/mtd/Kconfig
@@ -170,6 +170,16 @@ config MTD_OOPS
 	  buffer in a flash partition where it can be read back at some
 	  later point.
 
+config MTD_PSTORE
+	tristate "Log panic/oops to an MTD buffer base on pstore"
+	depends on PSTORE_BLKOOPS
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
index 000000000000..4f78db09fec1
--- /dev/null
+++ b/drivers/mtd/mtdpstore.c
@@ -0,0 +1,531 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * MTD Oops/Panic loger for pstore/blk
+ *
+ * Copyright (C) 2019 WeiXiong Liao <liaoweixiong@gallwinnertech.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ */
+#define pr_fmt(fmt) "mtdoops-pstore: " fmt
+
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/blkoops.h>
+#include <linux/mtd/mtd.h>
+#include <linux/bitops.h>
+
+/* Maximum MTD partition size */
+#define MTDPSTORE_MAX_MTD_SIZE (8 * 1024 * 1024)
+
+static struct mtdpstore_context {
+	int index;
+	struct blkoops_info bo_info;
+	struct blkoops_device bo_dev;
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
+		pr_err("mtd_block_isbad failed, aborting\n");
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
+	u64 zonenum = div_u64(off, cxt->bo_info.dmesg_size);
+
+	pr_debug("mark zone %llu used\n", zonenum);
+	set_bit(zonenum, cxt->usedmap);
+}
+
+static inline void mtdpstore_mark_unused(struct mtdpstore_context *cxt,
+		loff_t off)
+{
+	u64 zonenum = div_u64(off, cxt->bo_info.dmesg_size);
+
+	pr_debug("mark zone %llu unused\n", zonenum);
+	clear_bit(zonenum, cxt->usedmap);
+}
+
+static inline void mtdpstore_block_mark_unused(struct mtdpstore_context *cxt,
+		loff_t off)
+{
+	u64 zonenum = div_u64(off, cxt->bo_info.dmesg_size);
+	u32 zonecnt = cxt->mtd->erasesize / cxt->bo_info.dmesg_size;
+
+	while (zonecnt > 0) {
+		pr_debug("mark zone %llu unused\n", zonenum);
+		clear_bit(zonenum, cxt->usedmap);
+		zonenum++;
+		zonecnt--;
+	}
+}
+
+static inline int mtdpstore_is_used(struct mtdpstore_context *cxt, loff_t off)
+{
+	u64 zonenum = div_u64(off, cxt->bo_info.dmesg_size);
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
+	u64 zonenum = div_u64(off, cxt->bo_info.dmesg_size);
+	u32 zonecnt = cxt->mtd->erasesize / cxt->bo_info.dmesg_size;
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
+	u64 zonenum = div_u64(off, cxt->bo_info.dmesg_size);
+
+	pr_debug("mark zone %llu removed\n", zonenum);
+	set_bit(zonenum, cxt->rmmap);
+}
+
+static void mtdpstore_block_clear_removed(struct mtdpstore_context *cxt,
+		loff_t off)
+{
+	u64 zonenum = div_u64(off, cxt->bo_info.dmesg_size);
+	u32 zonecnt = cxt->mtd->erasesize / cxt->bo_info.dmesg_size;
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
+	u64 zonenum = div_u64(off, cxt->bo_info.dmesg_size);
+	u32 zonecnt = cxt->mtd->erasesize / cxt->bo_info.dmesg_size;
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
+	struct erase_info erase;
+	int ret;
+
+	pr_debug("try to erase off 0x%llx\n", off);
+	erase.len = cxt->mtd->erasesize;
+	erase.addr = off;
+	ret = mtd_erase(cxt->mtd, &erase);
+	if (!ret)
+		mtdpstore_block_clear_removed(cxt, off);
+	else
+		pr_err("erase of region [0x%llx, 0x%llx] on \"%s\" failed\n",
+		       (unsigned long long)erase.addr,
+		       (unsigned long long)erase.len, cxt->bo_info.device);
+	return ret;
+}
+
+/*
+ * called while removing file
+ *
+ * Avoiding over erasing, do erase only when all zones are removed or unused.
+ * Ensure to remove when unregister by reading, erasing and wrtiing back.
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
+ * What is securety for mtdpstore?
+ * As there is no erase for panic case, we should ensure at least one zone
+ * is writable. Otherwise, panic write will be failed.
+ * If zone is used, write operation will return -ENEXT, which means that
+ * pstore/blk will try one by one until get a empty zone. So, it's no need
+ * to ensure next zone is empty, but at least one.
+ */
+static int mtdpstore_security(struct mtdpstore_context *cxt, loff_t off)
+{
+	int ret = 0, i;
+	u32 zonenum = (u32)div_u64(off, cxt->bo_info.dmesg_size);
+	u32 zonecnt = (u32)div_u64(cxt->mtd->size, cxt->bo_info.dmesg_size);
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
+		pr_err("all blocks bad!\n");
+	pr_debug("end security\n");
+	return ret;
+}
+
+static ssize_t mtdpstore_write(const char *buf, size_t size, loff_t off)
+{
+	struct mtdpstore_context *cxt = &oops_cxt;
+	size_t retlen;
+	int ret;
+
+	if (mtdpstore_block_isbad(cxt, off))
+		return -ENEXT;
+
+	/* zone is used, please try next one */
+	if (mtdpstore_is_used(cxt, off))
+		return -ENEXT;
+
+	pr_debug("try to write off 0x%llx size %zu\n", off, size);
+	ret = mtd_write(cxt->mtd, off, size, &retlen, (u_char *)buf);
+	if (ret < 0 || retlen != size) {
+		pr_err("write failure at %lld (%zu of %zu written), err %d\n",
+				off, retlen, size, ret);
+		return -EIO;
+	}
+	mtdpstore_mark_used(cxt, off);
+
+	mtdpstore_security(cxt, off);
+	return retlen;
+}
+
+/*
+ * All zones will be read as pstore/blk will read zone one by one when do
+ * recover.
+ */
+static ssize_t mtdpstore_read(char *buf, size_t size, loff_t off)
+{
+	struct mtdpstore_context *cxt = &oops_cxt;
+	size_t retlen;
+	int ret;
+
+	if (mtdpstore_block_isbad(cxt, off))
+		return -ENEXT;
+
+	pr_debug("try to read off 0x%llx size %zu\n", off, size);
+	ret = mtd_read(cxt->mtd, off, size, &retlen, (u_char *)buf);
+	if ((ret < 0 && !mtd_is_bitflip(ret)) || size != retlen)  {
+		pr_err("read failure at %lld (%zu of %zu read), err %d\n",
+				off, retlen, size, ret);
+		return -EIO;
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
+	size_t retlen;
+	int ret;
+
+	if (mtdpstore_panic_block_isbad(cxt, off))
+		return -ENEXT;
+
+	/* zone is used, please try next one */
+	if (mtdpstore_is_used(cxt, off))
+		return -ENEXT;
+
+	ret = mtd_panic_write(cxt->mtd, off, size, &retlen, (u_char *)buf);
+	if (ret < 0 || size != retlen) {
+		pr_err("panic write failure at %lld (%zu of %zu read), err %d\n",
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
+	struct blkoops_info *info = &cxt->bo_info;
+	unsigned long longcnt;
+
+	if (!strcmp(mtd->name, info->device))
+		cxt->index = mtd->index;
+
+	if (mtd->index != cxt->index || cxt->index < 0)
+		return;
+
+	pr_debug("found matching MTD device %s\n", mtd->name);
+
+	if (mtd->size < info->dmesg_size * 2) {
+		pr_err("MTD partition %d not big enough\n", mtd->index);
+		return;
+	}
+	if (mtd->erasesize < info->dmesg_size) {
+		pr_err("eraseblock size of MTD partition %d too small\n",
+				mtd->index);
+		return;
+	}
+	if (unlikely(info->dmesg_size % mtd->writesize)) {
+		pr_err("record size %lu KB must align to write size %d KB\n",
+				info->dmesg_size / 1024,
+				mtd->writesize / 1024);
+		return;
+	}
+	if (unlikely(mtd->size > MTDPSTORE_MAX_MTD_SIZE)) {
+		pr_err("mtd%d is too large (limit is %d MiB)\n",
+				mtd->index,
+				MTDPSTORE_MAX_MTD_SIZE / 1024 / 1024);
+		return;
+	}
+
+	longcnt = BITS_TO_LONGS(div_u64(mtd->size, info->dmesg_size));
+	cxt->rmmap = kcalloc(longcnt, sizeof(long), GFP_KERNEL);
+	cxt->usedmap = kcalloc(longcnt, sizeof(long), GFP_KERNEL);
+
+	longcnt = BITS_TO_LONGS(div_u64(mtd->size, mtd->erasesize));
+	cxt->badmap = kcalloc(longcnt, sizeof(long), GFP_KERNEL);
+
+	cxt->bo_dev.total_size = mtd->size;
+	/* just support dmesg right now */
+	cxt->bo_dev.flags = BLKOOPS_DEV_SUPPORT_DMESG;
+	cxt->bo_dev.read = mtdpstore_read;
+	cxt->bo_dev.write = mtdpstore_write;
+	cxt->bo_dev.erase = mtdpstore_erase;
+	cxt->bo_dev.panic_write = mtdpstore_panic_write;
+
+	ret = blkoops_register_device(&cxt->bo_dev);
+	if (ret) {
+		pr_err("mtd%d register to blkoops failed\n", mtd->index);
+		return;
+	}
+	cxt->mtd = mtd;
+	pr_info("Attached to MTD device %d\n", mtd->index);
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
+	if (ret || retlen != mtd->erasesize)
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
+		unsigned int zonesize = cxt->bo_info.dmesg_size;
+
+		/* remove must clear used bit */
+		if (mtdpstore_is_used(cxt, off))
+			mtd_write(mtd, off, zonesize, &retlen, buf);
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
+static int mtdpstore_flush_removed(struct mtdpstore_context *cxt)
+{
+	struct mtd_info *mtd = cxt->mtd;
+	int ret;
+	loff_t off;
+	u32 blkcnt = (u32)div_u64(mtd->size, mtd->erasesize);
+
+	for (off = 0; blkcnt > 0; blkcnt--, off += mtd->erasesize) {
+		ret = mtdpstore_block_is_removed(cxt, off);
+		if (!ret) {
+			off += mtd->erasesize;
+			continue;
+		}
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
+	blkoops_unregister_device(&cxt->bo_dev);
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
+	struct blkoops_info *info = &cxt->bo_info;
+	char *endp;
+
+	ret = blkoops_info(info);
+	if (unlikely(ret))
+		return ret;
+
+	if (strlen(info->device) == 0) {
+		pr_err("mtd device must be supplied\n");
+		return -EINVAL;
+	}
+	if (!info->dmesg_size) {
+		pr_err("no recorder enabled\n");
+		return -EINVAL;
+	}
+
+	/* Setup the MTD device to use */
+	cxt->index = kstrtoul(info->device, &endp, 0);
+	if (*endp != '\0')
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
+MODULE_DESCRIPTION("MTD Oops/Panic console logger/driver");
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
