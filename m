Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4E414C46C
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Jan 2020 02:31:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fRKnUWM7KOHh8tnTDu3wK/TbJXYb7iPhV1JMMypRVFU=; b=hdjyoXIw/6G19w
	qrc+pDCo0jC6nHDdGuxjXeHhbpx14bW481wDV8wNefMbO/6VTcZQjDwaFknzl4tbjzpwkAvCPQ0Dr
	XRslXeepWWVq93+C1Jst/pM3M4qrS0l1B+8QabVXu3mnDvOAixu1mFQhNr27T3i+Gu3GUVuL5Yv6Z
	diW5BP//XZ4YCYUfgctOQ8BRzENgXZIg7vfezXkO6koCczR/fg5I6GrTl9G7rMkMMYshSRgwsWdcf
	mLeugbtziazsDdOlsXrBb3YLBEy7tpYO8RPl+Iib6YWqt6CD4FJpJxlWYaY3tgyiD0347gdHfcR/4
	+1Zhr5uVVQRKdXHScujg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwcCv-0008Nu-I2; Wed, 29 Jan 2020 01:31:53 +0000
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwcCl-00076n-Ji
 for linux-mtd@lists.infradead.org; Wed, 29 Jan 2020 01:31:45 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iwcAb-00443D-Pr; Wed, 29 Jan 2020 01:29:29 +0000
Date: Wed, 29 Jan 2020 01:29:29 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH 1/8] quota: Allow to pass mount path to quotactl
Message-ID: <20200129012929.GV23230@ZenIV.linux.org.uk>
References: <20200124131323.23885-1-s.hauer@pengutronix.de>
 <20200124131323.23885-2-s.hauer@pengutronix.de>
 <20200127104518.GC19414@quack2.suse.cz>
 <20200128100631.zv7cn726twylcmb7@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128100631.zv7cn726twylcmb7@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_173143_649454_8FE60154 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.92.253.2 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.92.253.2 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Jan Kara <jack@suse.cz>, Richard Weinberger <richard@nod.at>,
 linux-mtd@lists.infradead.org, kernel@pengutronix.de, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 11:06:31AM +0100, Sascha Hauer wrote:
> Hi Jan,

> @@ -810,6 +811,36 @@ static struct super_block *quotactl_block(const char __user *special, int cmd)
>  #endif
>  }
>  
> +static struct super_block *quotactl_path(const char __user *special, int cmd,
> +					 struct path *path)
> +{
> +	struct super_block *sb;
> +	int ret;
> +
> +	ret = user_path_at(AT_FDCWD, special, LOOKUP_FOLLOW | LOOKUP_AUTOMOUNT,
> +			   path);
> +	if (ret)
> +		return ERR_PTR(ret);
> +
> +	sb = path->mnt->mnt_sb;
> +restart:
> +	if (quotactl_cmd_onoff(cmd))
> +		down_write(&sb->s_umount);
> +	else
> +		down_read(&sb->s_umount);
> +
> +	if (quotactl_cmd_write(cmd) && sb->s_writers.frozen != SB_UNFROZEN) {
> +		if (quotactl_cmd_onoff(cmd))
> +			up_write(&sb->s_umount);
> +		else
> +			up_read(&sb->s_umount);
> +		wait_event(sb->s_writers.wait_unfrozen,
> +			   sb->s_writers.frozen == SB_UNFROZEN);
> +		goto restart;
> +	}
> +
> +	return sb;
> +}

This partial duplicate of __get_super_thawed() guts does *not* belong here,
especially not interleaved with quota-specific checks.

> +	if (q_path) {
> +		if (quotactl_cmd_onoff(cmd))
> +			up_write(&sb->s_umount);
> +		else
> +			up_read(&sb->s_umount);
> +
> +		path_put(&sb_path);
> +	} else {
> +		if (!quotactl_cmd_onoff(cmds))
> +			drop_super(sb);
> +		else
> +			drop_super_exclusive(sb);
> +	}

Er...  Why not have the same code that you've used to lock the damn thing
(needs to be moved to fs/super.c) simply get a passive ref to it?  Then
you could do the same thing, q_path or no q_path...

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
