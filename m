Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 699DE18E2A5
	for <lists+linux-mtd@lfdr.de>; Sat, 21 Mar 2020 16:44:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FI6UuYuuaOH882Yfs5IUGE3LuaDvHxvn3ooOj2pPJzE=; b=iB0yAEHMdE2iOnEixeVtbN1PYp
	lqt1aIpAnoJkFWqIt65XBMeYeT1YioIROyRKQKbp1v6P5/q25LLasf32jEuI7o8brq4sg3P3ONxPk
	5bz0cuNj8Nh0pMR/hsPGetg/LougOqbTVYmbja/uBYlHo5Olb7cmVTmFbpJGmSr9T61qK7ZpI0PYF
	sGgRGJGnRu6RH3ICjRHHI+357Vvw3/wUn/OGieDoVwfaUcvRUFoXFuphnZYbmKANmV90YL4FZ8dFy
	Z7KyYJtsRNXjzEImle3q5MrTFYyJ8SCIjsewkogdD97xF/dLUoa6MoJd7wFchjSm0yHtKU/JpAUAv
	Y7JHB8jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFgIc-0003LE-NC; Sat, 21 Mar 2020 15:44:34 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFgIS-0003Kt-1H
 for linux-mtd@lists.infradead.org; Sat, 21 Mar 2020 15:44:25 +0000
Received: by mail-oi1-x243.google.com with SMTP id p125so9909731oif.10
 for <linux-mtd@lists.infradead.org>; Sat, 21 Mar 2020 08:44:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=BlfYB/H07ym5NRyUBL3cN/qnvx15kq6KoW/YEMUZZAw=;
 b=EClMkNOgn5lkndsWdUqd3Plea62S9jnE24zMWhoTuc7mSp9ir1i8XPZtMLi0b10A68
 t40D3up+3i7DHjGKYqZ7s5lRrK+SuxsAiy0N+pfIB/PfIUKcTFhRPvEQBLgh5v2mqBQR
 3uuZOQBGqnEBcJRpN7ss4RrkDsREWJWOC8ubg7QK4q2FfK6vfkPMaNLFfq/Ox6EuTc6d
 cXuXxqIWAdHbfSC6yjYHwnCAjJYPrSORNiJ+5n7ghT8D3hjRUIoat2Jjmo8rJfndUPHg
 2FCL6aknUYAV+Gxp+MhTofnYwSpzCYAJBsmkQ8vNH5ACVSzLhOBctUr1iOEP9/wlGIIk
 v9IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=BlfYB/H07ym5NRyUBL3cN/qnvx15kq6KoW/YEMUZZAw=;
 b=odBaqu4bTyaNqeXxvLk9bCNRo8fMvJlKDiEn2ISeYwFloliDnc0m3GRqjPOZ4P5+x3
 DwWzircjiYvm3u8HOL4kKdr3oWUWYTI2032s9JbV4lDzs0+zVkUQ7gpmCn/MPLQt1Vcz
 BYIjkMyEA3d2U+5vyl5KyFde0cMGKTfpP8X0PqxD9rwgC42i8tuSMEf72utYfleTkzfZ
 ivuIYwvI91jW/vsCVM1uLaihuPkjLc39XArW2ZuqYXrzAfuQJ3GO2BoThKFNo/YX/jHN
 SiQp0/6tW+WE1RZaTF/SDNxJwxRvAiuzkuqjGqvkJl3pHF4XNyDUof97fR5iFvLv9M0F
 06mQ==
X-Gm-Message-State: ANhLgQ1+UgL/XN6HqaN/InCU4b0AYVp7gOUODtHq7kXERXFwXmV8Kj+e
 rPGuDy8CTkW1yzuJE0BqtbdFG7NNb5UzY943XPM=
X-Google-Smtp-Source: ADFU+vvjue5JkXY1FuE7loXUAG1KNrcKEtVxdvGkKNCeP8XVqW5BjhOcQ3VMln1l3nzBqH/IwviSO5qlfCknxIAAc5o=
X-Received: by 2002:a05:6808:8:: with SMTP id u8mr10635597oic.37.1584805458912; 
 Sat, 21 Mar 2020 08:44:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAP6exYL889zuXgDhLE3SdwzC4idZ6tbe2oqXQRpZT2M6SrRbFg@mail.gmail.com>
In-Reply-To: <CAP6exYL889zuXgDhLE3SdwzC4idZ6tbe2oqXQRpZT2M6SrRbFg@mail.gmail.com>
From: ron minnich <rminnich@gmail.com>
Date: Sat, 21 Mar 2020 08:44:07 -0700
Message-ID: <CAP6exY+m7SGgkg1Ng7tzDU8m--vb4bg=Re_C3OX8jdPAZGn17w@mail.gmail.com>
Subject: Re: [PATCH 1/1] mtd: add | as a separator after mtd-id
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, 
 Vignesh Raghavendra <vigneshr@ti.com>, linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_084424_102555_C385F7F1 
X-CRM114-Status: GOOD (  25.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rminnich[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Anyone? This will be going into use at Google internally and I'd like
to get it upstream.

The only other option that would work is to take the pci-format names
created by intel-spi-pci that have : in them and change the : to '.'.
Is that more acceptable?

On Fri, Mar 20, 2020 at 1:21 PM ron minnich <rminnich@gmail.com> wrote:
>
> The MTD subsystem can support command-line defined partitions
> for one or more MTD devices.
>
> The format is:
>  * mtdparts=<mtddef>[;<mtddef]
>  * <mtddef>  := <mtd-id>:<partdef>[,<partdef>]
>
> The ':' currently separates the id from the partdef.
>
> The mtdparts can define more than one part, in which case
> there will be more than one <mtd-id>:<partdef> component.
>
> The problem comes in with newer systems which have MTDs
> attached to a PCI device, which has a PCI name including
> several :'s, e.g. 0000:00:1f.5 on an Intel chipset. Although
> this is largely an x86 problem at the moment, PCI is coming
> to newer ARM systems, and they will hit this issue in future.
>
> There are two : in the name alone. strchr is used to find
> the <mtd-id>, and in this case it will return the wrong
> result. Using strrchr is not an option, as there may
> be more than one mtddef in the argument.
>
> This patch defines a new delimiter, |, to seperate
> the <mtd-id> from the <partdef>. | is rarely used
> in device names, so seems a reasonable choice.
>
> The code first searches for | and, if that fails, searches
> for the old :. Eventually, it ought to be possible to remove
> the support for : entirely, but since mtdparts are also defined
> in FLASH in the device tree on many ARM boards, wholesale removal
> is not yet practical.
>
> This code has been used on real hardware and allowed us to use a
> squashfs in SPI-NOR flash as a root file system, with partitions
> defined on the cmdline.
>
> Signed-off-by: Ronald G. Minnich <rminnich@google.com>
> Change-Id: Ifce3627cb03247bf9e54c8b19d24b60baeed2ec3
> ---
>  drivers/mtd/parsers/cmdlinepart.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/mtd/parsers/cmdlinepart.c
> b/drivers/mtd/parsers/cmdlinepart.c
> index c86f2db8c882..eca8ec026d89 100644
> --- a/drivers/mtd/parsers/cmdlinepart.c
> +++ b/drivers/mtd/parsers/cmdlinepart.c
> @@ -223,7 +223,14 @@ static int mtdpart_setup_real(char *s)
>          mtd_id = s;
>
>          /* fetch <mtd-id> */
> -        p = strchr(s, ':');
> +        p = strchr(s, '|');
> +        if (!p) {
> +            /*
> +             * ':' is the older separator, which conflicts
> +             * with PCI IDs T:B:D.F; too many  :'s!
> +             */
> +            p = strchr(s, ':');
> +        }
>          if (!p) {
>              pr_err("no mtd-id\n");
>              return -EINVAL;
> --
> 2.25.1.696.g5e7596f4ac-goog

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
