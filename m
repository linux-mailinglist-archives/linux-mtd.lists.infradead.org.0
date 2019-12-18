Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BBF21251B7
	for <lists+linux-mtd@lfdr.de>; Wed, 18 Dec 2019 20:21:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3qw0ac3BH11FoJaVTWhZeJpN6f+gmafZzea6aOwJl8c=; b=P6XbI/D+Hil1Bf
	xLWfp/BQnsu5D7xXgfcyv7V731RUiRpWhp9uz/nxC1DM0n+EOQBHTDCbkFBHQCZDnsEoj8qxDvHIy
	0g2aqS0xhl8sPCmMpFmZu1xWlX/mx2Xd2ODlPywKnM8v1wDxhqp1Ns/bqK6mxHaYUZ/BZr6jilEpe
	TNaObNUgZN/M+fu5jL9uugEuRKYCHhIWX1f2jObjrf1XwRo+BSGhcRF5U/qZyo+RYCfy00BR5jVnC
	N+EKYLKhQiTX2WGIHcEcC/TiWOg+aEba9U5shAbCUGU0PO53ifwSwwp6QlS6/jOgFLp/xYRinUkgF
	kCjhMqURdEJ78uNNHopw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihetO-0006Ze-Lm; Wed, 18 Dec 2019 19:21:54 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1ihetE-0006ZI-A3; Wed, 18 Dec 2019 19:21:44 +0000
Date: Wed, 18 Dec 2019 11:21:44 -0800
From: Matthew Wilcox <willy@infradead.org>
To: "Darrick J. Wong" <darrick.wong@oracle.com>
Subject: Re: [PATCH v3] fs: Fix page_mkwrite off-by-one errors
Message-ID: <20191218192144.GF32169@bombadil.infradead.org>
References: <20191218130935.32402-1-agruenba@redhat.com>
 <20191218185216.GA7497@magnolia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218185216.GA7497@magnolia>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
 Andreas Gruenbacher <agruenba@redhat.com>, Sage Weil <sage@redhat.com>,
 Richard Weinberger <richard@nod.at>, Christoph Hellwig <hch@infradead.org>,
 Ilya Dryomov <idryomov@gmail.com>, linux-ext4@vger.kernel.org,
 Chao Yu <chao@kernel.org>, Josef Bacik <josef@toxicpanda.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, David Sterba <dsterba@suse.com>,
 Jaegeuk Kim <jaegeuk@kernel.org>, ceph-devel@vger.kernel.org,
 Theodore Ts'o <tytso@mit.edu>, Artem Bityutskiy <dedekind1@gmail.com>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-mtd@lists.infradead.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 10:52:16AM -0800, Darrick J. Wong wrote:
> > @@ -9016,13 +9016,11 @@ vm_fault_t btrfs_page_mkwrite(struct vm_fault *vmf)
> >  	ret = VM_FAULT_NOPAGE; /* make the VM retry the fault */
> >  again:
> >  	lock_page(page);
> > -	size = i_size_read(inode);
> >  
> > -	if ((page->mapping != inode->i_mapping) ||
> > -	    (page_start >= size)) {
> > -		/* page got truncated out from underneath us */
> > +	ret2 = page_mkwrite_check_truncate(page, inode);
> > +	if (ret2 < 0)
> >  		goto out_unlock;
> 
> ...here we try to return -EFAULT as vm_fault_t.  Notice how btrfs returns
> VM_FAULT_* values directly and never calls block_page_mkwrite_return?  I
> know dsterba acked this, but I cannot see how this is correct?

I think you misread it.  'ret2' is never returned; we'll end up returning
VM_FAULT_NOPAGE here.  Arguably it should be SIGBUS or something, but
I think retrying the fault will also end up giving a SIGBUS.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
