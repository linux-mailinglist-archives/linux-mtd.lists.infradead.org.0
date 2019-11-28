Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D040510CC00
	for <lists+linux-mtd@lfdr.de>; Thu, 28 Nov 2019 16:45:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b5l1sZGQDlTWqFA+LrC/VPK2GKZvESkG+B/AQue9WNk=; b=gwuJSXGHqajiR4
	4eho/P452YC9fIbpAt5OTgmR6Nl2ywO5wkbBIDNsLzC7XDbyjPEqFtXX6WSTaM65MHddMw6BwvQqL
	gJGb1mDbllA3UBtJW66K5MJWNiyodqe2i3x7033DJT9UmDGqhIG67ziHNQLSMKG3rowlhlZJLaFSD
	zEfyD1ChEAgyTGQwLHPeBeSiwvjljQZxfc8Y0uMr1To16p/mwFMD+XysKTslPiO4x/ltbEHEGiHmv
	MA2i6eMYIy5ZrdOTmhLlU1qZVoM2Mphma1acbfG8zjiMiEn85WzAwSDe/8Pk6L9ZtGzCWVZjpPDhv
	fGPalsmsMlOvgDoWY6nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLyx-0005wA-6Q; Thu, 28 Nov 2019 15:45:27 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iaLym-0005vg-OI; Thu, 28 Nov 2019 15:45:16 +0000
Date: Thu, 28 Nov 2019 07:45:16 -0800
From: Christoph Hellwig <hch@infradead.org>
To: "Darrick J. Wong" <darrick.wong@oracle.com>
Subject: Re: [PATCH] fs: Fix page_mkwrite off-by-one errors
Message-ID: <20191128154516.GA17166@infradead.org>
References: <20191127151811.9229-1-agruenba@redhat.com>
 <20191127154954.GT6219@magnolia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127154954.GT6219@magnolia>
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
Cc: linux-xfs@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 Theodore Ts'o <tytso@mit.edu>, Andreas Gruenbacher <agruenba@redhat.com>,
 Sage Weil <sage@redhat.com>, Artem Bityutskiy <dedekind1@gmail.com>,
 Richard Weinberger <richard@nod.at>, Chao Yu <chao@kernel.org>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Adrian Hunter <adrian.hunter@intel.com>, Christoph Hellwig <hch@infradead.org>,
 Andreas Dilger <adilger.kernel@dilger.ca>,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-mtd@lists.infradead.org,
 linux-fsdevel@vger.kernel.org, Jaegeuk Kim <jaegeuk@kernel.org>,
 Ilya Dryomov <idryomov@gmail.com>, linux-ext4@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, ceph-devel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 07:49:54AM -0800, Darrick J. Wong wrote:
> On Wed, Nov 27, 2019 at 04:18:11PM +0100, Andreas Gruenbacher wrote:
> > Fix a check in block_page_mkwrite meant to determine whether an offset
> > is within the inode size.  This error has spread to several filesystems
> > and to iomap_page_mkwrite, so fix those instances as well.
> 
> Seeing how this has gotten screwed up at least six times in the kernel,
> maybe we need a static inline helper to do this for us?

Yes.  I think we really want a little helper that checks the mapping
and the offset.  That also gives us the opportunity to document the
semantics.

> 
> > Signed-off-by: Andreas Gruenbacher <agruenba@redhat.com>
> 
> The iomap part looks ok,
> Reviewed-by: Darrick J. Wong <darrick.wong@oracle.com>
> 
> (I might just extract the iomap part and put it in the iomap tree if
> someone doesn't merge this one before I get to it...)

I think we should just pull in the helper and conversions through
some tree after all iomap bits are merged.  It might as well be
the iomap tree as that seems to the place for file system read/write
infrastructure these days.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
