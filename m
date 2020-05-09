Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9A61CC0D0
	for <lists+linux-mtd@lfdr.de>; Sat,  9 May 2020 13:18:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=owTosrhekfKyxliCuA0T4fYCMzflqUPPQcM6UTQbIZo=; b=kTnyba1wU7trltB6E4jkwX9eBB
	Mi3fx950dDmqbMsRD37m94kzwRamEODOzY+MzuoRn5nnP7gEpT7trRJ0GTkucFPums2bLpTcr7F9P
	U5SfRGOHsAkRTar/cz3xsXzBZUX5i4yL9joRNq5Jtp9wYoi3xF0x0tFb5dMxQJn4p9DTgwfjb+Pku
	9WGoahYkM/chW49G+vDGQH7aLRnR+hW569RIzr+f5DynGHYyimXt7nEaMmp8LdGRqjIR3uLBjK1co
	6wt4/TxwKT072ggDdRR6eVrpQyXFOGdFtjulWGGPxIkMzreudlaqK+cT4DYU3MMO4UPraW+VLgk1/
	Wn/iT09g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXNUs-0002ap-7v; Sat, 09 May 2020 11:18:22 +0000
Received: from smtp2207-205.mail.aliyun.com ([121.197.207.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXNRV-0005lq-Ig
 for linux-mtd@lists.infradead.org; Sat, 09 May 2020 11:14:58 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.07436282|-1; CH=green;
 DM=|CONTINUE|false|; DS=CONTINUE|ham_alarm|0.050626-0.000244671-0.949129;
 FP=0|0|0|0|0|-1|-1|-1; HT=e02c03303; MF=liaoweixiong@allwinnertech.com; NM=1;
 PH=DS; RN=20; RT=20; SR=0; TI=SMTPD_---.HVopGr-_1589022874; 
Received: from
 PC-liaoweixiong.allwinnertech.com(mailfrom:liaoweixiong@allwinnertech.com
 fp:SMTPD_---.HVopGr-_1589022874)
 by smtp.aliyun-inc.com(10.147.44.129);
 Sat, 09 May 2020 19:14:49 +0800
From: WeiXiong Liao <liaoweixiong@allwinnertech.com>
To: Kees Cook <keescook@chromium.org>, Anton Vorontsov <anton@enomsg.org>,
 Colin Cross <ccross@android.com>, Tony Luck <tony.luck@intel.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Steven Rostedt <rostedt@goodmis.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: [PATCH v5 09/12] pstore/zone: Provide way to skip "broken" zone for
 MTD devices
Date: Sat,  9 May 2020 19:14:11 +0800
Message-Id: <1589022854-19821-10-git-send-email-liaoweixiong@allwinnertech.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1589022854-19821-1-git-send-email-liaoweixiong@allwinnertech.com>
References: <1589022854-19821-1-git-send-email-liaoweixiong@allwinnertech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_041453_794233_27AB611E 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [121.197.207.205 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: WeiXiong Liao <liaoweixiong@allwinnertech.com>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

One requirement to support MTD devices in pstore/zone is having a
way to declare certain regions as broken. Add this support to
pstore/zone.

The MTD driver should return -ENOMSG when encountering a bad region,
which tells pstore/zone to skip and try the next one.

Signed-off-by: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Link: https://lore.kernel.org/r/1585126506-18635-9-git-send-email-liaoweixiong@allwinnertech.com
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 fs/pstore/blk.c             | 10 +++++--
 fs/pstore/zone.c            | 65 ++++++++++++++++++++++++++++++++++++---------
 include/linux/pstore_blk.h  |  3 ++-
 include/linux/pstore_zone.h | 12 ++++++---
 4 files changed, 71 insertions(+), 19 deletions(-)

diff --git a/fs/pstore/blk.c b/fs/pstore/blk.c
index 84ca98923d8a..bf27dbd18db2 100644
--- a/fs/pstore/blk.c
+++ b/fs/pstore/blk.c
@@ -101,9 +101,12 @@
  *		means error.
  * @write:	The same as @read, but the following error number:
  *		-EBUSY means try to write again later.
+ *		-ENOMSG means to try next zone.
  * @panic_write:The write operation only used for panic case. It's optional
- *		if you do not care panic log. The parameters and return value
- *		are the same as @read.
+ *		if you do not care panic log. The parameters are relative
+ *		value to storage.
+ *		On success, the number of bytes should be returned, others
+ *		excluding -ENOMSG mean error. -ENOMSG means to try next zone.
  */
 struct psblk_device {
 	unsigned long total_size;
@@ -315,6 +318,9 @@ static ssize_t psblk_blk_panic_write(const char *buf, size_t size,
 	/* size and off must align to SECTOR_SIZE for block device */
 	ret = blkdev_panic_write(buf, off >> SECTOR_SHIFT,
 			size >> SECTOR_SHIFT);
+	/* try next zone */
+	if (ret == -ENOMSG)
+		return ret;
 	return ret ? -EIO : size;
 }
 
diff --git a/fs/pstore/zone.c b/fs/pstore/zone.c
index a51594f95347..9a9a4a7134d0 100644
--- a/fs/pstore/zone.c
+++ b/fs/pstore/zone.c
@@ -247,6 +247,9 @@ static int psz_zone_write(struct pstore_zone *zone,
 
 	return 0;
 dirty:
+	/* no need to mark dirty if going to try next zone */
+	if (wcnt == -ENOMSG)
+		return -ENOMSG;
 	atomic_set(&zone->dirty, true);
 	/* flush dirty zones nicely */
 	if (wcnt == -EBUSY && !is_on_panic())
@@ -389,7 +392,11 @@ static int psz_recover_oops_meta(struct psz_context *cxt)
 			return -EINVAL;
 
 		rcnt = info->read((char *)buf, len, zone->off);
-		if (rcnt != len) {
+		if (rcnt == -ENOMSG) {
+			pr_debug("%s with id %lu may be broken, skip\n",
+					zone->name, i);
+			continue;
+		} else if (rcnt != len) {
 			pr_err("read %s with id %lu failed\n", zone->name, i);
 			return (int)rcnt < 0 ? (int)rcnt : -EIO;
 		}
@@ -724,24 +731,58 @@ static void psz_write_kmsg_hdr(struct pstore_zone *zone,
 		hdr->counter = 0;
 }
 
+/*
+ * In case zone is broken, which may occur to MTD device, we try each zones,
+ * start at cxt->oops_write_cnt.
+ */
 static inline int notrace psz_oops_write_record(struct psz_context *cxt,
 		struct pstore_record *record)
 {
+	int ret = -EBUSY;
 	size_t size, hlen;
 	struct pstore_zone *zone;
-	unsigned int zonenum;
+	unsigned int i;
 
-	zonenum = cxt->oops_write_cnt;
-	zone = cxt->opszs[zonenum];
-	if (unlikely(!zone))
-		return -ENOSPC;
-	cxt->oops_write_cnt = (zonenum + 1) % cxt->oops_max_cnt;
+	for (i = 0; i < cxt->oops_max_cnt; i++) {
+		unsigned int zonenum, len;
 
-	pr_debug("write %s to zone id %d\n", zone->name, zonenum);
-	psz_write_kmsg_hdr(zone, record);
-	hlen = sizeof(struct psz_oops_header);
-	size = min_t(size_t, record->size, zone->buffer_size - hlen);
-	return psz_zone_write(zone, FLUSH_ALL, record->buf, size, hlen);
+		zonenum = (cxt->oops_write_cnt + i) % cxt->oops_max_cnt;
+		zone = cxt->opszs[zonenum];
+		if (unlikely(!zone))
+			return -ENOSPC;
+
+		/* avoid destorying old data, allocate a new one */
+		len = zone->buffer_size + sizeof(*zone->buffer);
+		zone->oldbuf = zone->buffer;
+		zone->buffer = kzalloc(len, GFP_KERNEL);
+		if (!zone->buffer) {
+			zone->buffer = zone->oldbuf;
+			return -ENOMEM;
+		}
+		zone->buffer->sig = zone->oldbuf->sig;
+
+		pr_debug("write %s to zone id %d\n", zone->name, zonenum);
+		psz_write_kmsg_hdr(zone, record);
+		hlen = sizeof(struct psz_oops_header);
+		size = min_t(size_t, record->size, zone->buffer_size - hlen);
+		ret = psz_zone_write(zone, FLUSH_ALL, record->buf, size, hlen);
+		if (likely(!ret || ret != -ENOMSG)) {
+			cxt->oops_write_cnt = zonenum + 1;
+			cxt->oops_write_cnt %= cxt->oops_max_cnt;
+			/* no need to try next zone, free last zone buffer */
+			kfree(zone->oldbuf);
+			zone->oldbuf = NULL;
+			return ret;
+		}
+
+		pr_debug("zone %u may be broken, try next dmesg zone\n",
+				zonenum);
+		kfree(zone->buffer);
+		zone->buffer = zone->oldbuf;
+		zone->oldbuf = NULL;
+	}
+
+	return -EBUSY;
 }
 
 static int notrace psz_oops_write(struct psz_context *cxt,
diff --git a/include/linux/pstore_blk.h b/include/linux/pstore_blk.h
index d8f609e60288..828b0763d477 100644
--- a/include/linux/pstore_blk.h
+++ b/include/linux/pstore_blk.h
@@ -14,7 +14,8 @@
  * @start_sect: start sector to block device
  * @sects: sectors count on buf
  *
- * Return: On success, zero should be returned. Others mean error.
+ * Return: On success, zero should be returned. Others excluding -ENOMSG
+ * mean error. -ENOMSG means to try next zone.
  *
  * Panic write to block device must be aligned to SECTOR_SIZE.
  */
diff --git a/include/linux/pstore_zone.h b/include/linux/pstore_zone.h
index 94f441b8b616..ddb3dfea4ea6 100644
--- a/include/linux/pstore_zone.h
+++ b/include/linux/pstore_zone.h
@@ -23,11 +23,15 @@
  * @read:	The general read operation. Both of the function parameters
  *		@size and @offset are relative value to storage.
  *		On success, the number of bytes should be returned, others
- *		means error.
- * @write:	The same as @read, but -EBUSY means try to write again later.
+ *		mean error.
+ * @write:	The same as @read, but the following error number:
+ *		-EBUSY means try to write again later.
+ *		-ENOMSG means to try next zone.
  * @panic_write:The write operation only used for panic case. It's optional
- *		if you do not care panic log. The parameters and return value
- *		are the same as @read.
+ *		if you do not care panic log. The parameters are relative
+ *		value to storage.
+ *		On success, the number of bytes should be returned, others
+ *		excluding -ENOMSG mean error. -ENOMSG means to try next zone.
  */
 struct pstore_zone_info {
 	struct module *owner;
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
