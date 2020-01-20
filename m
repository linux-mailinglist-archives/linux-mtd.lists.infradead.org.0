Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3D3143424
	for <lists+linux-mtd@lfdr.de>; Mon, 20 Jan 2020 23:35:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2GNnZDQKKqeAjNNwx6WI28fCL+YxBJugY+nRNhyhuaY=; b=tHiraAJ2g93jMs
	OAqRlpNqgll3lN6NOBgZYVZi3IebKav6Nun7oYAPPP0kLebkEhztzXUe9QlsbigYpNcw/x4ul4+kZ
	3Gggn22RwGA7IV9A0dDjzqru0v7L3XQ8RVOiyJqdhsTeH5PtgXVCB5WfZEsNjACGClYF6oZ2rs398
	hbko7plAvqarSfycdNbn1RQyUn4J1Hf1AgOSua0h/Cpwn3IhvNzx3IwSQYM1gZ46nn1TPwRFe+Ja7
	d2hBSBIUmw+3zj3v9F7jKZa+6IEAOc9uqZMZ8pMusQ9W+3DPaLnEQ5kjXRMHIQ+sd5vWNm351IrRI
	YAaAo/+GpeHQcSidwjRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itfdy-00080Y-5I; Mon, 20 Jan 2020 22:35:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itfcg-0006qB-6L
 for linux-mtd@lists.infradead.org; Mon, 20 Jan 2020 22:34:20 +0000
Received: from sol.hsd1.ca.comcast.net (c-107-3-166-239.hsd1.ca.comcast.net
 [107.3.166.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8C1882253D;
 Mon, 20 Jan 2020 22:34:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579559657;
 bh=Hb/QuSYZO3F6/aJuTKJcPg+na6zUZaRnZu4mlrV3pSk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kms85eKMX6E2BHPPTytngYqS6DbX40h2c1l39BXDKSpejNcWiFl1b212h0ggPvaXj
 teMXa0UPQ2QoT1TvsbOjkKFz6HuWQO2HQYzdzcTmDQBXWsJn6EUtrkNShRatgscDby
 BrfLwRqgi9zKz/bVNqn60YKWYBHyPmUR5fWRVp3Q=
From: Eric Biggers <ebiggers@kernel.org>
To: linux-fscrypt@vger.kernel.org
Subject: [PATCH v5 2/6] fscrypt: derive dirhash key for casefolded directories
Date: Mon, 20 Jan 2020 14:31:57 -0800
Message-Id: <20200120223201.241390-3-ebiggers@kernel.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200120223201.241390-1-ebiggers@kernel.org>
References: <20200120223201.241390-1-ebiggers@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_143418_275973_2E3333CA 
X-CRM114-Status: GOOD (  24.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Daniel Rosenberg <drosen@google.com>,
 Gabriel Krisman Bertazi <krisman@collabora.com>, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-mtd@lists.infradead.org,
 Richard Weinberger <richard@nod.at>, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Daniel Rosenberg <drosen@google.com>

When we allow indexed directories to use both encryption and
casefolding, for the dirhash we can't just hash the ciphertext filenames
that are stored on-disk (as is done currently) because the dirhash must
be case insensitive, but the stored names are case-preserving.  Nor can
we hash the plaintext names with an unkeyed hash (or a hash keyed with a
value stored on-disk like ext4's s_hash_seed), since that would leak
information about the names that encryption is meant to protect.

Instead, if we can accept a dirhash that's only computable when the
fscrypt key is available, we can hash the plaintext names with a keyed
hash using a secret key derived from the directory's fscrypt master key.
We'll use SipHash-2-4 for this purpose.

Prepare for this by deriving a SipHash key for each casefolded encrypted
directory.  Make sure to handle deriving the key not only when setting
up the directory's fscrypt_info, but also in the case where the casefold
flag is enabled after the fscrypt_info was already set up.  (We could
just always derive the key regardless of casefolding, but that would
introduce unnecessary overhead for people not using casefolding.)

Signed-off-by: Daniel Rosenberg <drosen@google.com>
[EB: improved commit message, updated fscrypt.rst, squashed with change
 that avoids unnecessarily deriving the key, and many other cleanups]
Signed-off-by: Eric Biggers <ebiggers@google.com>
---
 Documentation/filesystems/fscrypt.rst | 10 +++++
 fs/crypto/fname.c                     | 21 +++++++++++
 fs/crypto/fscrypt_private.h           | 13 +++++++
 fs/crypto/hooks.c                     | 16 ++++++++
 fs/crypto/keysetup.c                  | 54 ++++++++++++++++++++-------
 include/linux/fscrypt.h               |  9 +++++
 6 files changed, 109 insertions(+), 14 deletions(-)

diff --git a/Documentation/filesystems/fscrypt.rst b/Documentation/filesystems/fscrypt.rst
index 380a1be9550e1..c45f5bcc13e17 100644
--- a/Documentation/filesystems/fscrypt.rst
+++ b/Documentation/filesystems/fscrypt.rst
@@ -302,6 +302,16 @@ For master keys used for v2 encryption policies, a unique 16-byte "key
 identifier" is also derived using the KDF.  This value is stored in
 the clear, since it is needed to reliably identify the key itself.
 
+Dirhash keys
+------------
+
+For directories that are indexed using a secret-keyed dirhash over the
+plaintext filenames, the KDF is also used to derive a 128-bit
+SipHash-2-4 key per directory in order to hash filenames.  This works
+just like deriving a per-file encryption key, except that a different
+KDF context is used.  Currently, only casefolded ("case-insensitive")
+encrypted directories use this style of hashing.
+
 Encryption modes and usage
 ==========================
 
diff --git a/fs/crypto/fname.c b/fs/crypto/fname.c
index 3fd27e14ebdd6..2d0d5a934e170 100644
--- a/fs/crypto/fname.c
+++ b/fs/crypto/fname.c
@@ -402,6 +402,27 @@ int fscrypt_setup_filename(struct inode *dir, const struct qstr *iname,
 }
 EXPORT_SYMBOL(fscrypt_setup_filename);
 
+/**
+ * fscrypt_fname_siphash() - calculate the SipHash of a filename
+ * @dir: the parent directory
+ * @name: the filename to calculate the SipHash of
+ *
+ * Given a plaintext filename @name and a directory @dir which uses SipHash as
+ * its dirhash method and has had its fscrypt key set up, this function
+ * calculates the SipHash of that name using the directory's secret dirhash key.
+ *
+ * Return: the SipHash of @name using the hash key of @dir
+ */
+u64 fscrypt_fname_siphash(const struct inode *dir, const struct qstr *name)
+{
+	const struct fscrypt_info *ci = dir->i_crypt_info;
+
+	WARN_ON(!ci->ci_dirhash_key_initialized);
+
+	return siphash(name->name, name->len, &ci->ci_dirhash_key);
+}
+EXPORT_SYMBOL_GPL(fscrypt_fname_siphash);
+
 /*
  * Validate dentries in encrypted directories to make sure we aren't potentially
  * caching stale dentries after a key has been added.
diff --git a/fs/crypto/fscrypt_private.h b/fs/crypto/fscrypt_private.h
index b22e8decebedd..e79d5fd6236a8 100644
--- a/fs/crypto/fscrypt_private.h
+++ b/fs/crypto/fscrypt_private.h
@@ -12,6 +12,7 @@
 #define _FSCRYPT_PRIVATE_H
 
 #include <linux/fscrypt.h>
+#include <linux/siphash.h>
 #include <crypto/hash.h>
 
 #define CONST_STRLEN(str)	(sizeof(str) - 1)
@@ -188,6 +189,14 @@ struct fscrypt_info {
 	 */
 	struct fscrypt_direct_key *ci_direct_key;
 
+	/*
+	 * This inode's hash key for filenames.  This is a 128-bit SipHash-2-4
+	 * key.  This is only set for directories that use a keyed dirhash over
+	 * the plaintext filenames -- currently just casefolded directories.
+	 */
+	siphash_key_t ci_dirhash_key;
+	bool ci_dirhash_key_initialized;
+
 	/* The encryption policy used by this inode */
 	union fscrypt_policy ci_policy;
 
@@ -262,6 +271,7 @@ extern int fscrypt_init_hkdf(struct fscrypt_hkdf *hkdf, const u8 *master_key,
 #define HKDF_CONTEXT_PER_FILE_KEY	2
 #define HKDF_CONTEXT_DIRECT_KEY		3
 #define HKDF_CONTEXT_IV_INO_LBLK_64_KEY	4
+#define HKDF_CONTEXT_DIRHASH_KEY	5
 
 extern int fscrypt_hkdf_expand(const struct fscrypt_hkdf *hkdf, u8 context,
 			       const u8 *info, unsigned int infolen,
@@ -433,6 +443,9 @@ fscrypt_allocate_skcipher(struct fscrypt_mode *mode, const u8 *raw_key,
 extern int fscrypt_set_derived_key(struct fscrypt_info *ci,
 				   const u8 *derived_key);
 
+extern int fscrypt_derive_dirhash_key(struct fscrypt_info *ci,
+				      const struct fscrypt_master_key *mk);
+
 /* keysetup_v1.c */
 
 extern void fscrypt_put_direct_key(struct fscrypt_direct_key *dk);
diff --git a/fs/crypto/hooks.c b/fs/crypto/hooks.c
index d96a58f11d2b0..cb2eb91bcfde7 100644
--- a/fs/crypto/hooks.c
+++ b/fs/crypto/hooks.c
@@ -5,6 +5,8 @@
  * Encryption hooks for higher-level filesystem operations.
  */
 
+#include <linux/key.h>
+
 #include "fscrypt_private.h"
 
 /**
@@ -137,8 +139,14 @@ int fscrypt_prepare_setflags(struct inode *inode,
 			     unsigned int oldflags, unsigned int flags)
 {
 	struct fscrypt_info *ci;
+	struct fscrypt_master_key *mk;
 	int err;
 
+	/*
+	 * When the CASEFOLD flag is set on an encrypted directory, we must
+	 * derive the secret key needed for the dirhash.  This is only possible
+	 * if the directory uses a v2 encryption policy.
+	 */
 	if (IS_ENCRYPTED(inode) && (flags & ~oldflags & FS_CASEFOLD_FL)) {
 		err = fscrypt_require_key(inode);
 		if (err)
@@ -146,6 +154,14 @@ int fscrypt_prepare_setflags(struct inode *inode,
 		ci = inode->i_crypt_info;
 		if (ci->ci_policy.version != FSCRYPT_POLICY_V2)
 			return -EINVAL;
+		mk = ci->ci_master_key->payload.data[0];
+		down_read(&mk->mk_secret_sem);
+		if (is_master_key_secret_present(&mk->mk_secret))
+			err = fscrypt_derive_dirhash_key(ci, mk);
+		else
+			err = -ENOKEY;
+		up_read(&mk->mk_secret_sem);
+		return err;
 	}
 	return 0;
 }
diff --git a/fs/crypto/keysetup.c b/fs/crypto/keysetup.c
index 96074054bdbc8..74d61d827d913 100644
--- a/fs/crypto/keysetup.c
+++ b/fs/crypto/keysetup.c
@@ -174,10 +174,24 @@ static int setup_per_mode_key(struct fscrypt_info *ci,
 	return 0;
 }
 
+int fscrypt_derive_dirhash_key(struct fscrypt_info *ci,
+			       const struct fscrypt_master_key *mk)
+{
+	int err;
+
+	err = fscrypt_hkdf_expand(&mk->mk_secret.hkdf, HKDF_CONTEXT_DIRHASH_KEY,
+				  ci->ci_nonce, FS_KEY_DERIVATION_NONCE_SIZE,
+				  (u8 *)&ci->ci_dirhash_key,
+				  sizeof(ci->ci_dirhash_key));
+	if (err)
+		return err;
+	ci->ci_dirhash_key_initialized = true;
+	return 0;
+}
+
 static int fscrypt_setup_v2_file_key(struct fscrypt_info *ci,
 				     struct fscrypt_master_key *mk)
 {
-	u8 derived_key[FSCRYPT_MAX_KEY_SIZE];
 	int err;
 
 	if (ci->ci_policy.v2.flags & FSCRYPT_POLICY_FLAG_DIRECT_KEY) {
@@ -189,8 +203,8 @@ static int fscrypt_setup_v2_file_key(struct fscrypt_info *ci,
 		 * This ensures that the master key is consistently used only
 		 * for HKDF, avoiding key reuse issues.
 		 */
-		return setup_per_mode_key(ci, mk, mk->mk_direct_tfms,
-					  HKDF_CONTEXT_DIRECT_KEY, false);
+		err = setup_per_mode_key(ci, mk, mk->mk_direct_tfms,
+					 HKDF_CONTEXT_DIRECT_KEY, false);
 	} else if (ci->ci_policy.v2.flags &
 		   FSCRYPT_POLICY_FLAG_IV_INO_LBLK_64) {
 		/*
@@ -199,21 +213,33 @@ static int fscrypt_setup_v2_file_key(struct fscrypt_info *ci,
 		 * the IVs.  This format is optimized for use with inline
 		 * encryption hardware compliant with the UFS or eMMC standards.
 		 */
-		return setup_per_mode_key(ci, mk, mk->mk_iv_ino_lblk_64_tfms,
-					  HKDF_CONTEXT_IV_INO_LBLK_64_KEY,
-					  true);
+		err = setup_per_mode_key(ci, mk, mk->mk_iv_ino_lblk_64_tfms,
+					 HKDF_CONTEXT_IV_INO_LBLK_64_KEY, true);
+	} else {
+		u8 derived_key[FSCRYPT_MAX_KEY_SIZE];
+
+		err = fscrypt_hkdf_expand(&mk->mk_secret.hkdf,
+					  HKDF_CONTEXT_PER_FILE_KEY,
+					  ci->ci_nonce,
+					  FS_KEY_DERIVATION_NONCE_SIZE,
+					  derived_key, ci->ci_mode->keysize);
+		if (err)
+			return err;
+
+		err = fscrypt_set_derived_key(ci, derived_key);
+		memzero_explicit(derived_key, ci->ci_mode->keysize);
 	}
-
-	err = fscrypt_hkdf_expand(&mk->mk_secret.hkdf,
-				  HKDF_CONTEXT_PER_FILE_KEY,
-				  ci->ci_nonce, FS_KEY_DERIVATION_NONCE_SIZE,
-				  derived_key, ci->ci_mode->keysize);
 	if (err)
 		return err;
 
-	err = fscrypt_set_derived_key(ci, derived_key);
-	memzero_explicit(derived_key, ci->ci_mode->keysize);
-	return err;
+	/* Derive a secret dirhash key for directories that need it. */
+	if (S_ISDIR(ci->ci_inode->i_mode) && IS_CASEFOLDED(ci->ci_inode)) {
+		err = fscrypt_derive_dirhash_key(ci, mk);
+		if (err)
+			return err;
+	}
+
+	return 0;
 }
 
 /*
diff --git a/include/linux/fscrypt.h b/include/linux/fscrypt.h
index 3984eadd7023f..2bb43a772f361 100644
--- a/include/linux/fscrypt.h
+++ b/include/linux/fscrypt.h
@@ -172,6 +172,8 @@ extern int fscrypt_fname_disk_to_usr(const struct inode *inode,
 				     u32 hash, u32 minor_hash,
 				     const struct fscrypt_str *iname,
 				     struct fscrypt_str *oname);
+extern u64 fscrypt_fname_siphash(const struct inode *dir,
+				 const struct qstr *name);
 
 #define FSCRYPT_FNAME_MAX_UNDIGESTED_SIZE	32
 
@@ -479,6 +481,13 @@ static inline bool fscrypt_match_name(const struct fscrypt_name *fname,
 	return !memcmp(de_name, fname->disk_name.name, fname->disk_name.len);
 }
 
+static inline u64 fscrypt_fname_siphash(const struct inode *dir,
+					const struct qstr *name)
+{
+	WARN_ON_ONCE(1);
+	return 0;
+}
+
 /* bio.c */
 static inline void fscrypt_decrypt_bio(struct bio *bio)
 {
-- 
2.25.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
