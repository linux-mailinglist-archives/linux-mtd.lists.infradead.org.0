Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4766723D7D
	for <lists+linux-mtd@lfdr.de>; Mon, 20 May 2019 18:31:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TeNwg3a734F/Hzt0rQXJwpkRdZ+WcC0CGGfX48BIURk=; b=rCnlhnXvAXatnX
	FaBmUXOOk4cf5jj4dJ5t0a2IDQPxonFPmee2AmaBTg7pu8ajK5FLAVu/dCWaPfWTF8VQhE0sIzqZB
	0h/IcyeL5x59C5tMkW5/8sTooZc5Umd9HztvjzTZMwbZoMnGHoF00VwH7fpSYmpRlCmDvpyY+nh+a
	xo3m5XsxSSsh2B0r4iuoxpZc2W+NFxL5H+dOZikTS1zCzkduDMw0lv/vU00Uf+zKmWFU7jKlaoekJ
	w0UzRgjLQafJ8GvHgJiygqVsuwg2Iei7A+9Ek9jk4VqRRil3LzB/n1jR1Qo5rYADLzwLjVB93fEVU
	+FE8nSaaiGcenZEKoQ+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSlCG-0004UR-BY; Mon, 20 May 2019 16:31:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSlB9-00034w-BR
 for linux-mtd@lists.infradead.org; Mon, 20 May 2019 16:30:25 +0000
Received: from ebiggers-linuxstation.mtv.corp.google.com (unknown
 [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C6E8B2173E;
 Mon, 20 May 2019 16:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558369823;
 bh=9QdpTEHuf1OrocytJjxo0GKTFXi55ekeZurQgDf8cyU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oP28H7RDt58UjtO464eTlhzvfLwquwG/s3VGS01lHee0Cmvt3cxQX8SYv5NnBnN4+
 UzjaVmQyi31Xz/cZrcdpVv5gaMK82/xcCLb1cdB/VwUueDOY/bs77sc7sniiklHwtY
 8J1vq0v6d8+Rgl6Z8VrGhAT5S+4BpQLpehTdLb3w=
From: Eric Biggers <ebiggers@kernel.org>
To: linux-fscrypt@vger.kernel.org
Subject: [PATCH v2 06/14] fscrypt: support encrypting multiple filesystem
 blocks per page
Date: Mon, 20 May 2019 09:29:44 -0700
Message-Id: <20190520162952.156212-7-ebiggers@kernel.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190520162952.156212-1-ebiggers@kernel.org>
References: <20190520162952.156212-1-ebiggers@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_093023_505341_BE6295EA 
X-CRM114-Status: GOOD (  20.63  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-ext4@vger.kernel.org, linux-mtd@lists.infradead.org,
 Chandan Rajendra <chandan@linux.ibm.com>,
 linux-f2fs-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Eric Biggers <ebiggers@google.com>

Rename fscrypt_encrypt_page() to fscrypt_encrypt_pagecache_blocks() and
redefine its behavior to encrypt all filesystem blocks from the given
region of the given page, rather than assuming that the region consists
of just one filesystem block.  Also remove the 'inode' and 'lblk_num'
parameters, since they can be retrieved from the page as it's already
assumed to be a pagecache page.

This is in preparation for allowing encryption on ext4 filesystems with
blocksize != PAGE_SIZE.

This is based on work by Chandan Rajendra.

Reviewed-by: Chandan Rajendra <chandan@linux.ibm.com>
Signed-off-by: Eric Biggers <ebiggers@google.com>
---
 fs/crypto/crypto.c      | 67 ++++++++++++++++++++++++-----------------
 fs/ext4/page-io.c       |  4 +--
 fs/f2fs/data.c          |  5 +--
 include/linux/fscrypt.h | 17 ++++++-----
 4 files changed, 53 insertions(+), 40 deletions(-)

diff --git a/fs/crypto/crypto.c b/fs/crypto/crypto.c
index 6877b7c6165de..7bdb985126d97 100644
--- a/fs/crypto/crypto.c
+++ b/fs/crypto/crypto.c
@@ -121,8 +121,8 @@ struct page *fscrypt_alloc_bounce_page(gfp_t gfp_flags)
 /**
  * fscrypt_free_bounce_page() - free a ciphertext bounce page
  *
- * Free a bounce page that was allocated by fscrypt_encrypt_page(), or by
- * fscrypt_alloc_bounce_page() directly.
+ * Free a bounce page that was allocated by fscrypt_encrypt_pagecache_blocks(),
+ * or by fscrypt_alloc_bounce_page() directly.
  */
 void fscrypt_free_bounce_page(struct page *bounce_page)
 {
@@ -197,52 +197,63 @@ int fscrypt_crypt_block(const struct inode *inode, fscrypt_direction_t rw,
 }
 
 /**
- * fscypt_encrypt_page() - Encrypts a page
- * @inode:     The inode for which the encryption should take place
- * @page:      The page to encrypt. Must be locked.
- * @len:       Length of data to encrypt in @page and encrypted
- *             data in returned page.
- * @offs:      Offset of data within @page and returned
- *             page holding encrypted data.
- * @lblk_num:  Logical block number. This must be unique for multiple
- *             calls with same inode, except when overwriting
- *             previously written data.
- * @gfp_flags: The gfp flag for memory allocation
+ * fscrypt_encrypt_pagecache_blocks() - Encrypt filesystem blocks from a pagecache page
+ * @page:      The locked pagecache page containing the block(s) to encrypt
+ * @len:       Total size of the block(s) to encrypt.  Must be a nonzero
+ *		multiple of the filesystem's block size.
+ * @offs:      Byte offset within @page of the first block to encrypt.  Must be
+ *		a multiple of the filesystem's block size.
+ * @gfp_flags: Memory allocation flags
+ *
+ * A new bounce page is allocated, and the specified block(s) are encrypted into
+ * it.  In the bounce page, the ciphertext block(s) will be located at the same
+ * offsets at which the plaintext block(s) were located in the source page; any
+ * other parts of the bounce page will be left uninitialized.  However, normally
+ * blocksize == PAGE_SIZE and the whole page is encrypted at once.
  *
- * Encrypts @page.  A bounce page is allocated, the data is encrypted into the
- * bounce page, and the bounce page is returned.  The caller is responsible for
- * calling fscrypt_free_bounce_page().
+ * This is for use by the filesystem's ->writepages() method.
  *
- * Return: A page containing the encrypted data on success, else an ERR_PTR()
+ * Return: the new encrypted bounce page on success; an ERR_PTR() on failure
  */
-struct page *fscrypt_encrypt_page(const struct inode *inode,
-				struct page *page,
-				unsigned int len,
-				unsigned int offs,
-				u64 lblk_num, gfp_t gfp_flags)
+struct page *fscrypt_encrypt_pagecache_blocks(struct page *page,
+					      unsigned int len,
+					      unsigned int offs,
+					      gfp_t gfp_flags)
 
 {
+	const struct inode *inode = page->mapping->host;
+	const unsigned int blockbits = inode->i_blkbits;
+	const unsigned int blocksize = 1 << blockbits;
 	struct page *ciphertext_page;
+	u64 lblk_num = ((u64)page->index << (PAGE_SHIFT - blockbits)) +
+		       (offs >> blockbits);
+	unsigned int i;
 	int err;
 
 	if (WARN_ON_ONCE(!PageLocked(page)))
 		return ERR_PTR(-EINVAL);
 
+	if (WARN_ON_ONCE(len <= 0 || !IS_ALIGNED(len | offs, blocksize)))
+		return ERR_PTR(-EINVAL);
+
 	ciphertext_page = fscrypt_alloc_bounce_page(gfp_flags);
 	if (!ciphertext_page)
 		return ERR_PTR(-ENOMEM);
 
-	err = fscrypt_crypt_block(inode, FS_ENCRYPT, lblk_num, page,
-				  ciphertext_page, len, offs, gfp_flags);
-	if (err) {
-		fscrypt_free_bounce_page(ciphertext_page);
-		return ERR_PTR(err);
+	for (i = offs; i < offs + len; i += blocksize, lblk_num++) {
+		err = fscrypt_crypt_block(inode, FS_ENCRYPT, lblk_num,
+					  page, ciphertext_page,
+					  blocksize, i, gfp_flags);
+		if (err) {
+			fscrypt_free_bounce_page(ciphertext_page);
+			return ERR_PTR(err);
+		}
 	}
 	SetPagePrivate(ciphertext_page);
 	set_page_private(ciphertext_page, (unsigned long)page);
 	return ciphertext_page;
 }
-EXPORT_SYMBOL(fscrypt_encrypt_page);
+EXPORT_SYMBOL(fscrypt_encrypt_pagecache_blocks);
 
 /**
  * fscrypt_encrypt_block_inplace() - Encrypt a filesystem block in-place
diff --git a/fs/ext4/page-io.c b/fs/ext4/page-io.c
index 13d5ecc0af03f..40ee33df57649 100644
--- a/fs/ext4/page-io.c
+++ b/fs/ext4/page-io.c
@@ -471,8 +471,8 @@ int ext4_bio_write_page(struct ext4_io_submit *io,
 		gfp_t gfp_flags = GFP_NOFS;
 
 	retry_encrypt:
-		bounce_page = fscrypt_encrypt_page(inode, page, PAGE_SIZE, 0,
-						   page->index, gfp_flags);
+		bounce_page = fscrypt_encrypt_pagecache_blocks(page, PAGE_SIZE,
+							       0, gfp_flags);
 		if (IS_ERR(bounce_page)) {
 			ret = PTR_ERR(bounce_page);
 			if (ret == -ENOMEM && wbc->sync_mode == WB_SYNC_ALL) {
diff --git a/fs/f2fs/data.c b/fs/f2fs/data.c
index 968ebdbcb5834..a546ac8685ea6 100644
--- a/fs/f2fs/data.c
+++ b/fs/f2fs/data.c
@@ -1726,8 +1726,9 @@ static int encrypt_one_page(struct f2fs_io_info *fio)
 	f2fs_wait_on_block_writeback(inode, fio->old_blkaddr);
 
 retry_encrypt:
-	fio->encrypted_page = fscrypt_encrypt_page(inode, fio->page,
-			PAGE_SIZE, 0, fio->page->index, gfp_flags);
+	fio->encrypted_page = fscrypt_encrypt_pagecache_blocks(fio->page,
+							       PAGE_SIZE, 0,
+							       gfp_flags);
 	if (IS_ERR(fio->encrypted_page)) {
 		/* flush pending IOs and wait for a while in the ENOMEM case */
 		if (PTR_ERR(fio->encrypted_page) == -ENOMEM) {
diff --git a/include/linux/fscrypt.h b/include/linux/fscrypt.h
index a9b2d26e615d5..c7e16bd16a6c2 100644
--- a/include/linux/fscrypt.h
+++ b/include/linux/fscrypt.h
@@ -103,9 +103,11 @@ static inline void fscrypt_handle_d_move(struct dentry *dentry)
 extern void fscrypt_enqueue_decrypt_work(struct work_struct *);
 extern struct fscrypt_ctx *fscrypt_get_ctx(gfp_t);
 extern void fscrypt_release_ctx(struct fscrypt_ctx *);
-extern struct page *fscrypt_encrypt_page(const struct inode *, struct page *,
-						unsigned int, unsigned int,
-						u64, gfp_t);
+
+extern struct page *fscrypt_encrypt_pagecache_blocks(struct page *page,
+						     unsigned int len,
+						     unsigned int offs,
+						     gfp_t gfp_flags);
 extern int fscrypt_encrypt_block_inplace(const struct inode *inode,
 					 struct page *page, unsigned int len,
 					 unsigned int offs, u64 lblk_num,
@@ -288,11 +290,10 @@ static inline void fscrypt_release_ctx(struct fscrypt_ctx *ctx)
 	return;
 }
 
-static inline struct page *fscrypt_encrypt_page(const struct inode *inode,
-						struct page *page,
-						unsigned int len,
-						unsigned int offs,
-						u64 lblk_num, gfp_t gfp_flags)
+static inline struct page *fscrypt_encrypt_pagecache_blocks(struct page *page,
+							    unsigned int len,
+							    unsigned int offs,
+							    gfp_t gfp_flags)
 {
 	return ERR_PTR(-EOPNOTSUPP);
 }
-- 
2.21.0.1020.gf2820cf01a-goog


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
