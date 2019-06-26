Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4211756101
	for <lists+linux-mtd@lfdr.de>; Wed, 26 Jun 2019 05:54:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pqI3KFpJSCSh8LH6JqGzfY2D3enkFFtxweldIAkHLIo=; b=sUDNM/vU8++F7B
	yrGorgm3fo/UveXzL8YQqWEUtKDh4Zw4HPuFk/6zSBlETOplJKUtj5zHbZXcK+qFb9TbKy1cM14n3
	b5AmhJ5mZMPK2fYx8pJ9JNzqxzD0g/ITvFkxLx0wZiLh3eo0qrRZF4P5wlU1MaxJ1Xo37IAp/sqyf
	2s7Z5bZpG0LGfwOy3oNxtYOUsXX2napOM/soJLyxcasNNRSndwWT2z3ZCIqVy22GdIC3rPO2tUWOW
	qyXfGgNRjdGzv8fPX0DEgk0xoHEp1Uv0xF6tPxN6U21vyp/fLhXdBtwal/t40qUF6N9mRGLru7f0f
	z3ZvJmBH2mpwzgJZ+H7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfz0e-0000fQ-0g; Wed, 26 Jun 2019 03:54:12 +0000
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfyzq-0000b2-6K
 for linux-mtd@lists.infradead.org; Wed, 26 Jun 2019 03:53:24 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hfyyN-0008Mv-UN; Wed, 26 Jun 2019 03:51:52 +0000
Date: Wed, 26 Jun 2019 04:51:51 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: "Darrick J. Wong" <darrick.wong@oracle.com>
Subject: Re: [PATCH 5/5] vfs: don't allow writes to swap files
Message-ID: <20190626035151.GA10613@ZenIV.linux.org.uk>
References: <156151637248.2283603.8458727861336380714.stgit@magnolia>
 <156151641177.2283603.7806026378321236401.stgit@magnolia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156151641177.2283603.7806026378321236401.stgit@magnolia>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_205322_415538_CACD9C36 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.92.253.2 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-efi@vger.kernel.org, linux-btrfs@vger.kernel.org, yuchao0@huawei.com,
 linux-mm@kvack.org, clm@fb.com, adilger.kernel@dilger.ca,
 matthew.garrett@nebula.com, linux-nilfs@vger.kernel.org, hch@infradead.org,
 linux-ext4@vger.kernel.org, devel@lists.orangefs.org, josef@toxicpanda.com,
 reiserfs-devel@vger.kernel.org, dsterba@suse.com, jaegeuk@kernel.org,
 tytso@mit.edu, ard.biesheuvel@linaro.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-xfs@vger.kernel.org,
 jk@ozlabs.org, jack@suse.com, linux-fsdevel@vger.kernel.org,
 linux-mtd@lists.infradead.org, ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 07:33:31PM -0700, Darrick J. Wong wrote:
> --- a/fs/attr.c
> +++ b/fs/attr.c
> @@ -236,6 +236,9 @@ int notify_change(struct dentry * dentry, struct iattr * attr, struct inode **de
>  	if (IS_IMMUTABLE(inode))
>  		return -EPERM;
>  
> +	if (IS_SWAPFILE(inode))
> +		return -ETXTBSY;
> +
>  	if ((ia_valid & (ATTR_MODE | ATTR_UID | ATTR_GID | ATTR_TIMES_SET)) &&
>  	    IS_APPEND(inode))
>  		return -EPERM;

Er...  So why exactly is e.g. chmod(2) forbidden for swapfiles?  Or touch(1),
for that matter...

> diff --git a/mm/swapfile.c b/mm/swapfile.c
> index 596ac98051c5..1ca4ee8c2d60 100644
> --- a/mm/swapfile.c
> +++ b/mm/swapfile.c
> @@ -3165,6 +3165,19 @@ SYSCALL_DEFINE2(swapon, const char __user *, specialfile, int, swap_flags)
>  	if (error)
>  		goto bad_swap;
>  
> +	/*
> +	 * Flush any pending IO and dirty mappings before we start using this
> +	 * swap file.
> +	 */
> +	if (S_ISREG(inode->i_mode)) {
> +		inode->i_flags |= S_SWAPFILE;
> +		error = inode_drain_writes(inode);
> +		if (error) {
> +			inode->i_flags &= ~S_SWAPFILE;
> +			goto bad_swap;
> +		}
> +	}

Why are swap partitions any less worthy of protection?

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
