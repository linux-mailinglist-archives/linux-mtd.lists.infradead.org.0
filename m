Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3316916F6E
	for <lists+linux-mtd@lfdr.de>; Wed,  8 May 2019 05:20:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1nmI+DY4X2OZoy9gfGg2Eyg/dCdNSBMx5Y5y7CqlMOw=; b=gN08HWScD/FfFK
	SLhE9R5A7Mx38I2vuDNIOhXIv6bfGA+SMTTrvlmxQdfTdajB/66qyVVS+olN0P5UFiFc7w8EpxzBZ
	pyEzcDC+PV8DSp+FxSzOtW22FaQYuYoEH68r6OiCuHA0H8U7bM1+UQIJW9XVTvyqUWY72GZzX8yYn
	YybtxzkhFu2LDsD8zk3YAdooTCJyzS4JdZyEPRSZ8kHc9SRBkhr3cmeZEAM1DFsB6blvkjWqrbvaN
	czA9sce0jPoFe9ZKcFCXZP4lN+BUfg0YywT07tf+RkjMCkiXBpVw732cOZWLKdtDYzWy4Kz5J9qme
	JTFdbfD3SE7xGjvA4mFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOD7p-0001Pr-Rs; Wed, 08 May 2019 03:20:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOD7f-0001MN-9k
 for linux-mtd@lists.infradead.org; Wed, 08 May 2019 03:20:00 +0000
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F2D1A20850;
 Wed,  8 May 2019 03:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557285597;
 bh=FtRG6156KtZu1BolmdLDWFnW47KW80ODbaRpJ4mMguw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Xb2KoPkGmqEvozbuzT/2B2KydTff65OLpueKhmesbdnO9Q3vqBN6IwZ1s8eXVVR/s
 kI+MDxrFWI3NTAK1b5T03iMVDjThToumXFfrcWMSQzPXIupPlLrgDc80aVa2CSQ1Cp
 Lalz9stoREKHFOq8BMhwYinRk8odJanADHCrzN74=
Date: Tue, 7 May 2019 20:19:55 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>, Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH 1/2] ubifs: Remove #ifdef around CONFIG_FS_ENCRYPTION
Message-ID: <20190508031954.GA26575@sol.localdomain>
References: <20190326075232.11717-1-s.hauer@pengutronix.de>
 <20190326075232.11717-2-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190326075232.11717-2-s.hauer@pengutronix.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_201959_357421_D99D3230 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: "Theodore Y . Ts'o" <tytso@mit.edu>, linux-fscrypt@vger.kernel.org,
 linux-mtd@lists.infradead.org, kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Mar 26, 2019 at 08:52:31AM +0100, Sascha Hauer wrote:
> ifdefs reduce readablity and compile coverage. This removes the ifdefs
> around CONFIG_FS_ENCRYPTION by using IS_ENABLED and relying on static
> inline wrappers. A new static inline wrapper for setting sb->s_cop is
> introduced to allow filesystems to unconditionally compile in their
> s_cop operations.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  fs/ubifs/ioctl.c        | 11 +----------
>  fs/ubifs/sb.c           |  7 ++++---
>  fs/ubifs/super.c        |  4 +---
>  include/linux/fscrypt.h | 11 +++++++++++
>  4 files changed, 17 insertions(+), 16 deletions(-)
> 
> diff --git a/fs/ubifs/ioctl.c b/fs/ubifs/ioctl.c
> index 82e4e6a30b04..6b05b3ec500e 100644
> --- a/fs/ubifs/ioctl.c
> +++ b/fs/ubifs/ioctl.c
> @@ -193,7 +193,6 @@ long ubifs_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  		return err;
>  	}
>  	case FS_IOC_SET_ENCRYPTION_POLICY: {
> -#ifdef CONFIG_FS_ENCRYPTION
>  		struct ubifs_info *c = inode->i_sb->s_fs_info;
>  
>  		err = ubifs_enable_encryption(c);
> @@ -201,17 +200,9 @@ long ubifs_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  			return err;
>  
>  		return fscrypt_ioctl_set_policy(file, (const void __user *)arg);
> -#else
> -		return -EOPNOTSUPP;
> -#endif
>  	}
> -	case FS_IOC_GET_ENCRYPTION_POLICY: {
> -#ifdef CONFIG_FS_ENCRYPTION
> +	case FS_IOC_GET_ENCRYPTION_POLICY:
>  		return fscrypt_ioctl_get_policy(file, (void __user *)arg);
> -#else
> -		return -EOPNOTSUPP;
> -#endif
> -	}
>  
>  	default:
>  		return -ENOTTY;
> diff --git a/fs/ubifs/sb.c b/fs/ubifs/sb.c
> index 67fac1e8adfb..2afc8b1d4c3b 100644
> --- a/fs/ubifs/sb.c
> +++ b/fs/ubifs/sb.c
> @@ -748,14 +748,12 @@ int ubifs_read_superblock(struct ubifs_info *c)
>  		goto out;
>  	}
>  
> -#ifndef CONFIG_FS_ENCRYPTION
> -	if (c->encrypted) {
> +	if (!IS_ENABLED(CONFIG_UBIFS_FS_ENCRYPTION) && c->encrypted) {
>  		ubifs_err(c, "file system contains encrypted files but UBIFS"
>  			     " was built without crypto support.");
>  		err = -EINVAL;
>  		goto out;
>  	}

A bit late, but I noticed this in ubifs/linux-next.  This needs to use
CONFIG_FS_ENCRYPTION here, not CONFIG_UBIFS_FS_ENCRYPTION, as the latter no
longer exists.

> -#endif
>  
>  	/* Automatically increase file system size to the maximum size */
>  	c->old_leb_cnt = c->leb_cnt;
> @@ -943,6 +941,9 @@ int ubifs_enable_encryption(struct ubifs_info *c)
>  	int err;
>  	struct ubifs_sb_node *sup = c->sup_node;
>  
> +	if (!IS_ENABLED(CONFIG_UBIFS_FS_ENCRYPTION))
> +		return -EOPNOTSUPP;
> +

Same here.

- Eric

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
