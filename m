Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 335FC1CC551
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 01:43:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1O7wOgCBjqMRJZGAYK/lmZuRL0sRUXDTwHN4sv+OvHY=; b=fZAaq7BYTll+tw
	WoOdqdo2Xnh87lrujE4/A4Vrf0CzD0d2QPFu/BkoA88TA4XxJNDbL+8waJAj/UMET1QpLbJCwTxPy
	F2FkiuczvF6SD9USr102xRDXCqCesa7g4zs+Kc1bThUX5X/BDkqAN9zf22fHChEDhi59tXKl+jmM4
	+JpnVtFhbsRmTKAeQlFqsXdL2SQoCa1EKAAvxRdN+lQO2ULHYVatbxgCierKrn6qkWRs1+VMDzSxT
	CqWh2ld1tBs9zI3xH5ntfK0xsMaMa69jurRB7/NloEkLi/xOplhol6ykKGLseFCdsY3mNBBpFtp1K
	2MbN5ENt85L8vK5lD7iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXZ7T-0002hE-Uk; Sat, 09 May 2020 23:42:59 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXZ5n-0001EB-27
 for linux-mtd@lists.infradead.org; Sat, 09 May 2020 23:41:16 +0000
Received: by mail-pj1-x1044.google.com with SMTP id t40so5919901pjb.3
 for <linux-mtd@lists.infradead.org>; Sat, 09 May 2020 16:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JdXyPOJQpTSYz0o6bZPVoAxc8JEprJkuWJfRQIr5NY0=;
 b=gzyOjTw8wRwrP8LbYjjrZKjGDPqzhgOFFIE7x9uWrBClM8f0xdaIMYNtJ4l1DtvQiZ
 KQWgbA5GX6ciOsSN2UI77AP9fV54X3TgepFPP7DxqTc8F+G74Ayg20aikN3drFKJeHiu
 E9lO/k/J4unHGzTz2cKSUxIS1WkFJIjRUNDv8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JdXyPOJQpTSYz0o6bZPVoAxc8JEprJkuWJfRQIr5NY0=;
 b=kJId+IIvdxUQy29/+p4TfR+chVkM2RI5/S/A4sv1uCtGlkaB7FV7ZNSTx79EPLCVGx
 diRRDQVz4l2r8FZkDNaz3Wjtm6i43KNaT2KUMN56EBY4SQWXYo8YYWCZo5n2RaUHOyjD
 9xvrBCplv1lmLO82mOZmtE9NQpKsG3+8HKJSSysGE7wACRLLYr9b+MMKuqqstu6vc99e
 mOKPgQyLsY7zAi5/LnLHdEzyTTZ6kOE0ZCyb8/pLY0sAwfllzay3qoW/1RNz2x1Q2Hga
 K8yBtLVkDRlPjS2X1e/wOMiD0Egfc0iikHMOgyjTXXx98cFBv+/Ffy19Bgqih6fUZK0A
 +5Tg==
X-Gm-Message-State: AGi0PuaN3ykMiLlb930+v+gZOtPswIWL3TPh21ozJGpU9QVvv1E/yKRm
 tySmXQ2E4RCP+w+B+QBW4eyatw==
X-Google-Smtp-Source: APiQypKzEu4VjYBffDUIaD632JEgmc2vVCn2Az2FJiIbuinys2BzwB9eEF2pbusMs65ChacYQa84VQ==
X-Received: by 2002:a17:902:9044:: with SMTP id
 w4mr9070425plz.83.1589067673972; 
 Sat, 09 May 2020 16:41:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id m18sm5886805pjl.14.2020.05.09.16.41.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 May 2020 16:41:10 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: [PATCH v6 07/18] printk: Introduce kmsg_dump_reason_str()
Date: Sat,  9 May 2020 16:40:52 -0700
Message-Id: <20200509234103.46544-8-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200509234103.46544-1-keescook@chromium.org>
References: <20200509234103.46544-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_164115_145902_E8A8EF2F 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
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
