Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C19E1A6C79
	for <lists+linux-mtd@lfdr.de>; Tue,  3 Sep 2019 17:09:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OUTdIaavDrIcuXOjWUjua+7xvBxvlRVsA2ZW/cF2P7Q=; b=AEXo0D/M5EX6Rq
	+y2IDKlirLIMRFEnr+KeOrnDeNVMfOfYzv9J/0pSd3jkUlWJkKDW60qhAFQk9pI8v+N2RGqMwNr5F
	kbFoZNqNl+LxPfP/BwihyneroE+JuUTyrLjAGGfwuIAIz3gLJ+B+0MBqn4GZGFPTArtSOD5BXCJWu
	xfHjXojeazuLrMdC6FgYgVqPvJGdaYeOeWs2VbSt+BgJujVfXRZoc8vvMpvPJH8ftv02ddnpDwGIC
	WD4GuHRLbwcKlS9swrkTn2NHrTuSGZ7JuDJs9bpOn51mt0Jak3NSc+gn+KltCOq7I82xdut54EzSA
	Ti+FXy2jastoRzu36ZpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5AQd-0006ge-NY; Tue, 03 Sep 2019 15:09:07 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5AQU-0006fE-Hh
 for linux-mtd@lists.infradead.org; Tue, 03 Sep 2019 15:09:00 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 8305628B338;
 Tue,  3 Sep 2019 16:08:53 +0100 (BST)
Date: Tue, 3 Sep 2019 17:08:50 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH] eeprom: at25: Convert the driver to the spi-mem interface
Message-ID: <20190903170850.6aee808b@collabora.com>
In-Reply-To: <CAMuHMdViBLGurV+w=EN4TMOsDey9vC=YS6qoX6wA4gwvirOoAA@mail.gmail.com>
References: <20190330141637.22632-1-boris.brezillon@collabora.com>
 <20190425194451.GA14552@kroah.com>
 <CAMuHMdViBLGurV+w=EN4TMOsDey9vC=YS6qoX6wA4gwvirOoAA@mail.gmail.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_080858_714796_1477778A 
X-CRM114-Status: GOOD (  25.73  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Arnd Bergmann <arnd@arndb.de>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>, Marek Vasut <marek.vasut@gmail.com>,
 Mark Brown <broonie@kernel.org>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Richard Weinberger <richard@nod.at>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Geert,

On Tue, 3 Sep 2019 17:06:52 +0200
Geert Uytterhoeven <geert@linux-m68k.org> wrote:

> On Thu, Apr 25, 2019 at 9:44 PM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> > On Sat, Mar 30, 2019 at 03:16:37PM +0100, Boris Brezillon wrote:  
> > > The AT25 protocol fits pretty well in the spi-mem model. Convert the
> > > at25 spi driver to a spi-mem driver and use the dirmap API instead of
> > > forging SPI messages manually.
> > > This makes the driver compatible with spi-mem-only controllers
> > > (controllers implementing only the spi_mem ops).
> > >
> > > Cc: Geert Uytterhoeven <geert@linux-m68k.org>
> > > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> > > ---
> > >  drivers/misc/eeprom/at25.c | 282 +++++++++++++++++++++++--------------
> > >  1 file changed, 176 insertions(+), 106 deletions(-)  
> >
> > Will there be a new version of this to fix up the problems that 0-day
> > found in it?  
> 
> gmail-whitespace-damaged fix:
> 
> diff --git a/drivers/misc/eeprom/Kconfig b/drivers/misc/eeprom/Kconfig
> index f2abe27010eff133..98145d7d43d0c728 100644
> --- a/drivers/misc/eeprom/Kconfig
> +++ b/drivers/misc/eeprom/Kconfig
> @@ -36,6 +36,7 @@ config EEPROM_AT25
>         depends on SPI && SYSFS
>         select NVMEM
>         select NVMEM_SYSFS
> +       select SPI_MEM
>         help
>           Enable this driver to get read/write support to most SPI EEPROMs,
>           after you configure the board init code to know about each eeprom
> 
> Boris: what's the plan?

Sorry, I don't have time to respin this patch. Feel free to send a new
version if you need it.

Regards,

Boris

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
