Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A2F1CE921
	for <lists+linux-mtd@lfdr.de>; Tue, 12 May 2020 01:33:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wRhoe9ru9WbLJCpXjDNwaVBG/q/KKJGg+kZ6/NHamE4=; b=PwwfF4zOYLHiOD
	+dd4DEN+OIuuc2aPjzCYsTojYhIHXI3NRIFzJXqHOKHG2l0AE87C6vYMNM4tNED6XtcSZSJfLkhaf
	iNsf6YeSxLSVITlJuOI5Dq8JI3yGexyPhf3hInomM+RS9NvH7AlZOSWJxEiVlllHtfxo3+jJEnuiD
	6Ch6CapK8mrEYIYytlix/cDDrjSNr0rTr1MYVPeGLjGjl3Auj3YvGWHGct5YuRP2b+vIXJyKrdlN/
	k1wHpjvuVFshztowQUj+5FGans4RbXFdCum7INDXWtG+cutXSjC/ZLSVZxeTeZoJgx1LQ6ifLyVHW
	ehE9/v6qZoeGIJ56A8bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYHvK-0002mz-Ax; Mon, 11 May 2020 23:33:26 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYHuU-0002D0-0l
 for linux-mtd@lists.infradead.org; Mon, 11 May 2020 23:32:37 +0000
Received: by mail-pj1-x1044.google.com with SMTP id ms17so8509022pjb.0
 for <linux-mtd@lists.infradead.org>; Mon, 11 May 2020 16:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZFD0nM2fmKpg/vyklIiAD3eMFJ52pAh+HYg3XxpGJ4M=;
 b=AhvJxANNmbMoOOpIVO8feoQgkvGgQPve4fmCYCmpi/6KcS2st02eZfpafw3AmkF6UX
 7Jiy0dQa5rWQlzYk7nJMoJbRjBO0sVF+lnRo0ZWAETCb03DYdeVRqxQMnxEBh6kFaeVM
 a/eOXSxI6pLLIk6jIhjPSdURo8n5iiNY3VjSk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZFD0nM2fmKpg/vyklIiAD3eMFJ52pAh+HYg3XxpGJ4M=;
 b=uLd7T7egBQzzMMO8A1kLBkM4x+8IKc+KjmYaBL2Zo7zrWzXjS5hCXKRJ1JQKxlcp+2
 W8aFFMTNpOAfp3AM4EFWy3JPJ6gWObenDoynvCv1VQEsvfNGoIx7woAm2nE6Ti3CSko8
 8DHz1h8aojJ/KSw2TF3TFB6FqOPRi0T/u0TbyV7tt8VzYf16Gi/OLQgCMkdANswLKcpA
 v5iCcuKpVXU1hyslygrW9PmC/I0SMOpB67M9Rh7CT9BAc2YJX6Tr3UHnznBMDIGFZdXw
 HOMBfMp0k0j9kRtXbuVlNQNL0Uos9uJ/DbLGtf7v66yK2Y1w+00Z84PgVfL11KWHByJy
 YqHw==
X-Gm-Message-State: AGi0PuaCs3ZC4Wld21hNlPe5RtU7lmLeLUfiaw1RqhgGkN9PwXM6EGaQ
 fBQzYzzo3Fg6BI10ZMdMg8cEsA==
X-Google-Smtp-Source: APiQypIf2fRpeRbdvlh0K0NyB+9Eyh7iuXALde9z8+NkOfYD3umaNyOKSNSqXRS7MFvVfMQWgo6XAA==
X-Received: by 2002:a17:902:eb54:: with SMTP id
 i20mr17195652pli.179.1589239953087; 
 Mon, 11 May 2020 16:32:33 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 9sm8908580pgr.17.2020.05.11.16.32.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 16:32:31 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: [PATCH v8 01/11] pstore/zone: Introduce common layer to manage
 storage zones
Date: Mon, 11 May 2020 16:32:19 -0700
Message-Id: <20200511233229.27745-2-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200511233229.27745-1-keescook@chromium.org>
References: <20200511233229.27745-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_163234_068799_F3A479D6 
X-CRM114-Status: GOOD (  24.15  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
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

Implement a common set of APIs needed to support pstore storage zones,
based on how ramoops is designed. This will be used by pstore/blk with
the intention of migrating pstore/ram in the future.

Signed-off-by: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Link: https://lore.kernel.org/r/1585126506-18635-2-git-send-email-liaoweixiong@allwinnertech.com
Co-developed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 fs/pstore/Kconfig           |   7 +
 fs/pstore/Makefile          |   3 +
 fs/pstore/zone.c            | 987 ++++++++++++++++++++++++++++++++++++
 include/linux/pstore_zone.h |  44 ++
 4 files changed, 1041 insertions(+)
 create mode 100644 fs/pstore/zone.c
 create mode 100644 include/linux/pstore_zone.h

diff --git a/fs/pstore/Kconfig b/fs/pstore/Kconfig
index 8f0369aad22a..98d2457bdd9f 100644
--- a/fs/pstore/Kconfig
+++ b/fs/pstore/Kconfig
@@ -153,3 +153,10 @@ config PSTORE_RAM
 	  "ramoops.ko".
 
 	  For more information, see Documentation/admin-guide/ramoops.rst.
+
+config PSTORE_ZONE
+	tristate
+	depends on PSTORE
+	help
+	  The common layer for pstore/blk (and pstore/ram in the future)
+	  to manage storage in zones.
diff --git a/fs/pstore/Makefile b/fs/pstore/Makefile
index 967b5891f325..58a967cbe4af 100644
--- a/fs/pstore/Makefile
+++ b/fs/pstore/Makefile
@@ -12,3 +12,6 @@ pstore-$(CONFIG_PSTORE_PMSG)	+= pmsg.o
 
 ramoops-objs += ram.o ram_core.o
 obj-$(CONFIG_PSTORE_RAM)	+= ramoops.o
+
+pstore_zone-objs += zone.o
+obj-$(CONFIG_PSTORE_ZONE)	+= pstore_zone.o
diff --git a/fs/pstore/zone.c b/fs/pstore/zone.c
new file mode 100644
index 000000000000..20fa52385c78
--- /dev/null
+++ b/fs/pstore/zone.c
@@ -0,0 +1,987 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Provide a pstore intermediate backend, organized into kernel memory
+ * allocated zones that are then mapped and flushed into a single
+ * contiguous region on a storage backend of some kind (block, mtd, etc).
+ */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/slab.h>
+#include <linux/mount.h>
+#include <linux/printk.h>
+#include <linux/fs.h>
+#include <linux/pstore_zone.h>
+#include <linux/kdev_t.h>
+#include <linux/device.h>
+#include <linux/namei.h>
+#include <linux/fcntl.h>
+#include <linux/uio.h>
+#include <linux/writeback.h>
+#include "internal.h"
+
+/**
+ * struct psz_head - header of zone to flush to storage
+ *
+ * @sig: signature to indicate header (PSZ_SIG xor PSZONE-type value)
+ * @datalen: length of data in @data
+ * @data: zone data.
+ */
+struct psz_buffer {
+#define PSZ_SIG (0x43474244) /* DBGC */
+	uint32_t sig;
+	atomic_t datalen;
+	uint8_t data[];
+};
+
+/**
+ * struct psz_kmsg_header - kmsg dump-specific header to flush to storage
+ *
+ * @magic: magic num for kmsg dump header
+ * @time: kmsg dump trigger time
+ * @compressed: whether conpressed
+ * @counter: kmsg dump counter
+ * @reason: the kmsg dump reason (e.g. oops, panic, etc)
+ * @data: pointer to log data
+ *
+ * This is a sub-header for a kmsg dump, trailing after &psz_buffer.
+ */
+struct psz_kmsg_header {
+#define PSTORE_KMSG_HEADER_MAGIC 0x4dfc3ae5 /* Just a random number */
+	uint32_t magic;
+	struct timespec64 time;
+	bool compressed;
+	uint32_t counter;
+	enum kmsg_dump_reason reason;
+	uint8_t data[];
+};
+
+/**
+ * struct pstore_zone - single stored buffer
+ *
+ * @off: zone offset of storage
+ * @type: front-end type for this zone
+ * @name: front-end name for this zone
+ * @buffer: pointer to data buffer managed by this zone
+ * @oldbuf: pointer to old data buffer
+ * @buffer_size: bytes in @buffer->data
+ * @should_recover: whether this zone should recover from storage
+ * @dirty: whether the data in @buffer dirty
+ *
+ * zone structure in memory.
+ */
+struct pstore_zone {
+	loff_t off;
+	const char *name;
+	enum pstore_type_id type;
+
+	struct psz_buffer *buffer;
+	struct psz_buffer *oldbuf;
+	size_t buffer_size;
+	bool should_recover;
+	atomic_t dirty;
+};
+
+/**
+ * struct psz_context - all about running state of pstore/zone
+ *
+ * @kpszs: kmsg dump storage zones
+ * @kmsg_max_cnt: max count of @kpszs
+ * @kmsg_read_cnt: counter of total read kmsg dumps
+ * @kmsg_write_cnt: counter of total kmsg dump writes
+ * @oops_counter: counter of oops dumps
+ * @panic_counter: counter of panic dumps
+ * @recovered: whether finished recovering data from storage
+ * @on_panic: whether panic is happening
+ * @pstore_zone_info_lock: lock to @pstore_zone_info
+ * @pstore_zone_info: information from backend
+ * @pstore: structure for pstore
+ */
+struct psz_context {
+	struct pstore_zone **kpszs;
+	unsigned int kmsg_max_cnt;
+	unsigned int kmsg_read_cnt;
+	unsigned int kmsg_write_cnt;
+	/*
+	 * These counters should be calculated during recovery.
+	 * It records the oops/panic times after crashes rather than boots.
+	 */
+	unsigned int oops_counter;
+	unsigned int panic_counter;
+	atomic_t recovered;
+	atomic_t on_panic;
+
+	/*
+	 * pstore_zone_info_lock protects this entire structure during calls
+	 * to register_pstore_zone()/unregister_pstore_zone().
+	 */
+	struct mutex pstore_zone_info_lock;
+	struct pstore_zone_info *pstore_zone_info;
+	struct pstore_info pstore;
+};
+static struct psz_context pstore_zone_cxt;
+
+/**
+ * enum psz_flush_mode - flush mode for psz_zone_write()
+ *
+ * @FLUSH_NONE: do not flush to storage but update data on memory
+ * @FLUSH_PART: just flush part of data including meta data to storage
+ * @FLUSH_META: just flush meta data of zone to storage
+ * @FLUSH_ALL: flush all of zone
+ */
+enum psz_flush_mode {
+	FLUSH_NONE = 0,
+	FLUSH_PART,
+	FLUSH_META,
+	FLUSH_ALL,
+};
+
+static inline int buffer_datalen(struct pstore_zone *zone)
+{
+	return atomic_read(&zone->buffer->datalen);
+}
+
+static inline bool is_on_panic(void)
+{
+	return atomic_read(&pstore_zone_cxt.on_panic);
+}
+
+static ssize_t psz_zone_read(struct pstore_zone *zone, char *buf,
+		size_t len, unsigned long off)
+{
+	if (!buf || !zone->buffer)
+		return -EINVAL;
+	if (off > zone->buffer_size)
+		return -EINVAL;
+	len = min_t(size_t, len, zone->buffer_size - off);
+	memcpy(buf, zone->buffer->data + off, len);
+	return len;
+}
+
+static int psz_zone_write(struct pstore_zone *zone,
+		enum psz_flush_mode flush_mode, const char *buf,
+		size_t len, unsigned long off)
+{
+	struct pstore_zone_info *info = pstore_zone_cxt.pstore_zone_info;
+	ssize_t wcnt = 0;
+	ssize_t (*writeop)(const char *buf, size_t bytes, loff_t pos);
+	size_t wlen;
+
+	if (off > zone->buffer_size)
+		return -EINVAL;
+
+	wlen = min_t(size_t, len, zone->buffer_size - off);
+	if (buf && wlen) {
+		memcpy(zone->buffer->data + off, buf, wlen);
+		atomic_set(&zone->buffer->datalen, wlen + off);
+	}
+
+	/* avoid to damage old records */
+	if (!is_on_panic() && !atomic_read(&pstore_zone_cxt.recovered))
+		goto dirty;
+
+	writeop = is_on_panic() ? info->panic_write : info->write;
+	if (!writeop)
+		goto dirty;
+
+	switch (flush_mode) {
+	case FLUSH_NONE:
+		if (unlikely(buf && wlen))
+			goto dirty;
+		return 0;
+	case FLUSH_PART:
+		wcnt = writeop((const char *)zone->buffer->data + off, wlen,
+				zone->off + sizeof(*zone->buffer) + off);
+		if (wcnt != wlen)
+			goto dirty;
+		fallthrough;
+	case FLUSH_META:
+		wlen = sizeof(struct psz_buffer);
+		wcnt = writeop((const char *)zone->buffer, wlen, zone->off);
+		if (wcnt != wlen)
+			goto dirty;
+		break;
+	case FLUSH_ALL:
+		wlen = zone->buffer_size + sizeof(*zone->buffer);
+		wcnt = writeop((const char *)zone->buffer, wlen, zone->off);
+		if (wcnt != wlen)
+			goto dirty;
+		break;
+	}
+
+	return 0;
+dirty:
+	atomic_set(&zone->dirty, true);
+	return -EBUSY;
+}
+
+static int psz_flush_dirty_zone(struct pstore_zone *zone)
+{
+	int ret;
+
+	if (unlikely(!zone))
+		return -EINVAL;
+
+	if (unlikely(!atomic_read(&pstore_zone_cxt.recovered)))
+		return -EBUSY;
+
+	if (!atomic_xchg(&zone->dirty, false))
+		return 0;
+
+	ret = psz_zone_write(zone, FLUSH_ALL, NULL, 0, 0);
+	if (ret)
+		atomic_set(&zone->dirty, true);
+	return ret;
+}
+
+static int psz_flush_dirty_zones(struct pstore_zone **zones, unsigned int cnt)
+{
+	int i, ret;
+	struct pstore_zone *zone;
+
+	if (!zones)
+		return -EINVAL;
+
+	for (i = 0; i < cnt; i++) {
+		zone = zones[i];
+		if (!zone)
+			return -EINVAL;
+		ret = psz_flush_dirty_zone(zone);
+		if (ret)
+			return ret;
+	}
+	return 0;
+}
+
+static int psz_move_zone(struct pstore_zone *old, struct pstore_zone *new)
+{
+	const char *data = (const char *)old->buffer->data;
+	int ret;
+
+	ret = psz_zone_write(new, FLUSH_ALL, data, buffer_datalen(old), 0);
+	if (ret) {
+		atomic_set(&new->buffer->datalen, 0);
+		atomic_set(&new->dirty, false);
+		return ret;
+	}
+	atomic_set(&old->buffer->datalen, 0);
+	return 0;
+}
+
+static int psz_kmsg_recover_data(struct psz_context *cxt)
+{
+	struct pstore_zone_info *info = cxt->pstore_zone_info;
+	struct pstore_zone *zone = NULL;
+	struct psz_buffer *buf;
+	unsigned long i;
+	ssize_t rcnt;
+
+	if (!info->read)
+		return -EINVAL;
+
+	for (i = 0; i < cxt->kmsg_max_cnt; i++) {
+		zone = cxt->kpszs[i];
+		if (unlikely(!zone))
+			return -EINVAL;
+		if (atomic_read(&zone->dirty)) {
+			unsigned int wcnt = cxt->kmsg_write_cnt;
+			struct pstore_zone *new = cxt->kpszs[wcnt];
+			int ret;
+
+			ret = psz_move_zone(zone, new);
+			if (ret) {
+				pr_err("move zone from %lu to %d failed\n",
+						i, wcnt);
+				return ret;
+			}
+			cxt->kmsg_write_cnt = (wcnt + 1) % cxt->kmsg_max_cnt;
+		}
+		if (!zone->should_recover)
+			continue;
+		buf = zone->buffer;
+		rcnt = info->read((char *)buf, zone->buffer_size + sizeof(*buf),
+				zone->off);
+		if (rcnt != zone->buffer_size + sizeof(*buf))
+			return (int)rcnt < 0 ? (int)rcnt : -EIO;
+	}
+	return 0;
+}
+
+static int psz_kmsg_recover_meta(struct psz_context *cxt)
+{
+	struct pstore_zone_info *info = cxt->pstore_zone_info;
+	struct pstore_zone *zone;
+	size_t rcnt, len;
+	struct psz_buffer *buf;
+	struct psz_kmsg_header *hdr;
+	struct timespec64 time = { };
+	unsigned long i;
+	/*
+	 * Recover may on panic, we can't allocate any memory by kmalloc.
+	 * So, we use local array instead.
+	 */
+	char buffer_header[sizeof(*buf) + sizeof(*hdr)] = {0};
+
+	if (!info->read)
+		return -EINVAL;
+
+	len = sizeof(*buf) + sizeof(*hdr);
+	buf = (struct psz_buffer *)buffer_header;
+	for (i = 0; i < cxt->kmsg_max_cnt; i++) {
+		zone = cxt->kpszs[i];
+		if (unlikely(!zone))
+			return -EINVAL;
+
+		rcnt = info->read((char *)buf, len, zone->off);
+		if (rcnt != len) {
+			pr_err("read %s with id %lu failed\n", zone->name, i);
+			return (int)rcnt < 0 ? (int)rcnt : -EIO;
+		}
+
+		if (buf->sig != zone->buffer->sig) {
+			pr_debug("no valid data in kmsg dump zone %lu\n", i);
+			continue;
+		}
+
+		if (zone->buffer_size < atomic_read(&buf->datalen)) {
+			pr_info("found overtop zone: %s: id %lu, off %lld, size %zu\n",
+					zone->name, i, zone->off,
+					zone->buffer_size);
+			continue;
+		}
+
+		hdr = (struct psz_kmsg_header *)buf->data;
+		if (hdr->magic != PSTORE_KMSG_HEADER_MAGIC) {
+			pr_info("found invalid zone: %s: id %lu, off %lld, size %zu\n",
+					zone->name, i, zone->off,
+					zone->buffer_size);
+			continue;
+		}
+
+		/*
+		 * we get the newest zone, and the next one must be the oldest
+		 * or unused zone, because we do write one by one like a circle.
+		 */
+		if (hdr->time.tv_sec >= time.tv_sec) {
+			time.tv_sec = hdr->time.tv_sec;
+			cxt->kmsg_write_cnt = (i + 1) % cxt->kmsg_max_cnt;
+		}
+
+		if (hdr->reason == KMSG_DUMP_OOPS)
+			cxt->oops_counter =
+				max(cxt->oops_counter, hdr->counter);
+		else if (hdr->reason == KMSG_DUMP_PANIC)
+			cxt->panic_counter =
+				max(cxt->panic_counter, hdr->counter);
+
+		if (!atomic_read(&buf->datalen)) {
+			pr_debug("found erased zone: %s: id %lu, off %lld, size %zu, datalen %d\n",
+					zone->name, i, zone->off,
+					zone->buffer_size,
+					atomic_read(&buf->datalen));
+			continue;
+		}
+
+		if (!is_on_panic())
+			zone->should_recover = true;
+		pr_debug("found nice zone: %s: id %lu, off %lld, size %zu, datalen %d\n",
+				zone->name, i, zone->off,
+				zone->buffer_size, atomic_read(&buf->datalen));
+	}
+
+	return 0;
+}
+
+static int psz_kmsg_recover(struct psz_context *cxt)
+{
+	int ret;
+
+	if (!cxt->kpszs)
+		return 0;
+
+	ret = psz_kmsg_recover_meta(cxt);
+	if (ret)
+		goto recover_fail;
+
+	ret = psz_kmsg_recover_data(cxt);
+	if (ret)
+		goto recover_fail;
+
+	return 0;
+recover_fail:
+	pr_debug("psz_recover_kmsg failed\n");
+	return ret;
+}
+
+/**
+ * psz_recovery() - recover data from storage
+ * @cxt: the context of pstore/zone
+ *
+ * recovery means reading data back from storage after rebooting
+ *
+ * Return: 0 on success, others on failure.
+ */
+static inline int psz_recovery(struct psz_context *cxt)
+{
+	int ret = -EBUSY;
+
+	if (atomic_read(&cxt->recovered))
+		return 0;
+
+	ret = psz_kmsg_recover(cxt);
+	if (ret)
+		goto recover_fail;
+
+	pr_debug("recover end!\n");
+	atomic_set(&cxt->recovered, 1);
+	return 0;
+
+recover_fail:
+	pr_err("recover failed\n");
+	return ret;
+}
+
+static int psz_pstore_open(struct pstore_info *psi)
+{
+	struct psz_context *cxt = psi->data;
+
+	cxt->kmsg_read_cnt = 0;
+	return 0;
+}
+
+static inline bool psz_ok(struct pstore_zone *zone)
+{
+	if (zone && zone->buffer && buffer_datalen(zone))
+		return true;
+	return false;
+}
+
+static inline int psz_kmsg_erase(struct psz_context *cxt,
+		struct pstore_zone *zone, struct pstore_record *record)
+{
+	struct psz_buffer *buffer = zone->buffer;
+	struct psz_kmsg_header *hdr =
+		(struct psz_kmsg_header *)buffer->data;
+
+	if (unlikely(!psz_ok(zone)))
+		return 0;
+	/* this zone is already updated, no need to erase */
+	if (record->count != hdr->counter)
+		return 0;
+
+	atomic_set(&zone->buffer->datalen, 0);
+	return psz_zone_write(zone, FLUSH_META, NULL, 0, 0);
+}
+
+static int psz_pstore_erase(struct pstore_record *record)
+{
+	struct psz_context *cxt = record->psi->data;
+
+	switch (record->type) {
+	case PSTORE_TYPE_DMESG:
+		if (record->id >= cxt->kmsg_max_cnt)
+			return -EINVAL;
+		return psz_kmsg_erase(cxt, cxt->kpszs[record->id], record);
+	default:
+		return -EINVAL;
+	}
+}
+
+static void psz_write_kmsg_hdr(struct pstore_zone *zone,
+		struct pstore_record *record)
+{
+	struct psz_context *cxt = record->psi->data;
+	struct psz_buffer *buffer = zone->buffer;
+	struct psz_kmsg_header *hdr =
+		(struct psz_kmsg_header *)buffer->data;
+
+	hdr->magic = PSTORE_KMSG_HEADER_MAGIC;
+	hdr->compressed = record->compressed;
+	hdr->time.tv_sec = record->time.tv_sec;
+	hdr->time.tv_nsec = record->time.tv_nsec;
+	hdr->reason = record->reason;
+	if (hdr->reason == KMSG_DUMP_OOPS)
+		hdr->counter = ++cxt->oops_counter;
+	else if (hdr->reason == KMSG_DUMP_PANIC)
+		hdr->counter = ++cxt->panic_counter;
+	else
+		hdr->counter = 0;
+}
+
+static inline int notrace psz_kmsg_write_record(struct psz_context *cxt,
+		struct pstore_record *record)
+{
+	size_t size, hlen;
+	struct pstore_zone *zone;
+	unsigned int zonenum;
+
+	zonenum = cxt->kmsg_write_cnt;
+	zone = cxt->kpszs[zonenum];
+	if (unlikely(!zone))
+		return -ENOSPC;
+	cxt->kmsg_write_cnt = (zonenum + 1) % cxt->kmsg_max_cnt;
+
+	pr_debug("write %s to zone id %d\n", zone->name, zonenum);
+	psz_write_kmsg_hdr(zone, record);
+	hlen = sizeof(struct psz_kmsg_header);
+	size = min_t(size_t, record->size, zone->buffer_size - hlen);
+	return psz_zone_write(zone, FLUSH_ALL, record->buf, size, hlen);
+}
+
+static int notrace psz_kmsg_write(struct psz_context *cxt,
+		struct pstore_record *record)
+{
+	int ret;
+
+	/*
+	 * Explicitly only take the first part of any new crash.
+	 * If our buffer is larger than kmsg_bytes, this can never happen,
+	 * and if our buffer is smaller than kmsg_bytes, we don't want the
+	 * report split across multiple records.
+	 */
+	if (record->part != 1)
+		return -ENOSPC;
+
+	if (!cxt->kpszs)
+		return -ENOSPC;
+
+	ret = psz_kmsg_write_record(cxt, record);
+	if (!ret) {
+		pr_debug("try to flush other dirty zones\n");
+		psz_flush_dirty_zones(cxt->kpszs, cxt->kmsg_max_cnt);
+	}
+
+	/* always return 0 as we had handled it on buffer */
+	return 0;
+}
+
+static int notrace psz_pstore_write(struct pstore_record *record)
+{
+	struct psz_context *cxt = record->psi->data;
+
+	if (record->type == PSTORE_TYPE_DMESG &&
+			record->reason == KMSG_DUMP_PANIC)
+		atomic_set(&cxt->on_panic, 1);
+
+	switch (record->type) {
+	case PSTORE_TYPE_DMESG:
+		return psz_kmsg_write(cxt, record);
+	default:
+		return -EINVAL;
+	}
+}
+
+static struct pstore_zone *psz_read_next_zone(struct psz_context *cxt)
+{
+	struct pstore_zone *zone = NULL;
+
+	while (cxt->kmsg_read_cnt < cxt->kmsg_max_cnt) {
+		zone = cxt->kpszs[cxt->kmsg_read_cnt++];
+		if (psz_ok(zone))
+			return zone;
+	}
+
+	return NULL;
+}
+
+static int psz_kmsg_read_hdr(struct pstore_zone *zone,
+		struct pstore_record *record)
+{
+	struct psz_buffer *buffer = zone->buffer;
+	struct psz_kmsg_header *hdr =
+		(struct psz_kmsg_header *)buffer->data;
+
+	if (hdr->magic != PSTORE_KMSG_HEADER_MAGIC)
+		return -EINVAL;
+	record->compressed = hdr->compressed;
+	record->time.tv_sec = hdr->time.tv_sec;
+	record->time.tv_nsec = hdr->time.tv_nsec;
+	record->reason = hdr->reason;
+	record->count = hdr->counter;
+	return 0;
+}
+
+static ssize_t psz_kmsg_read(struct pstore_zone *zone,
+		struct pstore_record *record)
+{
+	ssize_t size, hlen = 0;
+
+	size = buffer_datalen(zone);
+	/* Clear and skip this kmsg dump record if it has no valid header */
+	if (psz_kmsg_read_hdr(zone, record)) {
+		atomic_set(&zone->buffer->datalen, 0);
+		atomic_set(&zone->dirty, 0);
+		return -ENOMSG;
+	}
+	size -= sizeof(struct psz_kmsg_header);
+
+	if (!record->compressed) {
+		char *buf = kasprintf(GFP_KERNEL, "%s: Total %d times\n",
+				      kmsg_dump_reason_str(record->reason),
+				      record->count);
+		hlen = strlen(buf);
+		record->buf = krealloc(buf, hlen + size, GFP_KERNEL);
+		if (!record->buf) {
+			kfree(buf);
+			return -ENOMEM;
+		}
+	} else {
+		record->buf = kmalloc(size, GFP_KERNEL);
+		if (!record->buf)
+			return -ENOMEM;
+	}
+
+	size = psz_zone_read(zone, record->buf + hlen, size,
+			sizeof(struct psz_kmsg_header));
+	if (unlikely(size < 0)) {
+		kfree(record->buf);
+		return -ENOMSG;
+	}
+
+	return size + hlen;
+}
+
+static ssize_t psz_pstore_read(struct pstore_record *record)
+{
+	struct psz_context *cxt = record->psi->data;
+	ssize_t (*readop)(struct pstore_zone *zone,
+			struct pstore_record *record);
+	struct pstore_zone *zone;
+	ssize_t ret;
+
+	/* before read, we must recover from storage */
+	ret = psz_recovery(cxt);
+	if (ret)
+		return ret;
+
+next_zone:
+	zone = psz_read_next_zone(cxt);
+	if (!zone)
+		return 0;
+
+	record->type = zone->type;
+	switch (record->type) {
+	case PSTORE_TYPE_DMESG:
+		readop = psz_kmsg_read;
+		record->id = cxt->kmsg_read_cnt - 1;
+		break;
+	default:
+		goto next_zone;
+	}
+
+	ret = readop(zone, record);
+	if (ret == -ENOMSG)
+		goto next_zone;
+	return ret;
+}
+
+static struct psz_context pstore_zone_cxt = {
+	.pstore_zone_info_lock =
+		__MUTEX_INITIALIZER(pstore_zone_cxt.pstore_zone_info_lock),
+	.recovered = ATOMIC_INIT(0),
+	.on_panic = ATOMIC_INIT(0),
+	.pstore = {
+		.owner = THIS_MODULE,
+		.open = psz_pstore_open,
+		.read = psz_pstore_read,
+		.write = psz_pstore_write,
+		.erase = psz_pstore_erase,
+	},
+};
+
+static void psz_free_zone(struct pstore_zone **pszone)
+{
+	struct pstore_zone *zone = *pszone;
+
+	if (!zone)
+		return;
+
+	kfree(zone->buffer);
+	kfree(zone);
+	*pszone = NULL;
+}
+
+static void psz_free_zones(struct pstore_zone ***pszones, unsigned int *cnt)
+{
+	struct pstore_zone **zones = *pszones;
+
+	if (!zones)
+		return;
+
+	while (*cnt > 0) {
+		(*cnt)--;
+		psz_free_zone(&(zones[*cnt]));
+	}
+	kfree(zones);
+	*pszones = NULL;
+}
+
+static void psz_free_all_zones(struct psz_context *cxt)
+{
+	if (cxt->kpszs)
+		psz_free_zones(&cxt->kpszs, &cxt->kmsg_max_cnt);
+}
+
+static struct pstore_zone *psz_init_zone(enum pstore_type_id type,
+		loff_t *off, size_t size)
+{
+	struct pstore_zone_info *info = pstore_zone_cxt.pstore_zone_info;
+	struct pstore_zone *zone;
+	const char *name = pstore_type_to_name(type);
+
+	if (!size)
+		return NULL;
+
+	if (*off + size > info->total_size) {
+		pr_err("no room for %s (0x%zx@0x%llx over 0x%lx)\n",
+			name, size, *off, info->total_size);
+		return ERR_PTR(-ENOMEM);
+	}
+
+	zone = kzalloc(sizeof(struct pstore_zone), GFP_KERNEL);
+	if (!zone)
+		return ERR_PTR(-ENOMEM);
+
+	zone->buffer = kmalloc(size, GFP_KERNEL);
+	if (!zone->buffer) {
+		kfree(zone);
+		return ERR_PTR(-ENOMEM);
+	}
+	memset(zone->buffer, 0xFF, size);
+	zone->off = *off;
+	zone->name = name;
+	zone->type = type;
+	zone->buffer_size = size - sizeof(struct psz_buffer);
+	zone->buffer->sig = type ^ PSZ_SIG;
+	atomic_set(&zone->dirty, 0);
+	atomic_set(&zone->buffer->datalen, 0);
+
+	*off += size;
+
+	pr_debug("pszone %s: off 0x%llx, %zu header, %zu data\n", zone->name,
+			zone->off, sizeof(*zone->buffer), zone->buffer_size);
+	return zone;
+}
+
+static struct pstore_zone **psz_init_zones(enum pstore_type_id type,
+	loff_t *off, size_t total_size, ssize_t record_size,
+	unsigned int *cnt)
+{
+	struct pstore_zone_info *info = pstore_zone_cxt.pstore_zone_info;
+	struct pstore_zone **zones, *zone;
+	const char *name = pstore_type_to_name(type);
+	int c, i;
+
+	*cnt = 0;
+	if (!total_size || !record_size)
+		return NULL;
+
+	if (*off + total_size > info->total_size) {
+		pr_err("no room for zones %s (0x%zx@0x%llx over 0x%lx)\n",
+			name, total_size, *off, info->total_size);
+		return ERR_PTR(-ENOMEM);
+	}
+
+	c = total_size / record_size;
+	zones = kcalloc(c, sizeof(*zones), GFP_KERNEL);
+	if (!zones) {
+		pr_err("allocate for zones %s failed\n", name);
+		return ERR_PTR(-ENOMEM);
+	}
+	memset(zones, 0, c * sizeof(*zones));
+
+	for (i = 0; i < c; i++) {
+		zone = psz_init_zone(type, off, record_size);
+		if (!zone || IS_ERR(zone)) {
+			pr_err("initialize zones %s failed\n", name);
+			psz_free_zones(&zones, &i);
+			return (void *)zone;
+		}
+		zones[i] = zone;
+	}
+
+	*cnt = c;
+	return zones;
+}
+
+static int psz_alloc_zones(struct psz_context *cxt)
+{
+	struct pstore_zone_info *info = cxt->pstore_zone_info;
+	loff_t off = 0;
+	int err;
+	size_t size;
+
+	size = info->total_size;
+	cxt->kpszs = psz_init_zones(PSTORE_TYPE_DMESG, &off, size,
+			info->kmsg_size, &cxt->kmsg_max_cnt);
+	if (IS_ERR(cxt->kpszs)) {
+		err = PTR_ERR(cxt->kpszs);
+		cxt->kpszs = NULL;
+		goto fail_out;
+	}
+
+	return 0;
+fail_out:
+	return err;
+}
+
+/**
+ * register_pstore_zone() - register to pstore/zone
+ *
+ * @info: back-end driver information. See &struct pstore_zone_info.
+ *
+ * Only one back-end at one time.
+ *
+ * Return: 0 on success, others on failure.
+ */
+int register_pstore_zone(struct pstore_zone_info *info)
+{
+	int err = -EINVAL;
+	struct psz_context *cxt = &pstore_zone_cxt;
+
+	if (info->total_size < 4096) {
+		pr_warn("total_size must be >= 4096\n");
+		return -EINVAL;
+	}
+
+	if (!info->kmsg_size) {
+		pr_warn("at least one record size must be non-zero\n");
+		return -EINVAL;
+	}
+
+	if (!info->name || !info->name[0])
+		return -EINVAL;
+
+#define check_size(name, size) {					\
+		if (info->name > 0 && info->name < (size)) {		\
+			pr_err(#name " must be over %d\n", (size));	\
+			return -EINVAL;					\
+		}							\
+		if (info->name & (size - 1)) {				\
+			pr_err(#name " must be a multiple of %d\n",	\
+					(size));			\
+			return -EINVAL;					\
+		}							\
+	}
+
+	check_size(total_size, 4096);
+	check_size(kmsg_size, SECTOR_SIZE);
+
+#undef check_size
+
+	/*
+	 * the @read and @write must be applied.
+	 * if no @read, pstore may mount failed.
+	 * if no @write, pstore do not support to remove record file.
+	 */
+	if (!info->read || !info->write) {
+		pr_err("no valid general read/write interface\n");
+		return -EINVAL;
+	}
+
+	mutex_lock(&cxt->pstore_zone_info_lock);
+	if (cxt->pstore_zone_info) {
+		pr_warn("'%s' already loaded: ignoring '%s'\n",
+				cxt->pstore_zone_info->name, info->name);
+		mutex_unlock(&cxt->pstore_zone_info_lock);
+		return -EBUSY;
+	}
+	cxt->pstore_zone_info = info;
+
+	pr_debug("register %s with properties:\n", info->name);
+	pr_debug("\ttotal size : %ld Bytes\n", info->total_size);
+	pr_debug("\tkmsg size : %ld Bytes\n", info->kmsg_size);
+
+	err = psz_alloc_zones(cxt);
+	if (err) {
+		pr_err("alloc zones failed\n");
+		goto fail_out;
+	}
+
+	if (info->kmsg_size) {
+		cxt->pstore.bufsize = cxt->kpszs[0]->buffer_size -
+			sizeof(struct psz_kmsg_header);
+		cxt->pstore.buf = kzalloc(cxt->pstore.bufsize, GFP_KERNEL);
+		if (!cxt->pstore.buf) {
+			err = -ENOMEM;
+			goto fail_free;
+		}
+	}
+	cxt->pstore.data = cxt;
+
+	pr_info("registered %s as backend for", info->name);
+	cxt->pstore.max_reason = info->max_reason;
+	cxt->pstore.name = info->name;
+	if (info->kmsg_size) {
+		cxt->pstore.flags |= PSTORE_FLAGS_DMESG;
+		pr_cont(" kmsg(%s",
+			kmsg_dump_reason_str(cxt->pstore.max_reason));
+		if (cxt->pstore_zone_info->panic_write)
+			pr_cont(",panic_write");
+		pr_cont(")");
+	}
+	pr_cont("\n");
+
+	err = pstore_register(&cxt->pstore);
+	if (err) {
+		pr_err("registering with pstore failed\n");
+		goto fail_free;
+	}
+	mutex_unlock(&pstore_zone_cxt.pstore_zone_info_lock);
+
+	return 0;
+
+fail_free:
+	kfree(cxt->pstore.buf);
+	cxt->pstore.buf = NULL;
+	cxt->pstore.bufsize = 0;
+	psz_free_all_zones(cxt);
+fail_out:
+	pstore_zone_cxt.pstore_zone_info = NULL;
+	mutex_unlock(&pstore_zone_cxt.pstore_zone_info_lock);
+	return err;
+}
+EXPORT_SYMBOL_GPL(register_pstore_zone);
+
+/**
+ * unregister_pstore_zone() - unregister to pstore/zone
+ *
+ * @info: back-end driver information. See struct pstore_zone_info.
+ */
+void unregister_pstore_zone(struct pstore_zone_info *info)
+{
+	struct psz_context *cxt = &pstore_zone_cxt;
+
+	mutex_lock(&cxt->pstore_zone_info_lock);
+	if (!cxt->pstore_zone_info) {
+		mutex_unlock(&cxt->pstore_zone_info_lock);
+		return;
+	}
+
+	/* Stop incoming writes from pstore. */
+	pstore_unregister(&cxt->pstore);
+
+	/* Clean up allocations. */
+	kfree(cxt->pstore.buf);
+	cxt->pstore.buf = NULL;
+	cxt->pstore.bufsize = 0;
+	cxt->pstore_zone_info = NULL;
+
+	psz_free_all_zones(cxt);
+
+	/* Clear counters and zone state. */
+	cxt->oops_counter = 0;
+	cxt->panic_counter = 0;
+	atomic_set(&cxt->recovered, 0);
+	atomic_set(&cxt->on_panic, 0);
+
+	mutex_unlock(&cxt->pstore_zone_info_lock);
+}
+EXPORT_SYMBOL_GPL(unregister_pstore_zone);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("WeiXiong Liao <liaoweixiong@allwinnertech.com>");
+MODULE_AUTHOR("Kees Cook <keescook@chromium.org>");
+MODULE_DESCRIPTION("Storage Manager for pstore/blk");
diff --git a/include/linux/pstore_zone.h b/include/linux/pstore_zone.h
new file mode 100644
index 000000000000..eb005d9ae40c
--- /dev/null
+++ b/include/linux/pstore_zone.h
@@ -0,0 +1,44 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __PSTORE_ZONE_H_
+#define __PSTORE_ZONE_H_
+
+#include <linux/types.h>
+
+typedef ssize_t (*pstore_zone_read_op)(char *, size_t, loff_t);
+typedef ssize_t (*pstore_zone_write_op)(const char *, size_t, loff_t);
+/**
+ * struct pstore_zone_info - pstore/zone back-end driver structure
+ *
+ * @owner:	Module which is responsible for this back-end driver.
+ * @name:	Name of the back-end driver.
+ * @total_size: The total size in bytes pstore/zone can use. It must be greater
+ *		than 4096 and be multiple of 4096.
+ * @kmsg_size:	The size of oops/panic zone. Zero means disabled, otherwise,
+ *		it must be multiple of SECTOR_SIZE(512 Bytes).
+ * @max_reason: Maximum kmsg dump reason to store.
+ * @read:	The general read operation. Both of the function parameters
+ *		@size and @offset are relative value to storage.
+ *		On success, the number of bytes should be returned, others
+ *		means error.
+ * @write:	The same as @read.
+ * @panic_write:The write operation only used for panic case. It's optional
+ *		if you do not care panic log. The parameters and return value
+ *		are the same as @read.
+ */
+struct pstore_zone_info {
+	struct module *owner;
+	const char *name;
+
+	unsigned long total_size;
+	unsigned long kmsg_size;
+	int max_reason;
+	pstore_zone_read_op read;
+	pstore_zone_write_op write;
+	pstore_zone_write_op panic_write;
+};
+
+extern int register_pstore_zone(struct pstore_zone_info *info);
+extern void unregister_pstore_zone(struct pstore_zone_info *info);
+
+#endif
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
