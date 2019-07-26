Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 564EB7745A
	for <lists+linux-mtd@lfdr.de>; Sat, 27 Jul 2019 00:46:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fZJKsa4m7FsRO1PzCz+DlRGhIgNlZ70O2YqUZURORXE=; b=JygJEQOytFNahm
	VW9gbGJiHt1b+MU3YAY5JvhJmUmJZ+a6WSngL3p2n1JdBYNPUJvnUJSsJJxl5NZdpgJZ6+cDEAUzo
	7wtIk330uxjiTXA7zaCCZcApov9eV4sASrcwQWFvKSSw6kC/ktQ4/SvDXKpWmfSkfEHrSmaMpBrgF
	IMBUJmY8NjVSJ3EJ0Fl6I5Ao8yyrpJQL6LBPdlJElLcQ/8ll7ltbKHrFQyLH6gz5GFbuRu605CL+M
	appVQcVK2vMB7CrnWUrANkFl2hW5ozXsZN/LO7U6ZO5wZPC9N65HRQck0T5ymHo3yYAXkyUmKCh5C
	o5pP9DezeTu3HQ93Kubw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr8yZ-0005aZ-Ur; Fri, 26 Jul 2019 22:46:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr8yK-0005Y6-VV
 for linux-mtd@lists.infradead.org; Fri, 26 Jul 2019 22:45:58 +0000
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2E9E922C7E;
 Fri, 26 Jul 2019 22:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564181156;
 bh=GzelVGHPqkbkaf9RW/Q47B0yPhCAPUbNJ2m3SxNTfR8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Hh5g3og90qEqztUsE2t9s4ZaGbo4PHm8PgOIZ7Cn88aQmQ9I09rlPTTjq97xIXllH
 AUGhcFEEwjX9yMubzc1MeH5jr9nKF7Yx1d3Bhyqy6AmzHwgH/My3CQdZT1V63fWgl1
 8KH/yL2CJ6SuUTYu8mmJNGSxxSXoc65+TBganzjA=
From: Eric Biggers <ebiggers@kernel.org>
To: linux-fscrypt@vger.kernel.org
Subject: [PATCH v7 01/16] fs,
 fscrypt: move uapi definitions to new header <linux/fscrypt.h>
Date: Fri, 26 Jul 2019 15:41:26 -0700
Message-Id: <20190726224141.14044-2-ebiggers@kernel.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190726224141.14044-1-ebiggers@kernel.org>
References: <20190726224141.14044-1-ebiggers@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_154557_043799_24026512 
X-CRM114-Status: GOOD (  13.22  )
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

More fscrypt definitions are being added, and we shouldn't use a
disproportionate amount of space in <linux/fs.h> for fscrypt stuff.
So move the fscrypt definitions to a new header <linux/fscrypt.h>.

For source compatibility with existing userspace programs, <linux/fs.h>
still includes the new header.

Signed-off-by: Eric Biggers <ebiggers@google.com>
---
 MAINTAINERS                  |  1 +
 include/linux/fscrypt.h      |  1 +
 include/uapi/linux/fs.h      | 54 ++-----------------------------
 include/uapi/linux/fscrypt.h | 61 ++++++++++++++++++++++++++++++++++++
 4 files changed, 66 insertions(+), 51 deletions(-)
 create mode 100644 include/uapi/linux/fscrypt.h

diff --git a/MAINTAINERS b/MAINTAINERS
index 783569e3c4b48..e7c473fb08163 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6598,6 +6598,7 @@ T:	git git://git.kernel.org/pub/scm/fs/fscrypt/fscrypt.git
 S:	Supported
 F:	fs/crypto/
 F:	include/linux/fscrypt*.h
+F:	include/uapi/linux/fscrypt.h
 F:	Documentation/filesystems/fscrypt.rst
 
 FSI SUBSYSTEM
diff --git a/include/linux/fscrypt.h b/include/linux/fscrypt.h
index bd8f207a2fb68..81c0c754f8b21 100644
--- a/include/linux/fscrypt.h
+++ b/include/linux/fscrypt.h
@@ -16,6 +16,7 @@
 #include <linux/fs.h>
 #include <linux/mm.h>
 #include <linux/slab.h>
+#include <uapi/linux/fscrypt.h>
 
 #define FS_CRYPTO_BLOCK_SIZE		16
 
diff --git a/include/uapi/linux/fs.h b/include/uapi/linux/fs.h
index 59c71fa8c553a..41bd84d25a980 100644
--- a/include/uapi/linux/fs.h
+++ b/include/uapi/linux/fs.h
@@ -13,6 +13,9 @@
 #include <linux/limits.h>
 #include <linux/ioctl.h>
 #include <linux/types.h>
+#ifndef __KERNEL__
+#include <linux/fscrypt.h>
+#endif
 
 /* Use of MS_* flags within the kernel is restricted to core mount(2) code. */
 #if !defined(__KERNEL__)
@@ -212,57 +215,6 @@ struct fsxattr {
 #define FS_IOC_GETFSLABEL		_IOR(0x94, 49, char[FSLABEL_MAX])
 #define FS_IOC_SETFSLABEL		_IOW(0x94, 50, char[FSLABEL_MAX])
 
-/*
- * File system encryption support
- */
-/* Policy provided via an ioctl on the topmost directory */
-#define FS_KEY_DESCRIPTOR_SIZE	8
-
-#define FS_POLICY_FLAGS_PAD_4		0x00
-#define FS_POLICY_FLAGS_PAD_8		0x01
-#define FS_POLICY_FLAGS_PAD_16		0x02
-#define FS_POLICY_FLAGS_PAD_32		0x03
-#define FS_POLICY_FLAGS_PAD_MASK	0x03
-#define FS_POLICY_FLAG_DIRECT_KEY	0x04	/* use master key directly */
-#define FS_POLICY_FLAGS_VALID		0x07
-
-/* Encryption algorithms */
-#define FS_ENCRYPTION_MODE_INVALID		0
-#define FS_ENCRYPTION_MODE_AES_256_XTS		1
-#define FS_ENCRYPTION_MODE_AES_256_GCM		2
-#define FS_ENCRYPTION_MODE_AES_256_CBC		3
-#define FS_ENCRYPTION_MODE_AES_256_CTS		4
-#define FS_ENCRYPTION_MODE_AES_128_CBC		5
-#define FS_ENCRYPTION_MODE_AES_128_CTS		6
-#define FS_ENCRYPTION_MODE_SPECK128_256_XTS	7 /* Removed, do not use. */
-#define FS_ENCRYPTION_MODE_SPECK128_256_CTS	8 /* Removed, do not use. */
-#define FS_ENCRYPTION_MODE_ADIANTUM		9
-
-struct fscrypt_policy {
-	__u8 version;
-	__u8 contents_encryption_mode;
-	__u8 filenames_encryption_mode;
-	__u8 flags;
-	__u8 master_key_descriptor[FS_KEY_DESCRIPTOR_SIZE];
-};
-
-#define FS_IOC_SET_ENCRYPTION_POLICY	_IOR('f', 19, struct fscrypt_policy)
-#define FS_IOC_GET_ENCRYPTION_PWSALT	_IOW('f', 20, __u8[16])
-#define FS_IOC_GET_ENCRYPTION_POLICY	_IOW('f', 21, struct fscrypt_policy)
-
-/* Parameters for passing an encryption key into the kernel keyring */
-#define FS_KEY_DESC_PREFIX		"fscrypt:"
-#define FS_KEY_DESC_PREFIX_SIZE		8
-
-/* Structure that userspace passes to the kernel keyring */
-#define FS_MAX_KEY_SIZE			64
-
-struct fscrypt_key {
-	__u32 mode;
-	__u8 raw[FS_MAX_KEY_SIZE];
-	__u32 size;
-};
-
 /*
  * Inode flags (FS_IOC_GETFLAGS / FS_IOC_SETFLAGS)
  *
diff --git a/include/uapi/linux/fscrypt.h b/include/uapi/linux/fscrypt.h
new file mode 100644
index 0000000000000..26f6d2c19afd3
--- /dev/null
+++ b/include/uapi/linux/fscrypt.h
@@ -0,0 +1,61 @@
+/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
+/*
+ * fscrypt user API
+ *
+ * These ioctls can be used on filesystems that support fscrypt.  See the
+ * "User API" section of Documentation/filesystems/fscrypt.rst.
+ */
+#ifndef _UAPI_LINUX_FSCRYPT_H
+#define _UAPI_LINUX_FSCRYPT_H
+
+#include <linux/types.h>
+
+#define FS_KEY_DESCRIPTOR_SIZE	8
+
+/* Encryption policy flags */
+#define FS_POLICY_FLAGS_PAD_4		0x00
+#define FS_POLICY_FLAGS_PAD_8		0x01
+#define FS_POLICY_FLAGS_PAD_16		0x02
+#define FS_POLICY_FLAGS_PAD_32		0x03
+#define FS_POLICY_FLAGS_PAD_MASK	0x03
+#define FS_POLICY_FLAG_DIRECT_KEY	0x04	/* use master key directly */
+#define FS_POLICY_FLAGS_VALID		0x07
+
+/* Encryption algorithms */
+#define FS_ENCRYPTION_MODE_INVALID		0
+#define FS_ENCRYPTION_MODE_AES_256_XTS		1
+#define FS_ENCRYPTION_MODE_AES_256_GCM		2
+#define FS_ENCRYPTION_MODE_AES_256_CBC		3
+#define FS_ENCRYPTION_MODE_AES_256_CTS		4
+#define FS_ENCRYPTION_MODE_AES_128_CBC		5
+#define FS_ENCRYPTION_MODE_AES_128_CTS		6
+#define FS_ENCRYPTION_MODE_SPECK128_256_XTS	7 /* Removed, do not use. */
+#define FS_ENCRYPTION_MODE_SPECK128_256_CTS	8 /* Removed, do not use. */
+#define FS_ENCRYPTION_MODE_ADIANTUM		9
+
+struct fscrypt_policy {
+	__u8 version;
+	__u8 contents_encryption_mode;
+	__u8 filenames_encryption_mode;
+	__u8 flags;
+	__u8 master_key_descriptor[FS_KEY_DESCRIPTOR_SIZE];
+};
+
+#define FS_IOC_SET_ENCRYPTION_POLICY	_IOR('f', 19, struct fscrypt_policy)
+#define FS_IOC_GET_ENCRYPTION_PWSALT	_IOW('f', 20, __u8[16])
+#define FS_IOC_GET_ENCRYPTION_POLICY	_IOW('f', 21, struct fscrypt_policy)
+
+/* Parameters for passing an encryption key into the kernel keyring */
+#define FS_KEY_DESC_PREFIX		"fscrypt:"
+#define FS_KEY_DESC_PREFIX_SIZE		8
+
+/* Structure that userspace passes to the kernel keyring */
+#define FS_MAX_KEY_SIZE			64
+
+struct fscrypt_key {
+	__u32 mode;
+	__u8 raw[FS_MAX_KEY_SIZE];
+	__u32 size;
+};
+
+#endif /* _UAPI_LINUX_FSCRYPT_H */
-- 
2.22.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
