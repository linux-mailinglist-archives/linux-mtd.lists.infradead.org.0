Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3E51FC0C
	for <lists+linux-mtd@lfdr.de>; Wed, 15 May 2019 23:06:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uKjKWfv7OKam2ame92Tv84t4NSEd9V+yDHzXpMX2AG0=; b=HcbTNiJWTa2QCV
	Jejrud9oM2Oh/gFNfXxTKcuvNK7EMP/Xxvr68kKsl/OSV/2zustuTfLHbuwqd9LXCXfiO7Oo5Eypw
	QVHwfBHtgtunqFXY3F9xUc5tABYDe0Tq+IS4HN/XfGaEg3D9LIJoxLPtIAiYo1SO2hF/e7DVfZCF/
	4awqkiMghViJKz9JidCd+OmOg04mgqw3de7hKS59X+TIPbNWHrfrMHB1NwTL10WMPW5Ll/C670uks
	5rELk4vv0bAwzP9vn331+OyzWJppqgd8u96A/OD0ThqD2SdVxPqT47sVO6euTMCptWDPn+FF4OkN5
	q/exduCE0QxaZuz3UTxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR16V-0006IW-AY; Wed, 15 May 2019 21:06:23 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR16N-0006I5-1G
 for linux-mtd@lists.infradead.org; Wed, 15 May 2019 21:06:16 +0000
Received: by mail-wr1-x443.google.com with SMTP id d18so996370wrs.5
 for <linux-mtd@lists.infradead.org>; Wed, 15 May 2019 14:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KN7Op8lE6XgA0shW6xktX/J0QHQnjwUaX3FOZZZptkU=;
 b=W1oRFTFB+24xB+dtaPBmivucI2kyqv7HBmqrRT6TiBIAZepFI8cpCTuHRSujHsiFFw
 kF1ynOa5KxIzHoc+FiWvomXszb3JbiTBHQWj/ASpd7QsZetKDscojrxmGgpLSLu7+SvX
 my4zgYux7+/Q1Jz0SvTVb33f6s7XPup0ZI9KzAb9jrvWtjZsFjH7gVrkHSTj4b6eXpaZ
 DLZAnMbwXMsnfIeKJg5zC3I+0Wo0Vy93w8ujem1zPrXmjrMxSUzmLym3MgpXgBjGEAgX
 bqjstVLBAQ+0iCAaUpB2nsSI8AhEoDAYYQN3NxM5hAJNdwv0jhivgUUqLGfSj8oZjWTv
 0uKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KN7Op8lE6XgA0shW6xktX/J0QHQnjwUaX3FOZZZptkU=;
 b=RUtkzoMlxE+Bwaed5LctJg7v3QKk93Og8XpcF/N47roZ6qAwFq73zcXW8OQC5lS31c
 Aej4AbZmYNthVliPhkLaSyeldjieLCYeuPMsvK6BB5CuXPXWNJCZQCuPm5t63rfybn7P
 l3/ni4STwIk/WvF7UoefXwuCk3xCL9tNmWyCZHm4SkQ5TKhT+dgf7pnrhpEZ7RELiO4s
 YjIB9aZbrNBPCYq7CWzoOcsrDKvHQ03HH4lLpvsGejE7Hv6ZwwCdq1jcBt3RoXqYqs6f
 OqB0zobyd8MfIszWKwfJaLDchw+jWlqDTZ9uQTYGyJOIkvMiNfEGFKWEl+TDJ3DBE8ZP
 Ax1Q==
X-Gm-Message-State: APjAAAVP2wf1d0BIJRTx1KhyRULNai4sxfGo8+6h8uCnRR51LuL28RVo
 dAanyl4nAgXxGfvItrn3N5MG2qutOw2awvaFvh5bHLfR
X-Google-Smtp-Source: APXvYqwAMzD0Lt4RMl1/MNnHtLMYf029HK7zHQSyGiKTKart3sXQ5sO9KRXCgQBrjKViszRocXAsqK+ObAN9qtsIUVE=
X-Received: by 2002:adf:eb91:: with SMTP id t17mr9729539wrn.203.1557954373482; 
 Wed, 15 May 2019 14:06:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190506212327.6480-1-bnvandana@gmail.com>
In-Reply-To: <20190506212327.6480-1-bnvandana@gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Wed, 15 May 2019 23:06:02 +0200
Message-ID: <CAFLxGvzW=Z3Lk==NXS159DF4WUJqzAELS_E++ruKDVio_hfo4A@mail.gmail.com>
Subject: Re: [PATCH] fs: ubifs: Resolve sparse warning for using plain integer
 as NULL pointer
To: Vandana BN <bnvandana@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_140615_101345_FB6A604D 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Adrian Hunter <adrian.hunter@intel.com>, LKML <linux-kernel@vger.kernel.org>,
 Artem Bityutskiy <dedekind1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, May 6, 2019 at 11:24 PM Vandana BN <bnvandana@gmail.com> wrote:
>
> fs/ubifs/xattr.c:615:58: warning: Using plain integer as NULL pointer
>
> Signed-off-by: Vandana BN <bnvandana@gmail.com>
> ---
>  fs/ubifs/xattr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/fs/ubifs/xattr.c b/fs/ubifs/xattr.c
> index f5ad1ede7990..066a5666c50f 100644
> --- a/fs/ubifs/xattr.c
> +++ b/fs/ubifs/xattr.c
> @@ -612,7 +612,7 @@ int ubifs_init_security(struct inode *dentry, struct inode *inode,
>         int err;
>
>         err = security_inode_init_security(inode, dentry, qstr,
> -                                          &init_xattrs, 0);
> +                                          &init_xattrs, NULL);
>         if (err) {
>                 struct ubifs_info *c = dentry->i_sb->s_fs_info;
>                 ubifs_err(c, "cannot initialize security for inode %lu, error %d",
> --
> 2.17.1

Applied.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
