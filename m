Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D244DE35
	for <lists+linux-mtd@lfdr.de>; Fri, 21 Jun 2019 02:54:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D4IFLkTtRkSTuVoj7eWSesTAqGqbH+qcDnt5GyBLnoM=; b=pFeqiXVGEPxFT/
	N17Nis0//ofu55TJjuwqMGWp/ibaf/Uqb+OpkyYjZ0TUqeel767PeD3NKKiAWRXjcYj5sym94xf2+
	AaikfGhyuIlECCodzVCjlbgIjAEqscw8H5h6vGF2tciurH3J9MA3HTmezNcbMAMPn8oDjkpJCfmr5
	nrfDFSY448QsbrByrdRfLfWqxtwFTxTjF9tuDu5qXBHUCth6mhGWcczXf/9unXOokzQvzqSBluugJ
	vU3R5sHB5mCrzko83bjMS76x9e7OuHwr1fZHrFLOqQW9eGJULChduEk24DRbRyBjTIhHdKna+c1/p
	9coSksaAkSovCKv+sZcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he7pH-0004pO-9S; Fri, 21 Jun 2019 00:54:47 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he7p7-0004p2-5J
 for linux-mtd@lists.infradead.org; Fri, 21 Jun 2019 00:54:38 +0000
Received: from callcc.thunk.org (guestnat-104-133-0-109.corp.google.com
 [104.133.0.109] (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x5L0sK0h000800
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 20 Jun 2019 20:54:21 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id 28403420484; Thu, 20 Jun 2019 20:54:20 -0400 (EDT)
Date: Thu, 20 Jun 2019 20:54:20 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: "Darrick J. Wong" <darrick.wong@oracle.com>
Subject: Re: [PATCH 1/6] mm/fs: don't allow writes to immutable files
Message-ID: <20190621005420.GH4650@mit.edu>
Mail-Followup-To: Theodore Ts'o <tytso@mit.edu>,
 "Darrick J. Wong" <darrick.wong@oracle.com>,
 matthew.garrett@nebula.com, yuchao0@huawei.com,
 ard.biesheuvel@linaro.org, josef@toxicpanda.com, clm@fb.com,
 adilger.kernel@dilger.ca, viro@zeniv.linux.org.uk, jack@suse.com,
 dsterba@suse.com, jaegeuk@kernel.org, jk@ozlabs.org,
 reiserfs-devel@vger.kernel.org, linux-efi@vger.kernel.org,
 devel@lists.orangefs.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-xfs@vger.kernel.org,
 linux-mm@kvack.org, linux-nilfs@vger.kernel.org,
 linux-mtd@lists.infradead.org, ocfs2-devel@oss.oracle.com,
 linux-fsdevel@vger.kernel.org, linux-ext4@vger.kernel.org,
 linux-btrfs@vger.kernel.org
References: <156022836912.3227213.13598042497272336695.stgit@magnolia>
 <156022837711.3227213.11787906519006016743.stgit@magnolia>
 <20190620215212.GG4650@mit.edu> <20190620221306.GD5375@magnolia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620221306.GD5375@magnolia>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_175437_431893_537B03B4 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [18.9.28.11 listed in list.dnswl.org]
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
 jaegeuk@kernel.org, ard.biesheuvel@linaro.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-xfs@vger.kernel.org,
 jk@ozlabs.org, jack@suse.com, linux-fsdevel@vger.kernel.org,
 linux-mtd@lists.infradead.org, ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 03:13:06PM -0700, Darrick J. Wong wrote:
> > I note that this patch doesn't allow writes to swap files.  So Amir's
> > generic/554 test will still fail for those file systems that don't use
> > copy_file_range.
> 
> I didn't add any IS_SWAPFILE checks here, so I'm not sure to what you're
> referring?

Sorry, my bad; I mistyped.  What I should have said is this patch
doesn't *prohibit* writes to swap files....

(And so Amir's generic/554 test, even modified so it allow reads from
swapfiles, but not writes, when using copy_file_range, is still
failing for ext4.  I was looking to see if I could remove it from my
exclude list, but not yet.  :-)

> > I'm indifferent as to whether you add a new patch, or include that
> > change in this patch, but perhaps we should fix this while we're
> > making changes in these code paths?
> 
> The swapfile patches should be in a separate patch, which I was planning
> to work on but hadn't really gotten around to it.

Ok, great, thanks!!

				- Ted

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
