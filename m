Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB8413D772
	for <lists+linux-mtd@lfdr.de>; Thu, 16 Jan 2020 11:03:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7+uWk3hTsxhz6/ynv/ZMuewh0ldjA3LkLwttjSElTgs=; b=rYJvWukkaXaC2Qe68NpRzdYyCi
	4ZlUBHp/up3bZqxRGsJ6Ql4qOm4Gx2uyWADsGtsIuLRHrXi+ADNXjLlnVRmkmZglU60gJ9bw0QpTq
	C/u/8k9doIjLDVfVZbhLD739yat1Rv3SVZlvCfoForKrC3OLWAP0KTLWETNr1zqU9tMdwxJ2Xd7Je
	29MUzdp6hwYoLucxwjIyTJER814sqLJHitxc0WWtiZxo7ac60By+X6KKk9yC13k/dilolX07BKyKU
	zs6hZvw1K9kQ9FHOHTX4ww/9OlLyVLUcP8oldRoqVX4THUjEf0E32d7i6pn2HA5/rP45paCBGwP+1
	GftaFMAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is1zv-0007cB-JH; Thu, 16 Jan 2020 10:03:31 +0000
Received: from smtp2207-205.mail.aliyun.com ([121.197.207.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is1xu-00061m-NA
 for linux-mtd@lists.infradead.org; Thu, 16 Jan 2020 10:01:36 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.06712966|-1; CH=green;
 DM=CONTINUE|CONTINUE|true|0.241667-0.0180241-0.740309;
 DS=CONTINUE|ham_system_inform|0.0778515-0.000343831-0.921805;
 FP=0|0|0|0|0|-1|-1|-1; HT=e02c03312; MF=liaoweixiong@allwinnertech.com; NM=1;
 PH=DS; RN=17; RT=17; SR=0; TI=SMTPD_---.Gd3Kgdg_1579168866; 
Received: from
 PC-liaoweixiong.allwinnertech.com(mailfrom:liaoweixiong@allwinnertech.com
 fp:SMTPD_---.Gd3Kgdg_1579168866)
 by smtp.aliyun-inc.com(10.147.42.241);
 Thu, 16 Jan 2020 18:01:21 +0800
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
Subject: [PATCH 07/11] pstore/blk: skip broken zone for mtd device
Date: Thu, 16 Jan 2020 18:00:27 +0800
Message-Id: <1579168831-16399-8-git-send-email-liaoweixiong@allwinnertech.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1579168831-16399-1-git-send-email-liaoweixiong@allwinnertech.com>
References: <1579168831-16399-1-git-send-email-liaoweixiong@allwinnertech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_020126_934058_EDA8CF28 
X-CRM114-Status: GOOD (  17.88  )
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

It's one of a series of patches for adaptive to MTD device.

MTD device is not block device. As the block of flash (MTD device) will
be broken, it's necessary for pstore/blk to skip the broken block
(bad block).

If device drivers return -ENEXT, pstore/blk will try next zone of dmesg.

Signed-off-by: WeiXiong Liao <liaoweixiong@allwinnertech.com>
---
 Documentation/admin-guide/pstore-block.rst |  3 +-
 fs/pstore/blkzone.c                        | 74 +++++++++++++++++++++++-------
 include/linux/blkoops.h                    |  4 +-
 include/linux/pstore_blk.h                 |  4 ++
 4 files changed, 66 insertions(+), 19 deletions(-)

diff --git a/Documentation/admin-guide/pstore-block.rst b/Documentation/admin-guide/pstore-block.rst
index 58418d429c55..aea6d2664a22 100644
--- a/Documentation/admin-guide/pstore-block.rst
+++ b/Documentation/admin-guide/pstore-block.rst
@@ -185,7 +185,8 @@ The parameter @offset is the relative position of the device.
 Normally the number of bytes read/written should be returned, while for error,
 negative number will be returned. The following return numbers mean more:
 
--EBUSY: pstore/blk should try again later.
+1. -EBUSY: pstore/blk should try again later.
+#. -ENEXT: this zone is used or broken, pstore/blk should try next one.
 
 panic_write (for non-block device)
 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
diff --git a/fs/pstore/blkzone.c b/fs/pstore/blkzone.c
index a14b1b3d9053..7c6bf14f7e7d 100644
--- a/fs/pstore/blkzone.c
+++ b/fs/pstore/blkzone.c
@@ -222,6 +222,9 @@ static int blkz_zone_write(struct blkz_zone *zone,
 
 	return 0;
 set_dirty:
+	/* no need to mark dirty if going to try next zone */
+	if (wcnt == -ENEXT)
+		return -ENEXT;
 	atomic_set(&zone->dirty, true);
 	/* flush dirty zones nicely */
 	if (wcnt == -EBUSY && !is_on_panic())
@@ -375,7 +378,11 @@ static int blkz_recover_dmesg_meta(struct blkz_context *cxt)
 			return -EINVAL;
 
 		rcnt = info->read((char *)buf, len, zone->off);
-		if (rcnt != len) {
+		if (rcnt == -ENEXT) {
+			pr_debug("%s with id %lu may be broken, skip\n",
+					zone->name, i);
+			continue;
+		} else if (rcnt != len) {
 			pr_err("read %s with id %lu failed\n", zone->name, i);
 			return (int)rcnt < 0 ? (int)rcnt : -EIO;
 		}
@@ -665,24 +672,58 @@ static void blkz_write_kmsg_hdr(struct blkz_zone *zone,
 		hdr->counter = 0;
 }
 
+/*
+ * In case zone is broken, which may occur to MTD device, we try each zones,
+ * start at cxt->dmesg_write_cnt.
+ */
 static inline int notrace blkz_dmesg_write_do(struct blkz_context *cxt,
 		struct pstore_record *record)
 {
+	int ret = -EBUSY;
 	size_t size, hlen;
 	struct blkz_zone *zone;
-	unsigned int zonenum;
+	unsigned int i;
 
-	zonenum = cxt->dmesg_write_cnt;
-	zone = cxt->dbzs[zonenum];
-	if (unlikely(!zone))
-		return -ENOSPC;
-	cxt->dmesg_write_cnt = (zonenum + 1) % cxt->dmesg_max_cnt;
+	for (i = 0; i < cxt->dmesg_max_cnt; i++) {
+		unsigned int zonenum, len;
+
+		zonenum = (cxt->dmesg_write_cnt + i) % cxt->dmesg_max_cnt;
+		zone = cxt->dbzs[zonenum];
+		if (unlikely(!zone))
+			return -ENOSPC;
 
-	pr_debug("write %s to zone id %d\n", zone->name, zonenum);
-	blkz_write_kmsg_hdr(zone, record);
-	hlen = sizeof(struct blkz_dmesg_header);
-	size = min_t(size_t, record->size, zone->buffer_size - hlen);
-	return blkz_zone_write(zone, FLUSH_ALL, record->buf, size, hlen);
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
+		blkz_write_kmsg_hdr(zone, record);
+		hlen = sizeof(struct blkz_dmesg_header);
+		size = min_t(size_t, record->size, zone->buffer_size - hlen);
+		ret = blkz_zone_write(zone, FLUSH_ALL, record->buf, size, hlen);
+		if (likely(!ret || ret != -ENEXT)) {
+			cxt->dmesg_write_cnt = zonenum + 1;
+			cxt->dmesg_write_cnt %= cxt->dmesg_max_cnt;
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
 
 static int notrace blkz_dmesg_write(struct blkz_context *cxt,
@@ -806,7 +847,6 @@ static int notrace blkz_pstore_write(struct pstore_record *record)
 	}
 }
 
-#define READ_NEXT_ZONE ((ssize_t)(-1024))
 static struct blkz_zone *blkz_read_next_zone(struct blkz_context *cxt)
 {
 	struct blkz_zone *zone = NULL;
@@ -867,7 +907,7 @@ static ssize_t blkz_dmesg_read(struct blkz_zone *zone,
 	if (blkz_read_dmesg_hdr(zone, record)) {
 		atomic_set(&zone->buffer->datalen, 0);
 		atomic_set(&zone->dirty, 0);
-		return READ_NEXT_ZONE;
+		return -ENEXT;
 	}
 	size -= sizeof(struct blkz_dmesg_header);
 
@@ -892,7 +932,7 @@ static ssize_t blkz_dmesg_read(struct blkz_zone *zone,
 	if (unlikely(blkz_zone_read(zone, record->buf + hlen, size,
 				sizeof(struct blkz_dmesg_header)) < 0)) {
 		kfree(record->buf);
-		return READ_NEXT_ZONE;
+		return -ENEXT;
 	}
 
 	return size + hlen;
@@ -906,7 +946,7 @@ static ssize_t blkz_record_read(struct blkz_zone *zone,
 
 	buf = (struct blkz_buffer *)zone->oldbuf;
 	if (!buf)
-		return READ_NEXT_ZONE;
+		return -ENEXT;
 
 	size = atomic_read(&buf->datalen);
 	start = atomic_read(&buf->start);
@@ -956,7 +996,7 @@ static ssize_t blkz_pstore_read(struct pstore_record *record)
 	}
 
 	ret = readop(zone, record);
-	if (ret == READ_NEXT_ZONE)
+	if (ret == -ENEXT)
 		goto next_zone;
 	return ret;
 }
diff --git a/include/linux/blkoops.h b/include/linux/blkoops.h
index 8f40f225545d..71c596fd4cc8 100644
--- a/include/linux/blkoops.h
+++ b/include/linux/blkoops.h
@@ -27,6 +27,7 @@
  *	On error, negative number should be returned. The following returning
  *	number means more:
  *	  -EBUSY: pstore/blk should try again later.
+ *	  -ENEXT: this zone is used or broken, pstore/blk should try next one.
  * @panic_write:
  *	The write operation only used for panic.
  *
@@ -45,7 +46,8 @@ struct blkoops_device {
 
 /*
  * Panic write for block device who should write alignmemt to SECTOR_SIZE.
- * On success, zero should be returned. Others mean error.
+ * On success, zero should be returned. Others mean error except that -ENEXT
+ * means the zone is used or broken, pstore/blk should try next one.
  */
 typedef int (*blkoops_blk_panic_write_op)(const char *buf, sector_t start_sect,
 		sector_t sects);
diff --git a/include/linux/pstore_blk.h b/include/linux/pstore_blk.h
index 77704c1b404a..bbbe4fe37f7c 100644
--- a/include/linux/pstore_blk.h
+++ b/include/linux/pstore_blk.h
@@ -6,6 +6,9 @@
 #include <linux/types.h>
 #include <linux/blkdev.h>
 
+/* read/write function return -ENEXT means try next zone */
+#define ENEXT ((ssize_t)(1024))
+
 /**
  * struct blkz_info - backend blkzone driver structure
  *
@@ -42,6 +45,7 @@
  *	On error, negative number should be returned. The following returning
  *	number means more:
  *	  -EBUSY: pstore/blk should try again later.
+ *	  -ENEXT: this zone is used or broken, pstore/blk should try next one.
  * @panic_write:
  *	The write operation only used for panic. It's optional if you do not
  *	care panic record. If panic occur but blkzone do not recover yet, the
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
