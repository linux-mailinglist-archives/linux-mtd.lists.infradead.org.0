Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E83141FE1
	for <lists+linux-mtd@lfdr.de>; Sun, 19 Jan 2020 20:58:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Ajt8XBl2DcF2IRE9RC55OMMUrAdOBFD1zFeduO97R4=; b=nvdBHaaikFl9ZB
	08wzQZltlZCmX9gzv8yer8GKM1aY3ubJGae4rBSgu3BpSYo+s7tCsDZ5CZ7ry9qplKkVpUgXWJ1Qi
	bRMwj83o3SSiiSvR+otKwFDfpAHbhlacNySu1xy4KYuogyJK2o0vz90oLOJgzawWyGakZluuYCj6+
	sxYeuaXOjpyr+/IPZDMiXHsk54iKtwoe5KrQg9W6rXmt8efZT5EaUoIbs4K2R2jqs+Oc1hB5tJjAQ
	/2Gr69dyb7julWeW2/3+8i+XD0fwuBEFsDlUAZcPhgOrnYLaJ24BMRTQhnIuUjjFoGStf5KlfYIYp
	Lc/nYMD9abeJNA9QlmzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itGii-0004Hm-4e; Sun, 19 Jan 2020 19:58:52 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itGiX-0004HA-B4
 for linux-mtd@lists.infradead.org; Sun, 19 Jan 2020 19:58:42 +0000
Received: by mail-wm1-x344.google.com with SMTP id w5so13306941wmi.1
 for <linux-mtd@lists.infradead.org>; Sun, 19 Jan 2020 11:58:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gW1WqBa2Pd1nHdQF9V69UKEneBTY6UUFwViYZyCsdIo=;
 b=Qi6yIF9ihCAXogvjG7zLjx2PHFF2Fvm+Wf2OOnyJDXahcAIxD/ce5jgCDKznHJGhgx
 UFHhV3Zyuzc56b0g+hEPnJ785F+P7ufCVuKeVjWWbMIL6FC/45apgsHT0LzDhkGXwJ69
 8LRvbdccuSIGw4e20KPS0AQI8gfyE0Y0Q/uX+GIJqJ/Yd4GCFSEEQAs+E+fFDj6cCAp/
 aMprb4uo4/jQpqSS0/ST4cl781CwRTWOPr1tchZ+lrzaj6e4xIAnhFVc1ZjLRzOg/WUc
 Q3BxyhsAg1Potze/bAso5cFZl9Je/7JrihLjseM78LEvfZqxYgSTTcxsabWQXH0mLLbW
 sk+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gW1WqBa2Pd1nHdQF9V69UKEneBTY6UUFwViYZyCsdIo=;
 b=aSHqlEunex97xNfIOzzPQZfV7GCrWUGp/qAfCtay9lgZ6fShGRkPuOSjE/in2alw43
 uuLKtqFsDRl/ECu2mx85I0IdLoK66M3VX6MPBUNzRA/Sf0F4LCpXC6PHvgRRAAdbeNmH
 mmI19RhU3Pq/6pQO5MCv/isrR7uy7WNbs26fVqe2MbQ17mlXlGvBgEn4XNZugfrHDYvG
 kRu2pQHcUgr3Ek6GLS+/W3+eBwbLczt0vXQV3kHOlywzhSetvthmfV2PtVniyIaWQImI
 4S/8eFI6sqLMKv7MySYdpdSRf4LklQ370So6uw1CR1UjLfrNoWCrcVLc7Namjol1tDFI
 QMbg==
X-Gm-Message-State: APjAAAWk9gx2GLXETeg5qu2N+UqQJoR4qAnsy3AqQbsVR2EdhsFUstxp
 hRE/X3zo/O0Ga2GWg74NcdDViHuFFsCkxXD3H20=
X-Google-Smtp-Source: APXvYqwdpYzIraIH0lO/a2rfcH+81gWesTWNn8jSPopjS6XZ624Yolt9JxQFEAbBF4GS14eNyzBiXOGSArCXOKWsou8=
X-Received: by 2002:a7b:c949:: with SMTP id i9mr15837917wml.131.1579463920233; 
 Sun, 19 Jan 2020 11:58:40 -0800 (PST)
MIME-Version: 1.0
References: <20191106091537.32480-1-s.hauer@pengutronix.de>
 <20191106091537.32480-5-s.hauer@pengutronix.de>
In-Reply-To: <20191106091537.32480-5-s.hauer@pengutronix.de>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 19 Jan 2020 20:58:29 +0100
Message-ID: <CAFLxGvyX50_b6Ejh0eCCA82AF6TRsgT43BDqdAjTQY+KiyfuWw@mail.gmail.com>
Subject: Re: [PATCH 4/7] ubifs: do not ubifs_inode() on potentially NULL
 pointer
To: Sascha Hauer <s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_115841_381198_359B3660 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 kernel@pengutronix.de, Jan Kara <jack@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, Nov 6, 2019 at 10:17 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> new_inode() may return NULL, so only derefence the return inode when
> non NULL. This is merely a cleanup as calling ubifs_inode() on a NULL
> pointer doesn't do any harm, only using the return value would.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  fs/ubifs/dir.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/fs/ubifs/dir.c b/fs/ubifs/dir.c
> index 0b98e3c8b461..cfce5fee9262 100644
> --- a/fs/ubifs/dir.c
> +++ b/fs/ubifs/dir.c
> @@ -95,10 +95,10 @@ struct inode *ubifs_new_inode(struct ubifs_info *c, struct inode *dir,
>         }
>
>         inode = new_inode(c->vfs_sb);
> -       ui = ubifs_inode(inode);
>         if (!inode)
>                 return ERR_PTR(-ENOMEM);
>
> +       ui = ubifs_inode(inode);
>         /*
>          * Set 'S_NOCMTIME' to prevent VFS form updating [mc]time of inodes and
>          * marking them dirty in file write path (see 'file_update_time()').

Acked-by: Richard Weinberger <richard@nod.at>

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
