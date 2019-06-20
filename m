Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8516A4CFE3
	for <lists+linux-mtd@lfdr.de>; Thu, 20 Jun 2019 16:04:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YGCo3MX3mxbkrXmMm5USkToDmPDtTKv6ddF1tqDr5gs=; b=b1UowkdFEnBdP6
	q/6iYzjShW+geHkMIm2qNEYcwedS8a/4aTY0llg29Npb/cXArLf/84zgQ4Zb0UwLTTl6nsg4doE7C
	OqNOlmSEEfPdPNwA0kbC0JmkWug/YKntP1/gIayof8Jse3JZpt/wIr8wSaPz6fD9/2X9moTOQLi14
	usT8VxA4+e8CrUTWjdHTN75c7ma5w2wkP6eJrNMMa+l3xffxvkaYUASGNBZt55RbYHSauI4Cn3p6b
	BQ8ZcpjRP0GPjtrgir6A5cnS9RCE/ZhDqibVuu+bOsLHeZ5h+Mu85NjOi8ccz6rvhdUNCwgIZLgF8
	b8q/D4Ayai2DI+96an+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdxfR-000361-TJ; Thu, 20 Jun 2019 14:03:57 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdxfH-00035M-FC
 for linux-mtd@lists.infradead.org; Thu, 20 Jun 2019 14:03:48 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 05638AF85;
 Thu, 20 Jun 2019 14:03:46 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
 id A12B31E434F; Thu, 20 Jun 2019 16:03:45 +0200 (CEST)
Date: Thu, 20 Jun 2019 16:03:45 +0200
From: Jan Kara <jack@suse.cz>
To: "Darrick J. Wong" <darrick.wong@oracle.com>
Subject: Re: [PATCH 4/6] vfs: don't allow most setxattr to immutable files
Message-ID: <20190620140345.GI30243@quack2.suse.cz>
References: <156022836912.3227213.13598042497272336695.stgit@magnolia>
 <156022840560.3227213.4776913678782966728.stgit@magnolia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156022840560.3227213.4776913678782966728.stgit@magnolia>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_070347_660794_F9686BEA 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 matthew.garrett@nebula.com, linux-nilfs@vger.kernel.org,
 linux-ext4@vger.kernel.org, devel@lists.orangefs.org, josef@toxicpanda.com,
 reiserfs-devel@vger.kernel.org, viro@zeniv.linux.org.uk, dsterba@suse.com,
 jaegeuk@kernel.org, tytso@mit.edu, ard.biesheuvel@linaro.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-xfs@vger.kernel.org, jk@ozlabs.org, jack@suse.com,
 linux-fsdevel@vger.kernel.org, linux-mtd@lists.infradead.org,
 ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon 10-06-19 21:46:45, Darrick J. Wong wrote:
> From: Darrick J. Wong <darrick.wong@oracle.com>
> 
> The chattr manpage has this to say about immutable files:
> 
> "A file with the 'i' attribute cannot be modified: it cannot be deleted
> or renamed, no link can be created to this file, most of the file's
> metadata can not be modified, and the file can not be opened in write
> mode."
> 
> However, we don't actually check the immutable flag in the setattr code,
> which means that we can update inode flags and project ids and extent
> size hints on supposedly immutable files.  Therefore, reject setflags
> and fssetxattr calls on an immutable file if the file is immutable and
> will remain that way.
> 
> Signed-off-by: Darrick J. Wong <darrick.wong@oracle.com>
> ---
>  fs/inode.c |   31 +++++++++++++++++++++++++++++++
>  1 file changed, 31 insertions(+)
> 
> 
> diff --git a/fs/inode.c b/fs/inode.c
> index a3757051fd55..adfb458bf533 100644
> --- a/fs/inode.c
> +++ b/fs/inode.c
> @@ -2184,6 +2184,17 @@ int vfs_ioc_setflags_check(struct inode *inode, int oldflags, int flags)
>  	    !capable(CAP_LINUX_IMMUTABLE))
>  		return -EPERM;
>  
> +	/*
> +	 * We aren't allowed to change any other flags if the immutable flag is
> +	 * already set and is not being unset.
> +	 */
> +	if ((oldflags & FS_IMMUTABLE_FL) &&
> +	    (flags & FS_IMMUTABLE_FL)) {
> +		if ((oldflags & ~FS_IMMUTABLE_FL) !=
> +		    (flags & ~FS_IMMUTABLE_FL))

This check looks a bit strange when you've just check FS_IMMUTABLE_FL isn't
changing... Why not just oldflags != flags?

> +	if ((old_fa->fsx_xflags & FS_XFLAG_IMMUTABLE) &&
> +	    (fa->fsx_xflags & FS_XFLAG_IMMUTABLE)) {
> +		if ((old_fa->fsx_xflags & ~FS_XFLAG_IMMUTABLE) !=
> +		    (fa->fsx_xflags & ~FS_XFLAG_IMMUTABLE))

Ditto here...

> +			return -EPERM;
> +		if (old_fa->fsx_projid != fa->fsx_projid)
> +			return -EPERM;
> +		if ((fa->fsx_xflags & (FS_XFLAG_EXTSIZE |
> +				       FS_XFLAG_EXTSZINHERIT)) &&
> +		    old_fa->fsx_extsize != fa->fsx_extsize)
> +			return -EPERM;
> +		if ((old_fa->fsx_xflags & FS_XFLAG_COWEXTSIZE) &&
> +		    old_fa->fsx_cowextsize != fa->fsx_cowextsize)
> +			return -EPERM;
> +	}
> +
>  	/* Extent size hints of zero turn off the flags. */
>  	if (fa->fsx_extsize == 0)
>  		fa->fsx_xflags &= ~(FS_XFLAG_EXTSIZE | FS_XFLAG_EXTSZINHERIT);

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
