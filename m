Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7549E1A3B08
	for <lists+linux-mtd@lfdr.de>; Thu,  9 Apr 2020 22:02:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KqZORAjhe7NZISbT/5AbuQfhCi5+wwrWp16yjtgSAY4=; b=tAobkwrETlxh5E
	eVIvgoTRF8j8FwJH1U0YxTgxHovh2OsjKJa/7ZMbnw5Wv+eQBXOlNvM89zyeKcitNZiAW66rYtXsi
	IjPa/Cq3X9xz9ER3nj7o3WIfrsxEsvEAR6Oz+2pcq4Ik4L1o3qODJ5bmYB40CeoAQ8at+/ZKbZcae
	Y7lKOAyefylGiDu35LvKR1uNDxU6MXsrAHeZL+9s6A4odH3dRD5OKA3O8Iu4spf0VphW/3xFGWEf/
	dj88mh5PAha1P9Kz/bIPC7v0yZlcK79oQZcNrXJs+r0QE0wC6xr0Ut2bAbSRiGTz2g5FD7rPk/50T
	iZTrmxXpxwZjvwVpjRjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMdN2-0002Jc-RA; Thu, 09 Apr 2020 20:01:52 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMdMv-0002IB-CW
 for linux-mtd@lists.infradead.org; Thu, 09 Apr 2020 20:01:46 +0000
Received: by mail-wm1-x341.google.com with SMTP id d202so43183wmd.1
 for <linux-mtd@lists.infradead.org>; Thu, 09 Apr 2020 13:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Zt7MfOcPWNwOUhAt+n186GW5j+dN1ZYZolTB9vhBIyM=;
 b=qp5c5RCFhEC9geh2kh5y63GSRe/Fgd+69KGSaMls3dcJltyClI8Y/Ko3uC9gRT/IQ5
 kQJcBYMWPJJDDB6TUfHynVLMH2TtxZjQwYo0eVkwfDCbZiKOvS7kaUe3XqWwCkoV1KPs
 pM7dfcWgv5Zn/224EeWPScW50zZS+PMMZZScybdJwemz2doChs3tDPV0Eh6f6MCgwXaU
 Q4mWVg8SoW6MTVnF0feLcAEvkA6ia7eFFOOONCsUd+7NIXOjqk1uB/5bsXGvFhAnnua5
 W73PKLyEgRT64SjHA35EyZilfNdvNx2+iTg7Yj4wgSwZt0h2BXEu6sC4cnUMDJCPBSGU
 Pfjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Zt7MfOcPWNwOUhAt+n186GW5j+dN1ZYZolTB9vhBIyM=;
 b=GqdmHBRfAS73sEzUbnRkGdoZndePoukBWYv+z1MgIS3OmhdEbIvNkALtHe0MidFJdg
 JyZGOcodEn56PqT17ccCDV+A7zrsuHDXm1WawHArceOC/Bnn6rCJN0hhoA21IvLktMQ7
 BS9ajdMTF8tPZAjnSAOF9+nPKi4/XXWAfpJbUSCzewvbQ/C78L8mNpwJNMLQTL4YZnFz
 GfQTxqerDVaXxTe8zMU8kOWNDmyl9El2uN56TEArueMU99Um/bUfka4bG7C7YvDAtYuT
 aNg9utxG4dvdA7hPgiFKqIb2AwZ7JJtzmDLIohHTuMaQwTtrPtrxY7CxKBFBLpaXsZR4
 TAMg==
X-Gm-Message-State: AGi0PuYztvZKyQJ8jQtByitkoUBXiO+ulYJLNjeeOH6iP60I56QI85nt
 gYD8q2q59AGwAAQ3emXRCqHXFe7EheNND0hVvCs=
X-Google-Smtp-Source: APiQypIRgDGwy8h9WFgdTO9hlP1j+PLidm5+TENx/qWJg5vT1I418LZLeToHEpHyfxgUQLYkITEbtCrbcijXYloHlFI=
X-Received: by 2002:a1c:3589:: with SMTP id c131mr1529468wma.116.1586462498843; 
 Thu, 09 Apr 2020 13:01:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200404153631.103549-1-linux@roeck-us.net>
 <1671412.OU26QM6KFd@192.168.0.120>
In-Reply-To: <1671412.OU26QM6KFd@192.168.0.120>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Thu, 9 Apr 2020 22:01:27 +0200
Message-ID: <CAFLxGvwKuYYA8S+J=CgXniPa2cQJ_vp-0Q_APkxKNPJX_TuWaw@mail.gmail.com>
Subject: Re: [PATCH] mtd: spi-nor: Compile files in controllers/ directory
To: Tudor Ambarus <Tudor.Ambarus@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_130145_423658_AD2661B5 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 LKML <linux-kernel@vger.kernel.org>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Apr 6, 2020 at 7:31 AM <Tudor.Ambarus@microchip.com> wrote:
>
> On Saturday, April 4, 2020 6:36:31 PM EEST Guenter Roeck wrote:
> > Commit a0900d0195d2 ("mtd: spi-nor: Prepare core / manufacturer code
> > split") moved various files into a new directory, but did not add the new
> > directory to its parent directory Makefile. The moved files no longer
> > build, and affected flash chips no longer instantiate.
> >
> > Adding the new directory to the parent directory Makefile fixes the
> > problem.
> >
> > Fixes: a0900d0195d2 ("mtd: spi-nor: Prepare core / manufacturer code split")
> > Cc: Boris Brezillon <bbrezillon@kernel.org>
> > Cc: Tudor Ambarus <tudor.ambarus@microchip.com>
> > Signed-off-by: Guenter Roeck <linux@roeck-us.net>
> > ---
> >  drivers/mtd/spi-nor/Makefile | 2 ++
> >  1 file changed, 2 insertions(+)
>
> Reviewed-by: Tudor Ambarus <tudor.ambarus@microchip.com>
>
> I missed that somehow, sorry. Thank you for the fix, Guenter!

Applied to mtd/fixes, thanks to everyone for addressing this.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
