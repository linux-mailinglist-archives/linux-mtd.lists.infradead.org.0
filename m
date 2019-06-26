Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F268D56113
	for <lists+linux-mtd@lfdr.de>; Wed, 26 Jun 2019 06:03:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r2iOotSrFmGdf20UbCUU52praHEbJSVN6jJjq1+Ex3M=; b=XPEj9luCkdidjF
	xOzei0GpbwIbzC3lOBow70jyKwkBjqShlArwwQt8r1tIz1vX5OgWkj9HMjmItz0dIoZTiAXkhCc5a
	8aKFTZYpbJ7yrJcwYCkPZwrukNr98z/Pv9+UE6AkPfCkUtVWb5eyPjnQ5oXOGWrnND7ahiy6aV0kx
	6RhLet74kzhp6DusgVh1lgXskkATKZrqvVJTFY9Gxlv7EI83fHjAdk5RbXn5MGyh2W6Lm3ff1LEoJ
	Z6gimrOls7/vJLqLFs5Mrh4tzXZifYNN1PRDNfx4O3LIgrRhgyIuPCkgH6hx4h2ZZ/nvo8G4snHuc
	FsQ9DXKcSoAqOj2wZxHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfz9E-0004LC-Va; Wed, 26 Jun 2019 04:03:05 +0000
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfz93-0004Ku-FB
 for linux-mtd@lists.infradead.org; Wed, 26 Jun 2019 04:02:54 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hfz8F-000086-0E; Wed, 26 Jun 2019 04:02:03 +0000
Date: Wed, 26 Jun 2019 05:02:02 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: "Darrick J. Wong" <darrick.wong@oracle.com>
Subject: Re: [PATCH 1/5] vfs: create a generic checking and prep function for
 FS_IOC_SETFLAGS
Message-ID: <20190626040202.GA32272@ZenIV.linux.org.uk>
References: <156151632209.2283456.3592379873620132456.stgit@magnolia>
 <156151633004.2283456.4175543089138173586.stgit@magnolia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156151633004.2283456.4175543089138173586.stgit@magnolia>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_210253_508616_96151B21 
X-CRM114-Status: UNSURE (   6.12  )
X-CRM114-Notice: Please train this message.
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-efi@vger.kernel.org, Jan Kara <jack@suse.cz>, hch@infradead.org,
 linux-btrfs@vger.kernel.org, yuchao0@huawei.com, clm@fb.com,
 adilger.kernel@dilger.ca, Christoph Hellwig <hch@lst.de>,
 matthew.garrett@nebula.com, linux-nilfs@vger.kernel.org,
 cluster-devel@redhat.com, linux-ext4@vger.kernel.org, josef@toxicpanda.com,
 reiserfs-devel@vger.kernel.org, dsterba@suse.com, jaegeuk@kernel.org,
 tytso@mit.edu, ard.biesheuvel@linaro.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-xfs@vger.kernel.org,
 jk@ozlabs.org, jack@suse.com, linux-fsdevel@vger.kernel.org,
 linux-mtd@lists.infradead.org, ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 07:32:10PM -0700, Darrick J. Wong wrote:
> From: Darrick J. Wong <darrick.wong@oracle.com>
> 
> Create a generic function to check incoming FS_IOC_SETFLAGS flag values
> and later prepare the inode for updates so that we can standardize the
> implementations that follow ext4's flag values.

Change in efivarfs behaviour deserves a note.  I'm not saying it's wrong,
but behaviour is changed there - no-op FS_IOC_SETFLAGS used to fail
without CAP_LINUX_IMMUTABLE...

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
