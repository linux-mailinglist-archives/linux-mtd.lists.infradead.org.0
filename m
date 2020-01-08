Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DB91348A7
	for <lists+linux-mtd@lfdr.de>; Wed,  8 Jan 2020 17:57:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+6R2L742TxK4c1VdC6vlT6bM1zZsmqW6msJTZIYFCUE=; b=Uh3nvfxFFDz6Mm
	14zWzdkOhXkflT5ZyM6RabMitt3WXLya11bpPHe3/LPz0UjLdqJSbMY79oWTgsrX4DJRPUjGgStVT
	GVR6fvz9RmS6o6xBaJv00151ZZoqSRpC4tSFI3vpBXV3ZFoUWxuHgjR/i52z89Fj1Tba+UsirBGf+
	eyqbaceKuQc07MD6vT/SHF+X7tILizoYvquJ+EUYhArA1YZmqvFybLO4FqPY+sB7JQCjATkO97tgP
	zRMcEtzOQj0fScZ3MjMOubopIZhFzkAJnbgu5yZWXaKe+SbH70CAK0fi+kcE9JP/pL7Jl1+bE2yuX
	yU3LDGcRwxU02UxARzyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipEeG-0008I8-WD; Wed, 08 Jan 2020 16:57:37 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1ipEdq-000890-Pg; Wed, 08 Jan 2020 16:57:10 +0000
Date: Wed, 8 Jan 2020 08:57:10 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Andreas Gruenbacher <agruenba@redhat.com>
Subject: Re: [PATCH v4] fs: Fix page_mkwrite off-by-one errors
Message-ID: <20200108165710.GA18523@infradead.org>
References: <20200108131528.4279-1-agruenba@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200108131528.4279-1-agruenba@redhat.com>
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
Cc: Jan Kara <jack@suse.cz>, Chao Yu <yuchao0@huawei.com>,
 Adrian Hunter <adrian.hunter@intel.com>, Chris Mason <clm@fb.com>,
 Andreas Dilger <adilger.kernel@dilger.ca>, Sage Weil <sage@redhat.com>,
 "Darrick J. Wong" <darrick.wong@oracle.com>,
 Richard Weinberger <richard@nod.at>, YueHaibing <yuehaibing@huawei.com>,
 Christoph Hellwig <hch@infradead.org>, Ilya Dryomov <idryomov@gmail.com>,
 linux-ext4@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
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

I don't want to be the party pooper, but shouldn't this be a series
with one patch to add the helper, and then once for each fs / piece
of common code switched over?

On Wed, Jan 08, 2020 at 02:15:28PM +0100, Andreas Gruenbacher wrote:
> Hi Darrick,
> 
> here's an updated version with the latest feedback incorporated.  Hope
> you find that useful.
> 
> As far as the f2fs merge conflict goes, I've been told by Linus not to
> resolve those kinds of conflicts but to point them out when sending the
> merge request.  So this shouldn't be a big deal.

Also this isn't really the proper way to write a commit message.  This
text would go into the cover letter if it was a series..

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
