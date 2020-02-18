Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8F8161FB2
	for <lists+linux-mtd@lfdr.de>; Tue, 18 Feb 2020 05:02:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C4UOwkR8+prOuNEvjWrXzzVpXM9okUv2LJTGbfJwXGk=; b=QfTyf4/fBscivp
	BqxGoPSx5pY2d3Quk1eT8hHgQs+5Ehb7vbGBxyGB1/tXl6GrC37KpzusQnE40dpQlUuMnXkJi3MUQ
	9LnqAHuyqbdDJ0qNYOdCW85VGvPunjsHXnrX3dVaIydtiz2vMcvfcSIiztL1VPkhGDulHuF997Gca
	kscWjthty9eopPUfWrrOMyQmN29XQeGC9KAmm//Zlr7HbmYNbOtngqwy2EJITLOpHc3NQk0l7i3TZ
	dsqm17Ayxu0WAkeGKtj8jjaGbdIF4YSCWaD8IPbJ9O9CiJ7HPVTK1g4I7eXReA7lXqVgchRRCgAyY
	4GS28rLdwkcgE6RlJ5dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3u58-00079R-NE; Tue, 18 Feb 2020 04:01:58 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1j3u4w-00078u-UB; Tue, 18 Feb 2020 04:01:46 +0000
Date: Mon, 17 Feb 2020 20:01:46 -0800
From: Matthew Wilcox <willy@infradead.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 00/44] Manually convert filesystem FS documents to ReST
Message-ID: <20200218040146.GM7778@bombadil.infradead.org>
References: <cover.1581955849.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1581955849.git.mchehab+huawei@kernel.org>
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
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 Martin Brandenburg <martin@omnibond.com>, Jan Kara <jack@suse.cz>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Amir Goldstein <amir73il@gmail.com>, Bob Copeland <me@bobcopeland.com>,
 David Howells <dhowells@redhat.com>, Chris Mason <clm@fb.com>,
 linux-mtd@lists.infradead.org, Ilya Dryomov <idryomov@gmail.com>,
 linux-afs@lists.infradead.org, Mike Marshall <hubcap@omnibond.com>,
 Naohiro Aota <naohiro.aota@wdc.com>, Christoph Hellwig <hch@infradead.org>,
 linux-nilfs@vger.kernel.org, Andreas Gruenbacher <agruenba@redhat.com>,
 Sage Weil <sage@redhat.com>, Jonathan Corbet <corbet@lwn.net>,
 Richard Weinberger <richard@nod.at>, Tyler Hicks <code@tyhicks.com>,
 cluster-devel@redhat.com, v9fs-developer@lists.sourceforge.net,
 Gao Xiang <xiang@kernel.org>, linux-ext4@vger.kernel.org,
 Salah Triki <salah.triki@gmail.com>, Alexey Dobriyan <adobriyan@gmail.com>,
 devel@lists.orangefs.org, Chao Yu <chao@kernel.org>,
 Eric Van Hensbergen <ericvh@gmail.com>, ecryptfs@vger.kernel.org,
 Josef Bacik <josef@toxicpanda.com>, Bob Peterson <rpeterso@redhat.com>,
 "Tigran A. Aivazian" <aivazian.tigran@gmail.com>,
 David Sterba <dsterba@suse.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 ceph-devel@vger.kernel.org, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>, Damien Le Moal <damien.lemoal@wdc.com>,
 Luis de Bethencourt <luisbg@kernel.org>, Nicolas Pitre <nico@fluxnic.net>,
 linux-ntfs-dev@lists.sourceforge.net, Jeff Layton <jlayton@kernel.org>,
 linux-f2fs-devel@lists.sourceforge.net, ocfs2-devel@oss.oracle.com,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 Phillip Lougher <phillip@squashfs.org.uk>, Johannes Thumshirn <jth@kernel.org>,
 linux-erofs@lists.ozlabs.org, linux-karma-devel@lists.sourceforge.net,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 05:11:46PM +0100, Mauro Carvalho Chehab wrote:
> There are lots of plain text documents under Documentation/filesystems.
> 
> Manually convert several of those to ReST and add them to the index file.

I think at least 90% of this material needs to be in admin-guide.  Should
we create Documentation/admin-guide/filesystems/ and move most of these
files there?

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
