Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5021CC52B
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 01:41:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XUQY01ZiH4gJzLSY+DwvlRdEqTNKsop2eaE8g+nh1Ts=; b=iYTM1RS+gS8gvx
	v0nFexH6OtqFs4ZE7dKidq5SnXBE4wU+XmLXmyvaPLiFCg3S9vy2ucwU1QwKncJhMyoRW6Xbt/phf
	I2zFu4vHDfBsYfD9965bR+asEJKfkdtJzD1ZREZwKJqhgPsg6xe+JoXcmwTWofUPF0nILiHtDWleE
	Pf1fr1xEmoBNUlwaWHgJ8b0teeeZmwGASAEq4N0opkSUrLz/WjXxAlW8iqFLs51FfNKOIHY1qhiHa
	fVTxBbkzAcadkbTTsEkPOxI2Sf/yXfibAPGI0iW+O+sHYb21QDX5Xt99KGit74ATUp8e2xF7/5Zso
	Wi+N1behlKG43PXQ3Hbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXZ6C-0001RA-QQ; Sat, 09 May 2020 23:41:40 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXZ5h-00019O-6I
 for linux-mtd@lists.infradead.org; Sat, 09 May 2020 23:41:10 +0000
Received: by mail-pl1-x641.google.com with SMTP id f8so2306321plt.2
 for <linux-mtd@lists.infradead.org>; Sat, 09 May 2020 16:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BH7oPYzXzVGddb2eusJn7dvCiiIlEUY0aB5rJA7D8Lo=;
 b=UniSr7amz9GtvTZ3gNf0nCaC6CAuwsYMTWMdmRh5DoJfNsF/WyWVrlQtjp3jsIuOt0
 h+tjUZVl42fYv4WcZ5oGufdIKYuCZfD8BZ9mDkiHTOiBaL8hYcCuWOzEMWmGxOXmI+xW
 Ebyr3kfvu1QQ3T+7M0deAJEw2Y5H53WKIISyo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BH7oPYzXzVGddb2eusJn7dvCiiIlEUY0aB5rJA7D8Lo=;
 b=hysc6rR9G7RruHE+7/JVTYjUcJQS+kKx5aJnb+IxHT63gN1uUBvnTyfGBwrZzbvoWu
 oV/LdZk8HV07xPP2fWUUewPmsySaC8rHRjjQW+e26E6d5og0caZLDnm8MA/nCN9hCg9c
 9iM+hPafeFB8Tdcd3BvTYcuWQFgMEId0VPGeIhTu890dFISq4ylHUCjURlltXZ/75sKm
 /TAwo2NX4+STORZ6okBcd9O9sXTIl1Fzj5B0g+TXADP2vsqjA8P8ZkqIFAoHLqmX6ffp
 je8BDtnlNpDNnN4eVEhFRO5ZHfZWZbX7Aoz0mQP1HP4luhenZJ4RkOKDMPpzbnMOFIcq
 /uaA==
X-Gm-Message-State: AGi0PuZmwzRiC8z08zESapXCchV4s9IHpNRF4Mm9W9xq+OhV3D6NQW3y
 JP9j0n6svO3nkeBniTIw0Me4+W+Y838=
X-Google-Smtp-Source: APiQypK15qi0ZKxUvetpLu0eCL68R0LMHd+TRd7RVmybuxclXGoJ7hR0ZH4TIAZAl+JKB3vSh67M6Q==
X-Received: by 2002:a17:90a:1b67:: with SMTP id
 q94mr13615379pjq.84.1589067668421; 
 Sat, 09 May 2020 16:41:08 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id z190sm5455053pfz.84.2020.05.09.16.41.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 May 2020 16:41:06 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: [PATCH v6 01/18] pstore/ram: Move dump_oops to end of module_param
 list
Date: Sat,  9 May 2020 16:40:46 -0700
Message-Id: <20200509234103.46544-2-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200509234103.46544-1-keescook@chromium.org>
References: <20200509234103.46544-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_164109_227918_A594969C 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

When reading "modinfo" details, dump_oops was before max_reason, which
seems odd given dump_oops is now considered deprecated. Move it to the
very end instead.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 fs/pstore/ram.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index 198d04cceb3e..7f956053f4e5 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -57,11 +57,6 @@ module_param(mem_type, uint, 0400);
 MODULE_PARM_DESC(mem_type,
 		"set to 1 to try to use unbuffered memory (default 0)");
 
-static int ramoops_dump_oops = -1;
-module_param_named(dump_oops, ramoops_dump_oops, int, 0400);
-MODULE_PARM_DESC(dump_oops,
-		 "set to 1 to dump oopses & panics, 0 to only dump panics (deprecated: use max_reason instead)");
-
 static int ramoops_max_reason = KMSG_DUMP_OOPS;
 module_param_named(max_reason, ramoops_max_reason, int, 0400);
 MODULE_PARM_DESC(max_reason,
@@ -74,6 +69,11 @@ MODULE_PARM_DESC(ramoops_ecc,
 		"ECC buffer size in bytes (1 is a special value, means 16 "
 		"bytes ECC)");
 
+static int ramoops_dump_oops = -1;
+module_param_named(dump_oops, ramoops_dump_oops, int, 0400);
+MODULE_PARM_DESC(dump_oops,
+		 "(deprecated: use max_reason instead) set to 1 to dump oopses & panics, 0 to only dump panics");
+
 struct ramoops_context {
 	struct persistent_ram_zone **dprzs;	/* Oops dump zones */
 	struct persistent_ram_zone *cprz;	/* Console zone */
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
