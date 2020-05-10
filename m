Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2651A1CCDD3
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 22:26:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bsMgNoNHeAMTeAiVdEPBDhonMZ3xIiJojZ39UXQJPjs=; b=IGYl6bI1fSuE/V
	KwGyVps6AwsLLcEGzJbbJtNfSb6isq3coRnUZdqnWHXNHpMWU6F1kU2MrcJ/awQpG+Khj4jnwy3px
	k/kGD3g/YS9032u62x+hDml5yfLzB5uEbTODhRuh50h8LfUNlaor9OEzdzcg93BYalSi/Y0JCUX5x
	Bhtr9JP6kvIH1VvwwREHqwzN17UIcdb3q/rU/XV6L+UpMOyblW6U+TVVRUIY0t60cgpuMF3yEgVqe
	kMB4o1A0L/QPpkwydzHNz1PPKIdpCoACciBhQWO1OJg4YgeuWJhODuWQpVoynzyUrT6o7wOWUUMWB
	JNTGZeVT/wLy1r/40+bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXsWR-0005e0-3R; Sun, 10 May 2020 20:26:03 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXsVB-0002Qz-I4
 for linux-mtd@lists.infradead.org; Sun, 10 May 2020 20:24:46 +0000
Received: by mail-pf1-x444.google.com with SMTP id d184so3764008pfd.4
 for <linux-mtd@lists.infradead.org>; Sun, 10 May 2020 13:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5ftIoYymBGMn0ProUbxAIjGCP6irGe3xnecuHwaJ2BU=;
 b=M/cJvL8hlN3LxOR7YqQKrAGHR739tSJqQTIBdmpAhjDy0nybQzRtcOtAPrHiKVhUKj
 hsB2XqjX4rZjw8Kbgv6P7obB7m7yi8bCOQa2muYfgmO3VhYbWa1JIbtFntpsUdFnBvpg
 z2URti78Yz+e3DuPLhwr8YZHxwRBn4DNVm9MI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5ftIoYymBGMn0ProUbxAIjGCP6irGe3xnecuHwaJ2BU=;
 b=YVZVTXM3tge78zjTKGR9Y/zhB6xhxtiBrPzmu59+1U0BkH76Q/fmP7/apC+X4mcKNJ
 NBsMaBwd7PSflN2dDK/0Bg+Tl7zcZ8VcBGKIWJOPkFf14olnDw/NdgYcEf7zGcw6p9Cv
 iTIG/pq5NxYauIqg8uCU1+nUy2zko58Peh55VhbpBNhNmAbrASznzOXryP8UA9c4CC6C
 YPwamaZlCz5c0Df8ri+H6MxOwMx2RjcI+rUpvDg93BxTQzt8/xUQbaiHuyyx1gwV4XCc
 azXuZ5ndWHzz8l6uIGvaT5SHIALyLuxx65eNkD7qT1ZPczJtWAOCby3CfeDySCoZwUir
 FKww==
X-Gm-Message-State: AGi0PuZzA3m0An5GBXXu0RYEKrN7ti2FgsaBDAwm9sMCRPP30rENQFC+
 Sh1zyOBuwJbZ4pE29uh77dU+Rw==
X-Google-Smtp-Source: APiQypKkKbidaXA2M8XJ6HvdzKsXRV/+gbI2nQYSE78Rxu8a98OLbZfjBGurl33BBe6rQc0sYAewRw==
X-Received: by 2002:a62:2cd7:: with SMTP id
 s206mr12711308pfs.183.1589142284913; 
 Sun, 10 May 2020 13:24:44 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id n9sm8014797pjt.29.2020.05.10.13.24.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 10 May 2020 13:24:41 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: [PATCH v7 04/18] pstore/platform: Use backend name for console
 registration
Date: Sun, 10 May 2020 13:24:22 -0700
Message-Id: <20200510202436.63222-5-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200510202436.63222-1-keescook@chromium.org>
References: <20200510202436.63222-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_132445_607142_F911E2BD 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
