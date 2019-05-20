Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92FCB23D83
	for <lists+linux-mtd@lfdr.de>; Mon, 20 May 2019 18:31:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T1+ihclsYVlAl2pFAxISu2t+1HjTcgysP6IkYogSs9w=; b=okaUiRwPt0v0fR
	3SMrC5AowLwXGDzdJ3HUhLc9i4x54YCT+B/osUp7VGZMoghmlNHyL33ZChnH7QVzqyN0Fp77Ndx06
	7ofdx1cOLer32GA4XZEYWZLP7FDREbyo3tVTfBwITbU92Vh94CuL95tSN+LmLreu8Y7qF7h2yyC42
	Pj8ProQWVZ+hyaiSAMXSFrvuiu0y/7P1P7zKDr1CRFtox+XMb6DUfWx4M9Xc8bbtUViX9vjJ8MAZi
	qo0b+DBKwu2KV4HmqQIr+8s7dDr/AHeA3Z+wUNA9kQ+Yw12csA8tbfrobQv5Xz0DoZRaK/2hIaPGc
	DekLbFgeGY9cec5HFFdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSlCa-0004uA-EL; Mon, 20 May 2019 16:31:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSlBA-00035Y-3w
 for linux-mtd@lists.infradead.org; Mon, 20 May 2019 16:30:27 +0000
Received: from ebiggers-linuxstation.mtv.corp.google.com (unknown
 [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 23BF321743;
 Mon, 20 May 2019 16:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558369823;
 bh=FsQP/22WhDGSwV7eheG5LJxh8F1YOJFtBPeRIUtSKqs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1tTDTdCtFZWdMRppc12iWNivhCMli9AU6LE+jjt9uvdwTVFxa3KFrDikvO9dVkK3I
 U9zhYEYzW2vlWVUf/yTtQHCopNynk0H8CFyKpXGCmZzwblSxW/mZ660sNSuNYeyYBk
 CD6jBTj/f12yOD05IfYRdNc4yZUMaXnVj5CGCoTw=
From: Eric Biggers <ebiggers@kernel.org>
To: linux-fscrypt@vger.kernel.org
Subject: [PATCH v2 07/14] fscrypt: handle blocksize < PAGE_SIZE in
 fscrypt_zeroout_range()
Date: Mon, 20 May 2019 09:29:45 -0700
Message-Id: <20190520162952.156212-8-ebiggers@kernel.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190520162952.156212-1-ebiggers@kernel.org>
References: <20190520162952.156212-1-ebiggers@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_093024_227146_A87833A4 
X-CRM114-Status: GOOD (  12.29  )
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

Adjust fscrypt_zeroout_range() to encrypt a block at a time rather than
a page at a time, so that it works when blocksize < PAGE_SIZE.

This isn't optimized for performance, but then again this function
already wasn't optimized for performance.  As a future optimization, we
could submit much larger bios here.

This is in preparation for allowing encryption on ext4 filesystems with
blocksize != PAGE_SIZE.

This is based on work by Chandan Rajendra.

Reviewed-by: Chandan Rajendra <chandan@linux.ibm.com>
Signed-off-by: Eric Biggers <ebiggers@google.com>
---
 fs/crypto/bio.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/fs/crypto/bio.c b/fs/crypto/bio.c
index 92b2d5da5d8e1..f9111ffa12ffd 100644
--- a/fs/crypto/bio.c
+++ b/fs/crypto/bio.c
@@ -72,12 +72,12 @@ EXPORT_SYMBOL(fscrypt_enqueue_decrypt_bio);
 int fscrypt_zeroout_range(const struct inode *inode, pgoff_t lblk,
 				sector_t pblk, unsigned int len)
 {
+	const unsigned int blockbits = inode->i_blkbits;
+	const unsigned int blocksize = 1 << blockbits;
 	struct page *ciphertext_page;
 	struct bio *bio;
 	int ret, err = 0;
 
-	BUG_ON(inode->i_sb->s_blocksize != PAGE_SIZE);
-
 	ciphertext_page = fscrypt_alloc_bounce_page(GFP_NOWAIT);
 	if (!ciphertext_page)
 		return -ENOMEM;
@@ -85,7 +85,7 @@ int fscrypt_zeroout_range(const struct inode *inode, pgoff_t lblk,
 	while (len--) {
 		err = fscrypt_crypt_block(inode, FS_ENCRYPT, lblk,
 					  ZERO_PAGE(0), ciphertext_page,
-					  PAGE_SIZE, 0, GFP_NOFS);
+					  blocksize, 0, GFP_NOFS);
 		if (err)
 			goto errout;
 
@@ -95,14 +95,11 @@ int fscrypt_zeroout_range(const struct inode *inode, pgoff_t lblk,
 			goto errout;
 		}
 		bio_set_dev(bio, inode->i_sb->s_bdev);
-		bio->bi_iter.bi_sector =
-			pblk << (inode->i_sb->s_blocksize_bits - 9);
+		bio->bi_iter.bi_sector = pblk << (blockbits - 9);
 		bio_set_op_attrs(bio, REQ_OP_WRITE, 0);
-		ret = bio_add_page(bio, ciphertext_page,
-					inode->i_sb->s_blocksize, 0);
-		if (ret != inode->i_sb->s_blocksize) {
+		ret = bio_add_page(bio, ciphertext_page, blocksize, 0);
+		if (WARN_ON(ret != blocksize)) {
 			/* should never happen! */
-			WARN_ON(1);
 			bio_put(bio);
 			err = -EIO;
 			goto errout;
-- 
2.21.0.1020.gf2820cf01a-goog


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
