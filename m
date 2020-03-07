Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F21617CC54
	for <lists+linux-mtd@lfdr.de>; Sat,  7 Mar 2020 06:41:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mb2Hxow7fzPJ5Pn5HzmxS/kRQy/Sa6C1XjL3dZQRFGo=; b=WSmxiHrDKJ+2fX
	Ie9IjrqzNqORBxjx7InZoVT2tZsaqR1CArR12OwWqYd7F09kqbSO8gs8cUxHl43A8ZNOOd0XpXb8l
	lQG6A681EzTAhqxxfXHJ7hDb4PGmw96Le/XsCuGEpehSOz8A/A8a4ims5tm6b/BXICTI91A99LUhF
	hyKAJHRlJcO1ymP9HRN7LYYgCwtee3w3riRccmkYqigHgrdCDBSBW4TRz5/9QRaMCT6BSM3wrqjBe
	T/TVV5A4Xxw0iNm4WsLLrvMcH65N6dYk1oeLEvUcM23dQKmKAob7s8jO+vZ1QOAH+0w2r0R7oEdMe
	BWE4sb2gV9dJVvtM7jpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jASDI-0000Wx-3g; Sat, 07 Mar 2020 05:41:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jASD7-0000W8-Ra
 for linux-mtd@lists.infradead.org; Sat, 07 Mar 2020 05:41:19 +0000
Received: from sol.localdomain (c-107-3-166-239.hsd1.ca.comcast.net
 [107.3.166.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A95492070A;
 Sat,  7 Mar 2020 05:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583559677;
 bh=Z5bTJVp50KuWeymYhYAdxIiTXYzyTVmZsP2BigxcerM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wI3oLIQFFHIL5ICoqkDZhrwLR+OMO+a4KW9PZo0HtYoZzUNdytbzjj1R7kofMI0br
 YhDNzK3xcG6s3VWGMLkjJzhFlcnB4XxIl9N4MXpPOM/wD3zWgocEAg5wVV81E/VRTI
 7AlRaoulsSD655PjM30iHYYdYN0zupK+ODogkYjw=
Date: Fri, 6 Mar 2020 21:41:15 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: Daniel Rosenberg <drosen@google.com>
Subject: Re: [PATCH v8 6/8] libfs: Add generic function for setting dentry_ops
Message-ID: <20200307054115.GC1069@sol.localdomain>
References: <20200307023611.204708-1-drosen@google.com>
 <20200307023611.204708-7-drosen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200307023611.204708-7-drosen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_214117_936463_B2475BE0 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kernel-team@android.com, Theodore Ts'o <tytso@mit.edu>,
 Jonathan Corbet <corbet@lwn.net>, Richard Weinberger <richard@nod.at>,
 Andreas Dilger <adilger.kernel@dilger.ca>, Chao Yu <chao@kernel.org>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-fscrypt@vger.kernel.org,
 linux-mtd@lists.infradead.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, Jaegeuk Kim <jaegeuk@kernel.org>,
 linux-ext4@vger.kernel.org, Gabriel Krisman Bertazi <krisman@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 06:36:09PM -0800, Daniel Rosenberg wrote:
> This adds a function to set dentry operations at lookup time that will
> work for both encrypted files and casefolded filenames.
> 
> A filesystem that supports both features simultaneously can use this
> function during lookup preperations to set up its dentry operations once
> fscrypt no longer does that itself.
> 
> Signed-off-by: Daniel Rosenberg <drosen@google.com>
> ---
>  fs/libfs.c         | 50 ++++++++++++++++++++++++++++++++++++++++++++++
>  include/linux/fs.h |  2 ++
>  2 files changed, 52 insertions(+)
> 
> diff --git a/fs/libfs.c b/fs/libfs.c
> index 0eaa63a9ae037..bdda03c8ece9e 100644
> --- a/fs/libfs.c
> +++ b/fs/libfs.c
> @@ -1474,4 +1474,54 @@ int generic_ci_d_hash(const struct dentry *dentry, struct qstr *str)
>  	return ret;
>  }
>  EXPORT_SYMBOL(generic_ci_d_hash);
> +
> +static const struct dentry_operations generic_ci_dentry_ops = {
> +	.d_hash = generic_ci_d_hash,
> +	.d_compare = generic_ci_d_compare,
> +};
> +#endif
> +
> +#ifdef CONFIG_FS_ENCRYPTION
> +static const struct dentry_operations generic_encrypted_dentry_ops = {
> +	.d_revalidate = fscrypt_d_revalidate,
> +};
> +#endif
> +
> +#if IS_ENABLED(CONFIG_UNICODE) && IS_ENABLED(CONFIG_FS_ENCRYPTION)
> +static const struct dentry_operations generic_encrypted_ci_dentry_ops = {
> +	.d_hash = generic_ci_d_hash,
> +	.d_compare = generic_ci_d_compare,
> +	.d_revalidate = fscrypt_d_revalidate,
> +};
> +#endif
> +
> +/**
> + * generic_set_encrypted_ci_d_ops - helper for setting d_ops for given dentry
> + * @dir:	parent of dentry whose ops to set
> + * @dentry:	dentry to set ops on
> + *
> + * This function sets the dentry ops for the given dentry to handle both
> + * casefolding and encryption of the dentry name.
> + */
> +void generic_set_encrypted_ci_d_ops(struct inode *dir, struct dentry *dentry)
> +{
> +#ifdef CONFIG_FS_ENCRYPTION
> +	if (dentry->d_flags & DCACHE_ENCRYPTED_NAME) {
> +#ifdef CONFIG_UNICODE
> +		if (dir->i_sb->s_encoding) {
> +			d_set_d_op(dentry, &generic_encrypted_ci_dentry_ops);
> +			return;
> +		}
>  #endif
> +		d_set_d_op(dentry, &generic_encrypted_dentry_ops);
> +		return;
> +	}
> +#endif
> +#ifdef CONFIG_UNICODE
> +	if (dir->i_sb->s_encoding) {
> +		d_set_d_op(dentry, &generic_ci_dentry_ops);
> +		return;
> +	}
> +#endif
> +}
> +EXPORT_SYMBOL(generic_set_encrypted_ci_d_ops);

What's wrong with using dentry->d_sb?  Then the 'dir' parameter wouldn't be
needed.

Also, can you please document why the dentry_operations for casefolding are set
per-filesystem while the dentry_operations for encryption are set per-dentry,
despite both features actually being per-directory things?

- Eric

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
