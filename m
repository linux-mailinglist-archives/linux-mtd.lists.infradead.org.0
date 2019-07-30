Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5FE179F6F
	for <lists+linux-mtd@lfdr.de>; Tue, 30 Jul 2019 05:07:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ytg8JzsQA1ZndOtaKQkpBBNj/hktK0HWvXgUBRHlos=; b=slZLhZIdFMfS0w
	Fh99lUlNxYI0ES0hwxbyVWG9NtW+3/NezYAXUE8wqFwfqHUrcwa1yRvnPOyDeIg373vnd2nCMz1zb
	D59vOrCCtDmVkAig2EUtq35+ndQABh0hZijJ6uTgOiLoCUXKPgmqYbliiGUyxkmkvjQ0flAx0RMEu
	rmKOLGQDZ98OF+WZ7uuuHTz39DpPeY6Ldwh62wv5d6XmwT+vVhJhWYYeBRGCPSqBNwKVsyJ98qgp6
	al1UPwu8f46+QKd5wumaioW3izpXAzeqhiPNkcLZZ5cu7E6H0BQBeGkHofiebVDsZGqcmGonmVQ4s
	PdrRW8uIsmwNp6VraRtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsIU7-00070I-I7; Tue, 30 Jul 2019 03:07:31 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsITy-0006zv-56
 for linux-mtd@lists.infradead.org; Tue, 30 Jul 2019 03:07:23 +0000
Received: by mail-io1-xd43.google.com with SMTP id k8so124887107iot.1
 for <linux-mtd@lists.infradead.org>; Mon, 29 Jul 2019 20:07:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A+ca/5uedCixWIQer/ZjP7BnYJmLZASZxV771imHbM4=;
 b=f/NfvxDXZcO5O+OU54O/J20STpBsaSXWWDvSiFlg2VBV+gmMCcPT+PSqUt1qG31xMj
 HKJ3Z1XJIJWckJuIFM+fexqU2WAcHrK8GPxwgvQimAuCxIDAGZ8NR/BJImPX2O85ETh5
 QqJFrpAX643+qe3Hsr2q4E28NoOS5c/3CMe1LmdCw7V2dfwlEWZo67+5Z0nzmED4TF02
 o3Bqafe3zjV5IFhzY/m64YRZzJEkcEVbZh1UiXmNP9FPlYRIALa9Wad1l9fCTRTdO+4q
 u1NmxOq8q1jQK+CsJKvDvUAYW3pPyESIUvu4iLfKKhQHAxM1G5Sl/BDMKs5UfIxuLb0R
 /kbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A+ca/5uedCixWIQer/ZjP7BnYJmLZASZxV771imHbM4=;
 b=mC2NPuZi3cuZPb4+g6bvDYgdJmgzYEwN+qlhnJTnvRPMwO/dyXmNXpYwXmXYEBqyvz
 /i4CHGv9u/4lJTcW+WAXM84UMJnxXjULPC75hgdcNmncf1JNKkjHtyjNH4urdubmk44/
 K7QmPgAM8kB8MxBiOJaQLvBleAspCQwnNtt2c+A5SVD+A+g6zEX0r5tB3zrm+8TpEcUg
 rN+qAWWKVEw4qTcOPT4wBnyFkrV+FfVEUC1F9TGnEp2GS2B5Vh6LkL+QrDsRUWhXJwUU
 WtL6Ck1RYes/2qyc7QaQXw1cER+uWJK4cDEyRRNOx7b6c9MVw4DuLISDjrlMHPoA4UUk
 JVbg==
X-Gm-Message-State: APjAAAUOD7iiPzncxmZ6Er7tMxk/zpWGaPgKRjsbahYwTlQE16fDQVtk
 hR3YMbtpn6TCosebXtYFZJe1CBDAmWpID7XfqD0=
X-Google-Smtp-Source: APXvYqwIAVlSwA7TBl5/cJpyTdyz2ZEco0nHJWKTuOSSzTcogQv6ecDu/R7okBGlt4uZIdcj0zYHc/OEa02aQQPuiOo=
X-Received: by 2002:a5d:9d90:: with SMTP id 16mr5067185ion.132.1564456040635; 
 Mon, 29 Jul 2019 20:07:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190725001114.0ceff19c@jawa>
 <CAOMZO5CsTPaRSe-VmOwnnYrsMMXa3GhurmsWwzaPo948xs10FA@mail.gmail.com>
 <20190729224326.44aa3057@jawa>
In-Reply-To: <20190729224326.44aa3057@jawa>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 29 Jul 2019 20:07:09 -0700
Message-ID: <CAHQ1cqGf6aeUu+QzOCuOgcaEaZhXe7Kdj8vaBo-30KMsyUTjsA@mail.gmail.com>
Subject: Re: [imx][vybrid][qspi] Regression notification - vybrid vf610
 QUADSPI - BK4 board
To: Lukasz Majewski <lukma@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_200722_221896_4ABC1134 
X-CRM114-Status: GOOD (  24.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Yogesh Gaur <yogeshnarayan.gaur@nxp.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Frieder Schrempf <frieder.schrempf@kontron.de>, linux-mtd@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>, Suresh Gupta <suresh.gupta@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 1:43 PM Lukasz Majewski <lukma@denx.de> wrote:
>
> Hi Fabio,
>
> > Hi Lukasz,
> >
> > On Wed, Jul 24, 2019 at 7:11 PM Lukasz Majewski <lukma@denx.de> wrote:
> > >
> > > Dear All,
> > >
> > > I'd like to report that after moving the fsl-quadspi.c driver
> > > from ./drivers/mtd to ./drivers/spi (around 5.1-rc1) [1] the
> > > Vybrid's QUADSPI (even with single SPI-NOR memory connected) is not
> > > working anymore (the chip ID read is FF FF FF).
> > >
> > > This wouldn't be a problem per-se, but not all necessary code was
> > > moved
> > > - especially for vybrid which has issues with some HW bugs [2]:
> > >
> > > --------------->8----------------
> > >  * The IC guy suggests we use the "AHB Command Read" which is faster
> > >  * then the "IP Command Read". (What's more is that there is a bug
> > > in
> > >  * the "IP Command Read" in the Vybrid.)
> > > ---------------8<----------------
> > >
> > > I've explicitly asked NXP support for this HW issue [3] - but till
> > > now there was no reply.
> > >
> > > The official linux-imx (from meta-freescale) seems not to support
> > > vybrid (vf610) anymore - and the newest available now kernel is
> > > 4.19 (with the old fsl-quadspi.c driver available).
> > >
> > >
> > >
> > > Hence the question - has anybody noticed this issue and (maybe) is
> > > working on it?
> >
> > I don't have access to a Vybrid board, but I kindly got the
> > confirmation from Andrey on Cc that QSPI is working fine on his Vybrid
> > based board running linux-next.
> >
>
> Thank you for your reply, Fabio.
>
> Andrey , could you share your setup info? How your memories are
> connected?
>

I did all my testing on ZII VF610 devboard rev C. The board has two
SPI-NOR chips connected to 4-bit QSPI_A and 4-bit QSPI_B. See
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm/boot/dts/vf610-zii-dev.dtsi?h=v5.3-rc2#n180

> Would it be possible to share your dts files for linux-next?
>

I don't have a special DTS file I am using. The one currently
available upstream is what I am using:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm/boot/dts/vf610-zii-dev-rev-c.dts

> I did a bit more debugging and the old driver (before conversion) on my
> setup breaks when I try to erase/write/read 256+ bytes (with dd's block
> size -> bs = 1).
>
> Could you check if erase, write and read of
>
> dd if=/dev/urandom of=/dev/mtd7 bs=1 count=256
>
> works as expected?
>

# flash_erase /dev/mtd0 0 1024
Erasing 64 Kibyte @ 3ff0000 -- 100 % complete
# dd if=/dev/urandom of=blob.bin bs=1 count=1024
1024+0 records in
1024+0 records out
1024 bytes (1.0 kB, 1.0 KiB) copied, 0.0360427 s, 28.4 kB/s
# md5sum blob.bin
5064a3852988ce75c60e9bc867f62230  blob.bin
# dd if=blob.bin of=/dev/mtd0 bs=1 count=1024
1024+0 records in
1024+0 records out
1024 bytes (1.0 kB, 1.0 KiB) copied, 0.269917 s, 3.8 kB/s
# dd if=/dev/mtd0 bs=1 count=1024 | md5sum
5064a3852988ce75c60e9bc867f62230  -
1024+0 records in
1024+0 records out
1024 bytes (1.0 kB, 1.0 KiB) copied, 0.182514 s, 5.6 kB/s

AFAICT works as expected.

Thanks,
Andrey Smirnov

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
