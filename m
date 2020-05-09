Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF151CC55F
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 01:45:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0tEB1SHnfYpHgogk0pORltVU4P2VaIwTyZr15sYgolQ=; b=jeSeXxTbB7+4Tp
	LXnM/f7UqaNIOlfvhTWCEIFddgnf5RvG1ohGFnsgMCnrcx5UXnINlTHFKwur/U0bgOMcBtEDhPVS+
	2kUdAK55X4ngT8jImP3yZerwe9sIkO6iWj3w8lvVVdRttQNjooj3dKwZm8+bBClA0HrBT22y8crFP
	gQW4795SXjI02miPTBXQJQyoWqFHpUF0V/ZLy0I9kCC3Zmm3D+Y0UfB8s2zWOcQH6aErXdCUuS41S
	r+P4n0cISE/mbJiLU56kAmv7AdiMpDFm/jIOl8Zx3u6wyoV4W708Hz9oZd6LT3bR3SjWibjq8z89K
	bw6pVQvmxBQ56+Ta0BrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXZA7-00076m-Gx; Sat, 09 May 2020 23:45:43 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXZ5v-0001N6-S1
 for linux-mtd@lists.infradead.org; Sat, 09 May 2020 23:41:27 +0000
Received: by mail-pl1-x643.google.com with SMTP id b8so2291619plm.11
 for <linux-mtd@lists.infradead.org>; Sat, 09 May 2020 16:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P5XQ7GZyxsmkQxM/m7MTAmrg4kL6aqAimSpckGQ7Uxg=;
 b=dC2YQTRrR7cNSjW2IR6bIn6gclMTxQTeCYX8luWgsRahd9W4nwBdLnxTsbkrUmt+0w
 B48Rw+TkJw5l6XGPwWREYieWjvYnF3lE0uQE8kTstg06uxQFoe+Mv1A8YSppAPE+LvRV
 bqB1ESekL1VlwAGoQ7C/a5xM8OUxPGWp8JlWk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P5XQ7GZyxsmkQxM/m7MTAmrg4kL6aqAimSpckGQ7Uxg=;
 b=tP0GqOUq9EFuyHn8dRwKzEqCxGxlyTN/C+jrzzTro0sgtiD/ctAb9jIVbeWjkjeVFE
 lqVb1fi1G0nJIkdnNSK64m6AkEUqKT2D6ZJmBn6TJpWI/pl8aGQvQFTMWcMGF/S3LzMI
 8BH2tyvEnFpMIrGCwygJuVFwFTMAxO+eanOtEVleHtf0faJAKgisVouCHbTgj7dLkDmL
 xSLdtQt70pVAHYA9mLHYpYqvEmhEs8MqVCfds5olrU1qe89skP0Hu6Nbvcwu6z0px2Z7
 VESdgkHV+HFhXBZfJtABZb5bnfhqH9chY0X9+7h44+soS0OFzixh3cltRD6kis8sL6vl
 Ejjg==
X-Gm-Message-State: AGi0PuZiPMFaFsqKsB08mmy56v45+1qOQigETKdhlVy9K02czZ9b9fk8
 81OH4PFAT2tcksFrnvvziXJLGg==
X-Google-Smtp-Source: APiQypLGN//WZ3gwqGjno7ilyV13FVtSWzqaFNexRdyfXWXHXZvObDnQKZ0zfqBRlONfIXonNzIkmA==
X-Received: by 2002:a17:90a:d517:: with SMTP id
 t23mr13674448pju.210.1589067681838; 
 Sat, 09 May 2020 16:41:21 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id o40sm5921986pjb.18.2020.05.09.16.41.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 May 2020 16:41:18 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: [PATCH v6 15/18] pstore/blk: Provide way to query pstore configuration
Date: Sat,  9 May 2020 16:41:00 -0700
Message-Id: <20200509234103.46544-16-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200509234103.46544-1-keescook@chromium.org>
References: <20200509234103.46544-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_164123_992100_EB09118D 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

In order to configure itself, the MTD backend needs to be able to query
the current pstore configuration. Introduce pstore_blk_usr_info() for
this purpose.

Signed-off-by: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Link: https://lore.kernel.org/r/1585126506-18635-10-git-send-email-liaoweixiong@allwinnertech.com
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 fs/pstore/blk.c            | 37 ++++++++++++++++++++++++++++++-------
 include/linux/pstore_blk.h | 10 ++++++++++
 2 files changed, 40 insertions(+), 7 deletions(-)

diff --git a/fs/pstore/blk.c b/fs/pstore/blk.c
index 884b51e5879f..134c5e0c67c1 100644
--- a/fs/pstore/blk.c
+++ b/fs/pstore/blk.c
@@ -93,6 +93,17 @@ static struct bdev_info {
 	sector_t start_sect;
 } g_bdev_info;
 
+#define check_size(name, alignsize) ({				\
+	long _##name_ = (name);					\
+	_##name_ = _##name_ <= 0 ? 0 : (_##name_ * 1024);	\
+	if (_##name_ & ((alignsize) - 1)) {			\
+		pr_info(#name " must align to %d\n",		\
+				(alignsize));			\
+		_##name_ = ALIGN(name, (alignsize));		\
+	}							\
+	_##name_;						\
+})
+
 /**
  * struct psblk_device - back-end pstore/blk driver structure.
  *
@@ -148,13 +159,11 @@ static int psblk_register_do(struct psblk_device *dev)
 		dev->flags = UINT_MAX;
 
 #define verify_size(name, alignsize, enabled) {				\
-		long _##name_ = (enabled) ? (name) : 0;			\
-		_##name_ = _##name_ <= 0 ? 0 : (_##name_ * 1024);	\
-		if (_##name_ & ((alignsize) - 1)) {			\
-			pr_info(#name " must align to %d\n",		\
-					(alignsize));			\
-			_##name_ = ALIGN(name, (alignsize));		\
-		}							\
+		long _##name_;						\
+		if (enabled)						\
+			_##name_ = check_size(name, alignsize);		\
+		else							\
+			_##name_ = 0;					\
 		name = _##name_ / 1024;					\
 		pstore_zone_info->name = _##name_;			\
 	}
@@ -508,6 +517,20 @@ int psblk_blkdev_info(dev_t *devt, sector_t *nr_sects, sector_t *start_sect)
 }
 EXPORT_SYMBOL_GPL(psblk_blkdev_info);
 
+/* get information of pstore/blk */
+int pstore_blk_usr_info(struct pstore_blk_info *info)
+{
+	strncpy(info->device, blkdev, 80);
+	info->max_reason = max_reason;
+	info->kmsg_size = check_size(kmsg_size, 4096);
+	info->pmsg_size = check_size(pmsg_size, 4096);
+	info->ftrace_size = check_size(ftrace_size, 4096);
+	info->console_size = check_size(console_size, 4096);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(pstore_blk_usr_info);
+
 static void __exit pstore_blk_exit(void)
 {
 	mutex_lock(&pstore_blk_lock);
diff --git a/include/linux/pstore_blk.h b/include/linux/pstore_blk.h
index 121b70e314a8..8aae922caa27 100644
--- a/include/linux/pstore_blk.h
+++ b/include/linux/pstore_blk.h
@@ -27,4 +27,14 @@ int  register_pstore_blk(unsigned int major, unsigned int flags,
 void unregister_pstore_blk(unsigned int major);
 int  psblk_blkdev_info(dev_t *devt, sector_t *nr_sects, sector_t *start_sect);
 
+struct pstore_blk_info {
+	char device[80];
+	enum kmsg_dump_reason max_reason;
+	unsigned long kmsg_size;
+	unsigned long pmsg_size;
+	unsigned long console_size;
+	unsigned long ftrace_size;
+};
+int pstore_blk_usr_info(struct pstore_blk_info *info);
+
 #endif
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
