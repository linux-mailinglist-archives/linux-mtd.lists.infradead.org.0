Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB061CC55C
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 01:44:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2PjHfgX7TPL6N+i8O1CF9W7IfTiZbCgSooSl4yZWiBY=; b=mXzgl+ehdSMPoe
	anRHMh8O2GaOiZ+a4xfx6c0L0ai2JK/yCAPvGMTWFicH61p3Lyr3XjnRgL3dql4W22y8GFUockCMC
	HCsUzNZOi9ynV9uFZEfYPNkTfLMYTOkVrrUy9a9B6RUCgvHAhjpyTWNWdQ14RSMDzHE7ALm5qDmTY
	ZiTFT4nMbPHw6fpP/4xoDcil8yxzI3xl6l835NKXSdCcoNCvWEju2Yb6FEEaApbVftO9Om4iL1TLT
	IDS3Sc1BIROp9Kj+kNt9NA952RaCRvDkBNYP/KR6IJobeOK3pFSAl6w7JBPWnW2X+6jaudbkuhFsx
	RfTuhVkBASAKH0ZW/4KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXZ8z-0003vg-AL; Sat, 09 May 2020 23:44:33 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXZ5q-0001IX-Hp
 for linux-mtd@lists.infradead.org; Sat, 09 May 2020 23:41:25 +0000
Received: by mail-pj1-x1043.google.com with SMTP id a5so5948294pjh.2
 for <linux-mtd@lists.infradead.org>; Sat, 09 May 2020 16:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=B2tKlwC1wJYAmOhoScyUqYZQkeReJ+ldJqy0lyCs8iQ=;
 b=JPPW3szGHCIoRApwA28mWq44ctUk26KtWFiWye3jHPDf6M4EaZHX6JjxhnlHOu/n7h
 XnN1izuQ22Yh98hPIZZDEiAJ5dW95ecYjWX3SrEo4CDC20z5iwq4JPm5l4E4/TxKHK0M
 9gucUScR95z2sNtz96Pnd/INk8UGFxadGqxcM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B2tKlwC1wJYAmOhoScyUqYZQkeReJ+ldJqy0lyCs8iQ=;
 b=ZxuYHZyaFczBwwmDxxNB7xNPq2nUqU5XNC2GQUXSr9AVToZqk4Pg7kIWg5w8C+JJMx
 CkiOf5U6plfhzN3jcQaYseESQT3fZHEqwYAZyzUD2KQJAWh+FFH4oRPd2s0Euz1fprQ6
 fSPfswEco3BgxXIlMpMdk6xnfFw0gBi9OktZ6CHru67HzWfSVEp/TxGkOZmYUZHkWI9r
 wlW5rHj4pne07UWaA9FG4PA+tz2/3Efebi3IIOqC4U4aPdeuq2L75t6VwEkdCz82bsR3
 RcXFtP7LbemZYUdSyf/oFBPLym0wVugI7EkREDh6ILtN+hHp3CpKs7K1k6VS2wJjcQml
 NiQw==
X-Gm-Message-State: AGi0Pub6RQFZZwmVRYugB051/XMdAr7FQWe2im+ErONR05bXdEKO6ZUG
 LoQXtzFHMEvTWCDJPzXkpWs5zw==
X-Google-Smtp-Source: APiQypK/4Wn2cOKopozRlx+5SUOVYbkHtF/cvktDSakW4G3+1H4p70QbsEB4WLAMzgEloPgPM/gfEA==
X-Received: by 2002:a17:90a:7349:: with SMTP id
 j9mr14234596pjs.196.1589067676825; 
 Sat, 09 May 2020 16:41:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id p19sm5775426pjv.30.2020.05.09.16.41.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 May 2020 16:41:11 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: [PATCH v6 11/18] pstore/zone,blk: Add console frontend support
Date: Sat,  9 May 2020 16:40:56 -0700
Message-Id: <20200509234103.46544-12-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200509234103.46544-1-keescook@chromium.org>
References: <20200509234103.46544-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_164118_605920_D96ACAF1 
X-CRM114-Status: GOOD (  23.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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

Support backend for console. To enable console backend, just make
console_size be greater than 0 and a multiple of 4096.

Signed-off-by: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Link: https://lore.kernel.org/r/1585126506-18635-6-git-send-email-liaoweixiong@allwinnertech.com
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 fs/pstore/Kconfig           | 12 ++++++
 fs/pstore/blk.c             | 12 +++++-
 fs/pstore/zone.c            | 83 ++++++++++++++++++++++++++++++++++---
 include/linux/pstore_zone.h |  4 +-
 4 files changed, 103 insertions(+), 8 deletions(-)

diff --git a/fs/pstore/Kconfig b/fs/pstore/Kconfig
index f18cd126d83f..f1484f751c5e 100644
--- a/fs/pstore/Kconfig
+++ b/fs/pstore/Kconfig
@@ -236,3 +236,15 @@ config PSTORE_BLK_PMSG_SIZE
 
 	  NOTE that, both Kconfig and module parameters can configure
 	  pstore/blk, but module parameters have priority over Kconfig.
+
+config PSTORE_BLK_CONSOLE_SIZE
+	int "Size in Kbytes of console to store"
+	depends on PSTORE_BLK
+	depends on PSTORE_CONSOLE
+	default 64
+	help
+	  This just sets size of console (console_size) for pstore/blk. The
+	  size is in KB and must be a multiple of 4.
+
+	  NOTE that, both Kconfig and module parameters can configure
+	  pstore/blk, but module parameters have priority over Kconfig.
diff --git a/fs/pstore/blk.c b/fs/pstore/blk.c
index 97b54c90aeb1..317e7ea9e2de 100644
--- a/fs/pstore/blk.c
+++ b/fs/pstore/blk.c
@@ -35,6 +35,14 @@ static long pmsg_size = -1;
 module_param(pmsg_size, long, 0400);
 MODULE_PARM_DESC(pmsg_size, "pmsg size in kbytes");
 
+#if IS_ENABLED(CONFIG_PSTORE_CONSOLE)
+static long console_size = CONFIG_PSTORE_BLK_CONSOLE_SIZE;
+#else
+static long console_size = -1;
+#endif
+module_param(console_size, long, 0400);
+MODULE_PARM_DESC(console_size, "console size in kbytes");
+
 /*
  * blkdev - the block device to use for pstore storage
  *
@@ -90,7 +98,8 @@ static struct bdev_info {
  *		whole disk).
  *		On success, the number of bytes should be returned, others
  *		means error.
- * @write:	The same as @read.
+ * @write:	The same as @read, but the following error number:
+ *		-EBUSY means try to write again later.
  * @panic_write:The write operation only used for panic case. It's optional
  *		if you do not care panic log. The parameters and return value
  *		are the same as @read.
@@ -141,6 +150,7 @@ static int psblk_register_do(struct psblk_device *dev)
 
 	verify_size(kmsg_size, 4096, dev->flags & PSTORE_FLAGS_DMESG);
 	verify_size(pmsg_size, 4096, dev->flags & PSTORE_FLAGS_PMSG);
+	verify_size(console_size, 4096, dev->flags & PSTORE_FLAGS_CONSOLE);
 #undef verify_size
 
 	pstore_zone_info->total_size = dev->total_size;
diff --git a/fs/pstore/zone.c b/fs/pstore/zone.c
index 03dc87791c24..f3bd6a7dc06d 100644
--- a/fs/pstore/zone.c
+++ b/fs/pstore/zone.c
@@ -91,10 +91,12 @@ struct pstore_zone {
  *
  * @opszs: oops/panic storage zones
  * @ppsz: pmsg storage zone
+ * @cpsz: console storage zone
  * @kmsg_max_cnt: max count of @opszs
  * @kmsg_read_cnt: counter to read oops zone
  * @kmsg_write_cnt: counter to write
  * @pmsg_read_cnt: counter to read pmsg zone
+ * @console_read_cnt: counter to read console zone
  * @oops_counter: counter to oops
  * @panic_counter: counter to panic
  * @recovered: whether finish recovering data from storage
@@ -106,10 +108,12 @@ struct pstore_zone {
 struct psz_context {
 	struct pstore_zone **opszs;
 	struct pstore_zone *ppsz;
+	struct pstore_zone *cpsz;
 	unsigned int kmsg_max_cnt;
 	unsigned int kmsg_read_cnt;
 	unsigned int kmsg_write_cnt;
 	unsigned int pmsg_read_cnt;
+	unsigned int console_read_cnt;
 	/*
 	 * the counter should be recovered when recover.
 	 * It records the oops/panic times after burning rather than booting.
@@ -129,6 +133,9 @@ struct psz_context {
 };
 static struct psz_context pstore_zone_cxt;
 
+static void psz_flush_all_dirty_zones(struct work_struct *);
+static DECLARE_DELAYED_WORK(psz_cleaner, psz_flush_all_dirty_zones);
+
 /**
  * enum psz_flush_mode - flush mode for psz_zone_write()
  *
@@ -237,6 +244,9 @@ static int psz_zone_write(struct pstore_zone *zone,
 	return 0;
 dirty:
 	atomic_set(&zone->dirty, true);
+	/* flush dirty zones nicely */
+	if (wcnt == -EBUSY && !is_on_panic())
+		schedule_delayed_work(&psz_cleaner, msecs_to_jiffies(500));
 	return -EBUSY;
 }
 
@@ -293,6 +303,21 @@ static int psz_move_zone(struct pstore_zone *old, struct pstore_zone *new)
 	return 0;
 }
 
+static void psz_flush_all_dirty_zones(struct work_struct *work)
+{
+	struct psz_context *cxt = &pstore_zone_cxt;
+	int ret = 0;
+
+	if (cxt->ppsz)
+		ret |= psz_flush_dirty_zone(cxt->ppsz);
+	if (cxt->cpsz)
+		ret |= psz_flush_dirty_zone(cxt->cpsz);
+	if (cxt->opszs)
+		ret |= psz_flush_dirty_zones(cxt->opszs, cxt->kmsg_max_cnt);
+	if (ret && cxt->pstore_zone_info)
+		schedule_delayed_work(&psz_cleaner, msecs_to_jiffies(1000));
+}
+
 static int psz_kmsg_recover_data(struct psz_context *cxt)
 {
 	struct pstore_zone_info *info = cxt->pstore_zone_info;
@@ -548,6 +573,10 @@ static inline int psz_recovery(struct psz_context *cxt)
 	if (ret)
 		goto recover_fail;
 
+	ret = psz_recover_zone(cxt, cxt->cpsz);
+	if (ret)
+		goto recover_fail;
+
 	pr_debug("recover end!\n");
 	atomic_set(&cxt->recovered, 1);
 	return 0;
@@ -563,6 +592,7 @@ static int psz_pstore_open(struct pstore_info *psi)
 
 	cxt->kmsg_read_cnt = 0;
 	cxt->pmsg_read_cnt = 0;
+	cxt->console_read_cnt = 0;
 	return 0;
 }
 
@@ -627,8 +657,9 @@ static int psz_pstore_erase(struct pstore_record *record)
 		return psz_kmsg_erase(cxt, cxt->opszs[record->id], record);
 	case PSTORE_TYPE_PMSG:
 		return psz_record_erase(cxt, cxt->ppsz);
-	default:
-		return -EINVAL;
+	case PSTORE_TYPE_CONSOLE:
+		return psz_record_erase(cxt, cxt->cpsz);
+	default: return -EINVAL;
 	}
 }
 
@@ -691,9 +722,10 @@ static int notrace psz_kmsg_write(struct psz_context *cxt,
 		return -ENOSPC;
 
 	ret = psz_kmsg_write_record(cxt, record);
-	if (!ret) {
-		pr_debug("try to flush other dirty oops zones\n");
-		psz_flush_dirty_zones(cxt->opszs, cxt->kmsg_max_cnt);
+	if (!ret && is_on_panic()) {
+		/* ensure all data are flushed to storage when panic */
+		pr_debug("try to flush other dirty zones\n");
+		psz_flush_all_dirty_zones(NULL);
 	}
 
 	/* always return 0 as we had handled it on buffer */
@@ -755,9 +787,18 @@ static int notrace psz_pstore_write(struct pstore_record *record)
 			record->reason == KMSG_DUMP_PANIC)
 		atomic_set(&cxt->on_panic, 1);
 
+	/*
+	 * if on panic, do not write except panic records
+	 * Fix case that panic_write prints log which wakes up console backend.
+	 */
+	if (is_on_panic() && record->type != PSTORE_TYPE_DMESG)
+		return -EBUSY;
+
 	switch (record->type) {
 	case PSTORE_TYPE_DMESG:
 		return psz_kmsg_write(cxt, record);
+	case PSTORE_TYPE_CONSOLE:
+		return psz_record_write(cxt->cpsz, record);
 	case PSTORE_TYPE_PMSG:
 		return psz_record_write(cxt->ppsz, record);
 	default:
@@ -782,6 +823,13 @@ static struct pstore_zone *psz_read_next_zone(struct psz_context *cxt)
 			return zone;
 	}
 
+	if (cxt->console_read_cnt == 0) {
+		cxt->console_read_cnt++;
+		zone = cxt->cpsz;
+		if (psz_old_ok(zone))
+			return zone;
+	}
+
 	return NULL;
 }
 
@@ -892,6 +940,8 @@ static ssize_t psz_pstore_read(struct pstore_record *record)
 		readop = psz_kmsg_read;
 		record->id = cxt->kmsg_read_cnt - 1;
 		break;
+	case PSTORE_TYPE_CONSOLE:
+		fallthrough;
 	case PSTORE_TYPE_PMSG:
 		readop = psz_record_read;
 		break;
@@ -952,6 +1002,8 @@ static void psz_free_all_zones(struct psz_context *cxt)
 		psz_free_zones(&cxt->opszs, &cxt->kmsg_max_cnt);
 	if (cxt->ppsz)
 		psz_free_zone(&cxt->ppsz);
+	if (cxt->cpsz)
+		psz_free_zone(&cxt->cpsz);
 }
 
 static struct pstore_zone *psz_init_zone(enum pstore_type_id type,
@@ -1053,6 +1105,15 @@ static int psz_alloc_zones(struct psz_context *cxt)
 		goto free_out;
 	}
 
+	off_size += info->console_size;
+	cxt->cpsz = psz_init_zone(PSTORE_TYPE_CONSOLE, &off,
+			info->console_size);
+	if (IS_ERR(cxt->cpsz)) {
+		err = PTR_ERR(cxt->cpsz);
+		cxt->cpsz = NULL;
+		goto free_out;
+	}
+
 	cxt->opszs = psz_init_zones(PSTORE_TYPE_DMESG, &off,
 			info->total_size - off_size,
 			info->kmsg_size, &cxt->kmsg_max_cnt);
@@ -1087,7 +1148,7 @@ int register_pstore_zone(struct pstore_zone_info *info)
 		return -EINVAL;
 	}
 
-	if (!info->kmsg_size && !info->pmsg_size) {
+	if (!info->kmsg_size && !info->pmsg_size && !info->console_size) {
 		pr_warn("at least one record size must be non-zero\n");
 		return -EINVAL;
 	}
@@ -1110,6 +1171,7 @@ int register_pstore_zone(struct pstore_zone_info *info)
 	check_size(total_size, 4096);
 	check_size(kmsg_size, SECTOR_SIZE);
 	check_size(pmsg_size, SECTOR_SIZE);
+	check_size(console_size, SECTOR_SIZE);
 
 #undef check_size
 
@@ -1136,6 +1198,7 @@ int register_pstore_zone(struct pstore_zone_info *info)
 	pr_debug("\ttotal size : %ld Bytes\n", info->total_size);
 	pr_debug("\tkmsg size : %ld Bytes\n", info->kmsg_size);
 	pr_debug("\tpmsg size : %ld Bytes\n", info->pmsg_size);
+	pr_debug("\tconsole size : %ld Bytes\n", info->console_size);
 
 	err = psz_alloc_zones(cxt);
 	if (err) {
@@ -1169,6 +1232,10 @@ int register_pstore_zone(struct pstore_zone_info *info)
 		cxt->pstore.flags |= PSTORE_FLAGS_PMSG;
 		pr_cont(" pmsg");
 	}
+	if (info->console_size) {
+		cxt->pstore.flags |= PSTORE_FLAGS_CONSOLE;
+		pr_cont(" console");
+	}
 	pr_cont("\n");
 
 	err = pstore_register(&cxt->pstore);
@@ -1210,6 +1277,10 @@ void unregister_pstore_zone(struct pstore_zone_info *info)
 	/* Stop incoming writes from pstore. */
 	pstore_unregister(&cxt->pstore);
 
+	/* Flush any pending writes. */
+	psz_flush_all_dirty_zones(NULL);
+	flush_delayed_work(&psz_cleaner);
+
 	/* Clean up allocations. */
 	kfree(cxt->pstore.buf);
 	cxt->pstore.buf = NULL;
diff --git a/include/linux/pstore_zone.h b/include/linux/pstore_zone.h
index 39c2cb944123..da294e6d7661 100644
--- a/include/linux/pstore_zone.h
+++ b/include/linux/pstore_zone.h
@@ -18,11 +18,12 @@ typedef ssize_t (*psz_write_op)(const char *, size_t, loff_t);
  *		it must be multiple of SECTOR_SIZE(512 Bytes).
  * @max_reason: Maximum kmsg dump reason to store.
  * @pmsg_size:	The size of pmsg zone which is the same as @kmsg_size.
+ * @console_size:The size of console zone which is the same as @kmsg_size.
  * @read:	The general read operation. Both of the function parameters
  *		@size and @offset are relative value to storage.
  *		On success, the number of bytes should be returned, others
  *		means error.
- * @write:	The same as @read.
+ * @write:	The same as @read, but -EBUSY means try to write again later.
  * @panic_write:The write operation only used for panic case. It's optional
  *		if you do not care panic log. The parameters and return value
  *		are the same as @read.
@@ -35,6 +36,7 @@ struct pstore_zone_info {
 	unsigned long kmsg_size;
 	int max_reason;
 	unsigned long pmsg_size;
+	unsigned long console_size;
 	psz_read_op read;
 	psz_write_op write;
 	psz_write_op panic_write;
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
