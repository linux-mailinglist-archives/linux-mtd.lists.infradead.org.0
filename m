Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D621CC55D
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 01:44:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nv7xm7VuF4pp7fwbKpsVBusBQ2NVggnVFybtUrgnYLk=; b=OTJToguihOydZI
	gXYHeX/M+LzBq/p8ohQ8imUG9pUeNtuBgyRorU3PauKQtLCLFdRkiW83myL0qXFIVCLU11sgdVeHJ
	YMEZKY/DNTUWC/O0sb9bEihqvp4E+fOSDFNkU4KqwqKspku9zp2/NHl6O/WehAqN1weEr7AK8F/i6
	iF69UlHAtYB1XBIOrkVUMG+Oa2LPgkRF4VrvmD3CXM3SRMFHZVzWNdsz2t07ZmpDV5vhFEt0Sjq2v
	eLeWY0dyXy0pVFVA43TnJEEGJVKATPC2/aXvcDSLp+nKMBqfgkAl634c7S9VpgXoH9vfShcrn5cyo
	gmrKPFkTjAFUeiG1OR5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXZ9H-0004A7-Bh; Sat, 09 May 2020 23:44:51 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXZ5r-0001KP-Tz
 for linux-mtd@lists.infradead.org; Sat, 09 May 2020 23:41:26 +0000
Received: by mail-pg1-x542.google.com with SMTP id r10so2186456pgv.8
 for <linux-mtd@lists.infradead.org>; Sat, 09 May 2020 16:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Hkk4QhtOD8tOOw6+JmpAFkECjPIpOamUHmWJvYoyxTg=;
 b=TDv4kkEU7nRyZvuBVG3FBMSI0Dg03Ux6dlmZQgkUpH1KQFtUsQHZc7+XWap/MVnzPP
 UZYCYXRYYyK6S/eHGNKsEhiLp2I/eAkpS0LleCjc4IjuuEmKpRHjz+hS4QH0d3LSgytV
 GdLlQWkER8v2E5yAIhLymhqy9VxQxo4kxwehk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Hkk4QhtOD8tOOw6+JmpAFkECjPIpOamUHmWJvYoyxTg=;
 b=M+TFFIbIzFWLsq6iAp2fjYBdaE4r9FT/IuY/GKhETe8kFZQ7AiWv9l8MwSW3BIn23b
 +LYthM2BktAi3Vb5WLlD5XTY0ofxd/P9w5v2nzDER+PkT5as+1JmcDMjlkMhMQGr/IRG
 i1ghEOvTIgb6xOcGbjQ4NlZe3MeaQ7b2H9tSDTEQVCccFIQ/N/S0QG/xJI57XLWP+vqY
 vl4aSDPyJQhlQr4zbdKpTQtKKw+pR8MqllBkZPZ5gVWodLyidxVqRK3m2SnLRgCwsOU5
 tReOUKl1rYjoBROzi4v5pfou0yhfpYBSgM70yR1maiFuyVpVUTsO2vKk5v7/uchTCAt/
 TUOQ==
X-Gm-Message-State: AGi0PuYJzWWStMI7j7ea/N9gDUk0Vno6+VsYkRYQwik7KHRUhdX5CMVN
 ZRTpOQlgf0ucR9kTXjP0vgCMHg==
X-Google-Smtp-Source: APiQypIAKpfQHmX9Tj2tdNmlmR4n+FjCEWu8pgk3rKRE/cuMZmM0cMrd5FDv/50IitkmQshk/ufv6g==
X-Received: by 2002:a63:5209:: with SMTP id g9mr3346128pgb.162.1589067678508; 
 Sat, 09 May 2020 16:41:18 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id w14sm1795929pgi.12.2020.05.09.16.41.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 May 2020 16:41:11 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: [PATCH v6 12/18] pstore/zone,blk: Add ftrace frontend support
Date: Sat,  9 May 2020 16:40:57 -0700
Message-Id: <20200509234103.46544-13-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200509234103.46544-1-keescook@chromium.org>
References: <20200509234103.46544-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_164120_000895_03385E0E 
X-CRM114-Status: GOOD (  22.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

Support backend for ftrace. To enable ftrace backend, just make
ftrace_size be greater than 0 and a multiple of 4096.

Signed-off-by: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Link: https://lore.kernel.org/r/1585126506-18635-7-git-send-email-liaoweixiong@allwinnertech.com
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 fs/pstore/Kconfig           |  12 ++++
 fs/pstore/blk.c             |   9 +++
 fs/pstore/zone.c            | 113 +++++++++++++++++++++++++++++++++++-
 include/linux/pstore_zone.h |   2 +
 4 files changed, 135 insertions(+), 1 deletion(-)

diff --git a/fs/pstore/Kconfig b/fs/pstore/Kconfig
index f1484f751c5e..16a0440d8d5a 100644
--- a/fs/pstore/Kconfig
+++ b/fs/pstore/Kconfig
@@ -248,3 +248,15 @@ config PSTORE_BLK_CONSOLE_SIZE
 
 	  NOTE that, both Kconfig and module parameters can configure
 	  pstore/blk, but module parameters have priority over Kconfig.
+
+config PSTORE_BLK_FTRACE_SIZE
+	int "Size in Kbytes of ftarce to store"
+	depends on PSTORE_BLK
+	depends on PSTORE_FTRACE
+	default 64
+	help
+	  This just sets size of ftrace (ftrace_size) for pstore/blk. The
+	  size is in KB and must be a multiple of 4.
+
+	  NOTE that, both Kconfig and module parameters can configure
+	  pstore/blk, but module parameters have priority over Kconfig.
diff --git a/fs/pstore/blk.c b/fs/pstore/blk.c
index 317e7ea9e2de..04930b971c22 100644
--- a/fs/pstore/blk.c
+++ b/fs/pstore/blk.c
@@ -43,6 +43,14 @@ static long console_size = -1;
 module_param(console_size, long, 0400);
 MODULE_PARM_DESC(console_size, "console size in kbytes");
 
+#if IS_ENABLED(CONFIG_PSTORE_FTRACE)
+static long ftrace_size = CONFIG_PSTORE_BLK_FTRACE_SIZE;
+#else
+static long ftrace_size = -1;
+#endif
+module_param(ftrace_size, long, 0400);
+MODULE_PARM_DESC(ftrace_size, "ftrace size in kbytes");
+
 /*
  * blkdev - the block device to use for pstore storage
  *
@@ -151,6 +159,7 @@ static int psblk_register_do(struct psblk_device *dev)
 	verify_size(kmsg_size, 4096, dev->flags & PSTORE_FLAGS_DMESG);
 	verify_size(pmsg_size, 4096, dev->flags & PSTORE_FLAGS_PMSG);
 	verify_size(console_size, 4096, dev->flags & PSTORE_FLAGS_CONSOLE);
+	verify_size(ftrace_size, 4096, dev->flags & PSTORE_FLAGS_FTRACE);
 #undef verify_size
 
 	pstore_zone_info->total_size = dev->total_size;
diff --git a/fs/pstore/zone.c b/fs/pstore/zone.c
index f3bd6a7dc06d..45c0a422f1de 100644
--- a/fs/pstore/zone.c
+++ b/fs/pstore/zone.c
@@ -92,11 +92,14 @@ struct pstore_zone {
  * @opszs: oops/panic storage zones
  * @ppsz: pmsg storage zone
  * @cpsz: console storage zone
+ * @fpszs: ftrace storage zones
  * @kmsg_max_cnt: max count of @opszs
  * @kmsg_read_cnt: counter to read oops zone
  * @kmsg_write_cnt: counter to write
  * @pmsg_read_cnt: counter to read pmsg zone
  * @console_read_cnt: counter to read console zone
+ * @ftrace_max_cnt: max count of @fpszs
+ * @ftrace_read_cnt: counter to read ftrace zone
  * @oops_counter: counter to oops
  * @panic_counter: counter to panic
  * @recovered: whether finish recovering data from storage
@@ -109,11 +112,14 @@ struct psz_context {
 	struct pstore_zone **opszs;
 	struct pstore_zone *ppsz;
 	struct pstore_zone *cpsz;
+	struct pstore_zone **fpszs;
 	unsigned int kmsg_max_cnt;
 	unsigned int kmsg_read_cnt;
 	unsigned int kmsg_write_cnt;
 	unsigned int pmsg_read_cnt;
 	unsigned int console_read_cnt;
+	unsigned int ftrace_max_cnt;
+	unsigned int ftrace_read_cnt;
 	/*
 	 * the counter should be recovered when recover.
 	 * It records the oops/panic times after burning rather than booting.
@@ -314,6 +320,8 @@ static void psz_flush_all_dirty_zones(struct work_struct *work)
 		ret |= psz_flush_dirty_zone(cxt->cpsz);
 	if (cxt->opszs)
 		ret |= psz_flush_dirty_zones(cxt->opszs, cxt->kmsg_max_cnt);
+	if (cxt->fpszs)
+		ret |= psz_flush_dirty_zones(cxt->fpszs, cxt->ftrace_max_cnt);
 	if (ret && cxt->pstore_zone_info)
 		schedule_delayed_work(&psz_cleaner, msecs_to_jiffies(1000));
 }
@@ -550,6 +558,31 @@ static int psz_recover_zone(struct psz_context *cxt, struct pstore_zone *zone)
 	return ret;
 }
 
+static int psz_recover_zones(struct psz_context *cxt,
+		struct pstore_zone **zones, unsigned int cnt)
+{
+	int ret;
+	unsigned int i;
+	struct pstore_zone *zone;
+
+	if (!zones)
+		return 0;
+
+	for (i = 0; i < cnt; i++) {
+		zone = zones[i];
+		if (unlikely(!zone))
+			continue;
+		ret = psz_recover_zone(cxt, zone);
+		if (ret)
+			goto recover_fail;
+	}
+
+	return 0;
+recover_fail:
+	pr_debug("recover %s[%u] failed\n", zone->name, i);
+	return ret;
+}
+
 /**
  * psz_recovery() - recover data from storage
  * @cxt: the context of pstore/zone
@@ -577,6 +610,10 @@ static inline int psz_recovery(struct psz_context *cxt)
 	if (ret)
 		goto recover_fail;
 
+	ret = psz_recover_zones(cxt, cxt->fpszs, cxt->ftrace_max_cnt);
+	if (ret)
+		goto recover_fail;
+
 	pr_debug("recover end!\n");
 	atomic_set(&cxt->recovered, 1);
 	return 0;
@@ -593,6 +630,7 @@ static int psz_pstore_open(struct pstore_info *psi)
 	cxt->kmsg_read_cnt = 0;
 	cxt->pmsg_read_cnt = 0;
 	cxt->console_read_cnt = 0;
+	cxt->ftrace_read_cnt = 0;
 	return 0;
 }
 
@@ -659,6 +697,10 @@ static int psz_pstore_erase(struct pstore_record *record)
 		return psz_record_erase(cxt, cxt->ppsz);
 	case PSTORE_TYPE_CONSOLE:
 		return psz_record_erase(cxt, cxt->cpsz);
+	case PSTORE_TYPE_FTRACE:
+		if (record->id >= cxt->ftrace_max_cnt)
+			return -EINVAL;
+		return psz_record_erase(cxt, cxt->fpszs[record->id]);
 	default: return -EINVAL;
 	}
 }
@@ -801,6 +843,13 @@ static int notrace psz_pstore_write(struct pstore_record *record)
 		return psz_record_write(cxt->cpsz, record);
 	case PSTORE_TYPE_PMSG:
 		return psz_record_write(cxt->ppsz, record);
+	case PSTORE_TYPE_FTRACE: {
+		int zonenum = smp_processor_id();
+
+		if (!cxt->fpszs)
+			return -ENOSPC;
+		return psz_record_write(cxt->fpszs[zonenum], record);
+	}
 	default:
 		return -EINVAL;
 	}
@@ -816,6 +865,14 @@ static struct pstore_zone *psz_read_next_zone(struct psz_context *cxt)
 			return zone;
 	}
 
+	if (cxt->ftrace_read_cnt < cxt->ftrace_max_cnt)
+		/*
+		 * No need psz_old_ok(). Let psz_ftrace_read() do so for
+		 * combination. psz_ftrace_read() should traverse over
+		 * all zones in case of some zone without data.
+		 */
+		return cxt->fpszs[cxt->ftrace_read_cnt++];
+
 	if (cxt->pmsg_read_cnt == 0) {
 		cxt->pmsg_read_cnt++;
 		zone = cxt->ppsz;
@@ -890,6 +947,37 @@ static ssize_t psz_kmsg_read(struct pstore_zone *zone,
 	return size + hlen;
 }
 
+/* try to combine all ftrace zones */
+static ssize_t psz_ftrace_read(struct pstore_zone *zone,
+		struct pstore_record *record)
+{
+	struct psz_context *cxt = record->psi->data;
+	struct psz_buffer *buf;
+	int ret;
+
+	if (!zone || !record)
+		return -ENOSPC;
+
+	if (!psz_old_ok(zone))
+		goto out;
+
+	buf = (struct psz_buffer *)zone->oldbuf;
+	if (!buf)
+		return -ENOMSG;
+
+	ret = pstore_ftrace_combine_log(&record->buf, &record->size,
+			(char *)buf->data, atomic_read(&buf->datalen));
+	if (unlikely(ret))
+		return ret;
+
+out:
+	if (cxt->ftrace_read_cnt < cxt->ftrace_max_cnt)
+		/* then, read next ftrace zone */
+		return -ENOMSG;
+	record->id = 0;
+	return record->size ? record->size : -ENOMSG;
+}
+
 static ssize_t psz_record_read(struct pstore_zone *zone,
 		struct pstore_record *record)
 {
@@ -940,6 +1028,9 @@ static ssize_t psz_pstore_read(struct pstore_record *record)
 		readop = psz_kmsg_read;
 		record->id = cxt->kmsg_read_cnt - 1;
 		break;
+	case PSTORE_TYPE_FTRACE:
+		readop = psz_ftrace_read;
+		break;
 	case PSTORE_TYPE_CONSOLE:
 		fallthrough;
 	case PSTORE_TYPE_PMSG:
@@ -1004,6 +1095,8 @@ static void psz_free_all_zones(struct psz_context *cxt)
 		psz_free_zone(&cxt->ppsz);
 	if (cxt->cpsz)
 		psz_free_zone(&cxt->cpsz);
+	if (cxt->fpszs)
+		psz_free_zones(&cxt->fpszs, &cxt->ftrace_max_cnt);
 }
 
 static struct pstore_zone *psz_init_zone(enum pstore_type_id type,
@@ -1114,6 +1207,17 @@ static int psz_alloc_zones(struct psz_context *cxt)
 		goto free_out;
 	}
 
+	off_size += info->ftrace_size;
+	cxt->fpszs = psz_init_zones(PSTORE_TYPE_FTRACE, &off,
+			info->ftrace_size,
+			info->ftrace_size / nr_cpu_ids,
+			&cxt->ftrace_max_cnt);
+	if (IS_ERR(cxt->fpszs)) {
+		err = PTR_ERR(cxt->fpszs);
+		cxt->fpszs = NULL;
+		goto free_out;
+	}
+
 	cxt->opszs = psz_init_zones(PSTORE_TYPE_DMESG, &off,
 			info->total_size - off_size,
 			info->kmsg_size, &cxt->kmsg_max_cnt);
@@ -1148,7 +1252,8 @@ int register_pstore_zone(struct pstore_zone_info *info)
 		return -EINVAL;
 	}
 
-	if (!info->kmsg_size && !info->pmsg_size && !info->console_size) {
+	if (!info->kmsg_size && !info->pmsg_size && !info->console_size &&
+	    !info->ftrace_size) {
 		pr_warn("at least one record size must be non-zero\n");
 		return -EINVAL;
 	}
@@ -1172,6 +1277,7 @@ int register_pstore_zone(struct pstore_zone_info *info)
 	check_size(kmsg_size, SECTOR_SIZE);
 	check_size(pmsg_size, SECTOR_SIZE);
 	check_size(console_size, SECTOR_SIZE);
+	check_size(ftrace_size, SECTOR_SIZE);
 
 #undef check_size
 
@@ -1199,6 +1305,7 @@ int register_pstore_zone(struct pstore_zone_info *info)
 	pr_debug("\tkmsg size : %ld Bytes\n", info->kmsg_size);
 	pr_debug("\tpmsg size : %ld Bytes\n", info->pmsg_size);
 	pr_debug("\tconsole size : %ld Bytes\n", info->console_size);
+	pr_debug("\tftrace size : %ld Bytes\n", info->ftrace_size);
 
 	err = psz_alloc_zones(cxt);
 	if (err) {
@@ -1236,6 +1343,10 @@ int register_pstore_zone(struct pstore_zone_info *info)
 		cxt->pstore.flags |= PSTORE_FLAGS_CONSOLE;
 		pr_cont(" console");
 	}
+	if (info->ftrace_size) {
+		cxt->pstore.flags |= PSTORE_FLAGS_FTRACE;
+		pr_cont(" ftrace");
+	}
 	pr_cont("\n");
 
 	err = pstore_register(&cxt->pstore);
diff --git a/include/linux/pstore_zone.h b/include/linux/pstore_zone.h
index da294e6d7661..94f441b8b616 100644
--- a/include/linux/pstore_zone.h
+++ b/include/linux/pstore_zone.h
@@ -19,6 +19,7 @@ typedef ssize_t (*psz_write_op)(const char *, size_t, loff_t);
  * @max_reason: Maximum kmsg dump reason to store.
  * @pmsg_size:	The size of pmsg zone which is the same as @kmsg_size.
  * @console_size:The size of console zone which is the same as @kmsg_size.
+ * @ftrace_size:The size of ftrace zone which is the same as @kmsg_size.
  * @read:	The general read operation. Both of the function parameters
  *		@size and @offset are relative value to storage.
  *		On success, the number of bytes should be returned, others
@@ -37,6 +38,7 @@ struct pstore_zone_info {
 	int max_reason;
 	unsigned long pmsg_size;
 	unsigned long console_size;
+	unsigned long ftrace_size;
 	psz_read_op read;
 	psz_write_op write;
 	psz_write_op panic_write;
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
