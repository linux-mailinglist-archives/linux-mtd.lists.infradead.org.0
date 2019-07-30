Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 880817A311
	for <lists+linux-mtd@lfdr.de>; Tue, 30 Jul 2019 10:27:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tdKphgnTdLtOWeqW/5Y/0LhMxyorVXtU2bSSpZFFYJg=; b=sjULfl7YRwzE4r
	dLqXc0MqLR7imZAgYDfBnMgkvgvH3eRZeZw10VqO/ikUwvAcOzmq6baWmBf80Iub2XQOxetIF05a2
	kuAPqd8IeQZVa4DM8IFzm8bdLVhNlsE5j/eQrAkXUrYCnj6z3s+nHAq+gRfdSLF3j36zhCMwrkJdO
	2x888kGGp5h5HYFIQACZJQRWA+HLhI/sfJH/v3BvFoPnVzbAy8/DljmJZuZSRsrKDy7nBTRXEL6Wp
	Q2w2xdnKAdeG/Mx3FEAZMvHDtbVpR9A9cYEjtBzCMWhwSJ3/L8dBUPrbz9Rgvl3s7fEAKdtBP6MIJ
	kH39+IKXaiCEl619WMqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsNTm-00010x-9X; Tue, 30 Jul 2019 08:27:30 +0000
Received: from mail.parknet.co.jp ([210.171.160.6])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsNTZ-00010H-B1
 for linux-mtd@lists.infradead.org; Tue, 30 Jul 2019 08:27:18 +0000
Received: from ibmpc.myhome.or.jp (server.parknet.ne.jp [210.171.168.39])
 by mail.parknet.co.jp (Postfix) with ESMTPSA id 9A60115F924;
 Tue, 30 Jul 2019 17:27:05 +0900 (JST)
Received: from devron.myhome.or.jp (foobar@devron.myhome.or.jp [192.168.0.3])
 by ibmpc.myhome.or.jp (8.15.2/8.15.2/Debian-12) with ESMTPS id
 x6U8R47a029798
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Tue, 30 Jul 2019 17:27:05 +0900
Received: from devron.myhome.or.jp (foobar@localhost [127.0.0.1])
 by devron.myhome.or.jp (8.15.2/8.15.2/Debian-12) with ESMTPS id x6U8R4HR032190
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Tue, 30 Jul 2019 17:27:04 +0900
Received: (from hirofumi@localhost)
 by devron.myhome.or.jp (8.15.2/8.15.2/Submit) id x6U8R0Qq032189;
 Tue, 30 Jul 2019 17:27:00 +0900
From: OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
To: Deepa Dinamani <deepa.kernel@gmail.com>
Subject: Re: [PATCH 03/20] timestamp_truncate: Replace users of
 timespec64_trunc
References: <20190730014924.2193-1-deepa.kernel@gmail.com>
 <20190730014924.2193-4-deepa.kernel@gmail.com>
Date: Tue, 30 Jul 2019 17:27:00 +0900
In-Reply-To: <20190730014924.2193-4-deepa.kernel@gmail.com> (Deepa Dinamani's
 message of "Mon, 29 Jul 2019 18:49:07 -0700")
Message-ID: <87d0hsapwr.fsf@mail.parknet.co.jp>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.0.50 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_012717_486099_744BE62E 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [210.171.160.6 listed in list.dnswl.org]
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
Cc: arnd@arndb.de, dedekind1@gmail.com, y2038@lists.linaro.org,
 gregkh@linuxfoundation.org, yuchao0@huawei.com, adrian.hunter@intel.com,
 linux-kernel@vger.kernel.org, tj@kernel.org, linux-mtd@lists.infradead.org,
 viro@zeniv.linux.org.uk, richard@nod.at, linux-fsdevel@vger.kernel.org,
 jaegeuk@kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-ntfs-dev@lists.sourceforge.net, hch@lst.de, anton@tuxera.com,
 jlbec@evilplan.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Deepa Dinamani <deepa.kernel@gmail.com> writes:

> diff --git a/fs/fat/misc.c b/fs/fat/misc.c
> index 1e08bd54c5fb..53bb7c6bf993 100644
> --- a/fs/fat/misc.c
> +++ b/fs/fat/misc.c
> @@ -307,8 +307,9 @@ int fat_truncate_time(struct inode *inode, struct timespec64 *now, int flags)
>  		inode->i_atime = (struct timespec64){ seconds, 0 };
>  	}
>  	if (flags & S_CTIME) {
> -		if (sbi->options.isvfat)
> -			inode->i_ctime = timespec64_trunc(*now, 10000000);
> +		if (sbi->options.isvfat) {
> +			inode->i_ctime = timestamp_truncate(*now, inode);
> +		}
>  		else
>  			inode->i_ctime = fat_timespec64_trunc_2secs(*now);
>  	}

Looks like broken. It changed to sb->s_time_gran from 10000000, and
changed coding style.

Thanks.
-- 
OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
