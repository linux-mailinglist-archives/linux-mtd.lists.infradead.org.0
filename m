Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DED571CCDB6
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 22:25:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XUQY01ZiH4gJzLSY+DwvlRdEqTNKsop2eaE8g+nh1Ts=; b=r+CmPx947n6lg8
	KX/5EDQ+8cuNYiF7C2pOXXHUDwxEKNFsYpUJ5i0QyX+dAWYzxR7RhFE5HcsJmi0ZdSn1FAQyYODjo
	5iol5+pWoS4qEnWIDZzUg5toE6ek+0At4nwPv5qiWsfCamXhMo+Gx4AX9z7Rjvk268dvUx2TfBsU3
	24ZDhmNKbxNB2S1Anoth3VnyOcitX6zuM2ys3P5JEYrC+0sJHvUMVfvgJMkis/pKosWuLJS+a31qX
	WsgimXehnMazH5DU11ilgka3uJxj/oCnNdxa2TaIXL708rbetgxHUvU/35X31fymSxtssOFdfafff
	Sh50O+MGmInoZfowPuiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXsVT-0002Rt-O3; Sun, 10 May 2020 20:25:03 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXsV9-0002QA-Uj
 for linux-mtd@lists.infradead.org; Sun, 10 May 2020 20:24:45 +0000
Received: by mail-pj1-x1041.google.com with SMTP id fu13so6723714pjb.5
 for <linux-mtd@lists.infradead.org>; Sun, 10 May 2020 13:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BH7oPYzXzVGddb2eusJn7dvCiiIlEUY0aB5rJA7D8Lo=;
 b=Knmx1HZJZicNN2kyPSHXezy3IlidaxBgWVCKCEjmfFjqIIogaiilJAI6UQevUw+SzJ
 uxC1dHSDC2qeSRqPIKDp1GL2b47FC87gSdWL1tQCvqNJT+ecQn4XXHgGL5d4Ik6FXWoG
 Joq2ga7Uv9c5LsCL30Z7U4ze5fpY94V4y9JSI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BH7oPYzXzVGddb2eusJn7dvCiiIlEUY0aB5rJA7D8Lo=;
 b=klYshOefYKZWESMDrOJPqsHZlvC+vSfdUzpuF0hr1jlepBbBdYvMCRjdh/rg9b8n22
 NKe/zr4JsGLXR/S6eI+6YTus4Y7h62+7Cp5y7vNLbRrD2BrMICxUqBY0j7F/zCoUTf1M
 JBmFuWQmuz6lcugEVGpsNgAeCkYLQH/1I3EGnEa+YH2p/LHO0yo9sqEWvPcIZjFd+PAt
 eRYyR/VaNaG4y2FHuhVuTRwjSLiadDi3+cKZQj7sewzziWovGqp3FklpkE8e9loLoVWQ
 f5kYl2tUTbeHe0vhDDD0hfYK9u9bj88mgXd8ZXjAN+enkkxYjy3p128Se0ZuwgIQgWFk
 qgfA==
X-Gm-Message-State: AGi0PuZ3TXdCGjLz7DxQwUrjA2POVe5ggVNdFqgCHwc06u1ng4J7ZSGr
 Wm90MzH360Qebq2DNtYXnM+sRA==
X-Google-Smtp-Source: APiQypLOl1TXjmfLr/xQcK1xr2OabtzKZy6naN7IKAuzLaAUHxg4zhucy0rFHWqKNS4VPSsObsMKkw==
X-Received: by 2002:a17:902:c194:: with SMTP id
 d20mr12212723pld.256.1589142282837; 
 Sun, 10 May 2020 13:24:42 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id h12sm6246248pgi.5.2020.05.10.13.24.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 10 May 2020 13:24:41 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: [PATCH v7 01/18] pstore/ram: Move dump_oops to end of module_param
 list
Date: Sun, 10 May 2020 13:24:19 -0700
Message-Id: <20200510202436.63222-2-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200510202436.63222-1-keescook@chromium.org>
References: <20200510202436.63222-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_132444_017308_F74296A6 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
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
