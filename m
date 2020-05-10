Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1A51CCDDB
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 22:28:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ydTZxb3/ceolx0wKZoWkfE8ayYwncDp1v8GkzSy2Qc=; b=PGE67g3Pvw1xWd
	uoVVS55V4FeNHafXm97bU34/Nxx1OqbHCYm47VG9WkIbirgAbHRusbVsF73+3Pdt1rgmQFk//+MSp
	OXBgVBb924OEMkpCac+AUQ5INVM0YfUKgktP9k+Z7n8jwvCRphuffbwkFFWTyXY6XTm35yW2qBg0b
	R2VpNpQ2oCDJsboA2H7g+K9Ue44uALnQ3u66IaZCdoF8BHwdDL0pI1tUa+ZIlxD84W3HiODiAXXpo
	JhijG4am3FaoxF0an+A1p4uYTgTxEWmdgGSEiLLUR/obHpSAO6AdzVwSISM1oEHi2YSgoS5FEDrEi
	/HMWHw/MLx3PoN4NGfxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXsYm-000849-Gm; Sun, 10 May 2020 20:28:28 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXsVK-0002aE-SC
 for linux-mtd@lists.infradead.org; Sun, 10 May 2020 20:24:58 +0000
Received: by mail-pf1-x444.google.com with SMTP id x15so3167737pfa.1
 for <linux-mtd@lists.infradead.org>; Sun, 10 May 2020 13:24:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gDtEYHl+vhPbK8gExr5i1enY2u7ASw/t7gafPT2Tua4=;
 b=RZCkHmVAC0P+C+6umcgVArdbYqZtRYnJRAlIhCh7f3a3cUMxFuV3H96Y96URE7Gof/
 u2VScQV+I5XS16Po+v3nw+05j9q1Km7Nj2pCvYr9O7F55AFy5XX2XIGOqxzR6uakM1Hi
 E0hhPic0V5ljBYELraELCZtE7STLs0OQLG804=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gDtEYHl+vhPbK8gExr5i1enY2u7ASw/t7gafPT2Tua4=;
 b=PnwxIyTjlsjo5wEfTig65IVjLOej6aE7e4Li1WVIrVdxhg2E4HzUx4c6/ofP3WtDhS
 dA/H81EEVYxtnXoKYtyeYJ7Dd9yhFWtnjNJyHoKuPdqPi6cPy0QPEdGiDBIF+6HEg/fp
 qOF3N5yaCSywJM5i5COd1cV8p7CN93m0P3Fv2BaAMoA9SVP4NNb1Sy3gTWWY+IEeVZBw
 VF1kmNOeiVtp5pE+DRJYkP9w1gZ7NqImviIadNd1mtsDXcHZ8DxVtiv04zHjbwHr65sr
 b20qCvtwQINrDpLn+kwCqJO19cYk6Y0/YAGcif3dAdi6dFgUbeTrOfryEcHllLZF9xgD
 Rceg==
X-Gm-Message-State: AGi0PuaC1OVXZPBnxYHpU1nGZy34aCElg4+l0UWt6EHR5ogadOvEi1yj
 0lfCFdMRSt+AcnUWWeO5dZBl0w==
X-Google-Smtp-Source: APiQypLYkPhTk56rTdjpKjnLfkUUxgxCThNOHV4aV+bIc6cfzxu6EZU0TNu2gO+Z81qJwGnSbxv6Wg==
X-Received: by 2002:a63:c644:: with SMTP id x4mr11682741pgg.385.1589142293702; 
 Sun, 10 May 2020 13:24:53 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id v127sm7279503pfv.77.2020.05.10.13.24.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 10 May 2020 13:24:52 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: [PATCH v7 15/18] pstore/blk: Provide way to query pstore configuration
Date: Sun, 10 May 2020 13:24:33 -0700
Message-Id: <20200510202436.63222-16-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200510202436.63222-1-keescook@chromium.org>
References: <20200510202436.63222-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_132454_957715_A30A84A6 
X-CRM114-Status: GOOD (  13.65  )
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

From: WeiXiong Liao <liaoweixiong@allwinnertech.com>

In order to configure itself, the MTD backend needs to be able to query
the current pstore configuration. Introduce pstore_blk_get_config() for
this purpose.

Signed-off-by: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Link: https://lore.kernel.org/r/1585126506-18635-10-git-send-email-liaoweixiong@allwinnertech.com
Co-developed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 fs/pstore/blk.c            | 37 ++++++++++++++++++++++++++++++-------
 include/linux/pstore_blk.h | 28 ++++++++++++++++++++++++++++
 2 files changed, 58 insertions(+), 7 deletions(-)

diff --git a/fs/pstore/blk.c b/fs/pstore/blk.c
index cf11094e6b3a..e8e907ea8b03 100644
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
  * struct pstore_device_info - back-end pstore/blk driver structure.
  *
@@ -148,13 +159,11 @@ static int psblk_register_do(struct pstore_device_info *dev)
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
@@ -455,6 +464,20 @@ void unregister_pstore_blk(unsigned int major)
 }
 EXPORT_SYMBOL_GPL(unregister_pstore_blk);
 
+/* get information of pstore/blk */
+int pstore_blk_get_config(struct pstore_blk_config *info)
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
+EXPORT_SYMBOL_GPL(pstore_blk_get_config);
+
 static void __exit pstore_blk_exit(void)
 {
 	mutex_lock(&pstore_blk_lock);
diff --git a/include/linux/pstore_blk.h b/include/linux/pstore_blk.h
index ccba8c068752..0c40774e71e0 100644
--- a/include/linux/pstore_blk.h
+++ b/include/linux/pstore_blk.h
@@ -49,4 +49,32 @@ struct pstore_blk_info {
 int  register_pstore_blk(struct pstore_blk_info *info);
 void unregister_pstore_blk(unsigned int major);
 
+/**
+ * struct pstore_blk_config - the pstore_blk backend configuration
+ *
+ * @device:		Name of the desired block device
+ * @max_reason:		Maximum kmsg dump reason to store to block device
+ * @kmsg_size:		Total size of for kmsg dumps
+ * @pmsg_size:		Total size of the pmsg storage area
+ * @console_size:	Total size of the console storage area
+ * @ftrace_size:	Total size for ftrace logging data (for all CPUs)
+ */
+struct pstore_blk_config {
+	char device[80];
+	enum kmsg_dump_reason max_reason;
+	unsigned long kmsg_size;
+	unsigned long pmsg_size;
+	unsigned long console_size;
+	unsigned long ftrace_size;
+};
+
+/**
+ * pstore_blk_get_config - get a copy of the pstore_blk backend configuration
+ *
+ * @info:	The sturct pstore_blk_config to be filled in
+ *
+ * Failure returns negative error code, and success returns 0.
+ */
+int pstore_blk_get_config(struct pstore_blk_config *info);
+
 #endif
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
