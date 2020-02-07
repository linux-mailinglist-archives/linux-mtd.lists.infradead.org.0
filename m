Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AF0155B34
	for <lists+linux-mtd@lfdr.de>; Fri,  7 Feb 2020 16:54:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CiQnJ/O+WXwqVY1H5shhc1xkiznVR1rqNXWFfiSeeeU=; b=lhMQlIMZyLqXNk
	MNSyqAwd4GCY7KQJK6+Ap6UqMyqotkm3soU3nBfejlRZGjjEI2iXO8uR9YHhBw6DZpsg+UfIIctCZ
	XyPwv5y9ahqRheBohT5SDRrlcemyoNrGio1Sszexn47g71U6tiizcXfhjiWyfyPHS7GJqjomTsDAP
	ixR3phHD36HXyBRSThYxhWOdAquky3bjpANoMWxe2z2teKpYylSGPWqQUL/kaYgvxDearZbJlfnLH
	x7XN3iilP9GXUtv1eczLZk0go+wEKI6jhsqWB6d2VNUZ4nR4MurUQ56PiYBw2aZOZEBuAa1WasShm
	s1d1tjGH0N7kycEbwFPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j05xY-0002FW-1W; Fri, 07 Feb 2020 15:54:24 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j05xP-0002F1-KW
 for linux-mtd@lists.infradead.org; Fri, 07 Feb 2020 15:54:16 +0000
Received: by mail-wr1-x442.google.com with SMTP id t2so3291024wrr.1
 for <linux-mtd@lists.infradead.org>; Fri, 07 Feb 2020 07:54:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xrCSFuR4yeUyXeOZPQTFiDl4JKVQG4uyRkwZKKbSbgU=;
 b=t9IRMB/oirrKmziTViJwNQnoY9zfSbnExbTlr0HdckiYqUKHM5CVq35nabxifMA6Az
 7suSvU9VyEVej5gLwzksg0VtH/7Gq6tDZxHew3rS+5oDTs9gFsv2IW0FtBOe+BZs+sgw
 IcczUezWRXRTdLTkowxFO5R21mjvSHDxB2fxDQ+iIaPbSY+yCvAggmy1FPtX/J8yhA2z
 8/vLQ8nwCjfZLGt1QVvV7ZECB1xdRNaKou5qluHAh4l+qV9bmrLnJLSAXSbjbcxxJjxA
 5oV/VqNcgz/lcrJI6eL3mbUyLTbLyFUrYDMqaNczbQyHkvlKBV1zLyuHYOkDD1sHeD9e
 XVbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xrCSFuR4yeUyXeOZPQTFiDl4JKVQG4uyRkwZKKbSbgU=;
 b=EUfVUihufvonw08azBHvaY0uWlu+3V+xuFHeoq8sbvfxdRDo4gHZD1Jsh51Vzmmgch
 thNViiOUdtYHCEGOM3CB8vh3oPhFuMOQgWfffdd/+LSc4Od9VTIn6Kl0BKzfXFcG38cb
 9lXAlfiPuW3+RoeMKV61uBfOzawkB/FuuksSXrrPBST87KzEWGUPTqK/iXKzBY03yPfu
 zkG2HExzhRwDR41SEQjks4vZw5r8q3IzAuxuxFxT3LX3TTMLyECT7H7+mae5v2N9C08H
 PTg/MK+S/jxhr7P/UAHUGp7WNqY+zewHXw1BWJ3dcETUeOx3UJC/fvg6a53r2dJA7lrS
 7lnA==
X-Gm-Message-State: APjAAAUsAtoeAVkfBIKEfHODUFUUW7P55315iB9FY+fmihmYkznYP4Sl
 kewf/7/1qtucxEktWaWW7oDoslpowCchLHNsA+E=
X-Google-Smtp-Source: APXvYqyaUSu17N5vVAsJa8pzq6kkm/2Y+AUZsZ5VZWhzs3ndlKATNeoKlOGlMcIoJZnC0yR8zRQhy5QjeCv4dNOgYbo=
X-Received: by 2002:a5d:5152:: with SMTP id u18mr5327564wrt.214.1581090854460; 
 Fri, 07 Feb 2020 07:54:14 -0800 (PST)
MIME-Version: 1.0
References: <20200114093305.666-1-quanyang.wang@windriver.com>
 <415718c7-4c55-fb5d-0b10-ad5323daa5a0@windriver.com>
In-Reply-To: <415718c7-4c55-fb5d-0b10-ad5323daa5a0@windriver.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Fri, 7 Feb 2020 16:54:03 +0100
Message-ID: <CAFLxGvw-q3N98RhbtWCE5mGGv6qwrJBDTMTs_yMe9QDY6U4TAQ@mail.gmail.com>
Subject: Re: [PATCH] ubi: fix memory leak from ubi->fm_anchor
To: Quanyang Wang <quanyang.wang@windriver.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_075415_667802_E0985AB1 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 Sascha Hauer <s.hauer@pengutronix.de>, LKML <linux-kernel@vger.kernel.org>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Feb 3, 2020 at 10:14 AM Quanyang Wang
<quanyang.wang@windriver.com> wrote:
>
> Ping?
>
> On 1/14/20 5:33 PM, quanyang.wang@windriver.com wrote:
> > From: Quanyang Wang <quanyang.wang@windriver.com>
> >
> > Some ubi_wl_entry are allocated in erase_aeb() and one of them is
> > assigned to ubi->fm_anchor in __erase_worker(). And it should be freed
> > like others which are freed in tree_destroy(). Otherwise, it will
> > cause a memory leak:
> >
> > unreferenced object 0xbc094318 (size 24):
> >    comm "ubiattach", pid 491, jiffies 4294954015 (age 420.110s)
> >    hex dump (first 24 bytes):
> >      30 43 09 bc 00 00 00 00 00 00 00 00 01 00 00 00  0C..............
> >      02 00 00 00 04 00 00 00                          ........
> >    backtrace:
> >      [<6c2d5089>] erase_aeb+0x28/0xc8
> >      [<a1c68fb1>] ubi_wl_init+0x1d8/0x4a8
> >      [<d4f408f8>] ubi_attach+0xffc/0x10d0
> >      [<add3b5d8>] ubi_attach_mtd_dev+0x5b4/0x9fc
> >      [<d375a11c>] ctrl_cdev_ioctl+0xb8/0x1d8
> >      [<72b250f2>] vfs_ioctl+0x28/0x3c
> >      [<b80095d7>] do_vfs_ioctl+0xb0/0x798
> >      [<bf9ef69e>] ksys_ioctl+0x58/0x74
> >      [<5355bdbe>] ret_fast_syscall+0x0/0x54
> >      [<90c6c3ca>] 0x7eadf854
> >
> > Signed-off-by: Quanyang Wang <quanyang.wang@windriver.com>
> > ---
> >   drivers/mtd/ubi/wl.c | 2 ++
> >   1 file changed, 2 insertions(+)

Good catch!
Fixes: f9c34bb52997 ("ubi: Fix producing anchor PEBs")

---
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
