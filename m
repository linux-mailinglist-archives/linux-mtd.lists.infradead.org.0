Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E77FB2E673
	for <lists+linux-mtd@lfdr.de>; Wed, 29 May 2019 22:48:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cd0zpwqQx8vZuSMYZJS0+P8J6xq4f7ecbR/ZidGp5b4=; b=YAsGnS0um4BkIG
	ovSnqOLd2CtXS4qA8xqjVDjdwShnu7yJu1jbifo9jSxuQplFyLsxRDPQ/MVJJ+nXc4kvtcyqTWZMT
	httSFW666CBi+RsgXCnu1U+7/Rs0jDZtqkZTsps7QB9q7tT4A9AyDtHUHPgTiGNigybHCbtaT+2Xx
	aI1bKnC05MCSgctcW6xOARokKvBefgHKGdtgEtxhvZP1Xh3Y1XY0vOXO1aHvkzS57l6CLnmM6N64A
	l10FI3FTe5eptf/pHGzEN4AcdjezBJOKcLF5mPQLYqkRI2kqQ8yZ5xkxPpObnvcHRdP42csfGn93K
	obyqZ9y3DXChYskfOvKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW5UW-00046x-MT; Wed, 29 May 2019 20:48:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW5UM-00046A-GL
 for linux-mtd@lists.infradead.org; Wed, 29 May 2019 20:48:00 +0000
Received: from gmail.com (unknown [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4B60E2419D;
 Wed, 29 May 2019 20:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559162876;
 bh=/h0YRele2HgHkOZgeVioQRed572yyLTKQ40p6fvDYw8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Lb1DvaJJHbk0WgcihUPP6WKeOKiLCST6LBMU309vMD6yXyT/o/4JTHPxrFxkTU9EO
 NSM/ONxEZ81Yu4WnG7Vh6YfH08T4wiXKKCHwNySkJGtxqZE5k4Ys/uctQ+Tlzg3Jug
 K6XB6SwDdiK2V2HU79sMV/UvG7D8wgagV6puSOcg=
Date: Wed, 29 May 2019 13:47:54 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: linux-fscrypt@vger.kernel.org
Subject: Re: [PATCH v2 00/14] fscrypt, ext4: prepare for blocksize != PAGE_SIZE
Message-ID: <20190529204753.GB141639@gmail.com>
References: <20190520162952.156212-1-ebiggers@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520162952.156212-1-ebiggers@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_134758_572886_BB48E82D 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.8 FSL_HELO_FAKE          No description available.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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

On Mon, May 20, 2019 at 09:29:38AM -0700, Eric Biggers wrote:
> Hello,
> 
> This patchset prepares fs/crypto/, and partially ext4, for the
> 'blocksize != PAGE_SIZE' case.
> 
> This basically contains the encryption changes from Chandan Rajendra's
> patchset "[V2,00/13] Consolidate FS read I/O callbacks code"
> (https://patchwork.kernel.org/project/linux-fscrypt/list/?series=111039)
> that don't require introducing the read_callbacks and don't depend on
> fsverity stuff.  But they've been reworked to clean things up a lot.
> 
> I'd like to apply this patchset for 5.3 in order to make things forward
> for ext4 encryption with 'blocksize != PAGE_SIZE'.
> 
> AFAICT, after this patchset the only thing stopping ext4 encryption from
> working with blocksize != PAGE_SIZE is the lack of encryption support in
> block_read_full_page(), which the read_callbacks will address.
> 
> This patchset applies to v5.2-rc1, and it can also be retrieved from git
> at https://git.kernel.org/pub/scm/linux/kernel/git/ebiggers/linux.git
> branch "fscrypt-subpage-blocks-prep".
> 
> Changed since v1 (minor cleanups only):
> 
> - In "fscrypt: simplify bounce page handling", also remove
>   the definition of FS_CTX_HAS_BOUNCE_BUFFER_FL.
> 
> - In "ext4: decrypt only the needed blocks in ext4_block_write_begin()",
>   simplify the code slightly by moving the IS_ENCRYPTED() check.
> 
> - Change __fscrypt_decrypt_bio() in a separate patch rather than as part
>   of "fscrypt: support decrypting multiple filesystem blocks per page".
>   The resulting code is the same, so I kept Chandan's Reviewed-by.
> 
> - Improve the commit message of
>   "fscrypt: introduce fscrypt_decrypt_block_inplace()".
> 
> Chandan Rajendra (3):
>   ext4: clear BH_Uptodate flag on decryption error
>   ext4: decrypt only the needed blocks in ext4_block_write_begin()
>   ext4: decrypt only the needed block in __ext4_block_zero_page_range()
> 
> Eric Biggers (11):
>   fscrypt: simplify bounce page handling
>   fscrypt: remove the "write" part of struct fscrypt_ctx
>   fscrypt: rename fscrypt_do_page_crypto() to fscrypt_crypt_block()
>   fscrypt: clean up some BUG_ON()s in block encryption/decryption
>   fscrypt: introduce fscrypt_encrypt_block_inplace()
>   fscrypt: support encrypting multiple filesystem blocks per page
>   fscrypt: handle blocksize < PAGE_SIZE in fscrypt_zeroout_range()
>   fscrypt: introduce fscrypt_decrypt_block_inplace()
>   fscrypt: support decrypting multiple filesystem blocks per page
>   fscrypt: decrypt only the needed blocks in __fscrypt_decrypt_bio()
>   ext4: encrypt only up to last block in ext4_bio_write_page()
> 
>  fs/crypto/bio.c             |  73 +++------
>  fs/crypto/crypto.c          | 299 ++++++++++++++++++++----------------
>  fs/crypto/fscrypt_private.h |  15 +-
>  fs/ext4/inode.c             |  37 +++--
>  fs/ext4/page-io.c           |  44 +++---
>  fs/f2fs/data.c              |  17 +-
>  fs/ubifs/crypto.c           |  19 +--
>  include/linux/fscrypt.h     |  96 ++++++++----
>  8 files changed, 319 insertions(+), 281 deletions(-)
> 

I've applied this series to fscrypt.git for 5.3.

- Eric

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
