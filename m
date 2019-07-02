Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B965CDD3
	for <lists+linux-mtd@lfdr.de>; Tue,  2 Jul 2019 12:46:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OUZ3df+QyBUxn/lzaiaYCIHQoRvCwTJbusgmDWGsuo8=; b=G/GZmx9tTtu3Ec
	L6J27AxEfqMYSvf+UbL3Fh2/IYUdP6L7x9GslcVBZFN8VW4ktD8KLkq5JgkkLmtEP023vOFqhYgKf
	UrKk6CMj0Ehewzl+PBGjkMdfuI/i5SmLcjIYUjQZriLqf6CQVt5BSCM/UprfOjUIf+eVUiwthv2RK
	otw++FbUGmBOh0xiCRwC2G8nnzp632Q6+pZB8O3G1qzP7GaeRl29i48SaJTYYKXYf1GZXc91HskkI
	cjBEN9qoGx8GN+2DlZbsNWkuPLH4fMm37MeiXTJvt7pIkobXI9VYvI5BQPGBJeGvfQh887pMiftSN
	snOGd+8tc6O60JQ40y7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiGIa-0001Xf-Of; Tue, 02 Jul 2019 10:46:08 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiGIG-0001W3-43
 for linux-mtd@lists.infradead.org; Tue, 02 Jul 2019 10:45:49 +0000
Received: by mail-yb1-xb43.google.com with SMTP id j133so1116934ybj.12
 for <linux-mtd@lists.infradead.org>; Tue, 02 Jul 2019 03:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vlidC+hQ/gD/8v9eleM4nXtfiap8zhCG0j5qbLCVw18=;
 b=kdVby+/PzZu5i6Y9UcQYatHEHHsEPhAQY+mjVHF6xlggt8o+nszbdHXCHfEBil5H5H
 UL+/28eYKfUAOv8AvNzRMQHWK/y4MABFSamQhRwNZH1hpEc5BUQCjqITvhev6DLWRzG3
 uOgpinFcBt7pSePpbwiWspS3cbj7dBXMod+4Z94YngJ+nIPc3qdhbsYftXAC3oBGhakE
 Bt+6iCjbrfqQEg0SzB1WdrzlyuHEb0JfhuYdop7KFU8fbo4QPvOCj4+Z+NVkWFYsg5RT
 IRHHoit1jxeDZWaJHULPmpdSPTutxwczS9nSE3h7MYk2MPhM/kHniCv9ovLGXWy3LfTv
 lmfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vlidC+hQ/gD/8v9eleM4nXtfiap8zhCG0j5qbLCVw18=;
 b=ev2p5pdsZsDcIP/k5Cq5q+Ure9XAUULd6k4jNDnne+vSSY8fMi2rDDljW45z4Rqiv+
 UhCnLBsAOOIzmu2JBSNDsAtXYx0SKEHBVIE8hXYYfn+nVmWC3E6CJYSQ2SZAEPFam6QZ
 j3yF6Iw37jEO27Tk1oFFfVDvEyizIwkb6u+/Sc/kB6K/amB64/CIUOC/tRTtlWPo8Bc9
 a0hVyUKj/9QP3paNm4Lp1yIYXGg6j+Wr8OkqslaxgzT9Lmgn6qtsKxdundVISvQhlWnC
 jOQ/XCyG3Z+1yVNvwSkkvNoBThU4hVJXI2zNlyKtRyL4SUuA6R0iWvKVsXQOmN/xRYlU
 1nXA==
X-Gm-Message-State: APjAAAVdD0trprXPwYO1bEtYiPfl/Ms9i66ArWrz2/cYTJ84YQPRgrGF
 hlS1l7iW6H6uUozVPH7qbXBQNb5rEC6NrPWpze0=
X-Google-Smtp-Source: APXvYqzMdrjXgWGhi/zPaZxEj+t8DhHrW56qP/YMhmryxOT2o02rqdhc3hQ5y4gjPvsnd8KwypjTK3Tgmn2Zfydvxjo=
X-Received: by 2002:a25:8109:: with SMTP id o9mr16913558ybk.132.1562064343920; 
 Tue, 02 Jul 2019 03:45:43 -0700 (PDT)
MIME-Version: 1.0
References: <156174687561.1557469.7505651950825460767.stgit@magnolia>
 <156174690758.1557469.9258105121276292687.stgit@magnolia>
 <20190701154200.GK1404256@magnolia>
In-Reply-To: <20190701154200.GK1404256@magnolia>
From: Amir Goldstein <amir73il@gmail.com>
Date: Tue, 2 Jul 2019 13:45:32 +0300
Message-ID: <CAOQ4uxizFXgSa4KzkwxmoPAvpiENg=y0=fsxEC1PkCX5J1ybag@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] vfs: don't allow most setxattr to immutable files
To: "Darrick J. Wong" <darrick.wong@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_034548_162607_528D57A2 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (amir73il[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-efi@vger.kernel.org, Linux Btrfs <linux-btrfs@vger.kernel.org>,
 Chao Yu <yuchao0@huawei.com>, Linux MM <linux-mm@kvack.org>,
 Chris Mason <clm@fb.com>, Andreas Dilger <adilger.kernel@dilger.ca>,
 matthew.garrett@nebula.com, linux-nilfs@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, Ext4 <linux-ext4@vger.kernel.org>,
 devel@lists.orangefs.org, Josef Bacik <josef@toxicpanda.com>,
 reiserfs-devel@vger.kernel.org, Al Viro <viro@zeniv.linux.org.uk>,
 David Sterba <dsterba@suse.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 Theodore Tso <tytso@mit.edu>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-f2fs-devel@lists.sourceforge.net, linux-xfs <linux-xfs@vger.kernel.org>,
 jk@ozlabs.org, Jan Kara <jack@suse.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, linux-mtd@lists.infradead.org,
 ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Jul 1, 2019 at 7:31 PM Darrick J. Wong <darrick.wong@oracle.com> wrote:
>
> From: Darrick J. Wong <darrick.wong@oracle.com>
>
> The chattr manpage has this to say about immutable files:
>
> "A file with the 'i' attribute cannot be modified: it cannot be deleted
> or renamed, no link can be created to this file, most of the file's
> metadata can not be modified, and the file can not be opened in write
> mode."
>
> However, we don't actually check the immutable flag in the setattr code,
> which means that we can update inode flags and project ids and extent
> size hints on supposedly immutable files.  Therefore, reject setflags
> and fssetxattr calls on an immutable file if the file is immutable and
> will remain that way.
>
> Signed-off-by: Darrick J. Wong <darrick.wong@oracle.com>
> ---
> v2: use memcmp instead of open coding a bunch of checks


Thanks,

Reviewed-by: Amir Goldstein <amir73il@gmail.com>


> ---
>  fs/inode.c |   17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/fs/inode.c b/fs/inode.c
> index cf07378e5731..31f694e405fe 100644
> --- a/fs/inode.c
> +++ b/fs/inode.c
> @@ -2214,6 +2214,14 @@ int vfs_ioc_setflags_prepare(struct inode *inode, unsigned int oldflags,
>             !capable(CAP_LINUX_IMMUTABLE))
>                 return -EPERM;
>
> +       /*
> +        * We aren't allowed to change any other flags if the immutable flag is
> +        * already set and is not being unset.
> +        */
> +       if ((oldflags & FS_IMMUTABLE_FL) && (flags & FS_IMMUTABLE_FL) &&
> +           oldflags != flags)
> +               return -EPERM;
> +
>         /*
>          * Now that we're done checking the new flags, flush all pending IO and
>          * dirty mappings before setting S_IMMUTABLE on an inode via
> @@ -2284,6 +2292,15 @@ int vfs_ioc_fssetxattr_check(struct inode *inode, const struct fsxattr *old_fa,
>             !(S_ISREG(inode->i_mode) || S_ISDIR(inode->i_mode)))
>                 return -EINVAL;
>
> +       /*
> +        * We aren't allowed to change any fields if the immutable flag is
> +        * already set and is not being unset.
> +        */
> +       if ((old_fa->fsx_xflags & FS_XFLAG_IMMUTABLE) &&
> +           (fa->fsx_xflags & FS_XFLAG_IMMUTABLE) &&
> +           memcmp(fa, old_fa, offsetof(struct fsxattr, fsx_pad)))
> +               return -EPERM;
> +
>         /* Extent size hints of zero turn off the flags. */
>         if (fa->fsx_extsize == 0)
>                 fa->fsx_xflags &= ~(FS_XFLAG_EXTSIZE | FS_XFLAG_EXTSZINHERIT);

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
