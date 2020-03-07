Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E794617CB24
	for <lists+linux-mtd@lfdr.de>; Sat,  7 Mar 2020 03:37:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g6wO4/aEru3nb4M1m8lKtzXqZNaz15dXTNiCH9GYwkk=; b=cT/KCMmCFfRFt0
	oyvz4LbcT9ww7bHD232UKwGgk6eeXVTeVvoRVt0E+sk1uoE9lpJ6y7SA8JSnc8SoLTdhBn4lm2Wr8
	WlAPGny+WuJlgXWRLAtq27hEVWSnG8wjheQI9BT/+6z3ncXlGbSJhJC1RzJ1ir02aKCgt+AYyLjIz
	KYnXQ1wrC5ATW3Lk1M3SSRNy9wPQLnGRGnbH3NWazfsZOTK7xLK1xw9Oo5Zvtm1IHKbIaKuWZMnZJ
	iEVnjylPRKgspnvHDTOTl0nEQmu6dflXuKGVBaTmBgs0C40moGel9hY3vjp9ZnDTaSlfLxQXOHDpk
	Q+6qH6HjMJuNqRxU2DdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAPKp-0001QN-5v; Sat, 07 Mar 2020 02:37:03 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAPKP-0001K1-Ru
 for linux-mtd@lists.infradead.org; Sat, 07 Mar 2020 02:36:39 +0000
Received: by mail-pl1-x64a.google.com with SMTP id j8so2536365plk.1
 for <linux-mtd@lists.infradead.org>; Fri, 06 Mar 2020 18:36:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=upHdbTD180chm+zVZgEnvZGj206fX6ERxiKApi6jZ8Y=;
 b=fyzf/Jubz9HkaxalGwR7GV/FnVvkkR3z+BL3xHAPV78dlk0xTqKWjGufJKSNBjySMS
 lJ6l9J8ZWaIMU4nYnJuLS0JP2KVJdtg58knvL2LZxAJig1d4nz0Pc8hN4CdjtrkPUh/L
 yGigvrVnnRAK1tYt/TyWTJZE14KygnZc+/ePsCWL7e5XM7ELayZaGTwE/bQ7cBu7vtFD
 6vSaxno8O+IO2yfKMw1SR77PmzhVPfUzkkgLsP7YIsL4mg+FKh+FCg7gM4axMP3W3rB0
 QJnTC98cimALDDZc7nEEDInaKRP29kqGalZn+2xetw6c5m0DBWt7tUDiZlaNbgCzCprP
 TPUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=upHdbTD180chm+zVZgEnvZGj206fX6ERxiKApi6jZ8Y=;
 b=SCSVsXtuMuSqxf7QGMPxQKBPKMlNm0HanKPCj7RuKlVmjkrC2aqX0UHpjOY6LOKEN1
 flp3CegjjY5OTtMwpurGAc5FgbcGFonsnGChLpW38/5aR603H4HIBscHNsGq/jS9eEsh
 lzKqZcaRHT8QOf5vOQoPbIhXG1/kzOUdsFQB+wWym59wIi+OJVvDGfLAKkiH1LQnd3DG
 PKBM7WijwCQMAUQprTHZyEv/DBmJ1x55kPB2umr7qqfYIDOIrds7YsM8f1AeXOqf2B9d
 LljGVLTSz8GwqqfnqAcLjC3FfTEeiG0s/TmllXYsVCiyl/IqZrga3VbPH6KBHBJ5iDlp
 dBOg==
X-Gm-Message-State: ANhLgQ0AGX7vvdQQIcnrWXDkIfXU4i55kmdBei0VjTWLytQXa26sYTd7
 O5V09WioqAwRSG3qix3lpDDrtxasFe0=
X-Google-Smtp-Source: ADFU+vuXQ5IvQYoUUL0swPdg+x5Y+MMF/JrTRrg98tDU5t1A35z2Nv6UucYAIwBa/D0lgjJ2OblQhk4x968=
X-Received: by 2002:a63:f447:: with SMTP id p7mr6066483pgk.326.1583548595595; 
 Fri, 06 Mar 2020 18:36:35 -0800 (PST)
Date: Fri,  6 Mar 2020 18:36:04 -0800
In-Reply-To: <20200307023611.204708-1-drosen@google.com>
Message-Id: <20200307023611.204708-2-drosen@google.com>
Mime-Version: 1.0
References: <20200307023611.204708-1-drosen@google.com>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
Subject: [PATCH v8 1/8] unicode: Add utf8_casefold_hash
From: Daniel Rosenberg <drosen@google.com>
To: "Theodore Ts'o" <tytso@mit.edu>, linux-ext4@vger.kernel.org, 
 Jaegeuk Kim <jaegeuk@kernel.org>, Chao Yu <chao@kernel.org>, 
 linux-f2fs-devel@lists.sourceforge.net, Eric Biggers <ebiggers@kernel.org>, 
 linux-fscrypt@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
 Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_183637_904942_AA3F71F6 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Daniel Rosenberg <drosen@google.com>, linux-doc@vger.kernel.org,
 kernel-team@android.com, Jonathan Corbet <corbet@lwn.net>,
 linux-kernel@vger.kernel.org, Andreas Dilger <adilger.kernel@dilger.ca>,
 linux-fsdevel@vger.kernel.org, linux-mtd@lists.infradead.org,
 Gabriel Krisman Bertazi <krisman@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This adds a case insensitive hash function to allow taking the hash
without needing to allocate a casefolded copy of the string.

Signed-off-by: Daniel Rosenberg <drosen@google.com>
---
 fs/unicode/utf8-core.c  | 23 ++++++++++++++++++++++-
 include/linux/unicode.h |  3 +++
 2 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/fs/unicode/utf8-core.c b/fs/unicode/utf8-core.c
index 2a878b739115d..90656b9980720 100644
--- a/fs/unicode/utf8-core.c
+++ b/fs/unicode/utf8-core.c
@@ -6,6 +6,7 @@
 #include <linux/parser.h>
 #include <linux/errno.h>
 #include <linux/unicode.h>
+#include <linux/stringhash.h>
 
 #include "utf8n.h"
 
@@ -122,9 +123,29 @@ int utf8_casefold(const struct unicode_map *um, const struct qstr *str,
 	}
 	return -EINVAL;
 }
-
 EXPORT_SYMBOL(utf8_casefold);
 
+int utf8_casefold_hash(const struct unicode_map *um, const void *salt,
+		       struct qstr *str)
+{
+	const struct utf8data *data = utf8nfdicf(um->version);
+	struct utf8cursor cur;
+	int c;
+	unsigned long hash = init_name_hash(salt);
+
+	if (utf8ncursor(&cur, data, str->name, str->len) < 0)
+		return -EINVAL;
+
+	while ((c = utf8byte(&cur))) {
+		if (c < 0)
+			return c;
+		hash = partial_name_hash((unsigned char)c, hash);
+	}
+	str->hash = end_name_hash(hash);
+	return 0;
+}
+EXPORT_SYMBOL(utf8_casefold_hash);
+
 int utf8_normalize(const struct unicode_map *um, const struct qstr *str,
 		   unsigned char *dest, size_t dlen)
 {
diff --git a/include/linux/unicode.h b/include/linux/unicode.h
index 990aa97d80496..74484d44c7554 100644
--- a/include/linux/unicode.h
+++ b/include/linux/unicode.h
@@ -27,6 +27,9 @@ int utf8_normalize(const struct unicode_map *um, const struct qstr *str,
 int utf8_casefold(const struct unicode_map *um, const struct qstr *str,
 		  unsigned char *dest, size_t dlen);
 
+int utf8_casefold_hash(const struct unicode_map *um, const void *salt,
+		       struct qstr *str);
+
 struct unicode_map *utf8_load(const char *version);
 void utf8_unload(struct unicode_map *um);
 
-- 
2.25.1.481.gfbce0eb801-goog


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
