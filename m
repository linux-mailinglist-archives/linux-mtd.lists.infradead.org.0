Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE891CE93F
	for <lists+linux-mtd@lfdr.de>; Tue, 12 May 2020 01:35:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bmxj2VgA8KIbvYc7EwUR2/eLyK8JHrxgCGD4AqxCbC4=; b=XgSFdJkd8yoWVu
	uKrDn4ksnIpkQAPWorxFlMlPokRE49lcdpB86sqxrvAixPu1JfTfpNFVPBJca+Eog/QhnPtjFNiq7
	EPShUiR/pAfCYpBO6IJv3UPInw4AP9BXqI9t/YBphb/q1AdD7S7eBwt3QWMlUjgvemCQXESGAzwdQ
	9af/gF8WsLYeE2RDEra1cbaLXyLCG+Gwxn/DV/DnckkbQz9irTGkyh9Au1GUNrmdbTqAS89k5QhcY
	3k9/nMpnqUR5TQUM+Eax6k3fIg+j1QEG3n3/pFDAe6ZJBuBtRxe9uZvhGanvi567iy3ankFx4sDp8
	hMCRVZIFYB9/YCxmLxTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYHwy-00044r-7a; Mon, 11 May 2020 23:35:08 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYHuZ-0002G1-7E
 for linux-mtd@lists.infradead.org; Mon, 11 May 2020 23:32:42 +0000
Received: by mail-pf1-x441.google.com with SMTP id w65so5447159pfc.12
 for <linux-mtd@lists.infradead.org>; Mon, 11 May 2020 16:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=f57mkmMeRTJCb8idtqQpGeSZRnG7x3GSllIy/j0B6ps=;
 b=oJtRpaouFh2xn/BoHj9my+gKng1zvIAso0350ay6tgxJO0+q1s8oy5DdHFY++0HiM/
 ivJd9c/Ul0UqH6avGf2y3YzIYmHAZ64P34jVKAe4J8jBVxp90U5/cFLom0IpYd5+sKLF
 cW5HbuxigR2XNORwYuQXr8hsVIyO8y8O6O5G8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=f57mkmMeRTJCb8idtqQpGeSZRnG7x3GSllIy/j0B6ps=;
 b=MLpmJb2AcZvUDxd+TI9zbMrYXtLf1NO+pzXzKgDZow76FAPVsVFAOc0JcRqgUBn2wl
 ctesvvwJb92ELHK9vPQU1Ekvxq57DFBp5ULqohGa1Sru/haVm5e5GLcd//++7H8xWEU3
 TCZ0c5+LwRY77WGYYnxkmXe8Lax65wVWyIrtYvODsNVHalfG9Zu5fkX7rxsFLuTMF+Mw
 VTf5vUoKGOk3PKGkj4I8GPKS/SbDXcZv36hEhKYILURZRSJelmvYkty/CanN8zzD0w+j
 9PtZRPGQJN03nYYlbowVKQBIPMz8ZHMfkysNmO99fNdeeP6TIzGy+SrdJ+LHSSMmOzGm
 Xb+A==
X-Gm-Message-State: AGi0PuZa3uRKeB0Oev658nNWhRTitWatlCYEqfLTbji6k5FY+A86CTUN
 3PDcTh4qj00f7RUJaEqxNiSzeQ==
X-Google-Smtp-Source: APiQypKFYj6kjh3yVfGdOaUuvQtzDiI9MAfZIVYNvL1SGyAtiMuKXOoZS59PFfe8qrOZO9tn2n7Vhg==
X-Received: by 2002:a63:fb4b:: with SMTP id w11mr17189987pgj.123.1589239958065; 
 Mon, 11 May 2020 16:32:38 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id ce21sm11013229pjb.51.2020.05.11.16.32.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 16:32:35 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: [PATCH v8 07/11] pstore/zone: Provide way to skip "broken" zone for
 MTD devices
Date: Mon, 11 May 2020 16:32:25 -0700
Message-Id: <20200511233229.27745-8-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200511233229.27745-1-keescook@chromium.org>
References: <20200511233229.27745-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_163239_433923_EFE7544C 
X-CRM114-Status: GOOD (  19.66  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rob Herring <robh@kernel.org>, Tony Luck <tony.luck@intel.com>,
 Kees Cook <keescook@chromium.org>, Jonathan Corbet <corbet@lwn.net>,
 Richard Weinberger <richard@nod.at>, Anton Vorontsov <anton@enomsg.org>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Colin Cross <ccross@android.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: WeiXiong Liao <liaoweixiong@allwinnertech.com>

One requirement to support MTD devices in pstore/zone is having a
way to declare certain regions as broken. Add this support to
pstore/zone.

The MTD driver should return -ENOMSG when encountering a bad region,
which tells pstore/zone to skip and try the next one.

Signed-off-by: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Link: https://lore.kernel.org/r/1585126506-18635-9-git-send-email-liaoweixiong@allwinnertech.com
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 fs/pstore/blk.c             | 10 ++++--
 fs/pstore/zone.c            | 65 ++++++++++++++++++++++++++++++-------
 include/linux/pstore_blk.h  |  3 +-
 include/linux/pstore_zone.h | 12 ++++---
 4 files changed, 71 insertions(+), 19 deletions(-)

diff --git a/fs/pstore/blk.c b/fs/pstore/blk.c
index 9f1f0d5b3795..8c78eb9906fb 100644
--- a/fs/pstore/blk.c
+++ b/fs/pstore/blk.c
@@ -109,9 +109,12 @@ struct bdev_info {
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
 struct pstore_device_info {
 	unsigned long total_size;
@@ -339,6 +342,9 @@ static ssize_t psblk_blk_panic_write(const char *buf, size_t size,
 	/* size and off must align to SECTOR_SIZE for block device */
 	ret = blkdev_panic_write(buf, off >> SECTOR_SHIFT,
 			size >> SECTOR_SHIFT);
+	/* try next zone */
+	if (ret == -ENOMSG)
+		return ret;
 	return ret ? -EIO : size;
 }
 
diff --git a/fs/pstore/zone.c b/fs/pstore/zone.c
index d83b24f3cdd9..110a38242f74 100644
--- a/fs/pstore/zone.c
+++ b/fs/pstore/zone.c
@@ -249,6 +249,9 @@ static int psz_zone_write(struct pstore_zone *zone,
 
 	return 0;
 dirty:
+	/* no need to mark dirty if going to try next zone */
+	if (wcnt == -ENOMSG)
+		return -ENOMSG;
 	atomic_set(&zone->dirty, true);
 	/* flush dirty zones nicely */
 	if (wcnt == -EBUSY && !is_on_panic())
@@ -391,7 +394,11 @@ static int psz_kmsg_recover_meta(struct psz_context *cxt)
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
@@ -726,24 +733,58 @@ static void psz_write_kmsg_hdr(struct pstore_zone *zone,
 		hdr->counter = 0;
 }
 
+/*
+ * In case zone is broken, which may occur to MTD device, we try each zones,
+ * start at cxt->kmsg_write_cnt.
+ */
 static inline int notrace psz_kmsg_write_record(struct psz_context *cxt,
 		struct pstore_record *record)
 {
+	int ret = -EBUSY;
 	size_t size, hlen;
 	struct pstore_zone *zone;
-	unsigned int zonenum;
+	unsigned int i;
 
-	zonenum = cxt->kmsg_write_cnt;
-	zone = cxt->kpszs[zonenum];
-	if (unlikely(!zone))
-		return -ENOSPC;
-	cxt->kmsg_write_cnt = (zonenum + 1) % cxt->kmsg_max_cnt;
+	for (i = 0; i < cxt->kmsg_max_cnt; i++) {
+		unsigned int zonenum, len;
+
+		zonenum = (cxt->kmsg_write_cnt + i) % cxt->kmsg_max_cnt;
+		zone = cxt->kpszs[zonenum];
+		if (unlikely(!zone))
+			return -ENOSPC;
+
+		/* avoid destroying old data, allocate a new one */
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
+		hlen = sizeof(struct psz_kmsg_header);
+		size = min_t(size_t, record->size, zone->buffer_size - hlen);
+		ret = psz_zone_write(zone, FLUSH_ALL, record->buf, size, hlen);
+		if (likely(!ret || ret != -ENOMSG)) {
+			cxt->kmsg_write_cnt = zonenum + 1;
+			cxt->kmsg_write_cnt %= cxt->kmsg_max_cnt;
+			/* no need to try next zone, free last zone buffer */
+			kfree(zone->oldbuf);
+			zone->oldbuf = NULL;
+			return ret;
+		}
 
-	pr_debug("write %s to zone id %d\n", zone->name, zonenum);
-	psz_write_kmsg_hdr(zone, record);
-	hlen = sizeof(struct psz_kmsg_header);
-	size = min_t(size_t, record->size, zone->buffer_size - hlen);
-	return psz_zone_write(zone, FLUSH_ALL, record->buf, size, hlen);
+		pr_debug("zone %u may be broken, try next dmesg zone\n",
+				zonenum);
+		kfree(zone->buffer);
+		zone->buffer = zone->oldbuf;
+		zone->oldbuf = NULL;
+	}
+
+	return -EBUSY;
 }
 
 static int notrace psz_kmsg_write(struct psz_context *cxt,
diff --git a/include/linux/pstore_blk.h b/include/linux/pstore_blk.h
index 4501977b1336..ccba8c068752 100644
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
index 6f16b0dd834a..e79a18e41064 100644
--- a/include/linux/pstore_zone.h
+++ b/include/linux/pstore_zone.h
@@ -23,11 +23,15 @@ typedef ssize_t (*pstore_zone_write_op)(const char *, size_t, loff_t);
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
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
