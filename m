Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA331CA437
	for <lists+linux-mtd@lfdr.de>; Fri,  8 May 2020 08:40:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z/oSCoKAeBuQkCPYZfmk1usxK/oD5RF9GFCUDwmRzNE=; b=YzjcPgaSWXwM+1
	JowuK30kiu8GKbDV3jyig6tGG8uyNe94PE1drpHAsxDuGLKsZ9/mwoQpn3EZBULcY23Eu2IbKtf4L
	ilb8f1M7Sy2ymazjZqxNWg2UdxPPWuyor72DKdRATPkBKfbq5de1BWs1Z7bZg3XlinperA7NIKPWR
	UO/Ot2/0TbErxpgPXtVCclADnTv9x3c9ZhZnpXh9Ef7k41URMSMdgSP+4lyyG49tuayoEDy5WvaG3
	R7+Du5l+ikt2vPp1ZJHDpbXQM8iIyYa/Vqh8kWlcqHszbss5MKmzc7lI1xgr5qZTD6ZnO8VZ5o5LX
	oH0tzdfYYpMtlR9etyPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWwgh-0008SQ-8l; Fri, 08 May 2020 06:40:47 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWwgB-0008Cq-6m
 for linux-mtd@lists.infradead.org; Fri, 08 May 2020 06:40:17 +0000
Received: by mail-pf1-x443.google.com with SMTP id d184so445982pfd.4
 for <linux-mtd@lists.infradead.org>; Thu, 07 May 2020 23:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1msrSyHZ6KfA51tZi5XgmUcYg/Y7t9cj83OUd8ZkNEY=;
 b=bWDhDxic/fxlTFZu9VXJ5niKiHgQNotH2cKyRKjaOx3VmhF/9tO0oDOy+4Q7SCS/Fo
 NzimCvCXTiQwZ/OttQPeFw9OtbLRrngc25eeJQaQjPqbJQPsAiB7zWEwEG+e4UG1pGt6
 WyS8X+qYsdFpjynUnDUildk4q8Swr1p2Gr9gE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1msrSyHZ6KfA51tZi5XgmUcYg/Y7t9cj83OUd8ZkNEY=;
 b=YbeB1Gbo51h43kgK7J1hsOFzCTAL2kbDLPGfDSTVHrMnSffRz8Ez2Ou5jD6r6FTcqE
 8zbya6kstx2vQCYpDQkagzLE2lHPqlfDzo+E0ogRbi5vpSB/nKdMVTUJnfr7TOkSooGv
 tLjqR0FlvABWdIRrAlq1RWBuvw8I9RQ4k7/HiRPXW9JlctbLFm+feUMiPq4G33RSkogt
 FmgyKfB6PhFLoqcg21C8s1fOaMOoIe3OdTLsgs58Xjv8WXlq6+GT8NvKriD43jMd301S
 gLFpVjV9oKWb9OKqo1j5gE1D1oyNFaJdfCnU8rcBESLn/h+5REUTCHh2sH7zmTAk49aN
 DUmg==
X-Gm-Message-State: AGi0PuZYJ5hno6a4zmtioF4rLjd1tPWG+NtOCyoiSDRI1z2eXHROeJtk
 fvHHoIH1f9fhyM3ioRGaKFNveA==
X-Google-Smtp-Source: APiQypLk1Mg7kNeFeBwkDOe2wQg2PR/W23mwT2tRkzyl61Z5pOg8H5W6ETpAbHz0dzHI1KzyoDZfVA==
X-Received: by 2002:a63:a043:: with SMTP id u3mr856506pgn.287.1588920014676;
 Thu, 07 May 2020 23:40:14 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id l137sm774866pfd.107.2020.05.07.23.40.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 23:40:12 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: [PATCH v4 04/12] pstore/blk: Provide way to choose pstore frontend
 support
Date: Thu,  7 May 2020 23:39:56 -0700
Message-Id: <20200508064004.57898-5-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200508064004.57898-1-keescook@chromium.org>
References: <20200508064004.57898-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_234015_247415_BBF4AB94 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

Most pstore backends lack support for all the pstore frontends, only
handling kmsg dump and not things like pmsg, console, and ftrace.
Provide a way for drivers using pstore/blk to list which frontends they
expect to support.

Signed-off-by: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Link: https://lore.kernel.org/r/1585126506-18635-4-git-send-email-liaoweixiong@allwinnertech.com
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 fs/pstore/blk.c            | 16 +++++++++++++---
 include/linux/pstore_blk.h |  4 +++-
 2 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/fs/pstore/blk.c b/fs/pstore/blk.c
index 286aa82aa483..d1c3074aa128 100644
--- a/fs/pstore/blk.c
+++ b/fs/pstore/blk.c
@@ -67,6 +67,9 @@ static struct bdev_info {
  *
  * @total_size: The total size in bytes pstore/blk can use. It must be greater
  *		than 4096 and be multiple of 4096.
+ * @flags:	Refer to macro starting with PSTORE_FLAGS defined in
+ *		linux/pstore.h. It means what front-ends this device support.
+ *		Zero means all backends for compatible.
  * @read:	The general read operation. Both of the function parameters
  *		@size and @offset are relative value to bock device (not the
  *		whole disk).
@@ -79,6 +82,7 @@ static struct bdev_info {
  */
 struct psblk_device {
 	unsigned long total_size;
+	unsigned int flags;
 	psz_read_op read;
 	psz_write_op write;
 	psz_write_op panic_write;
@@ -104,8 +108,11 @@ static int psblk_register_do(struct psblk_device *dev)
 		return -ENOMEM;
 	}
 
-#define verify_size(name, alignsize) {					\
-		long _##name_ = (name);					\
+	/* zero means all backends for compatible */
+	if (!dev->flags)
+		dev->flags = UINT_MAX;
+#define verify_size(name, alignsize, enable) {				\
+		long _##name_ = (enable) ? (name) : 0;			\
 		_##name_ = _##name_ <= 0 ? 0 : (_##name_ * 1024);	\
 		if (_##name_ & ((alignsize) - 1)) {			\
 			pr_info(#name " must align to %d\n",		\
@@ -312,6 +319,7 @@ static struct bdev_info *psblk_get_bdev_info(void)
  * psblk_register_blkdev() - register block device to pstore/blk
  *
  * @major: the major device number of registering device
+ * @flags: refer to macro starting with PSTORE_FLAGS defined in linux/pstore.h
  * @panic_write: the interface for panic case.
  *
  * Only the matching major to @blkdev can register.
@@ -322,7 +330,8 @@ static struct bdev_info *psblk_get_bdev_info(void)
  * * 0		- OK
  * * Others	- something error.
  */
-int psblk_register_blkdev(unsigned int major, psblk_panic_write_op panic_write)
+int psblk_register_blkdev(unsigned int major, unsigned int flags,
+		psblk_panic_write_op panic_write)
 {
 	struct block_device *bdev;
 	struct psblk_device dev = {0};
@@ -353,6 +362,7 @@ int psblk_register_blkdev(unsigned int major, psblk_panic_write_op panic_write)
 	blkdev_panic_write = panic_write;
 
 	dev.total_size = psblk_bdev_size(bdev);
+	dev.flags = flags;
 	dev.panic_write = panic_write ? psblk_blk_panic_write : NULL;
 	dev.read = psblk_generic_blk_read;
 	dev.write = psblk_generic_blk_write;
diff --git a/include/linux/pstore_blk.h b/include/linux/pstore_blk.h
index 5ff465e3953e..d8f609e60288 100644
--- a/include/linux/pstore_blk.h
+++ b/include/linux/pstore_blk.h
@@ -4,6 +4,7 @@
 #define __PSTORE_BLK_H_
 
 #include <linux/types.h>
+#include <linux/pstore.h>
 #include <linux/pstore_zone.h>
 
 /**
@@ -20,7 +21,8 @@
 typedef int (*psblk_panic_write_op)(const char *buf, sector_t start_sect,
 		sector_t sects);
 
-int  psblk_register_blkdev(unsigned int major, psblk_panic_write_op panic_write);
+int  psblk_register_blkdev(unsigned int major, unsigned int flags,
+		psblk_panic_write_op panic_write);
 void psblk_unregister_blkdev(unsigned int major);
 int  psblk_blkdev_info(dev_t *devt, sector_t *nr_sects, sector_t *start_sect);
 
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
