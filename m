Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C8A3324D
	for <lists+linux-mtd@lfdr.de>; Mon,  3 Jun 2019 16:39:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AVVAfsvns+jTwTFFI6AdqUw7kSUqMSq4iPJ7gXZVZxY=; b=mykDp+aTNzJ5Ef
	9YwJfNpUcpB2j02cTLRcuN/MrnPtzZuWZHGnpWnjzEZQy5nafteMlSHCgd+ITNtiyG4Z5jtoSry4w
	0l9E7GPRHAZdK2CMHxPXI7lsTlPr948Iv7am6FbpMrArwbqzSZi4VzgyNOSDcn26s+ELTNyB79HlG
	DKez8UtfmaFJZ0TaQrclksL855+iQwl/2tB4nPlh+0dGy4rSzJzZOvI3UIZq6DOA7pWZNJoG4fKJu
	6rzdpnM63MHOMa2XrtBeGlu4gCkdIodQQFnOfEqQrn31bj19E6MOKLbl9Ucx7XZw3K+qoTZrPfRcI
	EpdWe8Vu1xMbdejFRm4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXo7k-0002Cd-60; Mon, 03 Jun 2019 14:39:44 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXo7c-0002Bp-Pe
 for linux-mtd@lists.infradead.org; Mon, 03 Jun 2019 14:39:38 +0000
Received: by mail-it1-x141.google.com with SMTP id i21so8106333ita.5
 for <linux-mtd@lists.infradead.org>; Mon, 03 Jun 2019 07:39:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aYhQSHvrs+dU7MwteB9MNwuhLcVxfIzy9hHd0CUZe84=;
 b=Sf+9V9+7ibseCrKO9whYdkIYIChrhMZZew8B1PFci99yh9YWMSY85U5ldzJtE2UcLW
 EsQiZg8Is24JRG5Ze3CnzJmUAmaTdO04DmwLkVtjZlUxZm/WV7r9pYbh7q1+JcVg5PEf
 odrLbtzr4tz6HQ9zHP+8wRloqXXviMK61NKYZYDNJlQ/bAXLZr9TmaYsKt9lnIGoribY
 rNaxxWJ48xgFB3Nvx6Q8kaR3AXiEZfY8S/fC85aT6+8Vlipj9D8xZQqS9gNQgS6tuOCD
 28sbtaEqv6BhmZ5XRxHVqnSIS0IFr6FXlGBt3Btk9xr9g5XrJjHK5OO8E8Zjwslr5Sk4
 vvyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aYhQSHvrs+dU7MwteB9MNwuhLcVxfIzy9hHd0CUZe84=;
 b=Rfktj0tkQus3aWr5MfShKvLzNupkXHLS1f6aQ2U8+2ffSEXZ/IOLYn54z83gcRA7xd
 Cm0+t6/38G9BdxuiCW9V3Jc6VfXnkgN3vyB8TQazEXu4lldvpudBRtRiaXSXDNUnCCvJ
 R5WXr8VNuRl9KqvMME2MfnUX+3iAi803f2wdJTYXbacAZ09GtPZ6gTNbUidTFpujVzfI
 oyUONAYVM1dsg3rahYNfqqsVpA4uqQ+1ONY6r9LcApKShs+qiO38dblTie9twSSreJ4X
 YGUomd6xLyeWIP8GUMglG2G+cUk7e+yFKlfojBzpUcMSRK4G8a5myI4l+qGNho7oLy/z
 am8A==
X-Gm-Message-State: APjAAAXyQQEFy+khqghbkOhk8/TIyVbtXI0+1weMThjoVWwa3bW6VPFh
 ZC1d42aVrJAiV8A1sGEhkocK5672E8NFWZkhZTQ=
X-Google-Smtp-Source: APXvYqxgMuXt/+56wQ4vv3SWYxXLYaUd164tRW2u105w0ICJyxSGeSdU6A4i0IWYmGxlHDIMemYTtc9dwPx3tJ21phg=
X-Received: by 2002:a05:660c:64f:: with SMTP id
 y15mr18126402itk.180.1559572775444; 
 Mon, 03 Jun 2019 07:39:35 -0700 (PDT)
MIME-Version: 1.0
References: <1559251257-12383-1-git-send-email-kdasu.kdev@gmail.com>
 <20190601095748.35d1c1aa@collabora.com>
 <CAC=U0a1q2CTZx+btLBJNewK8Rv3WXVE-ZV+j5fFWZPJLoJ94NA@mail.gmail.com>
 <20190603161825.4044f953@collabora.com>
In-Reply-To: <20190603161825.4044f953@collabora.com>
From: Kamal Dasu <kdasu.kdev@gmail.com>
Date: Mon, 3 Jun 2019 10:39:22 -0400
Message-ID: <CAC=U0a1Re=+=EmoFEx2yAO-ffHu6uLErX5g_OzruyrL_DX2ZGA@mail.gmail.com>
Subject: Re: [PATCH 1/3] mtd: nand: raw: brcmnand: Refactored code and
 introduced inline functions
To: Boris Brezillon <boris.brezillon@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_073936_857025_40F64407 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kdasu.kdev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Jun 3, 2019 at 10:18 AM Boris Brezillon
<boris.brezillon@collabora.com> wrote:
>
> On Mon, 3 Jun 2019 10:11:20 -0400
> Kamal Dasu <kdasu.kdev@gmail.com> wrote:
>
> > Boris,
> >
> > On Sat, Jun 1, 2019 at 3:57 AM Boris Brezillon
> > <boris.brezillon@collabora.com> wrote:
> > >
> > > On Thu, 30 May 2019 17:20:35 -0400
> > > Kamal Dasu <kdasu.kdev@gmail.com> wrote:
> > >
> > > > Refactored NAND ECC and CMD address configuration code to use inline
> > > > functions.
> > >
> > > I'd expect the compiler to be smart enough to decide when inlining is
> > > appropriate. Did you check that adding the inline specifier actually
> > > makes a difference?
> >
> > This was done to make the code more readable. It does not make any
> > difference to performance.
>
> I meant dropping the inline specifier, not going back to manual
> inlining. As a general rule, you don't need to add the 'inline'
> specifier unless your function is defined in a header. In all other
> cases the compiler is able to inline things on its own when it sees the
> number of instructions is small enough or when the function is only
> called once.

Oh ok got it, will get rid if the inline specifier  and send a v2
version of the change.

Thanks
Kamal

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
