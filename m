Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 474891CC556
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 01:43:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YGqwI3sRQiimuvS+KQ58PbBl6Ffe5KhkFnq6i6pbo04=; b=DAcDIg4QLYF86F
	8Gg7yQWavpChOIgOSLu9ypxIivY1PwYq0GwTTOMMj/cuapfhzKqF5g0NjNmjahulJWZWDDIm0rmsi
	Z8iGuwlHeiW6OsaovlUnCccUoA69VbX8m860cqUxENIHpnXe0a9CX3Ix4fGO8+kR7fUhuOshM9t4Y
	rDNdmJ4O5W2ontpvnTqjvkYz0lDQ40J5mCTLQJM+mTWbt25mJrOZqH6IiPpKThTXEyF33jo0aq3Si
	2XFAnXMzFwz4R089cXR/4NCrMNJGGOv0+irCJ3WDS95MFOlJjFYYplmsz/B0Bbz9pUJFrvmpj+Pfz
	0A9FTk/kU/YYXMfySXTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXZ81-0003AH-Ay; Sat, 09 May 2020 23:43:33 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXZ5o-0001GF-UG
 for linux-mtd@lists.infradead.org; Sat, 09 May 2020 23:41:20 +0000
Received: by mail-pg1-x544.google.com with SMTP id n11so2666703pgl.9
 for <linux-mtd@lists.infradead.org>; Sat, 09 May 2020 16:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fEMermlBnRh/DOJW6zF4Si4yCcishDiHPOUC1PbcGCo=;
 b=B9LZIRJ5d0U/Xh+12NFRgnrEYplYYQgkwXNugwjadKkzjprOzcFqTTRSuZaKK/fT/p
 I4OxGcxb4kNykZnM7Inm1p7/9764Cu240+8YyB2DJweLTmpXih5AOd2223t+mKu99bra
 s0o1V5mRykUrLm5b0RotHxG7WgKG33x1vNHvc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fEMermlBnRh/DOJW6zF4Si4yCcishDiHPOUC1PbcGCo=;
 b=GTPgu/cI6lAvez/5BZzmxJxk04fGGvggFVS0OBuSvpltEPuVqZ0yh8tz+wBqKGVtfS
 EZh7Ptj7vkVOyKHIvQ1jwUa8gVarsj9oNnFHpUfaXQgQFatciOuSliJ8NRWFg+ldjTC7
 Nrew15UPrdBRXafXrSO4MREpd6wBXV7KPah1bBastwHBdtDIs24+ggOwmle/iQgsk9Uj
 p+Ft6sDUf2AfFPFVao12QgtdmSbUb7QRd/yMzsFQNrsybdENF5Kelyli5n9xFoAFtoVz
 OeEmWbHXKMA421YrwELkwnTbq9tUzf3O2hg1mXGS4s1QrMUA0ueAUUjpoWgf1zPDJca4
 UD+g==
X-Gm-Message-State: AGi0PubEEpYXTfllXGlp46pB2XNJbAvmOGEOcELlSgDatSP9C/BOxb69
 SowneJksoBD2dKW9UpHX+F5yxQ==
X-Google-Smtp-Source: APiQypLRBqpQQfaHv3LuMajRRRkTzczoZ7ZrFJ4U0UdbXKatblk/MuF+1hy23nPMOGxBS+qu1NAdWw==
X-Received: by 2002:a62:e80e:: with SMTP id c14mr9397230pfi.83.1589067675515; 
 Sat, 09 May 2020 16:41:15 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id y21sm5348258pfn.148.2020.05.09.16.41.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 May 2020 16:41:11 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: [PATCH v6 10/18] pstore/zone,blk: Add support for pmsg frontend
Date: Sat,  9 May 2020 16:40:55 -0700
Message-Id: <20200509234103.46544-11-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200509234103.46544-1-keescook@chromium.org>
References: <20200509234103.46544-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_164116_990820_0019F4AB 
X-CRM114-Status: GOOD (  24.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Kees Cook <keescook@chromium.org>, Jonathan Corbet <corbet@lwn.net>,
 Richard Weinberger <richard@nod.at>, Anton Vorontsov <anton@enomsg.org>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Colin Cross <ccross@android.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Pavel Tatashin <pasha.tatashin@soleen.com>, Rob Herring <robh@kernel.org>,
 Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: WeiXiong Liao <liaoweixiong@allwinnertech.com>

Add pmsg support to pstore/blk (through pstore/zone). To enable, pmsg_size
must be greater than 0 and a multiple of 4096.

Signed-off-by: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Link: https://lore.kernel.org/r/1585126506-18635-5-git-send-email-liaoweixiong@allwinnertech.com
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 fs/pstore/Kconfig           |  12 ++
 fs/pstore/blk.c             |   9 ++
 fs/pstore/zone.c            | 269 ++++++++++++++++++++++++++++++++++--
 include/linux/pstore_zone.h |   2 +
 4 files changed, 282 insertions(+), 10 deletions(-)

diff --git a/fs/pstore/Kconfig b/fs/pstore/Kconfig
index 92ba73bd0b62..f18cd126d83f 100644
--- a/fs/pstore/Kconfig
+++ b/fs/pstore/Kconfig
@@ -224,3 +224,15 @@ config PSTORE_BLK_MAX_REASON
 
 	  NOTE that, both Kconfig and module parameters can configure
 	  pstore/blk, but module parameters have priority over Kconfig.
+
+config PSTORE_BLK_PMSG_SIZE
+	int "Size in Kbytes of pmsg to store"
+	depends on PSTORE_BLK
+	depends on PSTORE_PMSG
+	default 64
+	help
+	  This just sets size of pmsg (pmsg_size) for pstore/blk. The size is
+	  in KB and must be a multiple of 4.
+
+	  NOTE that, both Kconfig and module parameters can configure
+	  pstore/blk, but module parameters have priority over Kconfig.
diff --git a/fs/pstore/blk.c b/fs/pstore/blk.c
index b0e1ae21d1de..97b54c90aeb1 100644
--- a/fs/pstore/blk.c
+++ b/fs/pstore/blk.c
@@ -27,6 +27,14 @@ module_param(max_reason, int, 0400);
 MODULE_PARM_DESC(max_reason,
 		 "maximum reason for kmsg dump (default 2: Oops and Panic)");
 
+#if IS_ENABLED(CONFIG_PSTORE_PMSG)
+static long pmsg_size = CONFIG_PSTORE_BLK_PMSG_SIZE;
+#else
+static long pmsg_size = -1;
+#endif
+module_param(pmsg_size, long, 0400);
+MODULE_PARM_DESC(pmsg_size, "pmsg size in kbytes");
+
 /*
  * blkdev - the block device to use for pstore storage
  *
@@ -132,6 +140,7 @@ static int psblk_register_do(struct psblk_device *dev)
 	}
 
 	verify_size(kmsg_size, 4096, dev->flags & PSTORE_FLAGS_DMESG);
+	verify_size(pmsg_size, 4096, dev->flags & PSTORE_FLAGS_PMSG);
 #undef verify_size
 
 	pstore_zone_info->total_size = dev->total_size;
diff --git a/fs/pstore/zone.c b/fs/pstore/zone.c
index a388c299ebb1..03dc87791c24 100644
--- a/fs/pstore/zone.c
+++ b/fs/pstore/zone.c
@@ -27,12 +27,14 @@
  *
  * @sig: signature to indicate header (PSZ_SIG xor PSZONE-type value)
  * @datalen: length of data in @data
+ * @start: offset into @data where the beginning of the stored bytes begin
  * @data: zone data.
  */
 struct psz_buffer {
 #define PSZ_SIG (0x43474244) /* DBGC */
 	uint32_t sig;
 	atomic_t datalen;
+	atomic_t start;
 	uint8_t data[];
 };
 
@@ -88,9 +90,11 @@ struct pstore_zone {
  * struct psz_context - all about running state of pstore/zone
  *
  * @opszs: oops/panic storage zones
+ * @ppsz: pmsg storage zone
  * @kmsg_max_cnt: max count of @opszs
  * @kmsg_read_cnt: counter to read oops zone
  * @kmsg_write_cnt: counter to write
+ * @pmsg_read_cnt: counter to read pmsg zone
  * @oops_counter: counter to oops
  * @panic_counter: counter to panic
  * @recovered: whether finish recovering data from storage
@@ -101,9 +105,11 @@ struct pstore_zone {
  */
 struct psz_context {
 	struct pstore_zone **opszs;
+	struct pstore_zone *ppsz;
 	unsigned int kmsg_max_cnt;
 	unsigned int kmsg_read_cnt;
 	unsigned int kmsg_write_cnt;
+	unsigned int pmsg_read_cnt;
 	/*
 	 * the counter should be recovered when recover.
 	 * It records the oops/panic times after burning rather than booting.
@@ -143,15 +149,20 @@ static inline int buffer_datalen(struct pstore_zone *zone)
 	return atomic_read(&zone->buffer->datalen);
 }
 
+static inline int buffer_start(struct pstore_zone *zone)
+{
+	return atomic_read(&zone->buffer->start);
+}
+
 static inline bool is_on_panic(void)
 {
 	return atomic_read(&pstore_zone_cxt.on_panic);
 }
 
-static ssize_t psz_zone_read(struct pstore_zone *zone, char *buf,
+static ssize_t psz_zone_read_buffer(struct pstore_zone *zone, char *buf,
 		size_t len, unsigned long off)
 {
-	if (!buf || !zone->buffer)
+	if (!buf || !zone || !zone->buffer)
 		return -EINVAL;
 	if (off > zone->buffer_size)
 		return -EINVAL;
@@ -160,6 +171,18 @@ static ssize_t psz_zone_read(struct pstore_zone *zone, char *buf,
 	return len;
 }
 
+static int psz_zone_read_oldbuf(struct pstore_zone *zone, char *buf,
+		size_t len, unsigned long off)
+{
+	if (!buf || !zone || !zone->oldbuf)
+		return -EINVAL;
+	if (off > zone->buffer_size)
+		return -EINVAL;
+	len = min_t(size_t, len, zone->buffer_size - off);
+	memcpy(buf, zone->oldbuf->data + off, len);
+	return 0;
+}
+
 static int psz_zone_write(struct pstore_zone *zone,
 		enum psz_flush_mode flush_mode, const char *buf,
 		size_t len, unsigned long off)
@@ -415,6 +438,93 @@ static int psz_kmsg_recover(struct psz_context *cxt)
 	return ret;
 }
 
+static int psz_recover_zone(struct psz_context *cxt, struct pstore_zone *zone)
+{
+	struct pstore_zone_info *info = cxt->pstore_zone_info;
+	struct psz_buffer *oldbuf, tmpbuf;
+	int ret = 0;
+	char *buf;
+	ssize_t rcnt, len, start, off;
+
+	if (!zone || zone->oldbuf)
+		return 0;
+
+	if (is_on_panic()) {
+		/* save data as much as possible */
+		psz_flush_dirty_zone(zone);
+		return 0;
+	}
+
+	if (unlikely(!info->read))
+		return -EINVAL;
+
+	len = sizeof(struct psz_buffer);
+	rcnt = info->read((char *)&tmpbuf, len, zone->off);
+	if (rcnt != len) {
+		pr_debug("read zone %s failed\n", zone->name);
+		return (int)rcnt < 0 ? (int)rcnt : -EIO;
+	}
+
+	if (tmpbuf.sig != zone->buffer->sig) {
+		pr_debug("no valid data in zone %s\n", zone->name);
+		return 0;
+	}
+
+	if (zone->buffer_size < atomic_read(&tmpbuf.datalen) ||
+		zone->buffer_size < atomic_read(&tmpbuf.start)) {
+		pr_info("found overtop zone: %s: off %lld, size %zu\n",
+				zone->name, zone->off, zone->buffer_size);
+		/* just keep going */
+		return 0;
+	}
+
+	if (!atomic_read(&tmpbuf.datalen)) {
+		pr_debug("found erased zone: %s: off %lld, size %zu, datalen %d\n",
+				zone->name, zone->off, zone->buffer_size,
+				atomic_read(&tmpbuf.datalen));
+		return 0;
+	}
+
+	pr_debug("found nice zone: %s: off %lld, size %zu, datalen %d\n",
+			zone->name, zone->off, zone->buffer_size,
+			atomic_read(&tmpbuf.datalen));
+
+	len = atomic_read(&tmpbuf.datalen) + sizeof(*oldbuf);
+	oldbuf = kzalloc(len, GFP_KERNEL);
+	if (!oldbuf)
+		return -ENOMEM;
+
+	memcpy(oldbuf, &tmpbuf, sizeof(*oldbuf));
+	buf = (char *)oldbuf + sizeof(*oldbuf);
+	len = atomic_read(&oldbuf->datalen);
+	start = atomic_read(&oldbuf->start);
+	off = zone->off + sizeof(*oldbuf);
+
+	/* get part of data */
+	rcnt = info->read(buf, len - start, off + start);
+	if (rcnt != len - start) {
+		pr_err("read zone %s failed\n", zone->name);
+		ret = (int)rcnt < 0 ? (int)rcnt : -EIO;
+		goto free_oldbuf;
+	}
+
+	/* get the rest of data */
+	rcnt = info->read(buf + len - start, start, off);
+	if (rcnt != start) {
+		pr_err("read zone %s failed\n", zone->name);
+		ret = (int)rcnt < 0 ? (int)rcnt : -EIO;
+		goto free_oldbuf;
+	}
+
+	zone->oldbuf = oldbuf;
+	psz_flush_dirty_zone(zone);
+	return 0;
+
+free_oldbuf:
+	kfree(oldbuf);
+	return ret;
+}
+
 /**
  * psz_recovery() - recover data from storage
  * @cxt: the context of pstore/zone
@@ -434,6 +544,10 @@ static inline int psz_recovery(struct psz_context *cxt)
 	if (ret)
 		goto recover_fail;
 
+	ret = psz_recover_zone(cxt, cxt->ppsz);
+	if (ret)
+		goto recover_fail;
+
 	pr_debug("recover end!\n");
 	atomic_set(&cxt->recovered, 1);
 	return 0;
@@ -448,9 +562,17 @@ static int psz_pstore_open(struct pstore_info *psi)
 	struct psz_context *cxt = psi->data;
 
 	cxt->kmsg_read_cnt = 0;
+	cxt->pmsg_read_cnt = 0;
 	return 0;
 }
 
+static inline bool psz_old_ok(struct pstore_zone *zone)
+{
+	if (zone && zone->oldbuf && atomic_read(&zone->oldbuf->datalen))
+		return true;
+	return false;
+}
+
 static inline bool psz_ok(struct pstore_zone *zone)
 {
 	if (zone && zone->buffer && buffer_datalen(zone))
@@ -475,6 +597,25 @@ static inline int psz_kmsg_erase(struct psz_context *cxt,
 	return psz_zone_write(zone, FLUSH_META, NULL, 0, 0);
 }
 
+static inline int psz_record_erase(struct psz_context *cxt,
+		struct pstore_zone *zone)
+{
+	if (unlikely(!psz_old_ok(zone)))
+		return 0;
+
+	kfree(zone->oldbuf);
+	zone->oldbuf = NULL;
+	/*
+	 * if there are new data in zone buffer, that means the old data
+	 * are already invalid. It is no need to flush 0 (erase) to
+	 * block device.
+	 */
+	if (!buffer_datalen(zone))
+		return psz_zone_write(zone, FLUSH_META, NULL, 0, 0);
+	psz_flush_dirty_zone(zone);
+	return 0;
+}
+
 static int psz_pstore_erase(struct pstore_record *record)
 {
 	struct psz_context *cxt = record->psi->data;
@@ -484,6 +625,8 @@ static int psz_pstore_erase(struct pstore_record *record)
 		if (record->id >= cxt->kmsg_max_cnt)
 			return -EINVAL;
 		return psz_kmsg_erase(cxt, cxt->opszs[record->id], record);
+	case PSTORE_TYPE_PMSG:
+		return psz_record_erase(cxt, cxt->ppsz);
 	default:
 		return -EINVAL;
 	}
@@ -504,8 +647,10 @@ static void psz_write_kmsg_hdr(struct pstore_zone *zone,
 	hdr->reason = record->reason;
 	if (hdr->reason == KMSG_DUMP_OOPS)
 		hdr->counter = ++cxt->oops_counter;
-	else
+	else if (hdr->reason == KMSG_DUMP_PANIC)
 		hdr->counter = ++cxt->panic_counter;
+	else
+		hdr->counter = 0;
 }
 
 static inline int notrace psz_kmsg_write_record(struct psz_context *cxt,
@@ -555,6 +700,53 @@ static int notrace psz_kmsg_write(struct psz_context *cxt,
 	return 0;
 }
 
+static int notrace psz_record_write(struct pstore_zone *zone,
+		struct pstore_record *record)
+{
+	size_t start, rem;
+	int cnt = record->size;
+	bool is_full_data = false;
+	char *buf = record->buf;
+
+	if (!zone || !record)
+		return -ENOSPC;
+
+	if (atomic_read(&zone->buffer->datalen) >= zone->buffer_size)
+		is_full_data = true;
+
+	if (unlikely(cnt > zone->buffer_size)) {
+		buf += cnt - zone->buffer_size;
+		cnt = zone->buffer_size;
+	}
+
+	start = buffer_start(zone);
+	rem = zone->buffer_size - start;
+	if (unlikely(rem < cnt)) {
+		psz_zone_write(zone, FLUSH_PART, buf, rem, start);
+		buf += rem;
+		cnt -= rem;
+		start = 0;
+		is_full_data = true;
+	}
+
+	atomic_set(&zone->buffer->start, cnt + start);
+	psz_zone_write(zone, FLUSH_PART, buf, cnt, start);
+
+	/**
+	 * psz_zone_write will set datalen as start + cnt.
+	 * It work if actual data length lesser than buffer size.
+	 * If data length greater than buffer size, pmsg will rewrite to
+	 * beginning of zone, which make buffer->datalen wrongly.
+	 * So we should reset datalen as buffer size once actual data length
+	 * greater than buffer size.
+	 */
+	if (is_full_data) {
+		atomic_set(&zone->buffer->datalen, zone->buffer_size);
+		psz_zone_write(zone, FLUSH_META, NULL, 0, 0);
+	}
+	return 0;
+}
+
 static int notrace psz_pstore_write(struct pstore_record *record)
 {
 	struct psz_context *cxt = record->psi->data;
@@ -566,6 +758,8 @@ static int notrace psz_pstore_write(struct pstore_record *record)
 	switch (record->type) {
 	case PSTORE_TYPE_DMESG:
 		return psz_kmsg_write(cxt, record);
+	case PSTORE_TYPE_PMSG:
+		return psz_record_write(cxt->ppsz, record);
 	default:
 		return -EINVAL;
 	}
@@ -581,6 +775,13 @@ static struct pstore_zone *psz_read_next_zone(struct psz_context *cxt)
 			return zone;
 	}
 
+	if (cxt->pmsg_read_cnt == 0) {
+		cxt->pmsg_read_cnt++;
+		zone = cxt->ppsz;
+		if (psz_old_ok(zone))
+			return zone;
+	}
+
 	return NULL;
 }
 
@@ -631,7 +832,7 @@ static ssize_t psz_kmsg_read(struct pstore_zone *zone,
 			return -ENOMEM;
 	}
 
-	size = psz_zone_read(zone, record->buf + hlen, size,
+	size = psz_zone_read_buffer(zone, record->buf + hlen, size,
 			sizeof(struct psz_kmsg_header));
 	if (unlikely(size < 0)) {
 		kfree(record->buf);
@@ -641,6 +842,32 @@ static ssize_t psz_kmsg_read(struct pstore_zone *zone,
 	return size + hlen;
 }
 
+static ssize_t psz_record_read(struct pstore_zone *zone,
+		struct pstore_record *record)
+{
+	size_t len;
+	struct psz_buffer *buf;
+
+	if (!zone || !record)
+		return -ENOSPC;
+
+	buf = (struct psz_buffer *)zone->oldbuf;
+	if (!buf)
+		return -ENOMSG;
+
+	len = atomic_read(&buf->datalen);
+	record->buf = kmalloc(len, GFP_KERNEL);
+	if (!record->buf)
+		return -ENOMEM;
+
+	if (unlikely(psz_zone_read_oldbuf(zone, record->buf, len, 0))) {
+		kfree(record->buf);
+		return -ENOMSG;
+	}
+
+	return len;
+}
+
 static ssize_t psz_pstore_read(struct pstore_record *record)
 {
 	struct psz_context *cxt = record->psi->data;
@@ -665,6 +892,9 @@ static ssize_t psz_pstore_read(struct pstore_record *record)
 		readop = psz_kmsg_read;
 		record->id = cxt->kmsg_read_cnt - 1;
 		break;
+	case PSTORE_TYPE_PMSG:
+		readop = psz_record_read;
+		break;
 	default:
 		goto next_zone;
 	}
@@ -720,6 +950,8 @@ static void psz_free_all_zones(struct psz_context *cxt)
 {
 	if (cxt->opszs)
 		psz_free_zones(&cxt->opszs, &cxt->kmsg_max_cnt);
+	if (cxt->ppsz)
+		psz_free_zone(&cxt->ppsz);
 }
 
 static struct pstore_zone *psz_init_zone(enum pstore_type_id type,
@@ -753,8 +985,10 @@ static struct pstore_zone *psz_init_zone(enum pstore_type_id type,
 	zone->type = type;
 	zone->buffer_size = size - sizeof(struct psz_buffer);
 	zone->buffer->sig = type ^ PSZ_SIG;
+	zone->oldbuf = NULL;
 	atomic_set(&zone->dirty, 0);
 	atomic_set(&zone->buffer->datalen, 0);
+	atomic_set(&zone->buffer->start, 0);
 
 	*off += size;
 
@@ -809,19 +1043,28 @@ static int psz_alloc_zones(struct psz_context *cxt)
 	struct pstore_zone_info *info = cxt->pstore_zone_info;
 	loff_t off = 0;
 	int err;
-	size_t size;
+	size_t off_size = 0;
+
+	off_size += info->pmsg_size;
+	cxt->ppsz = psz_init_zone(PSTORE_TYPE_PMSG, &off, info->pmsg_size);
+	if (IS_ERR(cxt->ppsz)) {
+		err = PTR_ERR(cxt->ppsz);
+		cxt->ppsz = NULL;
+		goto free_out;
+	}
 
-	size = info->total_size;
-	cxt->opszs = psz_init_zones(PSTORE_TYPE_DMESG, &off, size,
+	cxt->opszs = psz_init_zones(PSTORE_TYPE_DMESG, &off,
+			info->total_size - off_size,
 			info->kmsg_size, &cxt->kmsg_max_cnt);
 	if (IS_ERR(cxt->opszs)) {
 		err = PTR_ERR(cxt->opszs);
 		cxt->opszs = NULL;
-		goto fail_out;
+		goto free_out;
 	}
 
 	return 0;
-fail_out:
+free_out:
+	psz_free_all_zones(cxt);
 	return err;
 }
 
@@ -844,7 +1087,7 @@ int register_pstore_zone(struct pstore_zone_info *info)
 		return -EINVAL;
 	}
 
-	if (!info->kmsg_size) {
+	if (!info->kmsg_size && !info->pmsg_size) {
 		pr_warn("at least one record size must be non-zero\n");
 		return -EINVAL;
 	}
@@ -866,6 +1109,7 @@ int register_pstore_zone(struct pstore_zone_info *info)
 
 	check_size(total_size, 4096);
 	check_size(kmsg_size, SECTOR_SIZE);
+	check_size(pmsg_size, SECTOR_SIZE);
 
 #undef check_size
 
@@ -891,6 +1135,7 @@ int register_pstore_zone(struct pstore_zone_info *info)
 	pr_debug("register %s with properties:\n", info->name);
 	pr_debug("\ttotal size : %ld Bytes\n", info->total_size);
 	pr_debug("\tkmsg size : %ld Bytes\n", info->kmsg_size);
+	pr_debug("\tpmsg size : %ld Bytes\n", info->pmsg_size);
 
 	err = psz_alloc_zones(cxt);
 	if (err) {
@@ -920,6 +1165,10 @@ int register_pstore_zone(struct pstore_zone_info *info)
 			pr_cont(",panic_write");
 		pr_cont(")");
 	}
+	if (info->pmsg_size) {
+		cxt->pstore.flags |= PSTORE_FLAGS_PMSG;
+		pr_cont(" pmsg");
+	}
 	pr_cont("\n");
 
 	err = pstore_register(&cxt->pstore);
diff --git a/include/linux/pstore_zone.h b/include/linux/pstore_zone.h
index a6a79ff1351b..39c2cb944123 100644
--- a/include/linux/pstore_zone.h
+++ b/include/linux/pstore_zone.h
@@ -17,6 +17,7 @@ typedef ssize_t (*psz_write_op)(const char *, size_t, loff_t);
  * @kmsg_size:	The size of oops/panic zone. Zero means disabled, otherwise,
  *		it must be multiple of SECTOR_SIZE(512 Bytes).
  * @max_reason: Maximum kmsg dump reason to store.
+ * @pmsg_size:	The size of pmsg zone which is the same as @kmsg_size.
  * @read:	The general read operation. Both of the function parameters
  *		@size and @offset are relative value to storage.
  *		On success, the number of bytes should be returned, others
@@ -33,6 +34,7 @@ struct pstore_zone_info {
 	unsigned long total_size;
 	unsigned long kmsg_size;
 	int max_reason;
+	unsigned long pmsg_size;
 	psz_read_op read;
 	psz_write_op write;
 	psz_write_op panic_write;
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
