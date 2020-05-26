Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D557E1D63F1
	for <lists+linux-mtd@lfdr.de>; Sat, 16 May 2020 22:18:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0kb8IJupjjdGCwtzIoKWTrCmJral2zYVlvgJrIrcqBA=; b=jpqgF/7cOWK+hc
	Fcsc0EljMjsECUn4Jd1QV9zRWuANaRpXfsZwDEnwPAV38DStwUKV5JxFTGrJ6I8FEhaDKthEVcDeU
	rx5WVnaY1FpPZ3M2EguNTLxaO60xhiE/VDnZoIm8wiMjHWQdlaaiaHqMHPOcyZvveM8gacbLsqC49
	4YY0Zehabv3eLDwEFETrik8Lf4EmxSvkAQWxCyQxjcrbDJ0oLW5j2ykFg2Sf0oI86caOxxBSk5u0p
	KTpvtCz016g7673W6BRaexeY2JvdyU7O/1HKW+2HC63AcGhoHxQC1ZwMthJdIlMPwNvEkBtPdTaCu
	wMYsWO4xoLzTVTCYn2LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja3Gl-0001Tt-4t; Sat, 16 May 2020 20:18:51 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja3Gd-0001TN-2R
 for linux-mtd@lists.infradead.org; Sat, 16 May 2020 20:18:45 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 5190B27DF56;
 Sat, 16 May 2020 21:18:40 +0100 (BST)
Date: Sat, 16 May 2020 22:18:37 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH v2 00/19] mtd: rawnand: cafe: Convert to exec_op() (and
 more)
Message-ID: <20200516221837.6559944c@collabora.com>
In-Reply-To: <20200516210857.2b579ae4@collabora.com>
References: <20200509202855.GB524772@furthur.local>
 <20200510083105.4bcfa71b@collabora.com>
 <20200510084541.29e4069e@collabora.com>
 <20200510072108.GA587379@furthur.local>
 <20200510093549.56f74e61@collabora.com>
 <20200511102305.7d843fbc@collabora.com>
 <20200512164057.GC604838@furthur.local>
 <20200513191038.49a4fdf3@collabora.com>
 <20200515144703.GA1245784@furthur.local>
 <20200515192540.GB1245784@furthur.local>
 <20200516145650.GA1433661@furthur.local>
 <20200516210857.2b579ae4@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_131843_376085_7631F411 
X-CRM114-Status: GOOD (  32.55  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Richard Weinberger <richard@nod.at>,
 Tudor Ambarus <tudor.ambarus@microchip.com>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sat, 16 May 2020 21:08:57 +0200
Boris Brezillon <boris.brezillon@collabora.com> wrote:

> On Sat, 16 May 2020 16:56:50 +0200
> Lubomir Rintel <lkundrak@v3.sk> wrote:
> 
> > On Fri, May 15, 2020 at 09:25:43PM +0200, Lubomir Rintel wrote:  
> > > On Fri, May 15, 2020 at 04:47:07PM +0200, Lubomir Rintel wrote:    
> > > > On Wed, May 13, 2020 at 07:10:38PM +0200, Boris Brezillon wrote:    
> > > > > Hi Lubomir,
> > > > > 
> > > > > On Tue, 12 May 2020 18:40:57 +0200
> > > > > Lubomir Rintel <lkundrak@v3.sk> wrote:
> > > > >     
> > > > > > I don't really mind the patch; I was just not sure why you removed the
> > > > > > acks and re-set the mask and suspected that maybe it was not
> > > > > > intentional.
> > > > > > 
> > > > > > That said, I've now disabled the camera and mmc and did my usual test
> > > > > > of mounting the filesystem and I'm seeing zero interrupts.
> > > > > > 
> > > > > > I suppose it's safe to assume that contrary to what I was imagining,
> > > > > > the masking works well and the interrupts I was seeing are indeed from
> > > > > > elsewhere (I guess the MMC driver polling the controller or something).
> > > > > > 
> > > > > > Also, the re-set of the mask from the interrupt handler is not realy
> > > > > > necessary (but I certainly wouldn't complain if you keep it in place).    
> > > > > 
> > > > > I pushed a new version to my nand/cafe-nand-exec-op-debug branch. This
> > > > > time I get rid of the IRQ handler as it's not used anyway. Let me know
> > > > > if that keeps working an I'll send a v3.    
> > > > 
> > > > I can confirm that your branch (as of 12ef1918985f "mtd: rawnand: cafe: Get
> > > > rid of the last printk()") is working great here:
> > > > 
> > > >   bash-5.0# time mount -t jffs2 mtd0 /mnt
> > > >   jffs2: notice: (101) jffs2_build_xattr_subsystem: complete building xattr subsystem, 0 of xdatum (0 unchecked, 0 orphan) and 0 of xref (0 dead, 0 orphan) .
> > > >   
> > > >   real    0m7.319s
> > > >   user    0m0.000s
> > > >   sys     0m7.294s
> > > >   bash-5.0# uname -a
> > > >   Linux (none) 5.7.0-rc3-00097-g12ef1918985f #114 PREEMPT Fri May 15 16:35:01 CEST 2020 i586 GNU/Linux
> > > >   bash-5.0#     
> > > 
> > > Spoke too soon again. Seems like the writes don't make it to the device:
> > > 
> > >   bash-5.0# mount -t jffs2 /dev/mtdblock0 /mnt
> > >   jffs2: Empty flash at 0x045a5798 ends at 0x045a5800
> > >   jffs2: notice: (98) jffs2_build_xattr_subsystem: complete building xattr subsystem, 1 of xdatum (0 unchecked, 0 orphan) and 1 of xref (0 dead, 0 orphan) f.
> > >   bash-5.0# touch /mnt/meh
> > >   bash-5.0# sync 
> > >   jffs2: jffs2_flush_wbuf(): Write failed with -5
> > >   jffs2: jffs2_flush_wbuf(): Write failed with -5
> > >   jffs2: jffs2_flush_wbuf(): Write failed with -5
> > >   jffs2: jffs2_flush_wbuf(): Write failed with -5
> > >   bash-5.0# 
> > > 
> > > I'll follow up once I know more; with some traces or hopefully a fix.    
> > 
> > Hi again. Hope you're having a good weekend.
> > 
> > Some good news and some bad news. Good news is that now I got around to
> > building an image with mtd_debug and got around to making erase, write
> > adn read work, withut the hassle of dealing with jffs2 (and hassle of
> > dealing with corrupted image from eariler attempts).
> > 
> > The bad news is that I have very little idea about what I'm actually
> > doing. Here's the branch with changes I've done, with my notes in
> > the commit messages:
> > 
> >   git fetch git://git.kernel.org/pub/scm/linux/kernel/git/lkundrak/linux.git \
> >       lr/nand/cafe-nand-exec-op-debug
> > 
> > The relevant changes:
> > 
> >   6ee7e0d11e19 fixup! mtd: rawnand: cafe: Demistify register fields  
> 
> This one is valid.
> 
> >   565d5f126e86 fixup! mtd: rawnand: cafe: Demistify register fields  
> 
> Here it should be
> 
> #define CAFE_NAND_ECC_SYN_REG(x)		((((x) / 2) * 4) + 0x50)
> 
> but maybe the loop is no longer valid after that.
> 
> >   064d381b4615 fixup! mtd: rawnand: cafe: Demistify register fields  
> 
> This one looks good too.
> 
> > 
> >     During the test with JFFS2 filesystem, I was seeing a metric ton of ECC
> >     errors. I have no clue where they came from because they presumably happened
> >     on an asynchronous writeback, but they no longer happen and I believe
> >     some of the above was to blame. Unfortunely I didn't investigate
> >     further, because in my setup it is hugely inconvenient to beat the image
> >     back into shape.
> > 
> >   085a6ad43151 Revert "mtd: rawnand: cafe: Don't leave ECC enabled in the write path"
> > 
> >     This triggered a WARN_ON(). Probably not too important, because the
> >     code in question gets thrown out afterwards.  
> 
> Oops. Maybe I should move it after the exec_op() conversion then.
> 
> > 
> >   4a9d95bf6d6b fixup! mtd: rawnand: cafe: Add exec_op() support
> > 
> >     An straightforward fix for page write op.  
> 
> Yep, that one is valid, thanks for the fix.
> 
> > 
> >   6959a724994d XXX add address to CMD_STATUS
> > 
> >     Tricky, and I have no idea what's going on. Perhaps you'll have an
> >     idea how to either address this more reasonably. As usual, I'm happy
> >     to apply patches with extra tracing if necessary.  
> 
> Duh, that one is super weird. I wonder if it doesn't have to do with
> the fact we're using DMA. Can you try with the DMA disabled? I see
> there's also a non-memory read mode, but even the standard mode should
> work according to the diagram page 37 of the spec [1].

Can you also dump the timing registers and find what's the NAND clk
rate? It could be that tCLR (Timing reg 3) is not big enough.

> 
> [1]http://wiki.laptop.org/images/5/5c/88ALP01_Datasheet_July_2007.pdf


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
