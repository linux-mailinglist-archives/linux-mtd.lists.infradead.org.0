Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A6D1CC44F
	for <lists+linux-mtd@lfdr.de>; Sat,  9 May 2020 22:01:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xmD5Cah4aq9kcBtsJdSK9o+etREQFKziqXkES48o3Sk=; b=UCgkWcLcg4gVWi
	kY3JZhLkPP0PUKCmKEUcCWSD9VrsCBc1cEwGVY5+JpCvPyDohSwMeHINDjrbF742bA7RR7avzzZqY
	mnu2Q3Dker5wEgl/kbWXFNgNU6WEWUwDURPuYDZOZ2lV7fLepjtAFntjTCD+mURZlXTUgKprXYy4d
	SrBFEpxW7GCVcX3KpKdT6IpbiHBVmqCdJu4Y422kigoQBxlRXm9KPJDEdZDnqe3kEnN1SDvqy7sYF
	QrR/8Nh+w5XV3x3o+ni3UB4An/RYVaj5dIcFS3P4om1ZeuP0dh0b3F+0nn4idZIJXz6XO9TgYc9m2
	o5YOauu5BFk7GAUIvUeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXVet-0002ZK-Sm; Sat, 09 May 2020 20:01:15 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXVem-0002UV-Id
 for linux-mtd@lists.infradead.org; Sat, 09 May 2020 20:01:10 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 34BDC2A0200;
 Sat,  9 May 2020 21:01:05 +0100 (BST)
Date: Sat, 9 May 2020 22:01:02 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH v2 00/19] mtd: rawnand: cafe: Convert to exec_op() (and
 more)
Message-ID: <20200509220102.59f36689@collabora.com>
In-Reply-To: <20200509193440.GA524772@furthur.local>
References: <20200505101353.1776394-1-boris.brezillon@collabora.com>
 <20200505144639.GB1997@furthur.local>
 <20200505220152.GA157445@furthur.local>
 <20200506083209.57c85ad9@collabora.com>
 <20200506155359.GA183666@furthur.local>
 <20200506181153.4643fbe1@collabora.com>
 <20200506203635.GA207924@furthur.local>
 <20200506233552.0ef6a865@collabora.com>
 <20200507134708.GA303404@furthur.local>
 <20200507221257.75e400a8@collabora.com>
 <20200509193440.GA524772@furthur.local>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_130108_745344_3941E1FF 
X-CRM114-Status: GOOD (  27.72  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Richard Weinberger <richard@nod.at>,
 Tudor Ambarus <tudor.ambarus@microchip.com>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sat, 9 May 2020 21:34:40 +0200
Lubomir Rintel <lkundrak@v3.sk> wrote:

> On Thu, May 07, 2020 at 10:12:57PM +0200, Boris Brezillon wrote:
> > On Thu, 7 May 2020 15:47:08 +0200
> > Lubomir Rintel <lkundrak@v3.sk> wrote:
> >   
> > > On Wed, May 06, 2020 at 11:35:52PM +0200, Boris Brezillon wrote:  
> > > > On Wed, 6 May 2020 22:36:35 +0200
> > > > Lubomir Rintel <lkundrak@v3.sk> wrote:
> > > >     
> > > > > > We really should mask IRQs (AKA disable IRQs in my naming convention
> > > > > > :-)) here, unless we want to switch to interrupt-based waits (which
> > > > > > would be a good thing when we have DMA or WAIT_RDY involved). Having an
> > > > > > interrupt handler in the current implementation doesn't make any sense
> > > > > > (that's assuming the IRQ_STATUS bits are updated even if the interrupts
> > > > > > are disabled, which am not sure is a valid assumption in this case).      
> > > > > 
> > > > > I have no idea why the interrupt handler is there. Perhaps some
> > > > > interrupts can't be masked and need an ack or something.    
> > > > 
> > > > Can you try to set NAND_IRQ_MASK to 0x0 and see if that still works.
> > > > Can you also check the number of NAND interrupts when set to 0x0? It's
> > > > hard to tell exactly what caused the interrupt handler to be called
> > > > since this is a shared interrupt.    
> > > 
> > > When it's set to 0, I get an interrupt with CAFE_NAND_IRQ=0x40000000
> > > (CAFE_NAND_IRQ_FLASH_RDY) right off the bat. That doesn't happen with
> > > a mask of 0xffffffff.
> > > 
> > > When changing the handler to always ack CAFE_NAND_IRQ_FLASH_RDY I've
> > > also seen CAFE_NAND_IRQ=0x80000000 (CAFE_NAND_IRQ_CMD_DONE) suggesting
> > > that other interrupts aren't masked either.
> > > 
> > > It seems to be that ones indeed mask interrupts but just can't be
> > > masked (CAFE_NAND_IRQ_CMD_DONE or CAFE_NAND_IRQ_DMA_DONE), perhaps
> > > due to hardware bugs.
> > >   
> > 
> > I pushed a new version with some interrupt-related changes [1].
> > 
> > [1]https://github.com/bbrezillon/linux/commits/nand/cafe-nand-exec-op-debug  
> 
> Works with one fix:
> 
> diff --git a/drivers/mtd/nand/raw/cafe_nand.c b/drivers/mtd/nand/raw/cafe_nand.c
> index 591d79730961..e37737b7b089 100644
> --- a/drivers/mtd/nand/raw/cafe_nand.c
> +++ b/drivers/mtd/nand/raw/cafe_nand.c
> @@ -801,6 +801,7 @@ static int cafe_nand_probe(struct pci_dev *pdev,
>         if (!cafe)
>                 return  -ENOMEM;
>  
> +       init_completion(&cafe->complete);

Oops, indeed.

>         mtd = nand_to_mtd(&cafe->nand);
>         mtd->dev.parent = &pdev->dev;
>         nand_set_controller_data(&cafe->nand, cafe);
> 
> However, the mount JFFS2 mount takes about twice as long as it did with
> the polling version:

Yes, that's not surprising. At the same time, using atomic-polling for
something that's expected to take hundreds of microseconds is not that
great. That means your CPU is not doing anything useful while you wait
for the read/write/erase operation to finish.

> 
>   bash-5.0# time mount -t jffs2 mtd0 /mnt
>   jffs2: jffs2_scan_dirent_node(): Name CRC failed on node at 0x30212fc8: Read 0x583ccb57, calculated 0x06d03796
>   jffs2: notice: (96) jffs2_build_xattr_subsystem: complete building xattr subsystem, 0 of xdatum (0 unchecked, 0 orphan) and 0 of xref (0 dead, 0 orphan) f.
>   
>   real    0m15.374s

Given the time it takes to mount the FS, I'd recommend considering
switching to UBI/UBIFS, but maybe that's not an option here.

>   user    0m0.000s
>   sys     0m9.727s
> 
> Lubo


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
