Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 763661FB49
	for <lists+linux-mtd@lfdr.de>; Wed, 15 May 2019 21:55:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dzIDUW9HYkogOwdIfsqL5REQKfb//rC7BxrNmzjvLlU=; b=qSRouEFuqW7S3i
	3F0aLMI5tLKxyDBb/7SEdi8UAUpqOtIcV1bbTo+lt+BVWlCQlXvYMnXASIQb7JyoB7YYLB+u+iMIk
	p4JHJiW3EOM79phXDNFj9R8oeuepRUiMYzBXRqyFVhWPCLm43VC5GpMQiwvPfeBNK9P4w6E2M/V1s
	+uYO40w4DIwv5G5Jxg9M+k0CGEYCYVT+cMK4r7T7aMyF9h6DGC9VOfny6Bk30Z0lqi0grTNVeOQd+
	LstOX3EcuCQ24vIQq4d/79Q9xt4RtLF185E1D/53b24g1w0OvNbZ4gOGfXvlytbDwjN1dG/EuM7Uq
	alCaN2lRPMl0T8Q/cegw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQzzd-0004gk-6C; Wed, 15 May 2019 19:55:13 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQzzV-0003uq-EO
 for linux-mtd@lists.infradead.org; Wed, 15 May 2019 19:55:07 +0000
Received: by mail-wr1-x442.google.com with SMTP id h4so800323wre.7
 for <linux-mtd@lists.infradead.org>; Wed, 15 May 2019 12:55:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=faSObUUDhzWCbTecxagBTtZE6cIWm5DcuCOMti7xnXk=;
 b=VWWOqMdpNmF+ZoF8YVE9C0qKG2dKyZbC3SSkb6TrM8bqqTDvvgo2EZajTjyG54Oinq
 ThywjMpAfFVB+8wdu9gR9QktsHSL8UoRq/5Tt7ZzE4J3CXIX+kP5rM8Ayd5Sed4s8oue
 ZNxO4KIx+D3/YQtcZtN8oPJBj13yl4Fnvm1MHoJA50+tyZxGEuv3qGkNB054dyOR1Qhp
 FQIxuzehK+epcXEQOwnW4aJxrdZQUZbNzDiaxLvQ8krx3WHeXI6HJ1cE0cRircw2llF/
 Y7e1FnK7ticBSgU71MxduKPIQpKrP9eLKnaHwDDeTOLbk/626p1quCnQ+dI2uXyrKMYT
 nHXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=faSObUUDhzWCbTecxagBTtZE6cIWm5DcuCOMti7xnXk=;
 b=tmN296YiGvhsYewuI/pMPNMHXmFYUURPG7d+siX1S0HPE6hYEyEzAdKlgPgTdkd8ky
 iYvUYiiTEaEoOnv0AEUu6flC20XmzJBbRGjnhXdHWIl4FioVAOFkGqt2xnOAEQXu/2p3
 TvdZmMgukpRDt1nV5EA2iPzTizu41srBPMSCzudXyJcMD7V9pC4hdcxQnA7IvEaKdgdS
 ibSCz3DQMt19+EfZPUY+YHMZEI90E2kTdZU63LdJgn/Ltd4ykjrpAZXHtc1MERPYwVnz
 eBEnzgIxTZhO6Ij/atO0NZ4fTUwuwv3P1pKSvBQESJhxUBNK+Z8pSrTouOFrVbvr8nSU
 tTSA==
X-Gm-Message-State: APjAAAUL/ZZuvxtfRKPH2f9Saiken6r07Jx4y7XG7hj1z2vuiSdmlY1y
 df0xuDKJtk96dsD9Bf1pGLAclFIxZc4fbPrstnk=
X-Google-Smtp-Source: APXvYqywK2MKVrTXU7jzIoWkVf5WOTwoiC3FOjhBWPLHCphBNN+LAp2NOQcjlLwDN2AmNe8h/E0RGJipLur6+qgJVaI=
X-Received: by 2002:adf:cf05:: with SMTP id o5mr11796362wrj.262.1557950103165; 
 Wed, 15 May 2019 12:55:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190514191050.13181-1-richard@nod.at>
In-Reply-To: <20190514191050.13181-1-richard@nod.at>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Wed, 15 May 2019 21:54:51 +0200
Message-ID: <CAFLxGvz1OAbqj=Hf4dyJ2SuUJjYCj2KMFhj-9nVE3mQzNoKH2A@mail.gmail.com>
Subject: Re: [PATCH 1/2] ubifs: Use correct config name for encryption
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_125505_530624_25357120 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
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
Cc: linux-mtd@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 9:11 PM Richard Weinberger <richard@nod.at> wrote:
>
> CONFIG_UBIFS_FS_ENCRYPTION is gone, fscrypt is now
> controlled via CONFIG_FS_ENCRYPTION.
> This problem slipped into the tree because of a mis-merge on
> my side.
>
> Reported-by: Eric Biggers <ebiggers@kernel.org>
> Fixes: eea2c05d927b ("ubifs: Remove #ifdef around CONFIG_FS_ENCRYPTION")
> Signed-off-by: Richard Weinberger <richard@nod.at>
> ---
>  fs/ubifs/sb.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/fs/ubifs/sb.c b/fs/ubifs/sb.c
> index 2afc8b1d4c3b..3ca41965db6e 100644
> --- a/fs/ubifs/sb.c
> +++ b/fs/ubifs/sb.c
> @@ -748,7 +748,7 @@ int ubifs_read_superblock(struct ubifs_info *c)
>                 goto out;
>         }
>
> -       if (!IS_ENABLED(CONFIG_UBIFS_FS_ENCRYPTION) && c->encrypted) {
> +       if (!IS_ENABLED(CONFIG_FS_ENCRYPTION) && c->encrypted) {
>                 ubifs_err(c, "file system contains encrypted files but UBIFS"
>                              " was built without crypto support.");
>                 err = -EINVAL;
> @@ -941,7 +941,7 @@ int ubifs_enable_encryption(struct ubifs_info *c)
>         int err;
>         struct ubifs_sb_node *sup = c->sup_node;
>
> -       if (!IS_ENABLED(CONFIG_UBIFS_FS_ENCRYPTION))
> +       if (!IS_ENABLED(CONFIG_FS_ENCRYPTION))
>                 return -EOPNOTSUPP;
>
>         if (c->encrypted)
> --
> 2.16.4

Applied both.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
