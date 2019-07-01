Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1CF410F4C
	for <lists+linux-mtd@lfdr.de>; Thu,  2 May 2019 00:47:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9OPcjbjH3TYviLONsAgt/382skW9y0QEW5pYcDVZ3G4=; b=nRSPbb5aqrud4b
	ZCX6gPQlaafN1AkprdMiIIIW8R4bV+q5Afjz8mnOwWTlZId1ZoGvegzrGzkp14RY+sjhlNDlhh+vZ
	ARxuikEQsMagWt1+WasTem4A8kBQ+Vmm37tBuwTJajjKlMk1ceU/zMPyRd2JhGzUS/n4cInXerDKP
	1eki05hHATz5lH3BP/wO+mcHUn7G7Zd8PM3aQ5sqw6fL2N7AjghqqanhZRPN71ZnDV75wMAoiKaeO
	TH+timdCigOhJi9WzsaLZkxQ+PXiQYU5GQHd6E9v+NAAW2wnMrUKgLFuMiJfYJmoSPCmM0ve3ZQKL
	FwI1CO/LxBPP8LX55q2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLy0N-0007K3-2h; Wed, 01 May 2019 22:47:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLxzJ-00065H-WD
 for linux-mtd@lists.infradead.org; Wed, 01 May 2019 22:46:09 +0000
Received: from ebiggers-linuxstation.mtv.corp.google.com (unknown
 [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2FC972089E;
 Wed,  1 May 2019 22:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556750765;
 bh=JLbyqKAgIp6iFJ2HZTuW8fKjxsswq75SUYyULxmIuP8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tQHWKmPbxMp+O+20Ize0mS0LyP21xPv2eCJ/g0CbaxiZlz7BS/nuih9VSBi6TEih6
 V56R87TLpOfmjzoTaRxVWFLsSo/Uoos2srtap97PwJNWBtdjzRI5+HAl6lW69ABOHB
 outvgd3+APxZrJp0pR4aoeVfrwmGSmvtMBGyw1fU=
From: Eric Biggers <ebiggers@kernel.org>
To: linux-fscrypt@vger.kernel.org
Subject: [PATCH 01/13] fscrypt: simplify bounce page handling
Date: Wed,  1 May 2019 15:45:03 -0700
Message-Id: <20190501224515.43059-2-ebiggers@kernel.org>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
In-Reply-To: <20190501224515.43059-1-ebiggers@kernel.org>
References: <20190501224515.43059-1-ebiggers@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_154606_121309_7CE1098D 
X-CRM114-Status: GOOD (  23.49  )
X-Spam-Score: -2.8 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-fsdevel@vger.kernel.org, linux-ext4@vger.kernel.org,
 linux-mtd@lists.infradead.org, Chandan Rajendra <chandan@linux.ibm.com>,
 linux-f2fs-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Eric Biggers <ebiggers@google.com>

Currently, bounce page handling for writes to encrypted files is
unnecessarily complicated.  A fscrypt_ctx is allocated along with each
bounce page, page_private(bounce_page) points to this fscrypt_ctx, and
fscrypt_ctx::w::control_page points to the original pagecache page.

However, because writes don't use the fscrypt_ctx for anything else,
there's no reason why page_private(bounce_page) can't just point to the
original pagecache page directly.

Therefore, this patch makes this change.  In the process, it also cleans
up the API exposed to filesystems that allows testing whether a page is
a bounce page, getting the pagecache page from a bounce page, and
freeing a bounce page.

Signed-off-by: Eric Biggers <ebiggers@google.com>
---
 fs/crypto/bio.c             |  38 ++-----------
 fs/crypto/crypto.c          | 104 ++++++++++++------------------------
 fs/crypto/fscrypt_private.h |   3 +-
 fs/ext4/page-io.c           |  36 +++++--------
 fs/f2fs/data.c              |  12 ++---
 include/linux/fscrypt.h     |  38 ++++++++-----
 6 files changed, 84 insertions(+), 147 deletions(-)

diff --git a/fs/crypto/bio.c b/fs/crypto/bio.c
index 41dde4578f3b2..9107e8fe55897 100644
--- a/fs/crypto/bio.c
+++ b/fs/crypto/bio.c
@@ -71,46 +71,18 @@ void fscrypt_enqueue_decrypt_bio(struct fscrypt_ctx *ctx, struct bio *bio)
 }
 EXPORT_SYMBOL(fscrypt_enqueue_decrypt_bio);
 
-void fscrypt_pullback_bio_page(struct page **page, bool restore)
-{
-	struct fscrypt_ctx *ctx;
-	struct page *bounce_page;
-
-	/* The bounce data pages are unmapped. */
-	if ((*page)->mapping)
-		return;
-
-	/* The bounce data page is unmapped. */
-	bounce_page = *page;
-	ctx = (struct fscrypt_ctx *)page_private(bounce_page);
-
-	/* restore control page */
-	*page = ctx->w.control_page;
-
-	if (restore)
-		fscrypt_restore_control_page(bounce_page);
-}
-EXPORT_SYMBOL(fscrypt_pullback_bio_page);
-
 int fscrypt_zeroout_range(const struct inode *inode, pgoff_t lblk,
 				sector_t pblk, unsigned int len)
 {
-	struct fscrypt_ctx *ctx;
-	struct page *ciphertext_page = NULL;
+	struct page *ciphertext_page;
 	struct bio *bio;
 	int ret, err = 0;
 
 	BUG_ON(inode->i_sb->s_blocksize != PAGE_SIZE);
 
-	ctx = fscrypt_get_ctx(GFP_NOFS);
-	if (IS_ERR(ctx))
-		return PTR_ERR(ctx);
-
-	ciphertext_page = fscrypt_alloc_bounce_page(ctx, GFP_NOWAIT);
-	if (IS_ERR(ciphertext_page)) {
-		err = PTR_ERR(ciphertext_page);
-		goto errout;
-	}
+	ciphertext_page = fscrypt_alloc_bounce_page(GFP_NOWAIT);
+	if (!ciphertext_page)
+		return -ENOMEM;
 
 	while (len--) {
 		err = fscrypt_do_page_crypto(inode, FS_ENCRYPT, lblk,
@@ -148,7 +120,7 @@ int fscrypt_zeroout_range(const struct inode *inode, pgoff_t lblk,
 	}
 	err = 0;
 errout:
-	fscrypt_release_ctx(ctx);
+	fscrypt_free_bounce_page(ciphertext_page);
 	return err;
 }
 EXPORT_SYMBOL(fscrypt_zeroout_range);
diff --git a/fs/crypto/crypto.c b/fs/crypto/crypto.c
index 68e2ca4c4af63..4b076f8daab75 100644
--- a/fs/crypto/crypto.c
+++ b/fs/crypto/crypto.c
@@ -63,18 +63,11 @@ EXPORT_SYMBOL(fscrypt_enqueue_decrypt_work);
  *
  * If the encryption context was allocated from the pre-allocated pool, returns
  * it to that pool. Else, frees it.
- *
- * If there's a bounce page in the context, this frees that.
  */
 void fscrypt_release_ctx(struct fscrypt_ctx *ctx)
 {
 	unsigned long flags;
 
-	if (ctx->flags & FS_CTX_HAS_BOUNCE_BUFFER_FL && ctx->w.bounce_page) {
-		mempool_free(ctx->w.bounce_page, fscrypt_bounce_page_pool);
-		ctx->w.bounce_page = NULL;
-	}
-	ctx->w.control_page = NULL;
 	if (ctx->flags & FS_CTX_REQUIRES_FREE_ENCRYPT_FL) {
 		kmem_cache_free(fscrypt_ctx_cachep, ctx);
 	} else {
@@ -99,14 +92,8 @@ struct fscrypt_ctx *fscrypt_get_ctx(gfp_t gfp_flags)
 	unsigned long flags;
 
 	/*
-	 * We first try getting the ctx from a free list because in
-	 * the common case the ctx will have an allocated and
-	 * initialized crypto tfm, so it's probably a worthwhile
-	 * optimization. For the bounce page, we first try getting it
-	 * from the kernel allocator because that's just about as fast
-	 * as getting it from a list and because a cache of free pages
-	 * should generally be a "last resort" option for a filesystem
-	 * to be able to do its job.
+	 * First try getting a ctx from the free list so that we don't have to
+	 * call into the slab allocator.
 	 */
 	spin_lock_irqsave(&fscrypt_ctx_lock, flags);
 	ctx = list_first_entry_or_null(&fscrypt_free_ctxs,
@@ -122,11 +109,31 @@ struct fscrypt_ctx *fscrypt_get_ctx(gfp_t gfp_flags)
 	} else {
 		ctx->flags &= ~FS_CTX_REQUIRES_FREE_ENCRYPT_FL;
 	}
-	ctx->flags &= ~FS_CTX_HAS_BOUNCE_BUFFER_FL;
 	return ctx;
 }
 EXPORT_SYMBOL(fscrypt_get_ctx);
 
+struct page *fscrypt_alloc_bounce_page(gfp_t gfp_flags)
+{
+	return mempool_alloc(fscrypt_bounce_page_pool, gfp_flags);
+}
+
+/**
+ * fscrypt_free_bounce_page() - free a ciphertext bounce page
+ *
+ * Free a bounce page that was allocated by fscrypt_encrypt_page(), or by
+ * fscrypt_alloc_bounce_page() directly.
+ */
+void fscrypt_free_bounce_page(struct page *bounce_page)
+{
+	if (!bounce_page)
+		return;
+	set_page_private(bounce_page, (unsigned long)NULL);
+	ClearPagePrivate(bounce_page);
+	mempool_free(bounce_page, fscrypt_bounce_page_pool);
+}
+EXPORT_SYMBOL(fscrypt_free_bounce_page);
+
 void fscrypt_generate_iv(union fscrypt_iv *iv, u64 lblk_num,
 			 const struct fscrypt_info *ci)
 {
@@ -185,16 +192,6 @@ int fscrypt_do_page_crypto(const struct inode *inode, fscrypt_direction_t rw,
 	return 0;
 }
 
-struct page *fscrypt_alloc_bounce_page(struct fscrypt_ctx *ctx,
-				       gfp_t gfp_flags)
-{
-	ctx->w.bounce_page = mempool_alloc(fscrypt_bounce_page_pool, gfp_flags);
-	if (ctx->w.bounce_page == NULL)
-		return ERR_PTR(-ENOMEM);
-	ctx->flags |= FS_CTX_HAS_BOUNCE_BUFFER_FL;
-	return ctx->w.bounce_page;
-}
-
 /**
  * fscypt_encrypt_page() - Encrypts a page
  * @inode:     The inode for which the encryption should take place
@@ -209,22 +206,12 @@ struct page *fscrypt_alloc_bounce_page(struct fscrypt_ctx *ctx,
  *             previously written data.
  * @gfp_flags: The gfp flag for memory allocation
  *
- * Encrypts @page using the ctx encryption context. Performs encryption
- * either in-place or into a newly allocated bounce page.
- * Called on the page write path.
- *
- * Bounce page allocation is the default.
- * In this case, the contents of @page are encrypted and stored in an
- * allocated bounce page. @page has to be locked and the caller must call
- * fscrypt_restore_control_page() on the returned ciphertext page to
- * release the bounce buffer and the encryption context.
- *
- * In-place encryption is used by setting the FS_CFLG_OWN_PAGES flag in
- * fscrypt_operations. Here, the input-page is returned with its content
- * encrypted.
+ * Encrypts @page.  If the filesystem set FS_CFLG_OWN_PAGES, then the data is
+ * encrypted in-place and @page is returned.  Else, a bounce page is allocated,
+ * the data is encrypted into the bounce page, and the bounce page is returned.
+ * The caller is responsible for calling fscrypt_free_bounce_page().
  *
- * Return: A page with the encrypted content on success. Else, an
- * error value or NULL.
+ * Return: A page containing the encrypted data on success, else an ERR_PTR()
  */
 struct page *fscrypt_encrypt_page(const struct inode *inode,
 				struct page *page,
@@ -233,7 +220,6 @@ struct page *fscrypt_encrypt_page(const struct inode *inode,
 				u64 lblk_num, gfp_t gfp_flags)
 
 {
-	struct fscrypt_ctx *ctx;
 	struct page *ciphertext_page = page;
 	int err;
 
@@ -252,30 +238,20 @@ struct page *fscrypt_encrypt_page(const struct inode *inode,
 
 	BUG_ON(!PageLocked(page));
 
-	ctx = fscrypt_get_ctx(gfp_flags);
-	if (IS_ERR(ctx))
-		return ERR_CAST(ctx);
-
 	/* The encryption operation will require a bounce page. */
-	ciphertext_page = fscrypt_alloc_bounce_page(ctx, gfp_flags);
-	if (IS_ERR(ciphertext_page))
-		goto errout;
+	ciphertext_page = fscrypt_alloc_bounce_page(gfp_flags);
+	if (!ciphertext_page)
+		return ERR_PTR(-ENOMEM);
 
-	ctx->w.control_page = page;
 	err = fscrypt_do_page_crypto(inode, FS_ENCRYPT, lblk_num,
 				     page, ciphertext_page, len, offs,
 				     gfp_flags);
 	if (err) {
-		ciphertext_page = ERR_PTR(err);
-		goto errout;
+		fscrypt_free_bounce_page(ciphertext_page);
+		return ERR_PTR(err);
 	}
 	SetPagePrivate(ciphertext_page);
-	set_page_private(ciphertext_page, (unsigned long)ctx);
-	lock_page(ciphertext_page);
-	return ciphertext_page;
-
-errout:
-	fscrypt_release_ctx(ctx);
+	set_page_private(ciphertext_page, (unsigned long)page);
 	return ciphertext_page;
 }
 EXPORT_SYMBOL(fscrypt_encrypt_page);
@@ -354,18 +330,6 @@ const struct dentry_operations fscrypt_d_ops = {
 	.d_revalidate = fscrypt_d_revalidate,
 };
 
-void fscrypt_restore_control_page(struct page *page)
-{
-	struct fscrypt_ctx *ctx;
-
-	ctx = (struct fscrypt_ctx *)page_private(page);
-	set_page_private(page, (unsigned long)NULL);
-	ClearPagePrivate(page);
-	unlock_page(page);
-	fscrypt_release_ctx(ctx);
-}
-EXPORT_SYMBOL(fscrypt_restore_control_page);
-
 static void fscrypt_destroy(void)
 {
 	struct fscrypt_ctx *pos, *n;
diff --git a/fs/crypto/fscrypt_private.h b/fs/crypto/fscrypt_private.h
index 7da2761595933..a5a5486979ff7 100644
--- a/fs/crypto/fscrypt_private.h
+++ b/fs/crypto/fscrypt_private.h
@@ -123,8 +123,7 @@ extern int fscrypt_do_page_crypto(const struct inode *inode,
 				  struct page *dest_page,
 				  unsigned int len, unsigned int offs,
 				  gfp_t gfp_flags);
-extern struct page *fscrypt_alloc_bounce_page(struct fscrypt_ctx *ctx,
-					      gfp_t gfp_flags);
+extern struct page *fscrypt_alloc_bounce_page(gfp_t gfp_flags);
 extern const struct dentry_operations fscrypt_d_ops;
 
 extern void __printf(3, 4) __cold
diff --git a/fs/ext4/page-io.c b/fs/ext4/page-io.c
index 3e9298e6a705a..b86082d653208 100644
--- a/fs/ext4/page-io.c
+++ b/fs/ext4/page-io.c
@@ -67,9 +67,7 @@ static void ext4_finish_bio(struct bio *bio)
 
 	bio_for_each_segment_all(bvec, bio, i, iter_all) {
 		struct page *page = bvec->bv_page;
-#ifdef CONFIG_FS_ENCRYPTION
-		struct page *data_page = NULL;
-#endif
+		struct page *bounce_page = NULL;
 		struct buffer_head *bh, *head;
 		unsigned bio_start = bvec->bv_offset;
 		unsigned bio_end = bio_start + bvec->bv_len;
@@ -79,13 +77,10 @@ static void ext4_finish_bio(struct bio *bio)
 		if (!page)
 			continue;
 
-#ifdef CONFIG_FS_ENCRYPTION
-		if (!page->mapping) {
-			/* The bounce data pages are unmapped. */
-			data_page = page;
-			fscrypt_pullback_bio_page(&page, false);
+		if (fscrypt_is_bounce_page(page)) {
+			bounce_page = page;
+			page = fscrypt_pagecache_page(bounce_page);
 		}
-#endif
 
 		if (bio->bi_status) {
 			SetPageError(page);
@@ -112,10 +107,7 @@ static void ext4_finish_bio(struct bio *bio)
 		bit_spin_unlock(BH_Uptodate_Lock, &head->b_state);
 		local_irq_restore(flags);
 		if (!under_io) {
-#ifdef CONFIG_FS_ENCRYPTION
-			if (data_page)
-				fscrypt_restore_control_page(data_page);
-#endif
+			fscrypt_free_bounce_page(bounce_page);
 			end_page_writeback(page);
 		}
 	}
@@ -416,7 +408,7 @@ int ext4_bio_write_page(struct ext4_io_submit *io,
 			struct writeback_control *wbc,
 			bool keep_towrite)
 {
-	struct page *data_page = NULL;
+	struct page *bounce_page = NULL;
 	struct inode *inode = page->mapping->host;
 	unsigned block_start;
 	struct buffer_head *bh, *head;
@@ -480,10 +472,10 @@ int ext4_bio_write_page(struct ext4_io_submit *io,
 		gfp_t gfp_flags = GFP_NOFS;
 
 	retry_encrypt:
-		data_page = fscrypt_encrypt_page(inode, page, PAGE_SIZE, 0,
-						page->index, gfp_flags);
-		if (IS_ERR(data_page)) {
-			ret = PTR_ERR(data_page);
+		bounce_page = fscrypt_encrypt_page(inode, page, PAGE_SIZE, 0,
+						   page->index, gfp_flags);
+		if (IS_ERR(bounce_page)) {
+			ret = PTR_ERR(bounce_page);
 			if (ret == -ENOMEM && wbc->sync_mode == WB_SYNC_ALL) {
 				if (io->io_bio) {
 					ext4_io_submit(io);
@@ -492,7 +484,7 @@ int ext4_bio_write_page(struct ext4_io_submit *io,
 				gfp_flags |= __GFP_NOFAIL;
 				goto retry_encrypt;
 			}
-			data_page = NULL;
+			bounce_page = NULL;
 			goto out;
 		}
 	}
@@ -501,8 +493,7 @@ int ext4_bio_write_page(struct ext4_io_submit *io,
 	do {
 		if (!buffer_async_write(bh))
 			continue;
-		ret = io_submit_add_bh(io, inode,
-				       data_page ? data_page : page, bh);
+		ret = io_submit_add_bh(io, inode, bounce_page ?: page, bh);
 		if (ret) {
 			/*
 			 * We only get here on ENOMEM.  Not much else
@@ -518,8 +509,7 @@ int ext4_bio_write_page(struct ext4_io_submit *io,
 	/* Error stopped previous loop? Clean up buffers... */
 	if (ret) {
 	out:
-		if (data_page)
-			fscrypt_restore_control_page(data_page);
+		fscrypt_free_bounce_page(bounce_page);
 		printk_ratelimited(KERN_ERR "%s: ret = %d\n", __func__, ret);
 		redirty_page_for_writepage(wbc, page);
 		do {
diff --git a/fs/f2fs/data.c b/fs/f2fs/data.c
index 9727944139f21..7e2e3f36c7706 100644
--- a/fs/f2fs/data.c
+++ b/fs/f2fs/data.c
@@ -187,7 +187,7 @@ static void f2fs_write_end_io(struct bio *bio)
 			continue;
 		}
 
-		fscrypt_pullback_bio_page(&page, true);
+		fscrypt_finalize_bounce_page(&page);
 
 		if (unlikely(bio->bi_status)) {
 			mapping_set_error(page->mapping, -EIO);
@@ -360,10 +360,9 @@ static bool __has_merged_page(struct f2fs_bio_info *io, struct inode *inode,
 
 	bio_for_each_segment_all(bvec, io->bio, i, iter_all) {
 
-		if (bvec->bv_page->mapping)
-			target = bvec->bv_page;
-		else
-			target = fscrypt_control_page(bvec->bv_page);
+		target = bvec->bv_page;
+		if (fscrypt_is_bounce_page(target))
+			target = fscrypt_pagecache_page(target);
 
 		if (inode && inode == target->mapping->host)
 			return true;
@@ -1865,8 +1864,7 @@ int f2fs_do_write_data_page(struct f2fs_io_info *fio)
 		err = f2fs_inplace_write_data(fio);
 		if (err) {
 			if (f2fs_encrypted_file(inode))
-				fscrypt_pullback_bio_page(&fio->encrypted_page,
-									true);
+				fscrypt_finalize_bounce_page(&fio->encrypted_page);
 			if (PageWriteback(page))
 				end_page_writeback(page);
 		}
diff --git a/include/linux/fscrypt.h b/include/linux/fscrypt.h
index 28c74e0a72310..77837e72e4add 100644
--- a/include/linux/fscrypt.h
+++ b/include/linux/fscrypt.h
@@ -112,12 +112,17 @@ extern struct page *fscrypt_encrypt_page(const struct inode *, struct page *,
 extern int fscrypt_decrypt_page(const struct inode *, struct page *, unsigned int,
 				unsigned int, u64);
 
-static inline struct page *fscrypt_control_page(struct page *page)
+static inline bool fscrypt_is_bounce_page(struct page *page)
 {
-	return ((struct fscrypt_ctx *)page_private(page))->w.control_page;
+	return page->mapping == NULL;
 }
 
-extern void fscrypt_restore_control_page(struct page *);
+static inline struct page *fscrypt_pagecache_page(struct page *bounce_page)
+{
+	return (struct page *)page_private(bounce_page);
+}
+
+extern void fscrypt_free_bounce_page(struct page *bounce_page);
 
 /* policy.c */
 extern int fscrypt_ioctl_set_policy(struct file *, const void __user *);
@@ -223,7 +228,6 @@ static inline bool fscrypt_match_name(const struct fscrypt_name *fname,
 extern void fscrypt_decrypt_bio(struct bio *);
 extern void fscrypt_enqueue_decrypt_bio(struct fscrypt_ctx *ctx,
 					struct bio *bio);
-extern void fscrypt_pullback_bio_page(struct page **, bool);
 extern int fscrypt_zeroout_range(const struct inode *, pgoff_t, sector_t,
 				 unsigned int);
 
@@ -295,15 +299,19 @@ static inline int fscrypt_decrypt_page(const struct inode *inode,
 	return -EOPNOTSUPP;
 }
 
-static inline struct page *fscrypt_control_page(struct page *page)
+static inline bool fscrypt_is_bounce_page(struct page *page)
+{
+	return false;
+}
+
+static inline struct page *fscrypt_pagecache_page(struct page *bounce_page)
 {
 	WARN_ON_ONCE(1);
 	return ERR_PTR(-EINVAL);
 }
 
-static inline void fscrypt_restore_control_page(struct page *page)
+static inline void fscrypt_free_bounce_page(struct page *bounce_page)
 {
-	return;
 }
 
 /* policy.c */
@@ -405,11 +413,6 @@ static inline void fscrypt_enqueue_decrypt_bio(struct fscrypt_ctx *ctx,
 {
 }
 
-static inline void fscrypt_pullback_bio_page(struct page **page, bool restore)
-{
-	return;
-}
-
 static inline int fscrypt_zeroout_range(const struct inode *inode, pgoff_t lblk,
 					sector_t pblk, unsigned int len)
 {
@@ -681,4 +684,15 @@ static inline int fscrypt_encrypt_symlink(struct inode *inode,
 	return 0;
 }
 
+/* If *pagep is a bounce page, free it and set *pagep to the pagecache page */
+static inline void fscrypt_finalize_bounce_page(struct page **pagep)
+{
+	struct page *page = *pagep;
+
+	if (fscrypt_is_bounce_page(page)) {
+		*pagep = fscrypt_pagecache_page(page);
+		fscrypt_free_bounce_page(page);
+	}
+}
+
 #endif	/* _LINUX_FSCRYPT_H */
-- 
2.21.0.593.g511ec345e18-goog


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
