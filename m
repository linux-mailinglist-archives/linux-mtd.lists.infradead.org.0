Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BA023EE7
	for <lists+linux-mtd@lfdr.de>; Mon, 20 May 2019 19:29:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xKZ7jUyyq0c+eNbOI3iQIMSlGWwAQ/FW0B6HIrmMSGg=; b=lBagyW1NKddPni
	+NfHvS+9vRF+whx6wh3dB64aNlEbWVdd/eiFskDyRdddqxHpsOlL2WEX73HEmieu2lQe0wdeubJtm
	nUmo+Cuh4Ir8CoviweVKSJcYPvheBURcNP0vLjtz3gjINWEAV0wmVR2FtpyWLwj4nSrloedeIQpTP
	lPZ92sYtyyFzl5PDgh/RRGWNyuk0fx2IsL7LcDc46SQNOLAcqlC3ftut+O4TNC7pRlou9PqieQz4C
	naQDvbADn/G17GPunLMCSkhULD/SD1hvT2CxoVHPhlcxvmnhNo4WrsGDYXCdBZ+iTC84Tbrr8+acz
	wz0hc+THoLwJqEMgq0/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSm6O-00013Y-7L; Mon, 20 May 2019 17:29:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSm5e-0000BG-RV
 for linux-mtd@lists.infradead.org; Mon, 20 May 2019 17:28:49 +0000
Received: from ebiggers-linuxstation.mtv.corp.google.com (unknown
 [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3DDEE216B7;
 Mon, 20 May 2019 17:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558373326;
 bh=B+/PKCAMW7RRUXK88/20e9W+aijjNig6UGp11/NNvy4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=D1GTHSFszZcid2WYrJ0OPv/o8DOQKUVebxtgI7K8JorUQz5IhpXTRghSmOsP2lkrT
 EqxWvaFbc7miG2BdMmWfwNSPjUVCRs0ahkwb2FHp4aRBxS4xAJaXHwcMSlWnTb1nHO
 tgjNG8Shu0b1lkc99TiM1+6pOBMlYPIzdjrgTr2g=
From: Eric Biggers <ebiggers@kernel.org>
To: linux-fscrypt@vger.kernel.org
Subject: [PATCH v6 02/16] fscrypt: use FSCRYPT_ prefix for uapi constants
Date: Mon, 20 May 2019 10:25:38 -0700
Message-Id: <20190520172552.217253-3-ebiggers@kernel.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190520172552.217253-1-ebiggers@kernel.org>
References: <20190520172552.217253-1-ebiggers@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_102846_923262_00AB64EA 
X-CRM114-Status: GOOD (  15.97  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: linux-ext4@vger.kernel.org, linux-api@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, keyrings@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Satya Tangirala <satyat@google.com>,
 Paul Crowley <paulcrowley@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Eric Biggers <ebiggers@google.com>

Prefix all filesystem encryption UAPI constants except the ioctl numbers
with "FSCRYPT_" rather than with "FS_".  This namespaces the constants
more appropriately and makes it clear that they are related specifically
to the filesystem encryption feature, and to the 'fscrypt_*' structures.
With some of the old names like "FS_POLICY_FLAGS_VALID", it was not
immediately clear that the constant had anything to do with encryption.

This is also useful because we'll be adding more encryption-related
constants, e.g. for the policy version, and we'd otherwise have to
choose whether to use unclear names like FS_POLICY_V1 or inconsistent
names like FS_ENCRYPTION_POLICY_V1.

For source compatibility with existing userspace programs, keep the old
names defined as aliases to the new names.

Finally, as long as new names are being defined anyway, I skipped
defining new names for the fscrypt mode numbers that aren't actually
used: INVALID (0), AES_256_GCM (2), AES_256_CBC (3), SPECK128_256_XTS
(7), and SPECK128_256_CTS (8).

Signed-off-by: Eric Biggers <ebiggers@google.com>
---
 Documentation/filesystems/fscrypt.rst | 36 +++++++--------
 include/uapi/linux/fscrypt.h          | 66 +++++++++++++++++----------
 2 files changed, 61 insertions(+), 41 deletions(-)

diff --git a/Documentation/filesystems/fscrypt.rst b/Documentation/filesystems/fscrypt.rst
index 08c23b60e0164..4f9df6ba669e5 100644
--- a/Documentation/filesystems/fscrypt.rst
+++ b/Documentation/filesystems/fscrypt.rst
@@ -223,9 +223,10 @@ a little endian number, except that:
   is encrypted with AES-256 where the AES-256 key is the SHA-256 hash
   of the file's data encryption key.
 
-- In the "direct key" configuration (FS_POLICY_FLAG_DIRECT_KEY set in
-  the fscrypt_policy), the file's nonce is also appended to the IV.
-  Currently this is only allowed with the Adiantum encryption mode.
+- In the "direct key" configuration (FSCRYPT_POLICY_FLAG_DIRECT_KEY
+  set in the fscrypt_policy), the file's nonce is also appended to the
+  IV.  Currently this is only allowed with the Adiantum encryption
+  mode.
 
 Filenames encryption
 --------------------
@@ -272,14 +273,14 @@ empty directory or verifies that a directory or regular file already
 has the specified encryption policy.  It takes in a pointer to a
 :c:type:`struct fscrypt_policy`, defined as follows::
 
-    #define FS_KEY_DESCRIPTOR_SIZE  8
+    #define FSCRYPT_KEY_DESCRIPTOR_SIZE  8
 
     struct fscrypt_policy {
             __u8 version;
             __u8 contents_encryption_mode;
             __u8 filenames_encryption_mode;
             __u8 flags;
-            __u8 master_key_descriptor[FS_KEY_DESCRIPTOR_SIZE];
+            __u8 master_key_descriptor[FSCRYPT_KEY_DESCRIPTOR_SIZE];
     };
 
 This structure must be initialized as follows:
@@ -288,18 +289,17 @@ This structure must be initialized as follows:
 
 - ``contents_encryption_mode`` and ``filenames_encryption_mode`` must
   be set to constants from ``<linux/fs.h>`` which identify the
-  encryption modes to use.  If unsure, use
-  FS_ENCRYPTION_MODE_AES_256_XTS (1) for ``contents_encryption_mode``
-  and FS_ENCRYPTION_MODE_AES_256_CTS (4) for
-  ``filenames_encryption_mode``.
+  encryption modes to use.  If unsure, use FSCRYPT_MODE_AES_256_XTS
+  (1) for ``contents_encryption_mode`` and FSCRYPT_MODE_AES_256_CTS
+  (4) for ``filenames_encryption_mode``.
 
 - ``flags`` must contain a value from ``<linux/fs.h>`` which
   identifies the amount of NUL-padding to use when encrypting
-  filenames.  If unsure, use FS_POLICY_FLAGS_PAD_32 (0x3).
-  In addition, if the chosen encryption modes are both
-  FS_ENCRYPTION_MODE_ADIANTUM, this can contain
-  FS_POLICY_FLAG_DIRECT_KEY to specify that the master key should be
-  used directly, without key derivation.
+  filenames.  If unsure, use FSCRYPT_POLICY_FLAGS_PAD_32 (0x3).  In
+  addition, if the chosen encryption modes are both
+  FSCRYPT_MODE_ADIANTUM, this can contain
+  FSCRYPT_POLICY_FLAG_DIRECT_KEY to specify that the master key should
+  be used directly, without key derivation.
 
 - ``master_key_descriptor`` specifies how to find the master key in
   the keyring; see `Adding keys`_.  It is up to userspace to choose a
@@ -399,11 +399,11 @@ followed by the 16-character lower case hex representation of the
 ``master_key_descriptor`` that was set in the encryption policy.  The
 key payload must conform to the following structure::
 
-    #define FS_MAX_KEY_SIZE 64
+    #define FSCRYPT_MAX_KEY_SIZE 64
 
     struct fscrypt_key {
             u32 mode;
-            u8 raw[FS_MAX_KEY_SIZE];
+            u8 raw[FSCRYPT_MAX_KEY_SIZE];
             u32 size;
     };
 
@@ -572,7 +572,7 @@ much confusion if an encryption policy were to be added to or removed
 from anything other than an empty directory.)  The struct is defined
 as follows::
 
-    #define FS_KEY_DESCRIPTOR_SIZE  8
+    #define FSCRYPT_KEY_DESCRIPTOR_SIZE  8
     #define FS_KEY_DERIVATION_NONCE_SIZE 16
 
     struct fscrypt_context {
@@ -580,7 +580,7 @@ as follows::
             u8 contents_encryption_mode;
             u8 filenames_encryption_mode;
             u8 flags;
-            u8 master_key_descriptor[FS_KEY_DESCRIPTOR_SIZE];
+            u8 master_key_descriptor[FSCRYPT_KEY_DESCRIPTOR_SIZE];
             u8 nonce[FS_KEY_DERIVATION_NONCE_SIZE];
     };
 
diff --git a/include/uapi/linux/fscrypt.h b/include/uapi/linux/fscrypt.h
index 193339cb53fdb..f9b99cc028bc6 100644
--- a/include/uapi/linux/fscrypt.h
+++ b/include/uapi/linux/fscrypt.h
@@ -8,34 +8,30 @@
  * File system encryption support
  */
 /* Policy provided via an ioctl on the topmost directory */
-#define FS_KEY_DESCRIPTOR_SIZE	8
+#define FSCRYPT_KEY_DESCRIPTOR_SIZE	8
 
-#define FS_POLICY_FLAGS_PAD_4		0x00
-#define FS_POLICY_FLAGS_PAD_8		0x01
-#define FS_POLICY_FLAGS_PAD_16		0x02
-#define FS_POLICY_FLAGS_PAD_32		0x03
-#define FS_POLICY_FLAGS_PAD_MASK	0x03
-#define FS_POLICY_FLAG_DIRECT_KEY	0x04	/* use master key directly */
-#define FS_POLICY_FLAGS_VALID		0x07
+/* Encryption policy flags */
+#define FSCRYPT_POLICY_FLAGS_PAD_4		0x00
+#define FSCRYPT_POLICY_FLAGS_PAD_8		0x01
+#define FSCRYPT_POLICY_FLAGS_PAD_16		0x02
+#define FSCRYPT_POLICY_FLAGS_PAD_32		0x03
+#define FSCRYPT_POLICY_FLAGS_PAD_MASK		0x03
+#define FSCRYPT_POLICY_FLAG_DIRECT_KEY		0x04	/* use master key directly */
+#define FSCRYPT_POLICY_FLAGS_VALID		0x07
 
 /* Encryption algorithms */
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
+#define FSCRYPT_MODE_AES_256_XTS		1
+#define FSCRYPT_MODE_AES_256_CTS		4
+#define FSCRYPT_MODE_AES_128_CBC		5
+#define FSCRYPT_MODE_AES_128_CTS		6
+#define FSCRYPT_MODE_ADIANTUM			9
 
 struct fscrypt_policy {
 	__u8 version;
 	__u8 contents_encryption_mode;
 	__u8 filenames_encryption_mode;
 	__u8 flags;
-	__u8 master_key_descriptor[FS_KEY_DESCRIPTOR_SIZE];
+	__u8 master_key_descriptor[FSCRYPT_KEY_DESCRIPTOR_SIZE];
 };
 
 #define FS_IOC_SET_ENCRYPTION_POLICY	_IOR('f', 19, struct fscrypt_policy)
@@ -43,16 +39,40 @@ struct fscrypt_policy {
 #define FS_IOC_GET_ENCRYPTION_POLICY	_IOW('f', 21, struct fscrypt_policy)
 
 /* Parameters for passing an encryption key into the kernel keyring */
-#define FS_KEY_DESC_PREFIX		"fscrypt:"
-#define FS_KEY_DESC_PREFIX_SIZE		8
+#define FSCRYPT_KEY_DESC_PREFIX		"fscrypt:"
+#define FSCRYPT_KEY_DESC_PREFIX_SIZE		8
 
 /* Structure that userspace passes to the kernel keyring */
-#define FS_MAX_KEY_SIZE			64
+#define FSCRYPT_MAX_KEY_SIZE			64
 
 struct fscrypt_key {
 	__u32 mode;
-	__u8 raw[FS_MAX_KEY_SIZE];
+	__u8 raw[FSCRYPT_MAX_KEY_SIZE];
 	__u32 size;
 };
+/**********************************************************************/
+
+/* old names; don't add anything new here! */
+#define FS_KEY_DESCRIPTOR_SIZE		FSCRYPT_KEY_DESCRIPTOR_SIZE
+#define FS_POLICY_FLAGS_PAD_4		FSCRYPT_POLICY_FLAGS_PAD_4
+#define FS_POLICY_FLAGS_PAD_8		FSCRYPT_POLICY_FLAGS_PAD_8
+#define FS_POLICY_FLAGS_PAD_16		FSCRYPT_POLICY_FLAGS_PAD_16
+#define FS_POLICY_FLAGS_PAD_32		FSCRYPT_POLICY_FLAGS_PAD_32
+#define FS_POLICY_FLAGS_PAD_MASK	FSCRYPT_POLICY_FLAGS_PAD_MASK
+#define FS_POLICY_FLAG_DIRECT_KEY	FSCRYPT_POLICY_FLAG_DIRECT_KEY
+#define FS_POLICY_FLAGS_VALID		FSCRYPT_POLICY_FLAGS_VALID
+#define FS_ENCRYPTION_MODE_INVALID	0	/* never used */
+#define FS_ENCRYPTION_MODE_AES_256_XTS	FSCRYPT_MODE_AES_256_XTS
+#define FS_ENCRYPTION_MODE_AES_256_GCM	2	/* never used */
+#define FS_ENCRYPTION_MODE_AES_256_CBC	3	/* never used */
+#define FS_ENCRYPTION_MODE_AES_256_CTS	FSCRYPT_MODE_AES_256_CTS
+#define FS_ENCRYPTION_MODE_AES_128_CBC	FSCRYPT_MODE_AES_128_CBC
+#define FS_ENCRYPTION_MODE_AES_128_CTS	FSCRYPT_MODE_AES_128_CTS
+#define FS_ENCRYPTION_MODE_SPECK128_256_XTS	7	/* removed */
+#define FS_ENCRYPTION_MODE_SPECK128_256_CTS	8	/* removed */
+#define FS_ENCRYPTION_MODE_ADIANTUM	FSCRYPT_MODE_ADIANTUM
+#define FS_KEY_DESC_PREFIX		FSCRYPT_KEY_DESC_PREFIX
+#define FS_KEY_DESC_PREFIX_SIZE		FSCRYPT_KEY_DESC_PREFIX_SIZE
+#define FS_MAX_KEY_SIZE			FSCRYPT_MAX_KEY_SIZE
 
 #endif /* _UAPI_LINUX_FSCRYPT_H */
-- 
2.21.0.1020.gf2820cf01a-goog


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
