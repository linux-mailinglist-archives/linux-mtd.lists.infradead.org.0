Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DF1555FB
	for <lists+linux-mtd@lfdr.de>; Tue, 25 Jun 2019 19:32:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JMB4biAfTFdL2mur7aLVZod6enHGM9Emhw59r7Yk57s=; b=XRmFZK2rsMyFUW
	SM9oNThBKigX3+bb3MOY7cN6N4iFzrCHlFtwZTLKplOVWC0rgUrkH/qJOaHIMcQOt90GoPRQ8IgFx
	qQcqObU46nWyPmwQZBKnX4mScW2vh/N1lNpOF3eIe9ThnIdgvBgmo4Cj0FhkHphs6gICNscMzAY+s
	u447pgdgB1/HvuqYjDBGaMjxO/JIp0E8NLQIhb63t1WIwcacKHJdkPAjp0QxYPc+bA51qLSmeZbnp
	fEHuSUsVumPUTMwx4erNGRCt+CigHYrsGO4vFSF53maBKB0R8Bm6sXOjz3uKS4avk1Zad0F1DGR11
	9GEL/w5c2Es99MvfGLWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfpJE-0001rC-KA; Tue, 25 Jun 2019 17:32:44 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfpJ3-0001qc-QB
 for linux-mtd@lists.infradead.org; Tue, 25 Jun 2019 17:32:35 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 0E8FBAD8A;
 Tue, 25 Jun 2019 17:32:32 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
 id 2D2B6DA8F6; Tue, 25 Jun 2019 19:33:16 +0200 (CEST)
Date: Tue, 25 Jun 2019 19:33:16 +0200
From: David Sterba <dsterba@suse.cz>
To: "Darrick J. Wong" <darrick.wong@oracle.com>
Subject: Re: [PATCH 2/4] vfs: create a generic checking function for
 FS_IOC_FSSETXATTR
Message-ID: <20190625173316.GU8917@twin.jikos.cz>
Mail-Followup-To: dsterba@suse.cz, "Darrick J. Wong" <darrick.wong@oracle.com>,
 Christoph Hellwig <hch@infradead.org>, matthew.garrett@nebula.com,
 yuchao0@huawei.com, tytso@mit.edu, shaggy@kernel.org,
 ard.biesheuvel@linaro.org, josef@toxicpanda.com, clm@fb.com,
 adilger.kernel@dilger.ca, jk@ozlabs.org, jack@suse.com,
 dsterba@suse.com, jaegeuk@kernel.org, viro@zeniv.linux.org.uk,
 cluster-devel@redhat.com, jfs-discussion@lists.sourceforge.net,
 linux-efi@vger.kernel.org, Jan Kara <jack@suse.cz>,
 reiserfs-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-xfs@vger.kernel.org,
 linux-nilfs@vger.kernel.org, linux-mtd@lists.infradead.org,
 ocfs2-devel@oss.oracle.com, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-btrfs@vger.kernel.org
References: <156116136742.1664814.17093419199766834123.stgit@magnolia>
 <156116138952.1664814.16552129914959122837.stgit@magnolia>
 <20190625105725.GB26085@infradead.org>
 <20190625170248.GS8917@twin.jikos.cz>
 <20190625171616.GB2230847@magnolia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625171616.GB2230847@magnolia>
User-Agent: Mutt/1.5.23.1 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_103234_143220_BDB639F2 
X-CRM114-Status: GOOD (  19.14  )
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-efi@vger.kernel.org, Jan Kara <jack@suse.cz>,
 linux-btrfs@vger.kernel.org, yuchao0@huawei.com, dsterba@suse.cz, clm@fb.com,
 adilger.kernel@dilger.ca, matthew.garrett@nebula.com, cluster-devel@redhat.com,
 Christoph Hellwig <hch@infradead.org>, linux-ext4@vger.kernel.org,
 reiserfs-devel@vger.kernel.org, josef@toxicpanda.com,
 linux-nilfs@vger.kernel.org, viro@zeniv.linux.org.uk, dsterba@suse.com,
 jaegeuk@kernel.org, tytso@mit.edu, ard.biesheuvel@linaro.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-xfs@vger.kernel.org, jk@ozlabs.org, jack@suse.com,
 linux-fsdevel@vger.kernel.org, linux-mtd@lists.infradead.org,
 ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 10:16:16AM -0700, Darrick J. Wong wrote:
> On Tue, Jun 25, 2019 at 07:02:48PM +0200, David Sterba wrote:
> > On Tue, Jun 25, 2019 at 03:57:25AM -0700, Christoph Hellwig wrote:
> > > On Fri, Jun 21, 2019 at 04:56:29PM -0700, Darrick J. Wong wrote:
> > > > From: Darrick J. Wong <darrick.wong@oracle.com>
> > > > 
> > > > Create a generic checking function for the incoming FS_IOC_FSSETXATTR
> > > > fsxattr values so that we can standardize some of the implementation
> > > > behaviors.
> > > > 
> > > > Signed-off-by: Darrick J. Wong <darrick.wong@oracle.com>
> > > > Reviewed-by: Jan Kara <jack@suse.cz>
> > > > ---
> > > >  fs/btrfs/ioctl.c   |   21 +++++++++-------
> > > >  fs/ext4/ioctl.c    |   27 ++++++++++++++------
> > > >  fs/f2fs/file.c     |   26 ++++++++++++++-----
> > > >  fs/inode.c         |   17 +++++++++++++
> > > >  fs/xfs/xfs_ioctl.c |   70 ++++++++++++++++++++++++++++++----------------------
> > > >  include/linux/fs.h |    3 ++
> > > >  6 files changed, 111 insertions(+), 53 deletions(-)
> > > > 
> > > > 
> > > > diff --git a/fs/btrfs/ioctl.c b/fs/btrfs/ioctl.c
> > > > index f408aa93b0cf..7ddda5b4b6a6 100644
> > > > --- a/fs/btrfs/ioctl.c
> > > > +++ b/fs/btrfs/ioctl.c
> > > > @@ -366,6 +366,13 @@ static int check_xflags(unsigned int flags)
> > > >  	return 0;
> > > >  }
> > > >  
> > > > +static void __btrfs_ioctl_fsgetxattr(struct btrfs_inode *binode,
> > > > +				     struct fsxattr *fa)
> > > > +{
> > > > +	memset(fa, 0, sizeof(*fa));
> > > > +	fa->fsx_xflags = btrfs_inode_flags_to_xflags(binode->flags);
> > > 
> > > Is there really much of a point in this helper? Epeciall as
> > > the zeroing could easily be done in the variable declaration
> > > line using
> > > 
> > > 	struct fsxattr fa = { };
> > 
> > Agreed, not counting the initialization the wrapper is merely another
> > name for btrfs_inode_flags_to_xflags. I also find it slightly confusing
> > that __btrfs_ioctl_fsgetxattr name is too close to the ioctl callback
> > implementation btrfs_ioctl_fsgetxattr but only does some initialization.
> 
> Ok; it's easily enough changed to:
> 
> 	struct fsxattr old_fa = {
> 		.fsx_xflags = btrfs_inode_flags_to_xflags(binode->flags),
> 	};

Works for me, thanks.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
