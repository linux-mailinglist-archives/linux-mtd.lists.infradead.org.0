Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A11D3185651
	for <lists+linux-mtd@lfdr.de>; Sat, 14 Mar 2020 21:54:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/1NhhBTNnPMtlEffUBaaAmrvCzS5RQZ3cjD+Bv3CZw=; b=hbnSYslc5iI4Hi
	imOsa7UEJ3EAI497eAVfXNi+cKBN8pTuBEVHe/CSw3FkMPD3bogfLGbhdaK3oKMKcK8w+and6rAfT
	keg/Ij1cJx6omNknf+lvUb3tc7GmyHwfsEcJiEEtRgA8ucJmUZp/Dt3TbZQql9iGyymWk5CFV72kC
	MOqggNLK8soUDuIJQ3Cll2gjl0wjMRaDIBlGSs8/1ehTKajw/Kms0TaUt7iat0Ucua5oGdwJKdx7R
	Tv+oCdEt4378+6O+/qDj+3YPYuVz5CK7dZkLUhdSXQTVUrbX7YnO3ouWG4gPAql42iN9AYs1jWbz2
	Lv570u9K5Ga3FZiuH+TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDDn7-0003RV-9V; Sat, 14 Mar 2020 20:53:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDDmU-00034P-HG
 for linux-mtd@lists.infradead.org; Sat, 14 Mar 2020 20:53:17 +0000
Received: from sol.hsd1.ca.comcast.net (c-107-3-166-239.hsd1.ca.comcast.net
 [107.3.166.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 472DF2078E;
 Sat, 14 Mar 2020 20:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584219193;
 bh=943w3/kHzpv8yrJchxtX35647H3Fo4/Z9SzqhVIuE68=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HVapudXhbuo9OogmK1ui9KLdqV2e4nBmN5fBn+vYYR7bQSr3ZwMSyR+S4y/cHMzYx
 2J/hsST49r3l9UAXpuKu2ztTekxefBjJuGOV2ULdBdefahlCi7FQQptKuBz4GstZcD
 PvVaTCMrdpd/qH8GtocfWO+2zIcOkz0CxYv3LNAY=
From: Eric Biggers <ebiggers@kernel.org>
To: linux-fscrypt@vger.kernel.org
Subject: [PATCH 1/4] fscrypt: add FS_IOC_GET_ENCRYPTION_NONCE ioctl
Date: Sat, 14 Mar 2020 13:50:49 -0700
Message-Id: <20200314205052.93294-2-ebiggers@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200314205052.93294-1-ebiggers@kernel.org>
References: <20200314205052.93294-1-ebiggers@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_135314_612865_73E08211 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-fsdevel@vger.kernel.org, linux-api@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-f2fs-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Eric Biggers <ebiggers@google.com>

Add an ioctl FS_IOC_GET_ENCRYPTION_NONCE which retrieves the nonce from
an encrypted file or directory.  The nonce is the 16-byte random value
stored in the inode's encryption xattr.  It is normally used together
with the master key to derive the inode's actual encryption key.

The nonces are needed by automated tests that verify the correctness of
the ciphertext on-disk.  Except for the IV_INO_LBLK_64 case, there's no
way to replicate a file's ciphertext without knowing that file's nonce.

The nonces aren't secret, and the existing ciphertext verification tests
in xfstests retrieve them from disk using debugfs or dump.f2fs.  But in
environments that lack these debugging tools, getting the nonces by
manually parsing the filesystem structure would be very hard.

To make this important type of testing much easier, let's just add an
ioctl that retrieves the nonce.

Signed-off-by: Eric Biggers <ebiggers@google.com>
---
 Documentation/filesystems/fscrypt.rst | 11 +++++++++++
 fs/crypto/fscrypt_private.h           | 20 ++++++++++++++++++++
 fs/crypto/keysetup.c                  | 16 ++--------------
 fs/crypto/policy.c                    | 21 ++++++++++++++++++++-
 include/linux/fscrypt.h               |  6 ++++++
 include/uapi/linux/fscrypt.h          |  1 +
 6 files changed, 60 insertions(+), 15 deletions(-)

diff --git a/Documentation/filesystems/fscrypt.rst b/Documentation/filesystems/fscrypt.rst
index bd99323448049..aa072112cfff2 100644
--- a/Documentation/filesystems/fscrypt.rst
+++ b/Documentation/filesystems/fscrypt.rst
@@ -633,6 +633,17 @@ from a passphrase or other low-entropy user credential.
 FS_IOC_GET_ENCRYPTION_PWSALT is deprecated.  Instead, prefer to
 generate and manage any needed salt(s) in userspace.
 
+Getting a file's encryption nonce
+---------------------------------
+
+Since Linux v5.7, the ioctl FS_IOC_GET_ENCRYPTION_NONCE is supported.
+On encrypted files and directories it gets the inode's 16-byte nonce.
+On unencrypted files and directories, it fails with ENODATA.
+
+This ioctl can be useful for automated tests which verify that the
+encryption is being done correctly.  It is not needed for normal use
+of fscrypt.
+
 Adding keys
 -----------
 
diff --git a/fs/crypto/fscrypt_private.h b/fs/crypto/fscrypt_private.h
index 9aae851409e55..dbced2937ec89 100644
--- a/fs/crypto/fscrypt_private.h
+++ b/fs/crypto/fscrypt_private.h
@@ -76,6 +76,26 @@ static inline int fscrypt_context_size(const union fscrypt_context *ctx)
 	return 0;
 }
 
+/* Check whether an fscrypt_context has a recognized version number and size */
+static inline bool fscrypt_context_is_valid(const union fscrypt_context *ctx,
+					    int ctx_size)
+{
+	return ctx_size >= 1 && ctx_size == fscrypt_context_size(ctx);
+}
+
+/* Retrieve the context's nonce, assuming the context was already validated */
+static inline const u8 *fscrypt_context_nonce(const union fscrypt_context *ctx)
+{
+	switch (ctx->version) {
+	case FSCRYPT_CONTEXT_V1:
+		return ctx->v1.nonce;
+	case FSCRYPT_CONTEXT_V2:
+		return ctx->v2.nonce;
+	}
+	WARN_ON(1);
+	return NULL;
+}
+
 #undef fscrypt_policy
 union fscrypt_policy {
 	u8 version;
diff --git a/fs/crypto/keysetup.c b/fs/crypto/keysetup.c
index 65cb09fa6ead9..cb2803844726d 100644
--- a/fs/crypto/keysetup.c
+++ b/fs/crypto/keysetup.c
@@ -425,20 +425,8 @@ int fscrypt_get_encryption_info(struct inode *inode)
 		goto out;
 	}
 
-	switch (ctx.version) {
-	case FSCRYPT_CONTEXT_V1:
-		memcpy(crypt_info->ci_nonce, ctx.v1.nonce,
-		       FS_KEY_DERIVATION_NONCE_SIZE);
-		break;
-	case FSCRYPT_CONTEXT_V2:
-		memcpy(crypt_info->ci_nonce, ctx.v2.nonce,
-		       FS_KEY_DERIVATION_NONCE_SIZE);
-		break;
-	default:
-		WARN_ON(1);
-		res = -EINVAL;
-		goto out;
-	}
+	memcpy(crypt_info->ci_nonce, fscrypt_context_nonce(&ctx),
+	       FS_KEY_DERIVATION_NONCE_SIZE);
 
 	if (!fscrypt_supported_policy(&crypt_info->ci_policy, inode)) {
 		res = -EINVAL;
diff --git a/fs/crypto/policy.c b/fs/crypto/policy.c
index cf2a9d26ef7da..10ccf945020ce 100644
--- a/fs/crypto/policy.c
+++ b/fs/crypto/policy.c
@@ -258,7 +258,7 @@ int fscrypt_policy_from_context(union fscrypt_policy *policy_u,
 {
 	memset(policy_u, 0, sizeof(*policy_u));
 
-	if (ctx_size <= 0 || ctx_size != fscrypt_context_size(ctx_u))
+	if (!fscrypt_context_is_valid(ctx_u, ctx_size))
 		return -EINVAL;
 
 	switch (ctx_u->version) {
@@ -481,6 +481,25 @@ int fscrypt_ioctl_get_policy_ex(struct file *filp, void __user *uarg)
 }
 EXPORT_SYMBOL_GPL(fscrypt_ioctl_get_policy_ex);
 
+/* FS_IOC_GET_ENCRYPTION_NONCE: retrieve file's encryption nonce for testing */
+int fscrypt_ioctl_get_nonce(struct file *filp, void __user *arg)
+{
+	struct inode *inode = file_inode(filp);
+	union fscrypt_context ctx;
+	int ret;
+
+	ret = inode->i_sb->s_cop->get_context(inode, &ctx, sizeof(ctx));
+	if (ret < 0)
+		return ret;
+	if (!fscrypt_context_is_valid(&ctx, ret))
+		return -EINVAL;
+	if (copy_to_user(arg, fscrypt_context_nonce(&ctx),
+			 FS_KEY_DERIVATION_NONCE_SIZE))
+		return -EFAULT;
+	return 0;
+}
+EXPORT_SYMBOL_GPL(fscrypt_ioctl_get_nonce);
+
 /**
  * fscrypt_has_permitted_context() - is a file's encryption policy permitted
  *				     within its directory?
diff --git a/include/linux/fscrypt.h b/include/linux/fscrypt.h
index 556f4adf5dc58..e3c2d2a155250 100644
--- a/include/linux/fscrypt.h
+++ b/include/linux/fscrypt.h
@@ -139,6 +139,7 @@ extern void fscrypt_free_bounce_page(struct page *bounce_page);
 extern int fscrypt_ioctl_set_policy(struct file *, const void __user *);
 extern int fscrypt_ioctl_get_policy(struct file *, void __user *);
 extern int fscrypt_ioctl_get_policy_ex(struct file *, void __user *);
+extern int fscrypt_ioctl_get_nonce(struct file *filp, void __user *arg);
 extern int fscrypt_has_permitted_context(struct inode *, struct inode *);
 extern int fscrypt_inherit_context(struct inode *, struct inode *,
 					void *, bool);
@@ -300,6 +301,11 @@ static inline int fscrypt_ioctl_get_policy_ex(struct file *filp,
 	return -EOPNOTSUPP;
 }
 
+static inline int fscrypt_ioctl_get_nonce(struct file *filp, void __user *arg)
+{
+	return -EOPNOTSUPP;
+}
+
 static inline int fscrypt_has_permitted_context(struct inode *parent,
 						struct inode *child)
 {
diff --git a/include/uapi/linux/fscrypt.h b/include/uapi/linux/fscrypt.h
index 0d8a6f47711c3..a10e3cdc28394 100644
--- a/include/uapi/linux/fscrypt.h
+++ b/include/uapi/linux/fscrypt.h
@@ -163,6 +163,7 @@ struct fscrypt_get_key_status_arg {
 #define FS_IOC_REMOVE_ENCRYPTION_KEY		_IOWR('f', 24, struct fscrypt_remove_key_arg)
 #define FS_IOC_REMOVE_ENCRYPTION_KEY_ALL_USERS	_IOWR('f', 25, struct fscrypt_remove_key_arg)
 #define FS_IOC_GET_ENCRYPTION_KEY_STATUS	_IOWR('f', 26, struct fscrypt_get_key_status_arg)
+#define FS_IOC_GET_ENCRYPTION_NONCE		_IOR('f', 27, __u8[16])
 
 /**********************************************************************/
 
-- 
2.25.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
