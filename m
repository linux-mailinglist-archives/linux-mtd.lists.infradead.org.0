Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6169E1CC54D
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 01:42:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CAVYStSO/BMhuosF3VqRaHuix/oHeJ52HihBsAA0DF4=; b=IiY0zV/9jJEqUq
	FBbqW8qXAeLX3Wg81efy2iagqpr15aNLwHhUoCc9Ubo+yQEO2y5GIqNGJdx3cdN9y2ZsQINsPW/uz
	Ggl+wMaWzGA6YNGUXcfGR2YMopYuOdAZQjjRkxslbldxrSaU+XkNag4SMyOEogZckPbDm4h+qrkPy
	QXOZt8GATBmeN3aV8VsIRCPs6HMKoI4g7TpxVPieaA9tSbahHjPCfEOJgsJH2AKjrT0W0tbdFdnwy
	tkcTUNSdup0kzNgqgNiXzsiPMQluj2iRUtWb89auLFJYajtvgxZxkXutxAqG+QXL5uPjIbhDEnWpE
	eesisnI71b8XpqOXII7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXZ7C-0002SU-9L; Sat, 09 May 2020 23:42:42 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXZ5l-0001D0-Si
 for linux-mtd@lists.infradead.org; Sat, 09 May 2020 23:41:15 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ms17so5929640pjb.0
 for <linux-mtd@lists.infradead.org>; Sat, 09 May 2020 16:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ktEJvuLjRdGObd9XB4X6c1FTgen2GQ5GeA/f/mZmo1s=;
 b=RuZPdRe+nPlXR2Wghynp6EaZXEF3PmMRUKWq3UhSrMw5KSyGMRrXrJUrEYeeYU0QkC
 aEXywVcy0CUFBRMX3cgqnjfIRSaj1yKbvZ6axZjddC5td3NHGNffkW2Q2GN/0akezbLS
 /pWG4ef9tXfkFKV7zr0n/YTXQrNLfW/pHjh5w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ktEJvuLjRdGObd9XB4X6c1FTgen2GQ5GeA/f/mZmo1s=;
 b=E5TWlcLU68287KLs9TwHtAE0JPcGYkhfPtIpZV9bbIab3zsRtzv8kOhKSVvR7n9wid
 iI2pnHsYvX51+FVAUrS9xZtm+acUPBUJevpTwQqx4n3YsB5Lkf6swrcYX6C1Xyq2eiFb
 0M57IZS3Zz8IWtB8fGeNmkkypW5lH4Is9B2G7wSqoHdaJHgfRi1MXGp6ubGAMma0uhto
 DOt8l0XCkUmOAZHrHbCrbA39NNKF8N50ujxU2UyDWwl7IDW9ewIh7IdDiHB/D4vo73M1
 +pe/vGP8+VLjkCPuqQajX/WcoKeb/wqLAceTwXQuqQlZZb81PMmryRUfg4woWdNN18C1
 YOZA==
X-Gm-Message-State: AGi0PubM2ccZQisswkAJeGsJojPmGtOlOQuVS2Gg5Z+AOY2ZaNRG504a
 ji9WZ0TLkjiflry8w/wR3Pi+zw==
X-Google-Smtp-Source: APiQypL1EXW3F6aL7oQ3YuFrJpxdm1M/IrMTRuCAs/8mFzNUWDw/GJrsXHUoRltpWyjMpF83R+iPCA==
X-Received: by 2002:a17:902:a604:: with SMTP id
 u4mr8730033plq.196.1589067673301; 
 Sat, 09 May 2020 16:41:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id j2sm5636068pfb.73.2020.05.09.16.41.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 May 2020 16:41:10 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: [PATCH v6 06/18] pstore/ftrace: Provide ftrace log merging routine
Date: Sat,  9 May 2020 16:40:51 -0700
Message-Id: <20200509234103.46544-7-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200509234103.46544-1-keescook@chromium.org>
References: <20200509234103.46544-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_164113_931179_4AB0E421 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
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

Move the ftrace log merging logic out of pstore/ram into pstore/ftrace
so other backends can use it, like pstore/zone.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 fs/pstore/ftrace.c   | 54 +++++++++++++++++++++++++++++++++++++++++
 fs/pstore/internal.h |  9 +++++++
 fs/pstore/ram.c      | 57 +++-----------------------------------------
 3 files changed, 66 insertions(+), 54 deletions(-)

diff --git a/fs/pstore/ftrace.c b/fs/pstore/ftrace.c
index bfbfc2698070..5c0450701293 100644
--- a/fs/pstore/ftrace.c
+++ b/fs/pstore/ftrace.c
@@ -16,6 +16,7 @@
 #include <linux/debugfs.h>
 #include <linux/err.h>
 #include <linux/cache.h>
+#include <linux/slab.h>
 #include <asm/barrier.h>
 #include "internal.h"
 
@@ -132,3 +133,56 @@ void pstore_unregister_ftrace(void)
 
 	debugfs_remove_recursive(pstore_ftrace_dir);
 }
+
+ssize_t pstore_ftrace_combine_log(char **dest_log, size_t *dest_log_size,
+				  const char *src_log, size_t src_log_size)
+{
+	size_t dest_size, src_size, total, dest_off, src_off;
+	size_t dest_idx = 0, src_idx = 0, merged_idx = 0;
+	void *merged_buf;
+	struct pstore_ftrace_record *drec, *srec, *mrec;
+	size_t record_size = sizeof(struct pstore_ftrace_record);
+
+	dest_off = *dest_log_size % record_size;
+	dest_size = *dest_log_size - dest_off;
+
+	src_off = src_log_size % record_size;
+	src_size = src_log_size - src_off;
+
+	total = dest_size + src_size;
+	merged_buf = kmalloc(total, GFP_KERNEL);
+	if (!merged_buf)
+		return -ENOMEM;
+
+	drec = (struct pstore_ftrace_record *)(*dest_log + dest_off);
+	srec = (struct pstore_ftrace_record *)(src_log + src_off);
+	mrec = (struct pstore_ftrace_record *)(merged_buf);
+
+	while (dest_size > 0 && src_size > 0) {
+		if (pstore_ftrace_read_timestamp(&drec[dest_idx]) <
+		    pstore_ftrace_read_timestamp(&srec[src_idx])) {
+			mrec[merged_idx++] = drec[dest_idx++];
+			dest_size -= record_size;
+		} else {
+			mrec[merged_idx++] = srec[src_idx++];
+			src_size -= record_size;
+		}
+	}
+
+	while (dest_size > 0) {
+		mrec[merged_idx++] = drec[dest_idx++];
+		dest_size -= record_size;
+	}
+
+	while (src_size > 0) {
+		mrec[merged_idx++] = srec[src_idx++];
+		src_size -= record_size;
+	}
+
+	kfree(*dest_log);
+	*dest_log = merged_buf;
+	*dest_log_size = total;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(pstore_ftrace_combine_log);
diff --git a/fs/pstore/internal.h b/fs/pstore/internal.h
index 8efd72d93b10..7fb219042f13 100644
--- a/fs/pstore/internal.h
+++ b/fs/pstore/internal.h
@@ -12,9 +12,18 @@ extern unsigned long kmsg_bytes;
 #ifdef CONFIG_PSTORE_FTRACE
 extern void pstore_register_ftrace(void);
 extern void pstore_unregister_ftrace(void);
+ssize_t pstore_ftrace_combine_log(char **dest_log, size_t *dest_log_size,
+				  const char *src_log, size_t src_log_size);
 #else
 static inline void pstore_register_ftrace(void) {}
 static inline void pstore_unregister_ftrace(void) {}
+static inline ssize_t
+pstore_ftrace_combine_log(char **dest_log, size_t *dest_log_size,
+			  const char *src_log, size_t src_log_size)
+{
+	*dest_log_size = 0;
+	return 0;
+}
 #endif
 
 #ifdef CONFIG_PSTORE_PMSG
diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index 672ad80646c5..b7929fdc0c72 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -21,6 +21,7 @@
 #include <linux/pstore_ram.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
+#include "internal.h"
 
 #define RAMOOPS_KERNMSG_HDR "===="
 #define MIN_MEM_SIZE 4096UL
@@ -172,59 +173,6 @@ static bool prz_ok(struct persistent_ram_zone *prz)
 			   persistent_ram_ecc_string(prz, NULL, 0));
 }
 
-static
-ssize_t ftrace_log_combine(char **dest_log, size_t *dest_log_size,
-			   const char *src_log, size_t src_log_size)
-{
-	size_t dest_size, src_size, total, dest_off, src_off;
-	size_t dest_idx = 0, src_idx = 0, merged_idx = 0;
-	void *merged_buf;
-	struct pstore_ftrace_record *drec, *srec, *mrec;
-	size_t record_size = sizeof(struct pstore_ftrace_record);
-
-	dest_off = *dest_log_size % record_size;
-	dest_size = *dest_log_size - dest_off;
-
-	src_off = src_log_size % record_size;
-	src_size = src_log_size - src_off;
-
-	total = dest_size + src_size;
-	merged_buf = kmalloc(total, GFP_KERNEL);
-	if (!merged_buf)
-		return -ENOMEM;
-
-	drec = (struct pstore_ftrace_record *)(*dest_log + dest_off);
-	srec = (struct pstore_ftrace_record *)(src_log + src_off);
-	mrec = (struct pstore_ftrace_record *)(merged_buf);
-
-	while (dest_size > 0 && src_size > 0) {
-		if (pstore_ftrace_read_timestamp(&drec[dest_idx]) <
-		    pstore_ftrace_read_timestamp(&srec[src_idx])) {
-			mrec[merged_idx++] = drec[dest_idx++];
-			dest_size -= record_size;
-		} else {
-			mrec[merged_idx++] = srec[src_idx++];
-			src_size -= record_size;
-		}
-	}
-
-	while (dest_size > 0) {
-		mrec[merged_idx++] = drec[dest_idx++];
-		dest_size -= record_size;
-	}
-
-	while (src_size > 0) {
-		mrec[merged_idx++] = srec[src_idx++];
-		src_size -= record_size;
-	}
-
-	kfree(*dest_log);
-	*dest_log = merged_buf;
-	*dest_log_size = total;
-
-	return 0;
-}
-
 static ssize_t ramoops_pstore_read(struct pstore_record *record)
 {
 	ssize_t size = 0;
@@ -297,7 +245,8 @@ static ssize_t ramoops_pstore_read(struct pstore_record *record)
 						prz_next->corrected_bytes;
 				tmp_prz->bad_blocks += prz_next->bad_blocks;
 
-				size = ftrace_log_combine(&tmp_prz->old_log,
+				size = pstore_ftrace_combine_log(
+						&tmp_prz->old_log,
 						&tmp_prz->old_log_size,
 						prz_next->old_log,
 						prz_next->old_log_size);
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
