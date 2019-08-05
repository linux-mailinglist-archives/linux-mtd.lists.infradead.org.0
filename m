Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A25082270
	for <lists+linux-mtd@lfdr.de>; Mon,  5 Aug 2019 18:32:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q5gIlvLueLTwHPbnu7nAX2DuQe6VVEIeWXy6klqCqWQ=; b=lJd/GfB49qPn5r
	Cd/Jl+xy5ES6L61Ohwv208SgetCZdc8MIVOH8tit6TXPi7iPn79IyPGl5jrbSfR2G4Nt52oL/kvGW
	pObzx6vR2PVk2S3qCmpDUjAa3Xe5NN1qwjuYOFiZXxduOJfPL8X8IpnZYgfHnq+AqpScACMl0WpoA
	LZYBUdSEgT7vc9u6kGlcppJMwE2Mzz7EF5FrQw8N7zKJnIuNf8wWZ/fRcsoYnD82X/bqWAxVwwjw0
	7mPqzs2JUvbuFcbwoQgzaTWvXPMyMNrZeSlW/edxguexb3UJ1KCWF2MkJOD+2kYjWfYqZH0YjaeoU
	wiWHg3JgvEjtiUg/uEQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hufuP-0003V5-BP; Mon, 05 Aug 2019 16:32:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hufqf-0008Op-Nq
 for linux-mtd@lists.infradead.org; Mon, 05 Aug 2019 16:28:43 +0000
Received: from ebiggers-linuxstation.mtv.corp.google.com (unknown
 [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E8ADD21872;
 Mon,  5 Aug 2019 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565022514;
 bh=ysbdRDp4t6yR1/mnrxfjF5Thy72larG2YRdxScNw3NY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IkaekEVWEZv6P2zLxKDfAFH2Rc6UZEkYYApZq0mdc1+4uY1/CZV13/7sak9dAfvi5
 TVTcBTb9vnNLTJjQihbmUmF9b9Grh8tR04GSku4ZTqZC2Tv2iYxol8vBleANB+5qTD
 Ft4OIaHcgSEFShuge2qtieXLdDjlceCu/wpmEpHw=
From: Eric Biggers <ebiggers@kernel.org>
To: linux-fscrypt@vger.kernel.org
Subject: [PATCH v8 08/20] fscrypt: rename keyinfo.c to keysetup.c
Date: Mon,  5 Aug 2019 09:25:09 -0700
Message-Id: <20190805162521.90882-9-ebiggers@kernel.org>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
In-Reply-To: <20190805162521.90882-1-ebiggers@kernel.org>
References: <20190805162521.90882-1-ebiggers@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_092837_819536_68912383 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Satya Tangirala <satyat@google.com>, Theodore Ts'o <tytso@mit.edu>,
 linux-api@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Jaegeuk Kim <jaegeuk@kernel.org>, linux-ext4@vger.kernel.org,
 Paul Crowley <paulcrowley@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Eric Biggers <ebiggers@google.com>

Rename keyinfo.c to keysetup.c since this better describes what the file
does (sets up the key), and it matches the new file keysetup_v1.c.

Signed-off-by: Eric Biggers <ebiggers@google.com>
---
 fs/crypto/Makefile                  | 2 +-
 fs/crypto/fscrypt_private.h         | 2 +-
 fs/crypto/{keyinfo.c => keysetup.c} | 0
 include/linux/fscrypt.h             | 4 ++--
 4 files changed, 4 insertions(+), 4 deletions(-)
 rename fs/crypto/{keyinfo.c => keysetup.c} (100%)

diff --git a/fs/crypto/Makefile b/fs/crypto/Makefile
index 1fba255c34ca56..ad14d4c29784a6 100644
--- a/fs/crypto/Makefile
+++ b/fs/crypto/Makefile
@@ -4,7 +4,7 @@ obj-$(CONFIG_FS_ENCRYPTION)	+= fscrypto.o
 fscrypto-y := crypto.o \
 	      fname.o \
 	      hooks.o \
-	      keyinfo.o \
+	      keysetup.o \
 	      keysetup_v1.o \
 	      policy.o
 
diff --git a/fs/crypto/fscrypt_private.h b/fs/crypto/fscrypt_private.h
index 387b44b255f6ab..794dcba25ca826 100644
--- a/fs/crypto/fscrypt_private.h
+++ b/fs/crypto/fscrypt_private.h
@@ -156,7 +156,7 @@ extern bool fscrypt_fname_encrypted_size(const struct inode *inode,
 					 u32 orig_len, u32 max_len,
 					 u32 *encrypted_len_ret);
 
-/* keyinfo.c */
+/* keysetup.c */
 
 struct fscrypt_mode {
 	const char *friendly_name;
diff --git a/fs/crypto/keyinfo.c b/fs/crypto/keysetup.c
similarity index 100%
rename from fs/crypto/keyinfo.c
rename to fs/crypto/keysetup.c
diff --git a/include/linux/fscrypt.h b/include/linux/fscrypt.h
index 81c0c754f8b21b..583802cb2e35d0 100644
--- a/include/linux/fscrypt.h
+++ b/include/linux/fscrypt.h
@@ -138,7 +138,7 @@ extern int fscrypt_ioctl_get_policy(struct file *, void __user *);
 extern int fscrypt_has_permitted_context(struct inode *, struct inode *);
 extern int fscrypt_inherit_context(struct inode *, struct inode *,
 					void *, bool);
-/* keyinfo.c */
+/* keysetup.c */
 extern int fscrypt_get_encryption_info(struct inode *);
 extern void fscrypt_put_encryption_info(struct inode *);
 extern void fscrypt_free_inode(struct inode *);
@@ -367,7 +367,7 @@ static inline int fscrypt_inherit_context(struct inode *parent,
 	return -EOPNOTSUPP;
 }
 
-/* keyinfo.c */
+/* keysetup.c */
 static inline int fscrypt_get_encryption_info(struct inode *inode)
 {
 	return -EOPNOTSUPP;
-- 
2.22.0.770.g0f2c4a37fd-goog


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
