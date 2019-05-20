Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA21223D73
	for <lists+linux-mtd@lfdr.de>; Mon, 20 May 2019 18:30:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l/Ecu6WgEqOfRA3NinyuxxU3hzkuf39wplzMVSAN9h8=; b=eoWlohvihc4pt1
	2yp9FUa+H6toPy/7HzqTStjC//7S8ONEjMM4F2RtILNlvyQCVJsICT68Pd7GIYDad+5NynPYa/v7Y
	uJvycvOBU/Od2w83jHHPfH/QlrvPzFJKTg+XnBVXCY5wHRZjqqtSdxSm5IYLpDOEmvGGfJoVNr9fC
	J7Om/4DvUYuHakmExJfooAGuZC72NlqxdvngplKR6Iewpa0WevKTASWHl8q0IuEpPcKZHihEyBJoA
	xr/e6cN0bw33v3X5htLWV2Fp29ssh7Azo/zwc58GB/RKYZT1eAejcrYd/jmwiWuQak2ReGIJwwUjV
	5G5+O+cuxi23yKfM7u+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSlBI-00036J-2q; Mon, 20 May 2019 16:30:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSlB7-00033h-Lx
 for linux-mtd@lists.infradead.org; Mon, 20 May 2019 16:30:23 +0000
Received: from ebiggers-linuxstation.mtv.corp.google.com (unknown
 [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C0C1620815;
 Mon, 20 May 2019 16:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558369821;
 bh=qgPdUJE/0daEUKkRjmiTlZG0dOGdMLxQxjTzXSw4Rv0=;
 h=From:To:Cc:Subject:Date:From;
 b=O2IH3/wClCcNtvPWFoheNIncMp0iBWfW5iJnR9rn/U9EpHAQ4yYvG79uvBTdU2mdy
 q/0lti2ZK9imVN7kY95KpTwbcixNKBcWoxdHh42Irdd7nmogh191csqMvoScQhkhIQ
 qdNLPAoXphJvOpr/ts88DJe7IQNk+40IxVhYw594=
From: Eric Biggers <ebiggers@kernel.org>
To: linux-fscrypt@vger.kernel.org
Subject: [PATCH v2 00/14] fscrypt, ext4: prepare for blocksize != PAGE_SIZE
Date: Mon, 20 May 2019 09:29:38 -0700
Message-Id: <20190520162952.156212-1-ebiggers@kernel.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_093021_754984_5110CABD 
X-CRM114-Status: GOOD (  10.10  )
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

Hello,

This patchset prepares fs/crypto/, and partially ext4, for the
'blocksize != PAGE_SIZE' case.

This basically contains the encryption changes from Chandan Rajendra's
patchset "[V2,00/13] Consolidate FS read I/O callbacks code"
(https://patchwork.kernel.org/project/linux-fscrypt/list/?series=111039)
that don't require introducing the read_callbacks and don't depend on
fsverity stuff.  But they've been reworked to clean things up a lot.

I'd like to apply this patchset for 5.3 in order to make things forward
for ext4 encryption with 'blocksize != PAGE_SIZE'.

AFAICT, after this patchset the only thing stopping ext4 encryption from
working with blocksize != PAGE_SIZE is the lack of encryption support in
block_read_full_page(), which the read_callbacks will address.

This patchset applies to v5.2-rc1, and it can also be retrieved from git
at https://git.kernel.org/pub/scm/linux/kernel/git/ebiggers/linux.git
branch "fscrypt-subpage-blocks-prep".

Changed since v1 (minor cleanups only):

- In "fscrypt: simplify bounce page handling", also remove
  the definition of FS_CTX_HAS_BOUNCE_BUFFER_FL.

- In "ext4: decrypt only the needed blocks in ext4_block_write_begin()",
  simplify the code slightly by moving the IS_ENCRYPTED() check.

- Change __fscrypt_decrypt_bio() in a separate patch rather than as part
  of "fscrypt: support decrypting multiple filesystem blocks per page".
  The resulting code is the same, so I kept Chandan's Reviewed-by.

- Improve the commit message of
  "fscrypt: introduce fscrypt_decrypt_block_inplace()".

Chandan Rajendra (3):
  ext4: clear BH_Uptodate flag on decryption error
  ext4: decrypt only the needed blocks in ext4_block_write_begin()
  ext4: decrypt only the needed block in __ext4_block_zero_page_range()

Eric Biggers (11):
  fscrypt: simplify bounce page handling
  fscrypt: remove the "write" part of struct fscrypt_ctx
  fscrypt: rename fscrypt_do_page_crypto() to fscrypt_crypt_block()
  fscrypt: clean up some BUG_ON()s in block encryption/decryption
  fscrypt: introduce fscrypt_encrypt_block_inplace()
  fscrypt: support encrypting multiple filesystem blocks per page
  fscrypt: handle blocksize < PAGE_SIZE in fscrypt_zeroout_range()
  fscrypt: introduce fscrypt_decrypt_block_inplace()
  fscrypt: support decrypting multiple filesystem blocks per page
  fscrypt: decrypt only the needed blocks in __fscrypt_decrypt_bio()
  ext4: encrypt only up to last block in ext4_bio_write_page()

 fs/crypto/bio.c             |  73 +++------
 fs/crypto/crypto.c          | 299 ++++++++++++++++++++----------------
 fs/crypto/fscrypt_private.h |  15 +-
 fs/ext4/inode.c             |  37 +++--
 fs/ext4/page-io.c           |  44 +++---
 fs/f2fs/data.c              |  17 +-
 fs/ubifs/crypto.c           |  19 +--
 include/linux/fscrypt.h     |  96 ++++++++----
 8 files changed, 319 insertions(+), 281 deletions(-)

-- 
2.21.0.1020.gf2820cf01a-goog


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
