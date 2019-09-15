Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB66B3256
	for <lists+linux-mtd@lfdr.de>; Sun, 15 Sep 2019 23:58:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t1jutgcnmdDQwu0T4F6DbTHLtAvEhdbYEwawzKJ/jSc=; b=nILT62cgWSkcd9
	FAfv/wvnCwGKkRFUGRGA7B7X2F5UNaAL+ZLh+QWJno5GKaFZ4i2eUs3KQNxpwbfcIsM8F4tNkF1P7
	fNshFl0XHTmmiP3+jERIKZf9zHwkSWcKSS/whUI450X9CK7c1ncapRczVM1n7ZGs5cRIY9uTQxVY7
	ZnGUiZfKMGQhrzx00kMB3WxNgu7WdOn8MVmO0TbgrWjpDYQHJZXBZ7J4qV2EFbxnfO/O5Ol059Wo5
	oRMI0zLVX4kxhaqP0DVjc5eGkivXFQkpI6DtOq/s5vrYxHkFQNjmHTggLvnrqN0jhipB1+SuJ4wGY
	vsHB3syOpyRJvVx8kPEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9cXj-0000HY-KO; Sun, 15 Sep 2019 21:58:51 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9cXZ-0000H6-Qe
 for linux-mtd@lists.infradead.org; Sun, 15 Sep 2019 21:58:43 +0000
Received: by mail-wm1-x344.google.com with SMTP id 7so7936441wme.1
 for <linux-mtd@lists.infradead.org>; Sun, 15 Sep 2019 14:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=asP2MeWC9oWpx/gaOK+HIONcvfsMWrL7pF7piAoOX20=;
 b=S1VB0FI71TIhbEAW+HnuYeu8lYF8IPAD5FbR8FKruD2QVdqxM5xYfHY82UeYuYHI38
 64nKSioCUrLEnubE0nEDImhDcGu1KxkcPyXvp2fQTSLRX6PqBfiSLWjroWJ0V2LZQ2hO
 eAQ4HbdEBCwaVhQt62GLJLi5lXY0Ok9tQm6EmRi1VluYcF6AujQFN8e9yz/57qpOqxp6
 9VhH0IskrMZgdi2BA7Sy8uhe1IzWkJRzYK+CgDyPlzzhzdrOcy/lLnMOPC6DtBCw4Vo8
 vyaH+FP4qqe1U+ckkQW+aD3UkKy5N5p1sdrOwwVaGE6JVghnT/jz7B37T5nhQzIF2W52
 P80w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=asP2MeWC9oWpx/gaOK+HIONcvfsMWrL7pF7piAoOX20=;
 b=rGcrHFBwPMWXWBvW13L6Gjf7ESHtXsYcSsZxMgRRfvqbTz7W7k4TWE4+ZUVjOhLxJJ
 wnMJ3B4pcbCnuHlFh6maQ+QIHvWPW5hU3mj9E5+8wo5If4xoPbxNmie/fKLJC4wW7qdF
 mNXAA+of6LRfTNqwn7KYVwth3pZRb2stysLhzot0TKc+qCOnyEVhpb/CkcDbtDw/cHhl
 A/ntTNmjJLfJtrDm02X1SBfjmyCfYFZ1qyH8f51FGARsPIDlHLijzaU4CmvFWCTESbpf
 RCadiDpxqjtcEjUWnEog8alZBzb6znjQCaGitlEecz27TSWPxbu27Rff30Jvk2tMmHDx
 3GBg==
X-Gm-Message-State: APjAAAWIwlF/Fn4zlm4UMknRNHmXDIQ4YmvNBNnSo3BRmCDrBQZ4pka9
 OVtv73jD3h5+PeG5HkxUC6PsNmBtyI2HohK+Xvk=
X-Google-Smtp-Source: APXvYqyLaIkBfO0cRj9G3hwB3BPI2zKLvyTV1roHXRqM+QcYeakzYrOkMQC9znKnOdI6GUB/SfDLHZfnKgSmiUH2ZS0=
X-Received: by 2002:a1c:eb16:: with SMTP id j22mr6071758wmh.176.1568584719359; 
 Sun, 15 Sep 2019 14:58:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190829005009.GA5895@embeddedor>
In-Reply-To: <20190829005009.GA5895@embeddedor>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 15 Sep 2019 23:58:28 +0200
Message-ID: <CAFLxGvx3fbWn=kazG342PO60uyA0HM2Lzt2j-k7+vTBhLSoAjA@mail.gmail.com>
Subject: Re: [PATCH] ubifs: super: Use struct_size() helper
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_145841_889621_DDD8CE15 
X-CRM114-Status: GOOD (  19.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Adrian Hunter <adrian.hunter@intel.com>, LKML <linux-kernel@vger.kernel.org>,
 Artem Bityutskiy <dedekind1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 2:50 AM Gustavo A. R. Silva
<gustavo@embeddedor.com> wrote:
>
> One of the more common cases of allocation size calculations is finding
> the size of a structure that has a zero-sized array at the end, along
> with memory for some number of elements for that array. For example:
>
> struct ubifs_znode {
>         ...
>         struct ubifs_zbranch zbranch[];
> };
>
> Make use of the struct_size() helper instead of an open-coded version
> in order to avoid any potential type mistakes.
>
> So, replace the following form:
>
> sizeof(struct ubifs_znode) + c->fanout * sizeof(struct ubifs_zbranch)
>
> with:
>
> struct_size(c->cnext, zbranch, c->fanout)
>
> This code was detected with the help of Coccinelle.
>
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
> ---
>  fs/ubifs/super.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
> index 2706f13e3eb9..ca86489048c8 100644
> --- a/fs/ubifs/super.c
> +++ b/fs/ubifs/super.c
> @@ -661,8 +661,7 @@ static int init_constants_sb(struct ubifs_info *c)
>         long long tmp64;
>
>         c->main_bytes = (long long)c->main_lebs * c->leb_size;
> -       c->max_znode_sz = sizeof(struct ubifs_znode) +
> -                               c->fanout * sizeof(struct ubifs_zbranch);
> +       c->max_znode_sz = struct_size(c->cnext, zbranch, c->fanout);

First of all, c->fanout is bound checked.
I had to lookup how struct_size() works to understand this
single line of code and why you use the completely unrelated c->cnext here.
Sorry this change does not make the code any better just harder to read.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
