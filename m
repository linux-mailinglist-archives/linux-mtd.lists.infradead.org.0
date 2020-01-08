Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8AD134134
	for <lists+linux-mtd@lfdr.de>; Wed,  8 Jan 2020 12:51:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=73purES7KG4WtXBvEdXPo8H3sp7CHw06MOWd2mQfOB8=; b=s1Y1q5syRrFOWW
	k4GcS+9ck+uXQmq8NJWfMI9i4ZyjMeZZITgBgbn3yKZDNH7/quDw1R7pmAOvdd+C1/TRjHlva1woG
	1fTQ6NPDU/4JHvPJstg6LsqcIdu3R/8KI199qhiNgrK4SYbtSQxYMU6R282u4aJnmboIb+MMyZxu+
	jXnG79ZNYZfCfsDwblkqJSe7gusNF8Mm81FpHCNtR3WfoR+oDPUBo0FwPx/Ws2jHhkBHExS0qGQDk
	H7AuXYNhHtQujvjR46EeiJi9olRDvZ1AQ9XzhbpT6I+0Lrw4uov5YZof6eTIYxU9eneQ0EsunaRiQ
	TNkQHHUrLmiGwRSTJbHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip9sK-0001Yz-58; Wed, 08 Jan 2020 11:51:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip9s6-0001YJ-4d
 for linux-mtd@lists.infradead.org; Wed, 08 Jan 2020 11:51:36 +0000
Received: from localhost (c-98-234-77-170.hsd1.ca.comcast.net [98.234.77.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 495E1206DA;
 Wed,  8 Jan 2020 11:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578484293;
 bh=UaIxLZUI75Nhbq0wZwJ9Y9VnTVdDPODF8I6Yh67fzSA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tFFKdgGabDv2XpV7p5rWZmsHOHdxYqIOYTmoNUoMI7xPlmiNp1RObtxD7yRvcSbHb
 eKRLtPgSy39OK+usHe3gQVmMj7vkwqn+nMkZ9QSE8sGMkcqeimCxhcieeoWeqreZI1
 1bzWtwfZcbYU1e2boj4CmHBo+rM2WbUrcIPue6gk=
Date: Wed, 8 Jan 2020 03:51:32 -0800
From: Jaegeuk Kim <jaegeuk@kernel.org>
To: Andreas Gruenbacher <agruenba@redhat.com>
Subject: Re: [PATCH v3] fs: Fix page_mkwrite off-by-one errors
Message-ID: <20200108115132.GA28331@jaegeuk-macbookpro.roam.corp.google.com>
References: <20191218130935.32402-1-agruenba@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218130935.32402-1-agruenba@redhat.com>
User-Agent: Mutt/1.8.2 (2017-04-18)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_035134_223947_E105D027 
X-CRM114-Status: GOOD (  29.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jan Kara <jack@suse.cz>, Adrian Hunter <adrian.hunter@intel.com>,
 Chris Mason <clm@fb.com>, Andreas Dilger <adilger.kernel@dilger.ca>,
 Sage Weil <sage@redhat.com>, "Darrick J. Wong" <darrick.wong@oracle.com>,
 Richard Weinberger <richard@nod.at>, Christoph Hellwig <hch@infradead.org>,
 Ilya Dryomov <idryomov@gmail.com>, linux-ext4@vger.kernel.org,
 Chao Yu <chao@kernel.org>, Josef Bacik <josef@toxicpanda.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, David Sterba <dsterba@suse.com>,
 ceph-devel@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
 Artem Bityutskiy <dedekind1@gmail.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-mtd@lists.infradead.org, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Andreas,

On 12/18, Andreas Gruenbacher wrote:
> Hi Darrick,
> 
> can this fix go in via the xfs tree?
> 
> Thanks,
> Andreas
> 
> --
> 
> The check in block_page_mkwrite that is meant to determine whether an
> offset is within the inode size is off by one.  This bug has been copied
> into iomap_page_mkwrite and several filesystems (ubifs, ext4, f2fs,
> ceph).
> 
> Fix that by introducing a new page_mkwrite_check_truncate helper that
> checks for truncate and computes the bytes in the page up to EOF.  Use
> the helper in the above mentioned filesystems.
> 
> In addition, use the new helper in btrfs as well.
> 
> Signed-off-by: Andreas Gruenbacher <agruenba@redhat.com>
> Acked-by: David Sterba <dsterba@suse.com> (btrfs part)
> Acked-by: Richard Weinberger <richard@nod.at> (ubifs part)
> ---
>  fs/btrfs/inode.c        | 15 ++++-----------
>  fs/buffer.c             | 16 +++-------------
>  fs/ceph/addr.c          |  2 +-
>  fs/ext4/inode.c         | 14 ++++----------
>  fs/f2fs/file.c          | 19 +++++++------------
>  fs/iomap/buffered-io.c  | 18 +++++-------------
>  fs/ubifs/file.c         |  3 +--
>  include/linux/pagemap.h | 28 ++++++++++++++++++++++++++++
>  8 files changed, 53 insertions(+), 62 deletions(-)
> 
> diff --git a/fs/btrfs/inode.c b/fs/btrfs/inode.c
> index 56032c518b26..86c6fcd8139d 100644
> --- a/fs/btrfs/inode.c
> +++ b/fs/btrfs/inode.c
> @@ -9016,13 +9016,11 @@ vm_fault_t btrfs_page_mkwrite(struct vm_fault *vmf)
>  	ret = VM_FAULT_NOPAGE; /* make the VM retry the fault */
>  again:
>  	lock_page(page);
> -	size = i_size_read(inode);
>  
> -	if ((page->mapping != inode->i_mapping) ||
> -	    (page_start >= size)) {
> -		/* page got truncated out from underneath us */
> +	ret2 = page_mkwrite_check_truncate(page, inode);
> +	if (ret2 < 0)
>  		goto out_unlock;
> -	}
> +	zero_start = ret2;
>  	wait_on_page_writeback(page);
>  
>  	lock_extent_bits(io_tree, page_start, page_end, &cached_state);
> @@ -9043,6 +9041,7 @@ vm_fault_t btrfs_page_mkwrite(struct vm_fault *vmf)
>  		goto again;
>  	}
>  
> +	size = i_size_read(inode);
>  	if (page->index == ((size - 1) >> PAGE_SHIFT)) {
>  		reserved_space = round_up(size - page_start,
>  					  fs_info->sectorsize);
> @@ -9075,12 +9074,6 @@ vm_fault_t btrfs_page_mkwrite(struct vm_fault *vmf)
>  	}
>  	ret2 = 0;
>  
> -	/* page is wholly or partially inside EOF */
> -	if (page_start + PAGE_SIZE > size)
> -		zero_start = offset_in_page(size);
> -	else
> -		zero_start = PAGE_SIZE;
> -
>  	if (zero_start != PAGE_SIZE) {
>  		kaddr = kmap(page);
>  		memset(kaddr + zero_start, 0, PAGE_SIZE - zero_start);
> diff --git a/fs/buffer.c b/fs/buffer.c
> index d8c7242426bb..53aabde57ca7 100644
> --- a/fs/buffer.c
> +++ b/fs/buffer.c
> @@ -2499,23 +2499,13 @@ int block_page_mkwrite(struct vm_area_struct *vma, struct vm_fault *vmf,
>  	struct page *page = vmf->page;
>  	struct inode *inode = file_inode(vma->vm_file);
>  	unsigned long end;
> -	loff_t size;
>  	int ret;
>  
>  	lock_page(page);
> -	size = i_size_read(inode);
> -	if ((page->mapping != inode->i_mapping) ||
> -	    (page_offset(page) > size)) {
> -		/* We overload EFAULT to mean page got truncated */
> -		ret = -EFAULT;
> +	ret = page_mkwrite_check_truncate(page, inode);
> +	if (ret < 0)
>  		goto out_unlock;
> -	}
> -
> -	/* page is wholly or partially inside EOF */
> -	if (((page->index + 1) << PAGE_SHIFT) > size)
> -		end = size & ~PAGE_MASK;
> -	else
> -		end = PAGE_SIZE;
> +	end = ret;
>  
>  	ret = __block_write_begin(page, 0, end, get_block);
>  	if (!ret)
> diff --git a/fs/ceph/addr.c b/fs/ceph/addr.c
> index 7ab616601141..ef958aa4adb4 100644
> --- a/fs/ceph/addr.c
> +++ b/fs/ceph/addr.c
> @@ -1575,7 +1575,7 @@ static vm_fault_t ceph_page_mkwrite(struct vm_fault *vmf)
>  	do {
>  		lock_page(page);
>  
> -		if ((off > size) || (page->mapping != inode->i_mapping)) {
> +		if (page_mkwrite_check_truncate(page, inode) < 0) {
>  			unlock_page(page);
>  			ret = VM_FAULT_NOPAGE;
>  			break;
> diff --git a/fs/ext4/inode.c b/fs/ext4/inode.c
> index 28f28de0c1b6..51ab1d2cac80 100644
> --- a/fs/ext4/inode.c
> +++ b/fs/ext4/inode.c
> @@ -5871,7 +5871,6 @@ vm_fault_t ext4_page_mkwrite(struct vm_fault *vmf)
>  {
>  	struct vm_area_struct *vma = vmf->vma;
>  	struct page *page = vmf->page;
> -	loff_t size;
>  	unsigned long len;
>  	int err;
>  	vm_fault_t ret;
> @@ -5907,18 +5906,13 @@ vm_fault_t ext4_page_mkwrite(struct vm_fault *vmf)
>  	}
>  
>  	lock_page(page);
> -	size = i_size_read(inode);
> -	/* Page got truncated from under us? */
> -	if (page->mapping != mapping || page_offset(page) > size) {
> +	err = page_mkwrite_check_truncate(page, inode);
> +	if (err < 0) {
>  		unlock_page(page);
> -		ret = VM_FAULT_NOPAGE;
> -		goto out;
> +		goto out_ret;
>  	}
> +	len = err;
>  
> -	if (page->index == size >> PAGE_SHIFT)
> -		len = size & ~PAGE_MASK;
> -	else
> -		len = PAGE_SIZE;
>  	/*
>  	 * Return if we have all the buffers mapped. This avoids the need to do
>  	 * journal_start/journal_stop which can block and take a long time
> diff --git a/fs/f2fs/file.c b/fs/f2fs/file.c
> index 85af112e868d..0e77b2e6f873 100644
> --- a/fs/f2fs/file.c
> +++ b/fs/f2fs/file.c
> @@ -51,7 +51,7 @@ static vm_fault_t f2fs_vm_page_mkwrite(struct vm_fault *vmf)
>  	struct inode *inode = file_inode(vmf->vma->vm_file);
>  	struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
>  	struct dnode_of_data dn = { .node_changed = false };
> -	int err;
> +	int offset, err;
>  
>  	if (unlikely(f2fs_cp_error(sbi))) {
>  		err = -EIO;
> @@ -70,13 +70,14 @@ static vm_fault_t f2fs_vm_page_mkwrite(struct vm_fault *vmf)
>  	file_update_time(vmf->vma->vm_file);
>  	down_read(&F2FS_I(inode)->i_mmap_sem);
>  	lock_page(page);
> -	if (unlikely(page->mapping != inode->i_mapping ||
> -			page_offset(page) > i_size_read(inode) ||
> -			!PageUptodate(page))) {
> +	err = -EFAULT;
> +	if (likely(PageUptodate(page)))
> +		err = page_mkwrite_check_truncate(page, inode);
> +	if (unlikely(err < 0)) {
>  		unlock_page(page);
> -		err = -EFAULT;
>  		goto out_sem;
>  	}
> +	offset = err;

This is a bit odd, so how about this?

	offset = -EFAULT;
	if (likely(PageUptodate(page))
		offset = page_mkwrite_check_truncate(page, inode);

	if (unlikely(offset < 0) {
		unlock_page(page);
		err = offset;
		goto out_sem;
	}

I think Linus will address the merge conflict simply later.

Thanks,

>  
>  	/* block allocation */
>  	__do_map_lock(sbi, F2FS_GET_BLOCK_PRE_AIO, true);
> @@ -101,14 +102,8 @@ static vm_fault_t f2fs_vm_page_mkwrite(struct vm_fault *vmf)
>  	if (PageMappedToDisk(page))
>  		goto out_sem;
>  
> -	/* page is wholly or partially inside EOF */
> -	if (((loff_t)(page->index + 1) << PAGE_SHIFT) >
> -						i_size_read(inode)) {
> -		loff_t offset;
> -
> -		offset = i_size_read(inode) & ~PAGE_MASK;
> +	if (offset != PAGE_SIZE)
>  		zero_user_segment(page, offset, PAGE_SIZE);
> -	}
>  	set_page_dirty(page);
>  	if (!PageUptodate(page))
>  		SetPageUptodate(page);
> diff --git a/fs/iomap/buffered-io.c b/fs/iomap/buffered-io.c
> index d33c7bc5ee92..1aaf157fd6e9 100644
> --- a/fs/iomap/buffered-io.c
> +++ b/fs/iomap/buffered-io.c
> @@ -1062,24 +1062,16 @@ vm_fault_t iomap_page_mkwrite(struct vm_fault *vmf, const struct iomap_ops *ops)
>  	struct page *page = vmf->page;
>  	struct inode *inode = file_inode(vmf->vma->vm_file);
>  	unsigned long length;
> -	loff_t offset, size;
> +	loff_t offset;
>  	ssize_t ret;
>  
>  	lock_page(page);
> -	size = i_size_read(inode);
> -	offset = page_offset(page);
> -	if (page->mapping != inode->i_mapping || offset > size) {
> -		/* We overload EFAULT to mean page got truncated */
> -		ret = -EFAULT;
> +	ret = page_mkwrite_check_truncate(page, inode);
> +	if (ret < 0)
>  		goto out_unlock;
> -	}
> -
> -	/* page is wholly or partially inside EOF */
> -	if (offset > size - PAGE_SIZE)
> -		length = offset_in_page(size);
> -	else
> -		length = PAGE_SIZE;
> +	length = ret;
>  
> +	offset = page_offset(page);
>  	while (length > 0) {
>  		ret = iomap_apply(inode, offset, length,
>  				IOMAP_WRITE | IOMAP_FAULT, ops, page,
> diff --git a/fs/ubifs/file.c b/fs/ubifs/file.c
> index cd52585c8f4f..91f7a1f2db0d 100644
> --- a/fs/ubifs/file.c
> +++ b/fs/ubifs/file.c
> @@ -1563,8 +1563,7 @@ static vm_fault_t ubifs_vm_page_mkwrite(struct vm_fault *vmf)
>  	}
>  
>  	lock_page(page);
> -	if (unlikely(page->mapping != inode->i_mapping ||
> -		     page_offset(page) > i_size_read(inode))) {
> +	if (unlikely(page_mkwrite_check_truncate(page, inode) < 0)) {
>  		/* Page got truncated out from underneath us */
>  		goto sigbus;
>  	}
> diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
> index 37a4d9e32cd3..ccb14b6a16b5 100644
> --- a/include/linux/pagemap.h
> +++ b/include/linux/pagemap.h
> @@ -636,4 +636,32 @@ static inline unsigned long dir_pages(struct inode *inode)
>  			       PAGE_SHIFT;
>  }
>  
> +/**
> + * page_mkwrite_check_truncate - check if page was truncated
> + * @page: the page to check
> + * @inode: the inode to check the page against
> + *
> + * Returns the number of bytes in the page up to EOF,
> + * or -EFAULT if the page was truncated.
> + */
> +static inline int page_mkwrite_check_truncate(struct page *page,
> +					      struct inode *inode)
> +{
> +	loff_t size = i_size_read(inode);
> +	pgoff_t index = size >> PAGE_SHIFT;
> +	int offset = offset_in_page(size);
> +
> +	if (page->mapping != inode->i_mapping)
> +		return -EFAULT;
> +
> +	/* page is wholly inside EOF */
> +	if (page->index < index)
> +		return PAGE_SIZE;
> +	/* page is wholly past EOF */
> +	if (page->index > index || !offset)
> +		return -EFAULT;
> +	/* page is partially inside EOF */
> +	return offset;
> +}
> +
>  #endif /* _LINUX_PAGEMAP_H */
> -- 
> 2.20.1

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
