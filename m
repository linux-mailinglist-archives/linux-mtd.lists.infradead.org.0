Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF04F12FB0C
	for <lists+linux-mtd@lfdr.de>; Fri,  3 Jan 2020 18:01:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1rCmn5C1N6xvjok+pja2ef4U021ck2jiiNEcpm8Ai8=; b=S77ojwNe67WH5F
	6QcKgMuJYKRqSz6sCTxjTFjSd8DLnNjFM5c9/fuPoYDmPDa0SkPaYB/Ip4eXwJN/kh8uzp7MGCZ/J
	Th3e7swcaJ7bNBkfUN1FkOuqLsiY7lZLuFDm2DBTE/RSfhrf4XXU9vtYijoBpLHsaW4qwMYUvRmU+
	n8mwSlJL4gvPDzBWzXeqUKLmacGfkoDx8jJaFgptEkl73bi2jQTEZetR9RZk6AyQ2Gil+PVYPRbTf
	0zz1B/gKudP81NtYcRQmfQHvP5nmEGPPeFMK6G5M90vb2Rqz3Due/LZEpT34ZJqo2ZoRBHEhm4Sy6
	4k4ZjYwWU8sCnF92FWzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inQKD-0004Ml-5m; Fri, 03 Jan 2020 17:01:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inQK3-0004Lh-Sv
 for linux-mtd@lists.infradead.org; Fri, 03 Jan 2020 17:01:17 +0000
Received: from gmail.com (unknown [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 74DB2206DB;
 Fri,  3 Jan 2020 17:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578070875;
 bh=HMuouXSipp7GyOORuZndvSxu7oJc36nPRlBYJnzTvfI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0c6Riaif5UCXPFg0KmFe/6EcY83zl1CgNxWZ8G9Th6X6ej3StmUMFqe7YT76jAdF+
 CIgJI5O8guUL/J87QCnIeoZODInfIQmP1XJ2yd2xCr2ie5qx3g3ZeH35l31c6fQXxQ
 SbrnR6jcQ3akMOEV8pNdkAJPuJpI84QatL6I2wrw=
Date: Fri, 3 Jan 2020 09:01:14 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: linux-fscrypt@vger.kernel.org
Subject: Re: [PATCH] fscrypt: don't check for ENOKEY from
 fscrypt_get_encryption_info()
Message-ID: <20200103170113.GJ19521@gmail.com>
References: <20191209212348.243331-1-ebiggers@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209212348.243331-1-ebiggers@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_090115_956882_53CCC3B4 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -3.4 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 1.8 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-ext4@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-f2fs-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Dec 09, 2019 at 01:23:48PM -0800, Eric Biggers wrote:
> From: Eric Biggers <ebiggers@google.com>
> 
> fscrypt_get_encryption_info() returns 0 if the encryption key is
> unavailable; it never returns ENOKEY.  So remove checks for ENOKEY.
> 
> Signed-off-by: Eric Biggers <ebiggers@google.com>
> ---
>  fs/ext4/dir.c  | 2 +-
>  fs/f2fs/dir.c  | 2 +-
>  fs/ubifs/dir.c | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/fs/ext4/dir.c b/fs/ext4/dir.c
> index 9fdd2b269d617..4c9d3ff394a5d 100644
> --- a/fs/ext4/dir.c
> +++ b/fs/ext4/dir.c
> @@ -116,7 +116,7 @@ static int ext4_readdir(struct file *file, struct dir_context *ctx)
>  
>  	if (IS_ENCRYPTED(inode)) {
>  		err = fscrypt_get_encryption_info(inode);
> -		if (err && err != -ENOKEY)
> +		if (err)
>  			return err;
>  	}
>  
> diff --git a/fs/f2fs/dir.c b/fs/f2fs/dir.c
> index c967cacf979ef..d9ad842945df5 100644
> --- a/fs/f2fs/dir.c
> +++ b/fs/f2fs/dir.c
> @@ -987,7 +987,7 @@ static int f2fs_readdir(struct file *file, struct dir_context *ctx)
>  
>  	if (IS_ENCRYPTED(inode)) {
>  		err = fscrypt_get_encryption_info(inode);
> -		if (err && err != -ENOKEY)
> +		if (err)
>  			goto out;
>  
>  		err = fscrypt_fname_alloc_buffer(inode, F2FS_NAME_LEN, &fstr);
> diff --git a/fs/ubifs/dir.c b/fs/ubifs/dir.c
> index 0b98e3c8b461d..acc4f942d25b6 100644
> --- a/fs/ubifs/dir.c
> +++ b/fs/ubifs/dir.c
> @@ -512,7 +512,7 @@ static int ubifs_readdir(struct file *file, struct dir_context *ctx)
>  
>  	if (encrypted) {
>  		err = fscrypt_get_encryption_info(dir);
> -		if (err && err != -ENOKEY)
> +		if (err)
>  			return err;
>  
>  		err = fscrypt_fname_alloc_buffer(dir, UBIFS_MAX_NLEN, &fstr);
> -- 
> 2.24.0.393.g34dc348eaf-goog
> 

Applied to fscrypt.git#master for 5.6.

- Eric

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
