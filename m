Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A0A56EC8
	for <lists+linux-mtd@lfdr.de>; Wed, 26 Jun 2019 18:31:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RfHkdegUWlf+5Z+O8PvkVR/mJVUJ3a7T/+r+tQ8rjbE=; b=PzimIPY2Sa2GNT
	NcsCowuYhrjAp/46wQw6IaHVeVmpXsPIKZcWo0mf8eiBOljUDpVTC0YwC74pX4HyKFWvgfjMoq3nE
	77WknVwkyL7KgWwGfvHn6WKi9p3axjCEO/bE/9St8h5AAVuu9Ng5wkZN6txIFGEhznk9tPdpT0O4Q
	BCN4AU/RWzANJPsVO1ZEWiIeiVqCyPk5s10EkBbRnsZ1z0+dHZ4009JdCzHnplE6VLtcNzIDon8Gh
	afI7bDXwFTxzEo/i3eeSB2w/PLc5JRr4O5I4CAyHHlSO8jl5qiKEcFkvmRUT8HSyvwuE0wB41niM4
	fy4N3fIsJ4TFAXIxnvqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgApP-0004Rr-KI; Wed, 26 Jun 2019 16:31:23 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgAp6-0004RM-Jy
 for linux-mtd@lists.infradead.org; Wed, 26 Jun 2019 16:31:06 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5QGU4Wg004218;
 Wed, 26 Jun 2019 16:30:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=Mz7em8B5BcTHywkzCrR8lugIdy2ootcWo4w3RRWBYaM=;
 b=N/a93ebuSSKM+1UIO0buPOjR9AvCbLsHhw01AwBMp/XW9BUb98JLnzoJbLgwOZFWmGyw
 hJdpkR7HkvPCAWlWLDnQsdQatbUdssqmn37SwPrTcAyE+/9x/iin4aJ6YtVFtP1GNmmr
 W4gQLbQG2SBcdOy5QNpDSE2/3fIVqQVrn7mZXub6KhldCj8Zzx/yQQ7a5EH7pzSZXmup
 IrJvp7zWK9kXgRoeoC8dGqS2tKAzLiR74Ta5S5LQWYLQBZWpbM10fUskgAys8/96vQdr
 G26RY/thy8CrA4lCa0mPtRoigi2YSG7nQksiKL4VCeGiPZV6yAFAimBMe+B5DQlWGUUd ig== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2t9brtbf85-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Jun 2019 16:30:39 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5QGRxdd192423;
 Wed, 26 Jun 2019 16:28:38 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by aserp3020.oracle.com with ESMTP id 2t9p6uvctr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 26 Jun 2019 16:28:38 +0000
Received: from aserp3020.oracle.com (aserp3020.oracle.com [127.0.0.1])
 by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id x5QGScxQ193859;
 Wed, 26 Jun 2019 16:28:38 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2t9p6uvctj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Jun 2019 16:28:38 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5QGSZWS032167;
 Wed, 26 Jun 2019 16:28:35 GMT
Received: from localhost (/10.159.137.246)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 26 Jun 2019 09:28:35 -0700
Date: Wed, 26 Jun 2019 09:28:31 -0700
From: "Darrick J. Wong" <darrick.wong@oracle.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH 5/5] vfs: don't allow writes to swap files
Message-ID: <20190626162831.GF5171@magnolia>
References: <156151637248.2283603.8458727861336380714.stgit@magnolia>
 <156151641177.2283603.7806026378321236401.stgit@magnolia>
 <20190626035151.GA10613@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626035151.GA10613@ZenIV.linux.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9300
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906260193
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_093104_752002_8233BEA2 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-efi@vger.kernel.org, linux-btrfs@vger.kernel.org, yuchao0@huawei.com,
 linux-mm@kvack.org, clm@fb.com, adilger.kernel@dilger.ca,
 matthew.garrett@nebula.com, linux-nilfs@vger.kernel.org, hch@infradead.org,
 linux-ext4@vger.kernel.org, devel@lists.orangefs.org, josef@toxicpanda.com,
 reiserfs-devel@vger.kernel.org, dsterba@suse.com, jaegeuk@kernel.org,
 tytso@mit.edu, ard.biesheuvel@linaro.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-xfs@vger.kernel.org,
 jk@ozlabs.org, jack@suse.com, linux-fsdevel@vger.kernel.org,
 linux-mtd@lists.infradead.org, ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 04:51:51AM +0100, Al Viro wrote:
> On Tue, Jun 25, 2019 at 07:33:31PM -0700, Darrick J. Wong wrote:
> > --- a/fs/attr.c
> > +++ b/fs/attr.c
> > @@ -236,6 +236,9 @@ int notify_change(struct dentry * dentry, struct iattr * attr, struct inode **de
> >  	if (IS_IMMUTABLE(inode))
> >  		return -EPERM;
> >  
> > +	if (IS_SWAPFILE(inode))
> > +		return -ETXTBSY;
> > +
> >  	if ((ia_valid & (ATTR_MODE | ATTR_UID | ATTR_GID | ATTR_TIMES_SET)) &&
> >  	    IS_APPEND(inode))
> >  		return -EPERM;
> 
> Er...  So why exactly is e.g. chmod(2) forbidden for swapfiles?  Or touch(1),
> for that matter...

Oops, that check is overly broad; I think the only attribute change we
need to filter here is ATTR_SIZE.... which we could do unconditionally
in inode_newsize_ok.

What's the use case for allowing userspace to increase the size of an
active swapfile?  I don't see any; the kernel has a permanent lease on
the file space mapping (at least until swapoff)...

> > diff --git a/mm/swapfile.c b/mm/swapfile.c
> > index 596ac98051c5..1ca4ee8c2d60 100644
> > --- a/mm/swapfile.c
> > +++ b/mm/swapfile.c
> > @@ -3165,6 +3165,19 @@ SYSCALL_DEFINE2(swapon, const char __user *, specialfile, int, swap_flags)
> >  	if (error)
> >  		goto bad_swap;
> >  
> > +	/*
> > +	 * Flush any pending IO and dirty mappings before we start using this
> > +	 * swap file.
> > +	 */
> > +	if (S_ISREG(inode->i_mode)) {
> > +		inode->i_flags |= S_SWAPFILE;
> > +		error = inode_drain_writes(inode);
> > +		if (error) {
> > +			inode->i_flags &= ~S_SWAPFILE;
> > +			goto bad_swap;
> > +		}
> > +	}
> 
> Why are swap partitions any less worthy of protection?

Hmm, yeah, S_SWAPFILE should apply to block devices too.  I figured that
the mantra of "sane tools will open block devices with O_EXCL" should
have sufficed, but there's really no reason to allow that either.

--D

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
