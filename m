Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E35156DC9
	for <lists+linux-mtd@lfdr.de>; Wed, 26 Jun 2019 17:36:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yX4MqoTJbfVqVGW17jNdz2/3liJaxE4rRfiKbYgMwkw=; b=fGFugKwHfvs1nK
	dqElBqCoYmVeJz5ccOihUsPfc2gIcs2Rzaw4Qtt1+qxbqVKs8TpaqybTbKOHY3145kAU/BMYKwWtJ
	b5a7FhTiI9pcNcMTuctIBuyToU6sz9lxF5uwxgqsWtXJyikAtzSo2q4dGkHra2/JmrNZFFWyZwXri
	n289VhX4l7YnSVUgFAF2w6GsaI5UMbkZ3+ViTg9uxcU8dMhq72g5mJiDjhHRaYBll12oWRnvF1Nr2
	EBISsqOKE9u9xz+O/bLBeT4RX1EYES2i8DOrSUU1rGFINSALBOXVTaVcV+vsoyqdMIQbl2G4tJytg
	P6Dtljwrf9W4NtUrBjqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg9y1-0005zL-3S; Wed, 26 Jun 2019 15:36:13 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg9xr-0005yx-Lt
 for linux-mtd@lists.infradead.org; Wed, 26 Jun 2019 15:36:05 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5QFXoje151326;
 Wed, 26 Jun 2019 15:35:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=9G5PiDG0S7gskQAEA+1rG18NFPpT+WoUOG9H+94vGJo=;
 b=Mr0csDp/6gFDwuuR4WcTjSwEQhZRUvDp0wq3YeKCIR/ppK1h93X/GLwv9+Y3cvXAo/We
 nBBPCWspqpkQf8Ya9/6yEHadZ9h5/AK9JEwgQLT2OJ63YoS19u03moZ7UXD928KK75Tw
 IYGgl4G6FFtMYGPdEh6jhDWXC8Gi+dRHPoIK4U9EU9fQhY9zQayETLpTGjqGl7XpA008
 xvtm1tvTyzmAnCbVLIgcaAr+22UL4c7SemsbRVUkLI8sB/S8GoHCuFEiRRnlmAb3SWPf
 RtSXc0WG3A/565vb1OMt7fUapvm0eYSNFeeM5VPPlY8RA+hUmYz247kCS97awaKxof1X 1A== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2t9brtb5ka-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Jun 2019 15:35:48 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5QFZWnl185666;
 Wed, 26 Jun 2019 15:35:48 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by aserp3030.oracle.com with ESMTP id 2t9accs0fq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 26 Jun 2019 15:35:48 +0000
Received: from aserp3030.oracle.com (aserp3030.oracle.com [127.0.0.1])
 by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id x5QFZlgQ186348;
 Wed, 26 Jun 2019 15:35:47 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2t9accs0fn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Jun 2019 15:35:47 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5QFZjvI031893;
 Wed, 26 Jun 2019 15:35:45 GMT
Received: from localhost (/10.159.137.246)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 26 Jun 2019 08:35:45 -0700
Date: Wed, 26 Jun 2019 08:35:42 -0700
From: "Darrick J. Wong" <darrick.wong@oracle.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH 2/5] vfs: create a generic checking function for
 FS_IOC_FSSETXATTR
Message-ID: <20190626153542.GE5171@magnolia>
References: <156151632209.2283456.3592379873620132456.stgit@magnolia>
 <156151633829.2283456.834142172527987802.stgit@magnolia>
 <20190626041133.GB32272@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626041133.GB32272@ZenIV.linux.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9299
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906260182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_083603_855384_ECDCB762 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-efi@vger.kernel.org, Jan Kara <jack@suse.cz>, hch@infradead.org,
 linux-btrfs@vger.kernel.org, yuchao0@huawei.com, clm@fb.com,
 adilger.kernel@dilger.ca, matthew.garrett@nebula.com,
 linux-nilfs@vger.kernel.org, cluster-devel@redhat.com,
 linux-ext4@vger.kernel.org, josef@toxicpanda.com,
 reiserfs-devel@vger.kernel.org, dsterba@suse.com, jaegeuk@kernel.org,
 tytso@mit.edu, ard.biesheuvel@linaro.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-xfs@vger.kernel.org,
 jk@ozlabs.org, jack@suse.com, linux-fsdevel@vger.kernel.org,
 linux-mtd@lists.infradead.org, ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 05:11:33AM +0100, Al Viro wrote:
> On Tue, Jun 25, 2019 at 07:32:18PM -0700, Darrick J. Wong wrote:
> > --- a/fs/btrfs/ioctl.c
> > +++ b/fs/btrfs/ioctl.c
> > @@ -373,10 +373,9 @@ static int check_xflags(unsigned int flags)
> >  static int btrfs_ioctl_fsgetxattr(struct file *file, void __user *arg)
> >  {
> >  	struct btrfs_inode *binode = BTRFS_I(file_inode(file));
> > -	struct fsxattr fa;
> > -
> > -	memset(&fa, 0, sizeof(fa));
> > -	fa.fsx_xflags = btrfs_inode_flags_to_xflags(binode->flags);
> > +	struct fsxattr fa = {
> > +		.fsx_xflags = btrfs_inode_flags_to_xflags(binode->flags),
> > +	};
> 
> Umm...  Sure, there's no padding, but still - you are going to copy that thing
> to userland...  How about
> 
> static inline void simple_fill_fsxattr(struct fsxattr *fa, unsigned xflags)
> {
> 	memset(fa, 0, sizeof(*fa));
> 	fa->fsx_xflags = xflags;
> }
> 
> and let the compiler optimize the crap out?

The v2 series used to do that, but Christoph complained that having a
helper for a two-line memset and initialization was silly[1] so now we
have this version.

I don't mind reinstating it as a static inline helper, but I'd like some
input from any of the btrfs developers (or you, Al) about which form is
preferred.

--D

[1] https://lkml.org/lkml/2019/6/25/533

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
