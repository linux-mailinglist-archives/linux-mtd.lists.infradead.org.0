Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2AD1CA439
	for <lists+linux-mtd@lfdr.de>; Fri,  8 May 2020 08:41:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1O7wOgCBjqMRJZGAYK/lmZuRL0sRUXDTwHN4sv+OvHY=; b=p9o3KDTlAZjbvr
	XxfHBjYerkf+5XjyYAy9hVbwEd0DRuJxM1lBOlaUzz1HMtLgjO5IlLLqM3gov2JbVy2kC7UsktwBP
	T4e0o2Qdm0G4tcTfxxHGBchwbLAlX8ySZXYVT+c9Y1b1Qa2+2KWOViQUxz/xUhGGfkbk6ow1y6B02
	kUxdhQb/W4jaRyzgFuc7+z0txkwcEJ7eGX74wU3/FfxLqm2noNNB4OVMDF7Gy6YKJ9csnWYGg7b9Y
	VwtybTSp2tdhWZv1LcP5DHICJeJXvF4kv/GtLZ7yG+Pt7dBaurw/ez9gxwYAJfVUTvYXVAC6nvoF4
	90fPlF7dP3rTHvMmqaGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWwgw-0000Gq-OV; Fri, 08 May 2020 06:41:02 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWwgB-0008CY-6n
 for linux-mtd@lists.infradead.org; Fri, 08 May 2020 06:40:17 +0000
Received: by mail-pf1-x443.google.com with SMTP id r14so449309pfg.2
 for <linux-mtd@lists.infradead.org>; Thu, 07 May 2020 23:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JdXyPOJQpTSYz0o6bZPVoAxc8JEprJkuWJfRQIr5NY0=;
 b=e0qe+uKWWnpDhziM3t5spYTSuMsXq6+AF6XiOPyF18/SyRwTmD2rMyHRwnZQ1TbbS8
 VdEO2Fd5TlezSYNnMKE39oUlruBGWCuyvhWKMhKxLGejW8SCWK4wmwDrg+wCYy64Fz1y
 /UeOocRS+gtjS0zSHRSlgVN4sWu2kAUvRnjjg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JdXyPOJQpTSYz0o6bZPVoAxc8JEprJkuWJfRQIr5NY0=;
 b=rsb5RavkLrg3urhqPr54opedyjshOjq/h+7vW/YBGlUuD9VTx/joGrnkvSowgPpzE2
 56AzDgi9R2MdVEmulwnHuYrT1Qo8ypBITa6k/PW5O5xtlW8gadCp4FkNA9e7T+43nA3z
 xFjRnYV4gE1m68l630Ol1rXI8uxOYXKLjnLLwws96T9PnDTPktqqJp1f257dIQHThMFJ
 MiXZv8shTq0kGFooDzx18MYQUKpjPd6HRbQ7LM/UIjt5rHuMKC1xZhCipfXOvR6jjQ3s
 A4pC7hYnhNUAs5LVSjSoBE62MCwTlVG6uTzHP/ucy6ss5gzLXRf5YZfN8B1ETlzcQ6xx
 fNAA==
X-Gm-Message-State: AGi0PuYconTpFHuSSl7jwSpgyMzpPWwvn0gm+hv9qMM9W93aIGm3CTbN
 BphMTSIekhiBm24NZH5vbcVtBLr4lAo=
X-Google-Smtp-Source: APiQypI90odZV2jsIE8Wx5fA87oydWTMxAfk81N4Wxn/Fp0elZ5/LCbsNYCT0YzR2lHvefT80T8TSQ==
X-Received: by 2002:a63:f30a:: with SMTP id l10mr931307pgh.372.1588920013293; 
 Thu, 07 May 2020 23:40:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id p10sm720661pff.210.2020.05.07.23.40.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 23:40:12 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: [PATCH v4 01/12] printk: Introduce kmsg_dump_reason_str()
Date: Thu,  7 May 2020 23:39:53 -0700
Message-Id: <20200508064004.57898-2-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200508064004.57898-1-keescook@chromium.org>
References: <20200508064004.57898-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_234015_252392_05F9BECE 
X-CRM114-Status: GOOD (  10.19  )
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

The pstore subsystem already had a private version of this function.
With the coming addition of the pstore/zone driver, this needs to be
shared. As it really should live with printk, move it there instead.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/kmsg_dump.h |  7 +++++++
 kernel/printk/printk.c    | 21 +++++++++++++++++++++
 2 files changed, 28 insertions(+)

diff --git a/include/linux/kmsg_dump.h b/include/linux/kmsg_dump.h
index cfc042066be7..b3ddb0b2ee40 100644
--- a/include/linux/kmsg_dump.h
+++ b/include/linux/kmsg_dump.h
@@ -72,6 +72,8 @@ void kmsg_dump_rewind(struct kmsg_dumper *dumper);
 int kmsg_dump_register(struct kmsg_dumper *dumper);
 
 int kmsg_dump_unregister(struct kmsg_dumper *dumper);
+
+const char *kmsg_dump_reason_str(enum kmsg_dump_reason reason);
 #else
 static inline void kmsg_dump(enum kmsg_dump_reason reason)
 {
@@ -113,6 +115,11 @@ static inline int kmsg_dump_unregister(struct kmsg_dumper *dumper)
 {
 	return -EINVAL;
 }
+
+static inline const char *kmsg_dump_reason_str(enum kmsg_dump_reason reason)
+{
+	return "Disabled";
+}
 #endif
 
 #endif /* _LINUX_KMSG_DUMP_H */
diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
index 1aab69a8a2bf..67a284830d74 100644
--- a/kernel/printk/printk.c
+++ b/kernel/printk/printk.c
@@ -3144,6 +3144,27 @@ EXPORT_SYMBOL_GPL(kmsg_dump_unregister);
 static bool always_kmsg_dump;
 module_param_named(always_kmsg_dump, always_kmsg_dump, bool, S_IRUGO | S_IWUSR);
 
+const char *kmsg_dump_reason_str(enum kmsg_dump_reason reason)
+{
+	switch (reason) {
+	case KMSG_DUMP_PANIC:
+		return "Panic";
+	case KMSG_DUMP_OOPS:
+		return "Oops";
+	case KMSG_DUMP_EMERG:
+		return "Emergency";
+	case KMSG_DUMP_RESTART:
+		return "Restart";
+	case KMSG_DUMP_HALT:
+		return "Halt";
+	case KMSG_DUMP_POWEROFF:
+		return "Poweroff";
+	default:
+		return "Unknown";
+	}
+}
+EXPORT_SYMBOL_GPL(kmsg_dump_reason_str);
+
 /**
  * kmsg_dump - dump kernel log to kernel message dumpers.
  * @reason: the reason (oops, panic etc) for dumping
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
