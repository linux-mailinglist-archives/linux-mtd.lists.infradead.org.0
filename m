Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0051CC52C
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 01:42:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bsMgNoNHeAMTeAiVdEPBDhonMZ3xIiJojZ39UXQJPjs=; b=YTU2p+b5kXdWjv
	YTsL6HzWMAouDZQooerpCyiGP3WT0JRaFuEcrY954wmRe85M3fWc1dZWyh1d4lTLoOuFj1QbGXe6g
	2kw7m8zRgRpb7aTHBEdU3mH78Li3qldJeLgl2n9LVM8SpXC2x298D5fbTWIrVIpbJzZ6iBEuKNSz8
	8J3tJlFSA0bepb40BcmO7FEdW/t5dfpJWthbrs5NLTUSHi9kyG4/Qi3k/F3zuT22/bIUmVLGzWO5h
	lX41uzcLQzhoyp3m348wK+agvGx4qngUIxjl5XURNvnmj9VJKgcwxpMQFf9jRLn0m4lGCIoAeV9u/
	R4HAo3lfjZ6RHrZIk5IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXZ6T-0001gj-1Z; Sat, 09 May 2020 23:41:57 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXZ5i-00019p-1U
 for linux-mtd@lists.infradead.org; Sat, 09 May 2020 23:41:11 +0000
Received: by mail-pj1-x1041.google.com with SMTP id t40so5919831pjb.3
 for <linux-mtd@lists.infradead.org>; Sat, 09 May 2020 16:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5ftIoYymBGMn0ProUbxAIjGCP6irGe3xnecuHwaJ2BU=;
 b=J+WcAhg/8U9d8i8Ni4muSGO+lb3eUiXAVxT5zD8TDMaO8aoOxB6kinmYlTxP+h7lKm
 TJ50PNjQ65bbw1gC2i4iFM3d2fe9cAXhpQd6hKGW9hXdzrcrWDVnGgPazsPx6KEqKBgZ
 3+3hlUICTP72mniDhetLNTRGKir2nXeMEDe7M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5ftIoYymBGMn0ProUbxAIjGCP6irGe3xnecuHwaJ2BU=;
 b=RaOnJx/aILfa2mMf5b63GsqoFwGEaVkJqosC3HB/+QzJdETPL5X9i4vTXQfZRd5xjM
 tibZ+ZdFBdFZj9mzF0BtHGyJi9GtB/YAC9au/bFRAznEcxA9zo0zMgUDGEyD42nZ7YFk
 QgS7XqI9+/ja2khgikzsWNFtgS/d3uIEsCXE28XQXonbUJjQYEututMKPGGHNZ46mcwX
 q8VW/mpwmYgMo6QJL0XjRKDWTEam+ltinndegiYeo8mhSVhTk3qpgJYk8FL9P1FEEh5v
 9qRymXFeRFxhycbYX9MHfcqguWE0f31VYWlCG9HH8dmSJHRC7jZt0qP6VsMuDAcg+9bm
 qz0g==
X-Gm-Message-State: AGi0PuZYki+uvLVoalQtbC61U8Ouyf4WFk/CqheHFj/uHEQNxzhQ8Z18
 4MX4Um8/hQ1nhqyI+TFQeHyASQ==
X-Google-Smtp-Source: APiQypJ3GTwxgEPSApk+xqYi+LtJwVmYIA7dZ8lzRZdb4HTWsDJTywZTADz0LsVAiUi/cWbCzeOoAA==
X-Received: by 2002:a17:90a:d14d:: with SMTP id
 t13mr13970521pjw.175.1589067669158; 
 Sat, 09 May 2020 16:41:09 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id r78sm5322903pfr.10.2020.05.09.16.41.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 May 2020 16:41:06 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: [PATCH v6 04/18] pstore/platform: Use backend name for console
 registration
Date: Sat,  9 May 2020 16:40:49 -0700
Message-Id: <20200509234103.46544-5-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200509234103.46544-1-keescook@chromium.org>
References: <20200509234103.46544-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_164110_075501_10C7FA8A 
X-CRM114-Status: GOOD (  11.36  )
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

If the pstore backend changes, there's no indication in the logs what
the console is (it always says "pstore"). Instead, pass through the
active backend's name.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 fs/pstore/platform.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/fs/pstore/platform.c b/fs/pstore/platform.c
index bf7fa7b278bd..90d146fbc7d2 100644
--- a/fs/pstore/platform.c
+++ b/fs/pstore/platform.c
@@ -519,13 +519,15 @@ static void pstore_console_write(struct console *con, const char *s, unsigned c)
 }
 
 static struct console pstore_console = {
-	.name	= "pstore",
 	.write	= pstore_console_write,
 	.index	= -1,
 };
 
 static void pstore_register_console(void)
 {
+	/* Show which backend is going to get console writes. */
+	strscpy(pstore_console.name, psinfo->name,
+		sizeof(pstore_console.name));
 	/*
 	 * Always initialize flags here since prior unregister_console()
 	 * calls may have changed settings (specifically CON_ENABLED).
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
