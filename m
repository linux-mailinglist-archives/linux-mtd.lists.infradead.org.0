Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 971AC1CCDEB
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 22:32:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oUXvF9D57pxwAls/PiUq0SL+4AJIvQb9ISiLu8aXD3A=; b=mgVslKfVnGKzS3
	5FGT7aRas2mtWFhPN9OFoh2F1jJVg8ThzNp/teLBh5bWCf7f9HUFO+ZHpsobnwpzBuA26UrvyVx1t
	3syfhDU3qF1Xioe45DTRyN458WFFxO5vxaneXu8IadFKoQSUMIXupuwU2qV+frcyN7uZ9Ufi+ChFX
	CCFmAKXLWguBB6OSEDh3VP49olNVMZUwxQM24HQkmAEAHkKKJqhlSmKLJ9ixIvQDMXjvERgFrsboT
	AbRX1+xTz5G8Ky54m0IFXXZ2fZ16Cz/srl23Km6Z6vypNiPvf08BgCEqunka3esrIXCIVPEUk90X6
	aO3fFzI63LQMhn/bBexA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXscZ-0004O7-HS; Sun, 10 May 2020 20:32:23 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXscA-0004C6-DW
 for linux-mtd@lists.infradead.org; Sun, 10 May 2020 20:32:00 +0000
Received: by mail-pl1-x644.google.com with SMTP id u10so3028063pls.8
 for <linux-mtd@lists.infradead.org>; Sun, 10 May 2020 13:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ir/tW5eoK5uXYiNLryAUfBY8WLibMB3ybmcRpMvWllk=;
 b=KpM9TlJYWXrXEYrwcnrm4ofE3uXbU6B5N6O0tQowisDhcGPVkHuA1atNz7bO4TNPnS
 Cpj0b6j2qjpNod4Ksajil38bGhzpE0w7GPuCWhEq+/C5K/ud3zj/g39ySB1raCMKZKBB
 ITfC9pjOPlrUfl5xYI8U/kDg5VgY77UvrAFWk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ir/tW5eoK5uXYiNLryAUfBY8WLibMB3ybmcRpMvWllk=;
 b=HXw0OlLCTRvI3KxkUWMDfeM5AyeAVNsWwPapD7+sCPOZT89pA/AjtMq9p8b4LJ9iuK
 5kC/9OGB9TGXoEk1/eSTpuBo19dKeFFsnV1A3Xt8amVvTApaw+D/52NobOzg1S7umwpA
 oEXzSS3GtTlx1EM46jSRBL7JgHhOAAfNgYyJZSSBTJ5DAddsdzAgY8LNlT5aGGcELvju
 ReT7PYuUs0BQApkdXFTsU78MsgbaWjOacBAdFJ/4gZF8wekSGy12+46gKtsEgs3MYSge
 oD14SIxKzHFHT1m3w+aC3MdL2SSd+tarjCzk65uG0ddv5v+JB6qe7q34ATKSOgs1uQoH
 fGkA==
X-Gm-Message-State: AGi0PuZ4s16e/eRRlI73lwMJ2ArJJVy9SCIz6uchOXy8CmXV6s/G8EIP
 UUVjiam85mAbhX6Iaxnsxs+j3Q==
X-Google-Smtp-Source: APiQypKrzIJmAIxHjDnc8zD3JQGTaRexPrGGeFhcwbrBTP4WtL9nsdbrsU7LNMkKwT7i8hz1tQEg4w==
X-Received: by 2002:a17:902:ea86:: with SMTP id
 x6mr11131121plb.75.1589142717712; 
 Sun, 10 May 2020 13:31:57 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 135sm7396347pfu.125.2020.05.10.13.31.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 10 May 2020 13:31:56 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: [PATCH v7 16/18] pstore/blk: Support non-block storage devices
Date: Sun, 10 May 2020 13:24:34 -0700
Message-Id: <20200510202436.63222-17-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200510202436.63222-1-keescook@chromium.org>
References: <20200510202436.63222-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_133158_464116_6A65B2A8 
X-CRM114-Status: GOOD (  20.43  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Add support for non-block devices (e.g. MTD). A non-block driver calls
pstore_blk_register_device() to register iself.

In addition, pstore/zone is updated to handle non-block devices,
where an erase must be done before a write. Without this, there is no
way to remove records stored to an MTD.

Signed-off-by: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Link: https://lore.kernel.org/r/1585126506-18635-11-git-send-email-liaoweixiong@allwinnertech.com
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 Documentation/admin-guide/pstore-blk.rst | 17 ++++-
 fs/pstore/blk.c                          | 94 +++++++++++++-----------
 fs/pstore/zone.c                         |  8 +-
 include/linux/pstore_blk.h               | 38 ++++++++++
 include/linux/pstore_zone.h              |  6 ++
 5 files changed, 115 insertions(+), 48 deletions(-)

diff --git a/Documentation/admin-guide/pstore-blk.rst b/Documentation/admin-guide/pstore-blk.rst
index bef8c7436721..d45341e55e82 100644
--- a/Documentation/admin-guide/pstore-blk.rst
+++ b/Documentation/admin-guide/pstore-blk.rst
@@ -7,8 +7,8 @@ Introduction
 ------------
 
 pstore block (pstore/blk) is an oops/panic logger that writes its logs to a
-block device before the system crashes. You can get these log files by
-mounting pstore filesystem like::
+block device and non-block device before the system crashes. You can get
+these log files by mounting pstore filesystem like::
 
     mount -t pstore pstore /sys/fs/pstore
 
@@ -24,8 +24,8 @@ Configurations for user determine how pstore/blk works, such as pmsg_size,
 kmsg_size and so on. All of them support both Kconfig and module parameters,
 but module parameters have priority over Kconfig.
 
-Configurations for driver are all about block device, such as total_size
-of block device and read/write operations.
+Configurations for driver are all about block device and non-block device,
+such as total_size of block device and read/write operations.
 
 Configurations for user
 -----------------------
@@ -152,6 +152,15 @@ driver uses ``register_pstore_blk`` to register to pstore/blk.
 .. kernel-doc:: fs/pstore/blk.c
    :identifiers: register_pstore_blk
 
+A non-block device driver uses ``register_pstore_device`` with
+``struct pstore_device_info`` to register to pstore/blk.
+
+.. kernel-doc:: fs/pstore/blk.c
+   :identifiers: register_pstore_device
+
+.. kernel-doc:: include/linux/pstore_blk.h
+   :identifiers: pstore_device_info
+
 Compression and header
 ----------------------
 
diff --git a/fs/pstore/blk.c b/fs/pstore/blk.c
index e8e907ea8b03..0dea8ded2de2 100644
--- a/fs/pstore/blk.c
+++ b/fs/pstore/blk.c
@@ -104,55 +104,23 @@ static struct bdev_info {
 	_##name_;						\
 })
 
-/**
- * struct pstore_device_info - back-end pstore/blk driver structure.
- *
- * @total_size: The total size in bytes pstore/blk can use. It must be greater
- *		than 4096 and be multiple of 4096.
- * @flags:	Refer to macro starting with PSTORE_FLAGS defined in
- *		linux/pstore.h. It means what front-ends this device support.
- *		Zero means all backends for compatible.
- * @read:	The general read operation. Both of the function parameters
- *		@size and @offset are relative value to bock device (not the
- *		whole disk).
- *		On success, the number of bytes should be returned, others
- *		means error.
- * @write:	The same as @read, but the following error number:
- *		-EBUSY means try to write again later.
- *		-ENOMSG means to try next zone.
- * @panic_write:The write operation only used for panic case. It's optional
- *		if you do not care panic log. The parameters are relative
- *		value to storage.
- *		On success, the number of bytes should be returned, others
- *		excluding -ENOMSG mean error. -ENOMSG means to try next zone.
- */
-struct pstore_device_info {
-	unsigned long total_size;
-	unsigned int flags;
-	pstore_zone_read_op read;
-	pstore_zone_write_op write;
-	pstore_zone_write_op panic_write;
-};
-
-static int psblk_register_do(struct pstore_device_info *dev)
+static int __register_pstore_device(struct pstore_device_info *dev)
 {
 	int ret;
 
-	if (!dev || !dev->total_size || !dev->read || !dev->write)
+	if (WARN_ON(!mutex_is_locked(&pstore_blk_lock)))
 		return -EINVAL;
 
-	mutex_lock(&pstore_blk_lock);
+	if (!dev || !dev->total_size || !dev->read || !dev->write)
+		return -EINVAL;
 
 	/* someone already registered before */
-	if (pstore_zone_info) {
-		mutex_unlock(&pstore_blk_lock);
+	if (pstore_zone_info)
 		return -EBUSY;
-	}
+
 	pstore_zone_info = kzalloc(sizeof(struct pstore_zone_info), GFP_KERNEL);
-	if (!pstore_zone_info) {
-		mutex_unlock(&pstore_blk_lock);
+	if (!pstore_zone_info)
 		return -ENOMEM;
-	}
 
 	/* zero means not limit on which backends to attempt to store. */
 	if (!dev->flags)
@@ -178,6 +146,7 @@ static int psblk_register_do(struct pstore_device_info *dev)
 	pstore_zone_info->max_reason = max_reason;
 	pstore_zone_info->read = dev->read;
 	pstore_zone_info->write = dev->write;
+	pstore_zone_info->erase = dev->erase;
 	pstore_zone_info->panic_write = dev->panic_write;
 	pstore_zone_info->name = KBUILD_MODNAME;
 	pstore_zone_info->owner = THIS_MODULE;
@@ -187,20 +156,51 @@ static int psblk_register_do(struct pstore_device_info *dev)
 		kfree(pstore_zone_info);
 		pstore_zone_info = NULL;
 	}
+	return ret;
+}
+/**
+ * register_pstore_device() - register non-block device to pstore/blk
+ *
+ * @dev: non-block device information
+ *
+ * Return:
+ * * 0		- OK
+ * * Others	- something error.
+ */
+int register_pstore_device(struct pstore_device_info *dev)
+{
+	int ret;
+
+	mutex_lock(&pstore_blk_lock);
+	ret = __register_pstore_device(dev);
 	mutex_unlock(&pstore_blk_lock);
+
 	return ret;
 }
+EXPORT_SYMBOL_GPL(register_pstore_device);
 
-static void psblk_unregister_do(struct pstore_device_info *dev)
+static void __unregister_pstore_device(struct pstore_device_info *dev)
 {
-	mutex_lock(&pstore_blk_lock);
+	WARN_ON(!mutex_is_locked(&pstore_blk_lock));
 	if (pstore_zone_info && pstore_zone_info->read == dev->read) {
 		unregister_pstore_zone(pstore_zone_info);
 		kfree(pstore_zone_info);
 		pstore_zone_info = NULL;
 	}
+}
+
+/**
+ * unregister_pstore_device() - unregister non-block device from pstore/blk
+ *
+ * @dev: non-block device information
+ */
+void unregister_pstore_device(struct pstore_device_info *dev)
+{
+	mutex_lock(&pstore_blk_lock);
+	__unregister_pstore_device(dev);
 	mutex_unlock(&pstore_blk_lock);
 }
+EXPORT_SYMBOL_GPL(unregister_pstore_device);
 
 /**
  * psblk_get_bdev() - open block device
@@ -397,9 +397,10 @@ static int __register_pstore_blk(struct pstore_blk_info *info)
 	dev.flags = info->flags;
 	dev.read = psblk_generic_blk_read;
 	dev.write = psblk_generic_blk_write;
+	dev.erase = NULL;
 	dev.panic_write = info->panic_write ? psblk_blk_panic_write : NULL;
 
-	ret = psblk_register_do(&dev);
+	ret = __register_pstore_device(&dev);
 	if (ret)
 		goto err_put_bdev;
 
@@ -443,7 +444,7 @@ static void __unregister_pstore_blk(unsigned int major)
 
 	WARN_ON(!mutex_is_locked(&pstore_blk_lock));
 	if (psblk_bdev && MAJOR(psblk_bdev->bd_dev) == major) {
-		psblk_unregister_do(&dev);
+		__unregister_pstore_device(&dev);
 		psblk_put_bdev(psblk_bdev, holder);
 		blkdev_panic_write = NULL;
 		psblk_bdev = NULL;
@@ -483,6 +484,13 @@ static void __exit pstore_blk_exit(void)
 	mutex_lock(&pstore_blk_lock);
 	if (psblk_bdev)
 		__unregister_pstore_blk(MAJOR(psblk_bdev->bd_dev));
+	else {
+		struct pstore_device_info dev = { };
+
+		if (pstore_zone_info)
+			dev.read = pstore_zone_info->read;
+		__unregister_pstore_device(&dev);
+	}
 	mutex_unlock(&pstore_blk_lock);
 }
 module_exit(pstore_blk_exit);
diff --git a/fs/pstore/zone.c b/fs/pstore/zone.c
index 17c9a0439d6e..b04257f8420f 100644
--- a/fs/pstore/zone.c
+++ b/fs/pstore/zone.c
@@ -661,15 +661,21 @@ static inline int psz_kmsg_erase(struct psz_context *cxt,
 	struct psz_buffer *buffer = zone->buffer;
 	struct psz_kmsg_header *hdr =
 		(struct psz_kmsg_header *)buffer->data;
+	size_t size;
 
 	if (unlikely(!psz_ok(zone)))
 		return 0;
+
 	/* this zone is already updated, no need to erase */
 	if (record->count != hdr->counter)
 		return 0;
 
+	size = buffer_datalen(zone) + sizeof(*zone->buffer);
 	atomic_set(&zone->buffer->datalen, 0);
-	return psz_zone_write(zone, FLUSH_META, NULL, 0, 0);
+	if (cxt->pstore_zone_info->erase)
+		return cxt->pstore_zone_info->erase(size, zone->off);
+	else
+		return psz_zone_write(zone, FLUSH_META, NULL, 0, 0);
 }
 
 static inline int psz_record_erase(struct psz_context *cxt,
diff --git a/include/linux/pstore_blk.h b/include/linux/pstore_blk.h
index 0c40774e71e0..61e914522b01 100644
--- a/include/linux/pstore_blk.h
+++ b/include/linux/pstore_blk.h
@@ -49,6 +49,44 @@ struct pstore_blk_info {
 int  register_pstore_blk(struct pstore_blk_info *info);
 void unregister_pstore_blk(unsigned int major);
 
+/**
+ * struct pstore_device_info - back-end pstore/blk driver structure.
+ *
+ * @total_size: The total size in bytes pstore/blk can use. It must be greater
+ *		than 4096 and be multiple of 4096.
+ * @flags:	Refer to macro starting with PSTORE_FLAGS defined in
+ *		linux/pstore.h. It means what front-ends this device support.
+ *		Zero means all backends for compatible.
+ * @read:	The general read operation. Both of the function parameters
+ *		@size and @offset are relative value to bock device (not the
+ *		whole disk).
+ *		On success, the number of bytes should be returned, others
+ *		means error.
+ * @write:	The same as @read, but the following error number:
+ *		-EBUSY means try to write again later.
+ *		-ENOMSG means to try next zone.
+ * @erase:	The general erase operation for device with special removing
+ *		job. Both of the function parameters @size and @offset are
+ *		relative value to storage.
+ *		Return 0 on success and others on failure.
+ * @panic_write:The write operation only used for panic case. It's optional
+ *		if you do not care panic log. The parameters are relative
+ *		value to storage.
+ *		On success, the number of bytes should be returned, others
+ *		excluding -ENOMSG mean error. -ENOMSG means to try next zone.
+ */
+struct pstore_device_info {
+	unsigned long total_size;
+	unsigned int flags;
+	pstore_zone_read_op read;
+	pstore_zone_write_op write;
+	pstore_zone_erase_op erase;
+	pstore_zone_write_op panic_write;
+};
+
+int  register_pstore_device(struct pstore_device_info *dev);
+void unregister_pstore_device(struct pstore_device_info *dev);
+
 /**
  * struct pstore_blk_config - the pstore_blk backend configuration
  *
diff --git a/include/linux/pstore_zone.h b/include/linux/pstore_zone.h
index e79a18e41064..1e35eaa33e5e 100644
--- a/include/linux/pstore_zone.h
+++ b/include/linux/pstore_zone.h
@@ -7,6 +7,7 @@
 
 typedef ssize_t (*pstore_zone_read_op)(char *, size_t, loff_t);
 typedef ssize_t (*pstore_zone_write_op)(const char *, size_t, loff_t);
+typedef ssize_t (*pstore_zone_erase_op)(size_t, loff_t);
 /**
  * struct pstore_zone_info - pstore/zone back-end driver structure
  *
@@ -27,6 +28,10 @@ typedef ssize_t (*pstore_zone_write_op)(const char *, size_t, loff_t);
  * @write:	The same as @read, but the following error number:
  *		-EBUSY means try to write again later.
  *		-ENOMSG means to try next zone.
+ * @erase:	The general erase operation for device with special removing
+ *		job. Both of the function parameters @size and @offset are
+ *		relative value to storage.
+ *		Return 0 on success and others on failure.
  * @panic_write:The write operation only used for panic case. It's optional
  *		if you do not care panic log. The parameters are relative
  *		value to storage.
@@ -45,6 +50,7 @@ struct pstore_zone_info {
 	unsigned long ftrace_size;
 	pstore_zone_read_op read;
 	pstore_zone_write_op write;
+	pstore_zone_erase_op erase;
 	pstore_zone_write_op panic_write;
 };
 
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
