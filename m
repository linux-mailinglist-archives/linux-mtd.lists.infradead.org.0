Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE59774A0
	for <lists+linux-mtd@lfdr.de>; Sat, 27 Jul 2019 00:47:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NY8B+Yk3akYGtqq80/PMSDeIJpJ43WCq5nbv2rDA1xY=; b=jLUPfLNzmir/to
	zbVJ+4y+WDgettJbC/RWaftBq5hq8fhNK6EW0iQdJvP/qvAmTfFCDuHvDh8kd79Et1bE15fF7H02u
	2OhhxI4LZ1VxQ/1XV+mpuQb6a/R1HVTBxXr5uWu6asXSmGximHVyvZPOAo4zWtEaNm0zZ/bueW6Ak
	jpBFAN0UpaUDxHC3kzT3aVKJSbXQsNy6317Cf1POUPWP6OOUihCeJBRubYaJpnx/sGmKikqRPEmzc
	Zn0kCDcUU6zXYFtT8ZW1YvEJbHdkxosWOuEBvi8SofBpbPLU6ggma8ZR4S/Tk3tECORC7w6BkKHa1
	2czvAA+uN01x+0J2Qsvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr8zy-0007Bg-PR; Fri, 26 Jul 2019 22:47:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr8yN-0005aL-VO
 for linux-mtd@lists.infradead.org; Fri, 26 Jul 2019 22:46:02 +0000
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6B64022CD0;
 Fri, 26 Jul 2019 22:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564181159;
 bh=FICjWmo06SWkwImjAh+yrLMi05GplDr6QHjzeMvSOqg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=G5BNOTVHLiFWiIJ4AA4McjnSGvc8E2hvsfP4aig1akfYfgsBNRMMOK20QdU1jHl4l
 shjvVGmotvLFMtNd5YFXzM3k12w/UrY5MEmlHBefe1WSM7CPdibL94NQKqhPQ3CLa7
 sFg8Ja78o9NSxXRa0fkOhda3T5VLv6eGIqQzVLWs=
From: Eric Biggers <ebiggers@kernel.org>
To: linux-fscrypt@vger.kernel.org
Subject: [PATCH v7 08/16] fscrypt: add FS_IOC_GET_ENCRYPTION_KEY_STATUS ioctl
Date: Fri, 26 Jul 2019 15:41:33 -0700
Message-Id: <20190726224141.14044-9-ebiggers@kernel.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190726224141.14044-1-ebiggers@kernel.org>
References: <20190726224141.14044-1-ebiggers@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_154600_074387_F48D3201 
X-CRM114-Status: GOOD (  18.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Satya Tangirala <satyat@google.com>, linux-api@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, keyrings@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-ext4@vger.kernel.org,
 Paul Crowley <paulcrowley@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Eric Biggers <ebiggers@google.com>

Add a new fscrypt ioctl, FS_IOC_GET_ENCRYPTION_KEY_STATUS.  Given a key
specified by 'struct fscrypt_key_specifier' (the same way a key is
specified for the other fscrypt key management ioctls), it returns
status information in a 'struct fscrypt_get_key_status_arg'.

The main motivation for this is that applications need to be able to
check whether an encrypted directory is "unlocked" or not, so that they
can add the key if it is not, and avoid adding the key (which may
involve prompting the user for a passphrase) if it already is.

It's possible to use some workarounds such as checking whether opening a
regular file fails with ENOKEY, or checking whether the filenames "look
like gibberish" or not.  However, no workaround is usable in all cases.

Like the other key management ioctls, the keyrings syscalls may seem at
first to be a good fit for this.  Unfortunately, they are not.  Even if
we exposed the keyring ID of the ->s_master_keys keyring and gave
everyone Search permission on it (note: currently the keyrings
permission system would also allow everyone to "invalidate" the keyring
too), the fscrypt keys have an additional state that doesn't map cleanly
to the keyrings API: the secret can be removed, but we can be still
tracking the files that were using the key, and the removal can be
re-attempted or the secret added again.

After later patches, some applications will also need a way to determine
whether a key was added by the current user vs. by some other user.
Reserved fields are included in fscrypt_get_key_status_arg for this and
other future extensions.

Signed-off-by: Eric Biggers <ebiggers@google.com>
---
 fs/crypto/keyring.c          | 60 ++++++++++++++++++++++++++++++++++++
 include/linux/fscrypt.h      |  7 +++++
 include/uapi/linux/fscrypt.h | 15 +++++++++
 3 files changed, 82 insertions(+)

diff --git a/fs/crypto/keyring.c b/fs/crypto/keyring.c
index ce33c38955233..02a94d7cc739e 100644
--- a/fs/crypto/keyring.c
+++ b/fs/crypto/keyring.c
@@ -11,6 +11,7 @@
  *
  * - FS_IOC_ADD_ENCRYPTION_KEY: add a key
  * - FS_IOC_REMOVE_ENCRYPTION_KEY: remove a key
+ * - FS_IOC_GET_ENCRYPTION_KEY_STATUS: get key status
  */
 
 #include <linux/key-type.h>
@@ -528,6 +529,65 @@ int fscrypt_ioctl_remove_key(struct file *filp, const void __user *uarg)
 }
 EXPORT_SYMBOL_GPL(fscrypt_ioctl_remove_key);
 
+/*
+ * Retrieve the status of an fscrypt master encryption key.
+ *
+ * We set ->status to indicate whether the key is absent, present, or
+ * incompletely removed.  "Incompletely removed" means that the master key
+ * secret has been removed, but some files which had been unlocked with it are
+ * still in use.  This field allows applications to easily determine the state
+ * of an encrypted directory without using a hack such as trying to open a
+ * regular file in it (which can confuse the "incompletely removed" state with
+ * absent or present).
+ */
+int fscrypt_ioctl_get_key_status(struct file *filp, void __user *uarg)
+{
+	struct super_block *sb = file_inode(filp)->i_sb;
+	struct fscrypt_get_key_status_arg arg;
+	struct key *key;
+	struct fscrypt_master_key *mk;
+	int err;
+
+	if (copy_from_user(&arg, uarg, sizeof(arg)))
+		return -EFAULT;
+
+	if (!valid_key_spec(&arg.key_spec))
+		return -EINVAL;
+
+	if (memchr_inv(arg.__reserved, 0, sizeof(arg.__reserved)))
+		return -EINVAL;
+
+	memset(arg.__out_reserved, 0, sizeof(arg.__out_reserved));
+
+	key = fscrypt_find_master_key(sb, &arg.key_spec);
+	if (IS_ERR(key)) {
+		if (key != ERR_PTR(-ENOKEY))
+			return PTR_ERR(key);
+		arg.status = FSCRYPT_KEY_STATUS_ABSENT;
+		err = 0;
+		goto out;
+	}
+	mk = key->payload.data[0];
+	down_read(&key->sem);
+
+	if (!is_master_key_secret_present(&mk->mk_secret)) {
+		arg.status = FSCRYPT_KEY_STATUS_INCOMPLETELY_REMOVED;
+		err = 0;
+		goto out_release_key;
+	}
+
+	arg.status = FSCRYPT_KEY_STATUS_PRESENT;
+	err = 0;
+out_release_key:
+	up_read(&key->sem);
+	key_put(key);
+out:
+	if (!err && copy_to_user(uarg, &arg, sizeof(arg)))
+		err = -EFAULT;
+	return err;
+}
+EXPORT_SYMBOL_GPL(fscrypt_ioctl_get_key_status);
+
 int __init fscrypt_init_keyring(void)
 {
 	return register_key_type(&key_type_fscrypt);
diff --git a/include/linux/fscrypt.h b/include/linux/fscrypt.h
index c1b80b981cec2..cf41d2a596b3d 100644
--- a/include/linux/fscrypt.h
+++ b/include/linux/fscrypt.h
@@ -142,6 +142,7 @@ extern int fscrypt_inherit_context(struct inode *, struct inode *,
 extern void fscrypt_sb_free(struct super_block *sb);
 extern int fscrypt_ioctl_add_key(struct file *filp, void __user *arg);
 extern int fscrypt_ioctl_remove_key(struct file *filp, const void __user *arg);
+extern int fscrypt_ioctl_get_key_status(struct file *filp, void __user *arg);
 
 /* keysetup.c */
 extern int fscrypt_get_encryption_info(struct inode *);
@@ -389,6 +390,12 @@ static inline int fscrypt_ioctl_remove_key(struct file *filp,
 	return -EOPNOTSUPP;
 }
 
+static inline int fscrypt_ioctl_get_key_status(struct file *filp,
+					       void __user *arg)
+{
+	return -EOPNOTSUPP;
+}
+
 /* keysetup.c */
 static inline int fscrypt_get_encryption_info(struct inode *inode)
 {
diff --git a/include/uapi/linux/fscrypt.h b/include/uapi/linux/fscrypt.h
index cbe1ec46a4b56..4f507f8d12261 100644
--- a/include/uapi/linux/fscrypt.h
+++ b/include/uapi/linux/fscrypt.h
@@ -73,11 +73,26 @@ struct fscrypt_remove_key_arg {
 	__u32 __reserved[6];
 };
 
+/* Struct passed to FS_IOC_GET_ENCRYPTION_KEY_STATUS */
+struct fscrypt_get_key_status_arg {
+	/* input */
+	struct fscrypt_key_specifier key_spec;
+	__u32 __reserved[6];
+
+	/* output */
+#define FSCRYPT_KEY_STATUS_ABSENT		1
+#define FSCRYPT_KEY_STATUS_PRESENT		2
+#define FSCRYPT_KEY_STATUS_INCOMPLETELY_REMOVED	3
+	__u32 status;
+	__u32 __out_reserved[15];
+};
+
 #define FS_IOC_SET_ENCRYPTION_POLICY	  _IOR('f', 19, struct fscrypt_policy)
 #define FS_IOC_GET_ENCRYPTION_PWSALT	  _IOW('f', 20, __u8[16])
 #define FS_IOC_GET_ENCRYPTION_POLICY	  _IOW('f', 21, struct fscrypt_policy)
 #define FS_IOC_ADD_ENCRYPTION_KEY	 _IOWR('f', 23, struct fscrypt_add_key_arg)
 #define FS_IOC_REMOVE_ENCRYPTION_KEY	  _IOW('f', 24, struct fscrypt_remove_key_arg)
+#define FS_IOC_GET_ENCRYPTION_KEY_STATUS _IOWR('f', 25, struct fscrypt_get_key_status_arg)
 
 /**********************************************************************/
 
-- 
2.22.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
