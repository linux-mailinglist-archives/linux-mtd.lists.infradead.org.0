Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6076F23D89
	for <lists+linux-mtd@lfdr.de>; Mon, 20 May 2019 18:32:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yZOhudpQTqcgK+1+EhuiVOkcp3CfJSrLVgDIeK+vcPA=; b=ooFUpq0GRB1rEs
	E1godU0bbkyw+1xIrqwjDfDwJDchwolM7cmflXE4hb1RowDT5/tZlSXcVpIaDmOlQDd2WJEWxxcDZ
	QPUSETMLrGd5cykpA2uAUbsLHZx3Q69vAIElf64LxMyS+juhNeNVURFAIYA0io94JEyyDVmInNiAb
	LjSLG9MChYI6ANooMsc6V85Jos3Tj3eEOWY8yR2CjXSi+SoMHyJlZEBmvQPByt/XazS6lopbb0SiC
	pKof0o4nH/rQtr/nuw6s/7CGrgponxTpHHeUHc9I1h7DN7aFDRxpnt/xAHp5R3FV0jFsa+C1POtnj
	XL87wBaP1eXKakONhrmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSlDW-0006QY-FO; Mon, 20 May 2019 16:32:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSlBB-00037d-9V
 for linux-mtd@lists.infradead.org; Mon, 20 May 2019 16:30:33 +0000
Received: from ebiggers-linuxstation.mtv.corp.google.com (unknown
 [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C8212217D4;
 Mon, 20 May 2019 16:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558369825;
 bh=jzDa4sIscNqlfHv7tNu4xnhMMMwK6J7mZB9Z89E3MiY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ob/JPjcP7714BGREu627MvS2LQxzV4JLdnXXWnMnDH1YTlzvo+9t2j3I8S0VudDhS
 92QsFC9y2jHVMwi4utg/5SWjCEOHa1YtdAC7FNlADEUtX7+2Dy4fSi2Eh4HmQr2LUQ
 Yja0pYrVp6mCFfIxfZ6/DnkEoG3ukGh4lW90ADZk=
From: Eric Biggers <ebiggers@kernel.org>
To: linux-fscrypt@vger.kernel.org
Subject: [PATCH v2 12/14] ext4: decrypt only the needed blocks in
 ext4_block_write_begin()
Date: Mon, 20 May 2019 09:29:50 -0700
Message-Id: <20190520162952.156212-13-ebiggers@kernel.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190520162952.156212-1-ebiggers@kernel.org>
References: <20190520162952.156212-1-ebiggers@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_093025_674854_C7CBAB78 
X-CRM114-Status: GOOD (  14.91  )
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

From: Chandan Rajendra <chandan@linux.ibm.com>

In ext4_block_write_begin(), only decrypt the blocks that actually need
to be decrypted (up to two blocks which intersect the boundaries of the
region that will be written to), rather than assuming blocksize ==
PAGE_SIZE and decrypting the whole page.

This is in preparation for allowing encryption on ext4 filesystems with
blocksize != PAGE_SIZE.

Signed-off-by: Chandan Rajendra <chandan@linux.ibm.com>
(EB: rebase onto previous changes, improve the commit message,
 and move the check for encrypted inode)
Signed-off-by: Eric Biggers <ebiggers@google.com>
---
 fs/ext4/inode.c | 29 ++++++++++++++++++-----------
 1 file changed, 18 insertions(+), 11 deletions(-)

diff --git a/fs/ext4/inode.c b/fs/ext4/inode.c
index 0e6536a22a465..8b3ea9c8ac988 100644
--- a/fs/ext4/inode.c
+++ b/fs/ext4/inode.c
@@ -1164,8 +1164,9 @@ static int ext4_block_write_begin(struct page *page, loff_t pos, unsigned len,
 	int err = 0;
 	unsigned blocksize = inode->i_sb->s_blocksize;
 	unsigned bbits;
-	struct buffer_head *bh, *head, *wait[2], **wait_bh = wait;
-	bool decrypt = false;
+	struct buffer_head *bh, *head, *wait[2];
+	int nr_wait = 0;
+	int i;
 
 	BUG_ON(!PageLocked(page));
 	BUG_ON(from > PAGE_SIZE);
@@ -1217,24 +1218,30 @@ static int ext4_block_write_begin(struct page *page, loff_t pos, unsigned len,
 		    !buffer_unwritten(bh) &&
 		    (block_start < from || block_end > to)) {
 			ll_rw_block(REQ_OP_READ, 0, 1, &bh);
-			*wait_bh++ = bh;
-			decrypt = IS_ENCRYPTED(inode) && S_ISREG(inode->i_mode);
+			wait[nr_wait++] = bh;
 		}
 	}
 	/*
 	 * If we issued read requests, let them complete.
 	 */
-	while (wait_bh > wait) {
-		wait_on_buffer(*--wait_bh);
-		if (!buffer_uptodate(*wait_bh))
+	for (i = 0; i < nr_wait; i++) {
+		wait_on_buffer(wait[i]);
+		if (!buffer_uptodate(wait[i]))
 			err = -EIO;
 	}
 	if (unlikely(err)) {
 		page_zero_new_buffers(page, from, to);
-	} else if (decrypt) {
-		err = fscrypt_decrypt_pagecache_blocks(page, PAGE_SIZE, 0);
-		if (err)
-			clear_buffer_uptodate(*wait_bh);
+	} else if (IS_ENCRYPTED(inode) && S_ISREG(inode->i_mode)) {
+		for (i = 0; i < nr_wait; i++) {
+			int err2;
+
+			err2 = fscrypt_decrypt_pagecache_blocks(page, blocksize,
+								bh_offset(wait[i]));
+			if (err2) {
+				clear_buffer_uptodate(wait[i]);
+				err = err2;
+			}
+		}
 	}
 
 	return err;
-- 
2.21.0.1020.gf2820cf01a-goog


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
