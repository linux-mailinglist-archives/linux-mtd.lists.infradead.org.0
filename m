Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BECBEC65D
	for <lists+linux-mtd@lfdr.de>; Fri,  1 Nov 2019 17:07:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oCMqrmWX1+CigECGWMRMPVl7SzsylHDSedu/SmqlJ4o=; b=T9Q4qbo76p/FeA
	AD82ZyCMAO+65oYh5FALLBrSR6GbgSbs7akTYwAiMgip5wgsjhw6Y2b/VN2kYuoKQWH4acPHN9P25
	WjdhXaBwNWgImZUeB0rxLGzeY+pDgUAt0WJhsBnmCilD3jQGe5QSVHSKcj4WRE/+zP2BgQftpDpWf
	8kF4EhcnjA1uYOP9RptO/8k583O07roWMSSkxVDlpU+nbQ6li6aNJBWD8KY47dutGfTv/OvHBe+6q
	owOsMI9+14+BiyKUa5fNTadtuI3IFDLPV1SsoICZfXaC8m+awnUGCSnmWGNFAMV5GWYCEmg1kW13m
	UiFvxrWr666M/98NGDWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZSX-0007QM-R8; Fri, 01 Nov 2019 16:07:33 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZSA-0006yL-UE
 for linux-mtd@lists.infradead.org; Fri, 01 Nov 2019 16:07:13 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 5D4BDB4B9;
 Fri,  1 Nov 2019 16:07:07 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
 id F0F0D1E482F; Fri,  1 Nov 2019 17:07:06 +0100 (CET)
Date: Fri, 1 Nov 2019 17:07:06 +0100
From: Jan Kara <jack@suse.cz>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH 04/10] quota: Allow to pass mount path to quotactl
Message-ID: <20191101160706.GA23441@quack2.suse.cz>
References: <20191030152702.14269-1-s.hauer@pengutronix.de>
 <20191030152702.14269-5-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030152702.14269-5-s.hauer@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_090711_278177_68ECE082 
X-CRM114-Status: GOOD (  22.56  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: linux-fsdevel@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 linux-mtd@lists.infradead.org, kernel@pengutronix.de, Jan Kara <jack@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed 30-10-19 16:26:56, Sascha Hauer wrote:
> This patch introduces the Q_PATH flag to the quotactl cmd argument.
> When given, the path given in the special argument to quotactl will
> be the mount path where the filesystem is mounted, instead of a path
> to the block device.
> This is necessary for filesystems which do not have a block device as
> backing store. Particularly this is done for upcoming UBIFS support.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Thanks for the patch! Some smaller comments below...

> ---
>  fs/quota/quota.c           | 37 ++++++++++++++++++++++++++++---------
>  include/uapi/linux/quota.h |  1 +
>  2 files changed, 29 insertions(+), 9 deletions(-)
> 
> diff --git a/fs/quota/quota.c b/fs/quota/quota.c
> index cb13fb76dbee..035cdd1b022b 100644
> --- a/fs/quota/quota.c
> +++ b/fs/quota/quota.c
> @@ -19,6 +19,7 @@
>  #include <linux/types.h>
>  #include <linux/writeback.h>
>  #include <linux/nospec.h>
> +#include <linux/mount.h>
>  
>  static int check_quotactl_permission(struct super_block *sb, int type, int cmd,
>  				     qid_t id)
> @@ -825,12 +826,16 @@ int kernel_quotactl(unsigned int cmd, const char __user *special,
>  {
>  	uint cmds, type;
>  	struct super_block *sb = NULL;
> -	struct path path, *pathp = NULL;
> +	struct path path, *pathp = NULL, qpath;

Maybe call these two 'file_path', 'file_pathp', and 'sb_path' to make it
clearer which path is which?

>  	int ret;
> +	bool q_path;
>  
>  	cmds = cmd >> SUBCMDSHIFT;
>  	type = cmd & SUBCMDMASK;
>  
> +	q_path = cmds & Q_PATH;
> +	cmds &= ~Q_PATH;
> +
>  	/*
>  	 * As a special case Q_SYNC can be called without a specific device.
>  	 * It will iterate all superblocks that have quota enabled and call
> @@ -855,19 +860,33 @@ int kernel_quotactl(unsigned int cmd, const char __user *special,
>  			pathp = &path;
>  	}
>  
> -	sb = quotactl_block(special, cmds);
> -	if (IS_ERR(sb)) {
> -		ret = PTR_ERR(sb);
> -		goto out;
> +	if (q_path) {
> +		ret = user_path_at(AT_FDCWD, special, LOOKUP_FOLLOW|LOOKUP_AUTOMOUNT,
> +				   &qpath);
> +		if (ret)
> +			goto out1;
> +
> +		sb = qpath.mnt->mnt_sb;
> +	} else {
> +		sb = quotactl_block(special, cmds);
> +		if (IS_ERR(sb)) {
> +			ret = PTR_ERR(sb);
> +			goto out;
> +		}
>  	}
>  
>  	ret = do_quotactl(sb, type, cmds, id, addr, pathp);
>  
> -	if (!quotactl_cmd_onoff(cmds))
> -		drop_super(sb);
> -	else
> -		drop_super_exclusive(sb);
> +	if (!q_path) {
> +		if (!quotactl_cmd_onoff(cmds))
> +			drop_super(sb);
> +		else
> +			drop_super_exclusive(sb);
> +	}
>  out:
> +	if (q_path)
> +		path_put(&qpath);
> +out1:

Why do you need out1? If you leave 'out' as is, things should just work.
And you can also combine the above if like:

	if (q_path) {
		path_put(&qpath);
	} else {
		if (!quotactl_cmd_onoff(cmds))
			drop_super(sb);
		else
			drop_super_exclusive(sb);
	}

which would then make it more obvious, what's actually going on...

Otherwise the patch looks good to me.

								Honza

-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
