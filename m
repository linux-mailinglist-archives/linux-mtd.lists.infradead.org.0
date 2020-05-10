Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2001CCDEA
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 22:32:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jGLvFoNtFLp4OkqLUMTQBFQ+8lFYOdpN+dKmwbAAs90=; b=gzOACzhGogBQNy
	jtx8Bm/j5etoQwBTPIqZNhpdJxc6+y1JjlVsLTzWgldKHZqEw9lhN3AVr9yppvQXDicQP4D86MA86
	z+3pgm4xyRVYOTUqVOTMf5p3EwTPEGORMP6VdCy+HKN/43+nIXyr66XtxIVI0v7QDRB4dwZ4/OUzo
	6C5TfJFEsu+o7KBOZPG3c2rCkBGnPdrVHfaZ4o6jqCZnqcFKpETX/SCyQlPoPBNZq0yHQCr4XGpQH
	dFxb7b+7QtFgrHlhiylhFVUOEZNu7jeYXdjmrsT0D/hnVwjVR4+kFO8rm80n2KxA04RS7qJvO/zEK
	Os/Rs9f3OA7mstNIUu7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXscK-0004DC-3N; Sun, 10 May 2020 20:32:08 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXsc9-0004Bp-Kr
 for linux-mtd@lists.infradead.org; Sun, 10 May 2020 20:31:58 +0000
Received: by mail-pg1-x541.google.com with SMTP id l12so3546373pgr.10
 for <linux-mtd@lists.infradead.org>; Sun, 10 May 2020 13:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IGhCzVMcFSG8RfD2dnuoWGbvQKbAh3BbNL764FWITOg=;
 b=Fw8KyfeRY2o+iHX91RUx34YBABbxf6VuNlYyNsnrWdXif3s/ACuQVflYL+CJptaAuw
 gTkwG01vIwsxYH9f/tLpXxU2UnH3b3f+//pWjovG+r86XkEYeKe1/MFAGtf/PMTdBtIm
 McUum85+3EHfgMNTrU3qDsZ2l6EjV1jWiANN8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IGhCzVMcFSG8RfD2dnuoWGbvQKbAh3BbNL764FWITOg=;
 b=eiDHEFZq4h2CiEmR6/GH6p3ATI5Q2t6GZgl7tGgjM9CzUAXj2U2s3RGOVC5iWBLnbM
 3qH3bSD01UEUjm1cq5cePm1BWWVVOtzTzbbwxGhX+Ajb/qhLTSBw7e+Bnon/As8skn0Q
 fsgfHltg+VxZkRcZ+zyHNiGpfsHo3Q4AscLd8K5IH6+6dJL+aobofBe++Dts+K4lk8ts
 UDVrcxt6UOhg4npLXgwfL/1RYq4Ug3lImEMQWl2eCEl//3DTMNJdp9dkdcM3s4dT47gr
 bwrAjiS5oI62HfMgcuKoH+ziRp1t9MJ6WXaIEqPbyobQrxdNxjYvOLoA5U6ZnrxFhMcE
 vwzw==
X-Gm-Message-State: AGi0Pub7aQmko4SLoEnJbEcMAVrc+d7XNQZwRoDIlEiSOkrMK0GDxyxg
 Pi4v5mb/gxTrWDjpk4TiRFp6bA==
X-Google-Smtp-Source: APiQypJsRU9h+Mob7IV8V9hVnNZaLYlsu6I2Ml5FQNRy6o1udqUOVm9mMtwEsQaiHAaxP5NUL+g+Lg==
X-Received: by 2002:a63:dd51:: with SMTP id g17mr10543432pgj.2.1589142717130; 
 Sun, 10 May 2020 13:31:57 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id f30sm8149570pje.29.2020.05.10.13.31.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 10 May 2020 13:31:56 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: [PATCH v7 18/18] pstore/blk: Introduce "best_effort" mode
Date: Sun, 10 May 2020 13:24:36 -0700
Message-Id: <20200510202436.63222-19-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200510202436.63222-1-keescook@chromium.org>
References: <20200510202436.63222-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_133157_706419_B9867F41 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

In order to use arbitrary block devices as a pstore backend, provide a
new module param named "best_effort", which will allow using any block
device, even if it has not provided a panic_write callback.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 fs/pstore/blk.c | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/fs/pstore/blk.c b/fs/pstore/blk.c
index 0dea8ded2de2..ad46860d5a78 100644
--- a/fs/pstore/blk.c
+++ b/fs/pstore/blk.c
@@ -51,6 +51,10 @@ static long ftrace_size = -1;
 module_param(ftrace_size, long, 0400);
 MODULE_PARM_DESC(ftrace_size, "ftrace size in kbytes");
 
+static bool best_effort;
+module_param(best_effort, bool, 0400);
+MODULE_PARM_DESC(best_effort, "use best effort to write (i.e. do not require storage driver pstore support, default: off)");
+
 /*
  * blkdev - the block device to use for pstore storage
  *
@@ -376,7 +380,8 @@ static int __register_pstore_blk(struct pstore_blk_info *info)
 	}
 
 	/* only allow driver matching the @blkdev */
-	if (!binfo.devt || MAJOR(binfo.devt) != info->major) {
+	if (!binfo.devt || (!best_effort &&
+			    MAJOR(binfo.devt) != info->major)) {
 		pr_debug("invalid major %u (expect %u)\n",
 				info->major, MAJOR(binfo.devt));
 		ret = -ENODEV;
@@ -479,6 +484,20 @@ int pstore_blk_get_config(struct pstore_blk_config *info)
 }
 EXPORT_SYMBOL_GPL(pstore_blk_get_config);
 
+static int __init pstore_blk_init(void)
+{
+	struct pstore_blk_info info = { };
+	int ret = 0;
+
+	mutex_lock(&pstore_blk_lock);
+	if (!pstore_zone_info && best_effort && blkdev[0])
+		ret = __register_pstore_blk(&info);
+	mutex_unlock(&pstore_blk_lock);
+
+	return ret;
+}
+late_initcall(pstore_blk_init);
+
 static void __exit pstore_blk_exit(void)
 {
 	mutex_lock(&pstore_blk_lock);
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
