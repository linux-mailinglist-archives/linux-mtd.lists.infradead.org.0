Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9CF4DCCE
	for <lists+linux-mtd@lfdr.de>; Thu, 20 Jun 2019 23:39:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X9ICqeBd/nqG/KSwzzjbnoEecZE3+NAUFyBgjkPAySs=; b=OSuUrZF2LvbhIu
	0HB0ZCTVLNQa8k6no0nmoKRLhigS52EbHW4MUZX7szmx/wsDODAUYmxly0M2sypd6DvsGiUys6RsN
	ySOlXNWRx1+4ivQiDG16kO5vZBfi1KCCJJez8q3OfeacV7Iol6bQM+YOoKkC2FbgucT8j+yfORsOr
	ddh3H5iT6wNEWR5P0jsU14Zv6aRKG80zcFFeMR5knxP6C7za213vR0eiR5yOgYNSBo2iFA0zGB2kU
	0QQw19xNP5EpBh0kvdfEBo+0NSuzIeDU+fbKNPY86VH10UB7MDFHpRA6FCjj0jO3qQYnD+ZghWfBL
	kehsiwYUViGtATGAbizw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he4m6-00039g-0D; Thu, 20 Jun 2019 21:39:18 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he4li-0002xt-4C
 for linux-mtd@lists.infradead.org; Thu, 20 Jun 2019 21:38:55 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5KLYHVn088700;
 Thu, 20 Jun 2019 21:38:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=D3CnJNHOIgWdUG1TcE81fq/bsWj72ILMBiE1tAPqQwo=;
 b=HKn791tbDcSyV5tTwA4L7n0iz31Dp5T+PYftD80uW1HfTEOKSjNNo8ILTMjO1/Rv8cOI
 hpROCjBB23fPljyiuqdvwYxNy/xpAecXOJ97+qJXUbuQysBIXp6+kq1M1NohTdSt2o5m
 bdEHlQfhcUcK9Q2VlmkUVsRBf7mVWZm2yOm4eXP0y5gikqkZmSL3eKCbJdvsPzjLY50k
 BfxiWb1VEIm42WU1tUp/bKXk3/F6YlHbkAbzrc8pKPgHNgEvkWIV2bY4z7UBJVZQfH8/
 ZSoTLiWzgKluhc0l9SvuD6uztH108WS7lGdHTqumoJ0SNSOf6qr9qij979gZkZoaMzEB qg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2t7809kdj1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 20 Jun 2019 21:38:38 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5KLacer151050;
 Thu, 20 Jun 2019 21:36:38 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by aserp3020.oracle.com with ESMTP id 2t77ypkrr0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 20 Jun 2019 21:36:38 +0000
Received: from aserp3020.oracle.com (aserp3020.oracle.com [127.0.0.1])
 by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id x5KLabeL151041;
 Thu, 20 Jun 2019 21:36:37 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2t77ypkrqs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 20 Jun 2019 21:36:37 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5KLaWqH007037;
 Thu, 20 Jun 2019 21:36:32 GMT
Received: from localhost (/10.145.179.81)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 20 Jun 2019 14:36:31 -0700
Date: Thu, 20 Jun 2019 14:36:29 -0700
From: "Darrick J. Wong" <darrick.wong@oracle.com>
To: Jan Kara <jack@suse.cz>
Subject: Re: [PATCH 4/6] vfs: don't allow most setxattr to immutable files
Message-ID: <20190620213629.GB5375@magnolia>
References: <156022836912.3227213.13598042497272336695.stgit@magnolia>
 <156022840560.3227213.4776913678782966728.stgit@magnolia>
 <20190620140345.GI30243@quack2.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620140345.GI30243@quack2.suse.cz>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9294
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906200154
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_143854_326459_2FD5FB9D 
X-CRM114-Status: GOOD (  23.21  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 matthew.garrett@nebula.com, linux-nilfs@vger.kernel.org,
 linux-ext4@vger.kernel.org, devel@lists.orangefs.org, josef@toxicpanda.com,
 reiserfs-devel@vger.kernel.org, viro@zeniv.linux.org.uk, dsterba@suse.com,
 jaegeuk@kernel.org, tytso@mit.edu, ard.biesheuvel@linaro.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-xfs@vger.kernel.org, jk@ozlabs.org, jack@suse.com,
 linux-fsdevel@vger.kernel.org, linux-mtd@lists.infradead.org,
 ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 04:03:45PM +0200, Jan Kara wrote:
> On Mon 10-06-19 21:46:45, Darrick J. Wong wrote:
> > From: Darrick J. Wong <darrick.wong@oracle.com>
> > 
> > The chattr manpage has this to say about immutable files:
> > 
> > "A file with the 'i' attribute cannot be modified: it cannot be deleted
> > or renamed, no link can be created to this file, most of the file's
> > metadata can not be modified, and the file can not be opened in write
> > mode."
> > 
> > However, we don't actually check the immutable flag in the setattr code,
> > which means that we can update inode flags and project ids and extent
> > size hints on supposedly immutable files.  Therefore, reject setflags
> > and fssetxattr calls on an immutable file if the file is immutable and
> > will remain that way.
> > 
> > Signed-off-by: Darrick J. Wong <darrick.wong@oracle.com>
> > ---
> >  fs/inode.c |   31 +++++++++++++++++++++++++++++++
> >  1 file changed, 31 insertions(+)
> > 
> > 
> > diff --git a/fs/inode.c b/fs/inode.c
> > index a3757051fd55..adfb458bf533 100644
> > --- a/fs/inode.c
> > +++ b/fs/inode.c
> > @@ -2184,6 +2184,17 @@ int vfs_ioc_setflags_check(struct inode *inode, int oldflags, int flags)
> >  	    !capable(CAP_LINUX_IMMUTABLE))
> >  		return -EPERM;
> >  
> > +	/*
> > +	 * We aren't allowed to change any other flags if the immutable flag is
> > +	 * already set and is not being unset.
> > +	 */
> > +	if ((oldflags & FS_IMMUTABLE_FL) &&
> > +	    (flags & FS_IMMUTABLE_FL)) {
> > +		if ((oldflags & ~FS_IMMUTABLE_FL) !=
> > +		    (flags & ~FS_IMMUTABLE_FL))
> 
> This check looks a bit strange when you've just check FS_IMMUTABLE_FL isn't
> changing... Why not just oldflags != flags?
> 
> > +	if ((old_fa->fsx_xflags & FS_XFLAG_IMMUTABLE) &&
> > +	    (fa->fsx_xflags & FS_XFLAG_IMMUTABLE)) {
> > +		if ((old_fa->fsx_xflags & ~FS_XFLAG_IMMUTABLE) !=
> > +		    (fa->fsx_xflags & ~FS_XFLAG_IMMUTABLE))
> 
> Ditto here...

Good point!  I'll fix it.

--D

> 
> > +			return -EPERM;
> > +		if (old_fa->fsx_projid != fa->fsx_projid)
> > +			return -EPERM;
> > +		if ((fa->fsx_xflags & (FS_XFLAG_EXTSIZE |
> > +				       FS_XFLAG_EXTSZINHERIT)) &&
> > +		    old_fa->fsx_extsize != fa->fsx_extsize)
> > +			return -EPERM;
> > +		if ((old_fa->fsx_xflags & FS_XFLAG_COWEXTSIZE) &&
> > +		    old_fa->fsx_cowextsize != fa->fsx_cowextsize)
> > +			return -EPERM;
> > +	}
> > +
> >  	/* Extent size hints of zero turn off the flags. */
> >  	if (fa->fsx_extsize == 0)
> >  		fa->fsx_xflags &= ~(FS_XFLAG_EXTSIZE | FS_XFLAG_EXTSZINHERIT);
> 
> 								Honza
> -- 
> Jan Kara <jack@suse.com>
> SUSE Labs, CR

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
