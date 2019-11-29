Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C5F10D83C
	for <lists+linux-mtd@lfdr.de>; Fri, 29 Nov 2019 17:07:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8aqEms4Ldq3oeJ4Cw8UwgzUkuROy3a2Gs1JGt+x+6ww=; b=M5nJBdwDMPkmyU
	iz51RRfY181mebkp425C7zFb8hEx5Un9FQ8MjwM4/vzj0JBu9eOrLM0NxzOYR0umcOU2HpNLhbb9q
	dZGYUxYul4GUCk6PEd8wmme/pDauOzCFwaNpN6O2lVDOn9jKi9BetsTdb68tRQKWlL0u0SbHI1zco
	/bG+2ndEFMjnas6d4Cy0EqeupyQ2IbqM/mVrDAS+E/j5PLPFIghsg6U6an4qs2756gukd5FjssFMn
	aZfr5Mx81ViCnqMTDVYw37iijjpA+vI/Z35Fvichgdr2r56doDfQ1g8aM8QXjcPag8PhqteAb0zNd
	SUQdTXV08w3WmwVpuzBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iainJ-0002br-UI; Fri, 29 Nov 2019 16:06:57 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iainA-0002a4-Mm
 for linux-mtd@lists.infradead.org; Fri, 29 Nov 2019 16:06:51 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 33C2FAD05;
 Fri, 29 Nov 2019 16:06:41 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
 id 3D30CDA7D9; Fri, 29 Nov 2019 17:06:35 +0100 (CET)
Date: Fri, 29 Nov 2019 17:06:34 +0100
From: David Sterba <dsterba@suse.cz>
To: Andreas Gruenbacher <agruenba@redhat.com>
Subject: Re: [PATCH v2] fs: Fix page_mkwrite off-by-one errors
Message-ID: <20191129160634.GM2734@twin.jikos.cz>
Mail-Followup-To: dsterba@suse.cz, Andreas Gruenbacher <agruenba@redhat.com>,
 Christoph Hellwig <hch@infradead.org>,
 "Darrick J. Wong" <darrick.wong@oracle.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-kernel@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Jeff Layton <jlayton@kernel.org>, Sage Weil <sage@redhat.com>,
 Ilya Dryomov <idryomov@gmail.com>, Theodore Ts'o <tytso@mit.edu>,
 Andreas Dilger <adilger.kernel@dilger.ca>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Chao Yu <chao@kernel.org>,
 linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Richard Weinberger <richard@nod.at>,
 Artem Bityutskiy <dedekind1@gmail.com>,
 Adrian Hunter <adrian.hunter@intel.com>, ceph-devel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-mtd@lists.infradead.org, Chris Mason <clm@fb.com>,
 Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>,
 linux-btrfs@vger.kernel.org
References: <20191129142045.7215-1-agruenba@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191129142045.7215-1-agruenba@redhat.com>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_080648_893620_23A14094 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Reply-To: dsterba@suse.cz
Cc: Adrian Hunter <adrian.hunter@intel.com>, Chris Mason <clm@fb.com>,
 Andreas Dilger <adilger.kernel@dilger.ca>, Sage Weil <sage@redhat.com>,
 "Darrick J. Wong" <darrick.wong@oracle.com>,
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

On Fri, Nov 29, 2019 at 03:20:45PM +0100, Andreas Gruenbacher wrote:
> The check in block_page_mkwrite meant to determine whether an offset is
> within the inode size is off by one.  This bug has spread to
> iomap_page_mkwrite and to several filesystems (ubifs, ext4, f2fs, ceph).
> To fix that, introduce a new page_mkwrite_check_truncate helper that
> checks for truncate and computes the bytes in the page up to EOF, and
> use that helper in the above mentioned filesystems and in btrfs.
> 
> Signed-off-by: Andreas Gruenbacher <agruenba@redhat.com>
> 
> ---
> 
> This patch has a trivial conflict with commit "iomap: Fix overflow in
> iomap_page_mkwrite" in Darrick's iomap pull request for 5.5:
> 
>   https://lore.kernel.org/lkml/20191125190907.GN6219@magnolia/
> ---
>  fs/btrfs/inode.c        | 15 ++++-----------

For the btrfs part

Acked-by: David Sterba <dsterba@suse.com>

and reviewed that the change is equivalent.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
