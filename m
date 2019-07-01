Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D60110F45
	for <lists+linux-mtd@lfdr.de>; Thu,  2 May 2019 00:46:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OjL0Z3TOQ9btCrF0n3hcA+Z81cV0de8LVb3+zjL8vGI=; b=miCv+wIAmh6srr
	+ND/8a9mnlIAOt7BtkyyDaap3x0Z7/CcVdnQr3gDxbp7q4m/zG6jS59NqRpBbR1W1k8kAUPzaKN7D
	TRhI8Agb29ObgbprdLegRcZFsJNVYxmsFx5712Qre7+DZHbS1cwKnK6DnwMxsVE1ORwQJEp5Z9cpG
	I4zvpKa6jaUL+w3MwheKgNen8NzZB0/rT4+s7iESSbmyQfyiJU1QBeB/nId1f/7pak+dSglC/w/DJ
	ppMQaTOtB9G8N3ZlIptGQvY6aQW4vMU+vjTfs5a6Lh3GCJd6/k1zJCPDyV3FZ+howtFQBJdnT+oLH
	HmhTzOs4EEKd7otAGo0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLxze-0006Ji-Kg; Wed, 01 May 2019 22:46:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLxzJ-00065G-Sf
 for linux-mtd@lists.infradead.org; Wed, 01 May 2019 22:46:07 +0000
Received: from ebiggers-linuxstation.mtv.corp.google.com (unknown
 [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DA3792075E;
 Wed,  1 May 2019 22:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556750765;
 bh=oGYtn9WG6er+4eiwYl5cJh2irdpTYgDLIblN4GE18gE=;
 h=From:To:Cc:Subject:Date:From;
 b=fY4qq9BAopEMgbyNEunjj+aef9mfWckZY+TJ4tM2F9Yms7jKNXtspSCI4MTU8zXaG
 b7538Lqq4jiQWV0QrHpbaVi5BTg05KPbB0pix79PFbPT1Ve17AUnOmS6V4Qt4lmAqB
 G2UwnTy2ET1YrFL8yY0aMeRi7tzVGJLjHvgWyWxA=
From: Eric Biggers <ebiggers@kernel.org>
To: linux-fscrypt@vger.kernel.org
Subject: [PATCH 00/13] fscrypt, ext4: prepare for blocksize != PAGE_SIZE
Date: Wed,  1 May 2019 15:45:02 -0700
Message-Id: <20190501224515.43059-1-ebiggers@kernel.org>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_154605_947485_061043A4 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
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

Hello,

This patch series prepares fs/crypto/, and partially ext4, for the
'blocksize != PAGE_SIZE' case.

This basically contains the encryption changes from Chandan Rajendra's
patch series "[V2,00/13] Consolidate FS read I/O callbacks code"
(https://patchwork.kernel.org/project/linux-fscrypt/list/?series=111039)
that don't require introducing the read_callbacks and don't depend on
fsverity stuff.  But they've been reworked to clean things up a lot.

I propose that to move things forward for ext4 encryption with
'blocksize != PAGE_SIZE', we apply this series (or something similar) to
the fscrypt tree for 5.3 on its own merits.  Then the read_callbacks
series on top of it will much smaller and easier to review.

AFAIK, after this series the only thing stopping ext4 encryption from
working with blocksize != PAGE_SIZE is the lack of encryption support in
block_read_full_page(), which the read_callbacks will address.

This series applies to the fscrypt tree, and it can also be retrieved
from git at https://git.kernel.org/pub/scm/linux/kernel/git/ebiggers/linux.git
branch "fscrypt-subpage-blocks-prep".

Chandan Rajendra (3):
  ext4: clear BH_Uptodate flag on decryption error
  ext4: decrypt only the needed blocks in ext4_block_write_begin()
  ext4: decrypt only the needed block in __ext4_block_zero_page_range()

Eric Biggers (10):
  fscrypt: simplify bounce page handling
  fscrypt: remove the "write" part of struct fscrypt_ctx
  fscrypt: rename fscrypt_do_page_crypto() to fscrypt_crypt_block()
  fscrypt: clean up some BUG_ON()s in block encryption/decryption
  fscrypt: introduce fscrypt_encrypt_block_inplace()
  fscrypt: support encrypting multiple filesystem blocks per page
  fscrypt: handle blocksize < PAGE_SIZE in fscrypt_zeroout_range()
  fscrypt: introduce fscrypt_decrypt_block_inplace()
  fscrypt: support decrypting multiple filesystem blocks per page
  ext4: encrypt only up to last block in ext4_bio_write_page()

 fs/crypto/bio.c             |  73 +++------
 fs/crypto/crypto.c          | 299 ++++++++++++++++++++----------------
 fs/crypto/fscrypt_private.h |  14 +-
 fs/ext4/inode.c             |  35 +++--
 fs/ext4/page-io.c           |  44 +++---
 fs/f2fs/data.c              |  17 +-
 fs/ubifs/crypto.c           |  19 +--
 include/linux/fscrypt.h     |  96 ++++++++----
 8 files changed, 319 insertions(+), 278 deletions(-)

-- 
2.21.0.593.g511ec345e18-goog


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
