Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E81944DD3B
	for <lists+linux-mtd@lfdr.de>; Fri, 21 Jun 2019 00:10:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p5a4yld6r6kpWLjaaZGSjL62bzim/ZGDFt2L2Lop1eE=; b=q3i5SUD0G7+zf3
	z8qd1OVkpEJkRdw+SGdVABRQ3i1rFr2MERsD/4DsTd4qk0rYMZG87uxRuzqpz80N1zKOnRNzdS4Ft
	tMmaRb+GfYi3Dvzr/bJpJIBAmosmMb1dLSOZ9VTM/yNyHWL9NIXlj217imilGP6iP8XuktBW0l4Vm
	3eo3/O4OsewFaTnSB39zVnBNlqUcImY3i3tU7efYZb7tw/O8uEUnwd+hWaoJlw3Epw4MLliKwRSxg
	0OayWFjGTXAv/LSjwUPAkVPqsA0eWUpfS/oNApHEKROrIt8KOvnO9Du4wScSGH+m/h8TfhtdeY1Ci
	L/BcDGHQbdeCmopgdqUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he5G5-0000u1-3H; Thu, 20 Jun 2019 22:10:17 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he5Fv-00087h-CO
 for linux-mtd@lists.infradead.org; Thu, 20 Jun 2019 22:10:08 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5KM3qBJ117650;
 Thu, 20 Jun 2019 22:09:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=34yrDpyIlCnapuEelQkMxzELpTn9E3Oq0EEgTNp3pMo=;
 b=wEo3wGjoiDRLmfFiBOSYftkqF9BxyNKUscmBHul8oqMnrOQ2CuuZil1ROkycJEV6VL7i
 K/EZENHDp/fbYpjQeBCVWiy/W0Tz7wb4eQqeU8hP8XSZ126W7yTiTbuSaF2YghMDkyDz
 1JjI5jgZUM6pLkd8QOel+rUwWuFInCdHZHVl+HAdZhL5eL30xXYf07aNzmm5sQfUY3Xi
 u8qnsSTO1Nnw83kcS80Cgv88V0Im23B5q/abGAirRb0yn4qxQanHw+7gT0cIk1IKOss/
 NQ08jOFoC7P0Gxtp1eUAT6k37gmOMLQ6i9bzdXCoNF+Y2BY5IL9mn4FAiou7/jCFeHkN BA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2t7809kfc9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 20 Jun 2019 22:09:48 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5KM9DaG104726;
 Thu, 20 Jun 2019 22:09:47 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by userp3020.oracle.com with ESMTP id 2t77ynv76j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 20 Jun 2019 22:09:47 +0000
Received: from userp3020.oracle.com (userp3020.oracle.com [127.0.0.1])
 by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id x5KM9lfD106008;
 Thu, 20 Jun 2019 22:09:47 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 2t77ynv76b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 20 Jun 2019 22:09:47 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5KM9hLr020247;
 Thu, 20 Jun 2019 22:09:43 GMT
Received: from localhost (/10.145.179.81)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 20 Jun 2019 15:09:43 -0700
Date: Thu, 20 Jun 2019 15:09:40 -0700
From: "Darrick J. Wong" <darrick.wong@oracle.com>
To: Jan Kara <jack@suse.cz>
Subject: Re: [PATCH 2/6] vfs: flush and wait for io when setting the
 immutable flag via SETFLAGS
Message-ID: <20190620220940.GC5375@magnolia>
References: <156022836912.3227213.13598042497272336695.stgit@magnolia>
 <156022838496.3227213.3771632042609589318.stgit@magnolia>
 <20190620140028.GH30243@quack2.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620140028.GH30243@quack2.suse.cz>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9294
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=772 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906200158
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_151007_520873_57C88F09 
X-CRM114-Status: GOOD (  23.99  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
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

On Thu, Jun 20, 2019 at 04:00:28PM +0200, Jan Kara wrote:
> On Mon 10-06-19 21:46:25, Darrick J. Wong wrote:
> > From: Darrick J. Wong <darrick.wong@oracle.com>
> > 
> > When we're using FS_IOC_SETFLAGS to set the immutable flag on a file, we
> > need to ensure that userspace can't continue to write the file after the
> > file becomes immutable.  To make that happen, we have to flush all the
> > dirty pagecache pages to disk to ensure that we can fail a page fault on
> > a mmap'd region, wait for pending directio to complete, and hope the
> > caller locked out any new writes by holding the inode lock.
> > 
> > Signed-off-by: Darrick J. Wong <darrick.wong@oracle.com>
> 
> ...
> 
> > diff --git a/fs/ext4/ioctl.c b/fs/ext4/ioctl.c
> > index 6aa1df1918f7..a05341b94d98 100644
> > --- a/fs/ext4/ioctl.c
> > +++ b/fs/ext4/ioctl.c
> > @@ -290,6 +290,9 @@ static int ext4_ioctl_setflags(struct inode *inode,
> >  	jflag = flags & EXT4_JOURNAL_DATA_FL;
> >  
> >  	err = vfs_ioc_setflags_check(inode, oldflags, flags);
> > +	if (err)
> > +		goto flags_out;
> > +	err = vfs_ioc_setflags_flush_data(inode, flags);
> >  	if (err)
> >  		goto flags_out;
> >  
> 
> ...
> 
> > diff --git a/include/linux/fs.h b/include/linux/fs.h
> > index 8dad3c80b611..9c899c63957e 100644
> > --- a/include/linux/fs.h
> > +++ b/include/linux/fs.h
> > @@ -3548,7 +3548,41 @@ static inline struct sock *io_uring_get_socket(struct file *file)
> >  
> >  int vfs_ioc_setflags_check(struct inode *inode, int oldflags, int flags);
> >  
> > +/*
> > + * Do we need to flush the file data before changing attributes?  When we're
> > + * setting the immutable flag we must stop all directio writes and flush the
> > + * dirty pages so that we can fail the page fault on the next write attempt.
> > + */
> > +static inline bool vfs_ioc_setflags_need_flush(struct inode *inode, int flags)
> > +{
> > +	if (S_ISREG(inode->i_mode) && !IS_IMMUTABLE(inode) &&
> > +	    (flags & FS_IMMUTABLE_FL))
> > +		return true;
> > +
> > +	return false;
> > +}
> > +
> > +/*
> > + * Flush file data before changing attributes.  Caller must hold any locks
> > + * required to prevent further writes to this file until we're done setting
> > + * flags.
> > + */
> > +static inline int inode_flush_data(struct inode *inode)
> > +{
> > +	inode_dio_wait(inode);
> > +	return filemap_write_and_wait(inode->i_mapping);
> > +}
> > +
> > +/* Flush file data before changing attributes, if necessary. */
> > +static inline int vfs_ioc_setflags_flush_data(struct inode *inode, int flags)
> > +{
> > +	if (vfs_ioc_setflags_need_flush(inode, flags))
> > +		return inode_flush_data(inode);
> > +	return 0;
> > +}
> > +
> 
> But this is racy at least for page faults, isn't it? What protects you
> against write faults just after filemap_write_and_wait() has finished?
> So either you need to set FS_IMMUTABLE_FL before flushing data or you need
> to get more protection from the fs than just i_rwsem. In the case of ext4
> that would be i_mmap_rwsem but other filesystems don't have equivalent
> protection...

Yes, I see that now.  I think it'll work to set S_IMMUTABLE before
trying the flush, so long as I am careful to put the call sites right
before we update the inode flags.

--D

> 
> 								Honza
> -- 
> Jan Kara <jack@suse.com>
> SUSE Labs, CR

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
