Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E88181C7605
	for <lists+linux-mtd@lfdr.de>; Wed,  6 May 2020 18:12:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MVk47vLyHXBJU9A2Vr0YiGoIKTmDDKYxewv/cIjV/go=; b=X7IknxPSA+2ayP
	IhnablNCZkWbJCpj/Xo3Tj1Cv3rJB2ExOZ9Y6VheZPga5NqajaaNeN8N0hB1wDAhTR+NyGgKTcaBj
	zyzF/uZVD5gtUFeWrWSJXMkyerhu2PBH5BHUR7JWon19Efv+VnggBux3AJO00Fj1NAax47NDCafNX
	/3fOjXtugP+6V1bI5wv6ZziOzHzZeOsjHf+WNeLo0cmHikjedv4xkdgvwKloPanh/ENbAVLTR1J5M
	NJeoDfrof8KlPoMwr0RbVt6vi+4naReXfI0YsToU1ZEkUKnd1SdzuHb2EFQeOcJojI+oI2Izy1Xb/
	GxqgPdP2gsywxXLzNzqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWMeX-0002zk-Ra; Wed, 06 May 2020 16:12:09 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWMeK-0002xc-RW
 for linux-mtd@lists.infradead.org; Wed, 06 May 2020 16:11:59 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6C5702A24CB;
 Wed,  6 May 2020 17:11:55 +0100 (BST)
Date: Wed, 6 May 2020 18:11:53 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH v2 00/19] mtd: rawnand: cafe: Convert to exec_op() (and
 more)
Message-ID: <20200506181153.4643fbe1@collabora.com>
In-Reply-To: <20200506155359.GA183666@furthur.local>
References: <20200505101353.1776394-1-boris.brezillon@collabora.com>
 <20200505144639.GB1997@furthur.local>
 <20200505220152.GA157445@furthur.local>
 <20200506083209.57c85ad9@collabora.com>
 <20200506155359.GA183666@furthur.local>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_091157_157778_AA7A89BF 
X-CRM114-Status: GOOD (  45.27  )
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

On Wed, 6 May 2020 17:53:59 +0200
Lubomir Rintel <lkundrak@v3.sk> wrote:

> On Wed, May 06, 2020 at 08:32:09AM +0200, Boris Brezillon wrote:
> > On Wed, 6 May 2020 00:01:52 +0200
> > Lubomir Rintel <lkundrak@v3.sk> wrote:
> >   
> > > On Tue, May 05, 2020 at 04:46:41PM +0200, Lubomir Rintel wrote:  
> > > > On Tue, May 05, 2020 at 12:13:34PM +0200, Boris Brezillon wrote:    
> > > > > Hello,
> > > > > 
> > > > > A bit of context to explain the motivation behind those conversions
> > > > > I've been sending for the last couple of weeks. The raw NAND subsystem
> > > > > carries a lot of history which makes any rework not only painful, but
> > > > > also subject to regressions which we only detect when someone dares to
> > > > > update its kernel on one of those ancient HW. While carrying drivers
> > > > > for old HW is not a problem per se, carrying ancient and unmaintained
> > > > > drivers that are not converted to new APIs is a maintenance burden,
> > > > > hence this massive conversion attempt I'm conducting here.
> > > > > 
> > > > > So here is a series converting the CAFE NAND controller driver to
> > > > > exec_op(), plus a bunch of minor improvements done along the way.
> > > > > I hope I'll find someone to test those changes, but if there's no one
> > > > > still owning OLPC HW or no interest in keeping it supported in recent
> > > > > kernel versions, we should definitely consider removing the driver
> > > > > instead.
> > > > > 
> > > > > No major changes in this v2, apart from fixes for things reported by
> > > > > Lubomir and Miquel. See the changelog on each patch for more details.
> > > > > 
> > > > > Regards,
> > > > > 
> > > > > Boris
> > > > > 
> > > > > Boris Brezillon (19):
> > > > >   mtd: rawnand: Propage CS selection to sub operations
> > > > >   mtd: rawnand: cafe: Get rid of an inaccurate kernel doc header
> > > > >   mtd: rawnand: cafe: Rename cafe_nand_write_page_lowlevel()
> > > > >   mtd: rawnand: cafe: Use a correct ECC mode and pass the ECC alg
> > > > >   mtd: rawnand: cafe: Include linux/io.h instead of asm/io.h
> > > > >   mtd: rawnand: cafe: Demistify register fields
> > > > >   mtd: rawnand: cafe: Factor out the controller initialization logic
> > > > >   mtd: rawnand: cafe: Get rid of the debug module param
> > > > >   mtd: rawnand: cafe: Use devm_kzalloc and devm_request_irq()
> > > > >   mtd: rawnand: cafe: Get rid of a useless label
> > > > >   mtd: rawnand: cafe: Explicitly inherit from nand_controller
> > > > >   mtd: rawnand: cafe: Don't leave ECC enabled in the write path
> > > > >   mtd: rawnand: cafe: Don't split things when reading/writing a page
> > > > >   mtd: rawnand: cafe: Add exec_op() support
> > > > >   mtd: rawnand: cafe: Get rid of the legacy interface implementation
> > > > >   mtd: rawnand: cafe: Adjust the cafe_{read,write}_buf() prototypes
> > > > >   mtd: rawnand: cafe: s/uint{8,16,32}_t/u{8,16,32}/
> > > > >   mtd: rawnand: cafe: Drop the cafe_{readl,writel}() wrappers
> > > > >   mtd: rawnand: cafe: Get rid of the last printk()
> > > > > 
> > > > >  drivers/mtd/nand/raw/cafe_nand.c | 798 ++++++++++++++++---------------
> > > > >  drivers/mtd/nand/raw/nand_base.c |   3 +-
> > > > >  include/linux/mtd/rawnand.h      |   2 +
> > > > >  3 files changed, 410 insertions(+), 393 deletions(-)    
> > > > 
> > > > Just confirming that this set works a treat on an OLPC XO-1 laptop,
> > > > applied on top of v5.7-rc4.    
> > > 
> > > Perhaps I spoke too soon. Before I've tested by dumping a couple of pages
> > > and checksumming them and it indeed worked fine every time.
> > > 
> > > Now I've actually tried to mount a JFFS2 filesystem. On v5.7-rc4 it worked:
> > > 
> > >   bash-5.0# mount -t jffs2 mtd0 /mnt
> > >   jffs2: jffs2_scan_dirent_node(): Name CRC failed on node at 0x30212fc8: Read 0x583ccb57, calculated 0x06d03796
> > >   jffs2: notice: (96) jffs2_build_xattr_subsystem: complete building xattr subsystem, 0 of xdatum (0 unchecked, 0 orphan) and 0 of xref (0 dead, 0 orphan) f.
> > >   bash-5.0# ls /mnt
> > >   boot        dev         lost+found  security    versions
> > >   boot-alt    home        proc        sys
> > >   bash-5.0#
> > > 
> > > Whereas with the patches applied it does not:
> > > 
> > >   bash-5.0# mount -t jffs2 mtd0 /mnt
> > >   jffs2: cannot read OOB for EB at 00260000, requested 8 bytes, read 0 bytes, error -110
> > >   mount: /mnt: can't read superblock on mtd0.
> > >   bash-5.0# mount -t jffs2 mtd0 /mnt
> > >   jffs2: cannot read OOB for EB at 001c0000, requested 8 bytes, read 0 bytes, error -110
> > >   mount: /mnt: can't read superblock on mtd0.
> > >   bash-5.0# mount -t jffs2 mtd0 /mnt
> > >   jffs2: warning: (102) jffs2_sum_scan_sumnode: Summary node crc error, skipping summary information.
> > >   jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x00122a28: 0x15ee instead
> > >   jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x00122a2c: 0x4176 instead
> > >   jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x00122a30: 0x105d instead
> > >   jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x00122a34: 0x13f1 instead
> > >   jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x00122a38: 0x7df1 instead
> > >   jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x00122a3c: 0xca39 instead
> > >   jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x00122a40: 0xe70e instead
> > >   jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x00122a44: 0x1004 instead
> > >   jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x00122a48: 0x2902 instead
> > >   jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x00122a4c: 0x0030 instead
> > >   jffs2: Further such events for this erase block will not be printed
> > >   jffs2: jffs2_scan_dirent_node(): Name CRC failed on node at 0x001287cc: Read 0x7fea120a, calculated 0x9ceec452
> > >   jffs2: jffs2_scan_dirent_node(): Name CRC failed on node at 0x00128fcc: Read 0x7fea120a, calculated 0xb77b2a34
> > >   jffs2: warning: (102) jffs2_sum_scan_sumnode: Summary node crc error, skipping summary information.
> > >   jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x007232b0: 0xdd29 instead
> > >   jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x007232b4: 0xf37e instead
> > >   jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x007232b8: 0x251b instead
> > >   jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x007232bc: 0xe805 instead
> > >   jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x007232c0: 0xd3bf instead
> > >   jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x007232c4: 0x2927 instead
> > >   jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x007232c8: 0xd79d instead
> > >   jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x007232cc: 0xd548 instead
> > >   jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x007232d0: 0x46e3 instead
> > >   jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 not found at 0x007232d4: 0x7716 instead
> > >   jffs2: Further such events for this erase block will not be printed
> > >   jffs2: cannot read OOB for EB at 009e0000, requested 8 bytes, read 0 bytes, error -110
> > >   mount: /mnt: can't read superblock on mtd0.
> > >   bash-5.0# 
> > > 
> > > Note that the failed reads are for different addresses every time. The
> > > CRC errors are there presumably because we don't handle
> > > nand_read_page_op() errors in cafe_nand_read_page().
> > > 
> > > I have no idea what's going on. With the debug trace on it looks like
> > > CAFE_NAND_IRQ_FLASH_RDY is sometimes not flipped on for no apparent
> > > reason:
> > > 
> > >   ...
> > >   instr[0] = CMD(00)
> > >   instr[1] = ADDR(00 00 bd 09 00)
> > >   instr[2] = CMD(30)
> > >   instr[3] = WAITRDY
> > >   instr[4] = DATA_IN(len=2112)
> > >   5: ret=0 status=d0000000 wait=50000000
> > >   instr[0] = CMD(00)
> > >   instr[1] = ADDR(00 00 be 09 00)
> > >   instr[2] = CMD(30)
> > >   instr[3] = WAITRDY
> > >   instr[4] = DATA_IN(len=2112)
> > >   5: ret=0 status=d0000000 wait=50000000
> > >   instr[0] = CMD(00)
> > >   instr[1] = ADDR(00 08 c0 09 00)
> > >   instr[2] = CMD(30)
> > >   instr[3] = WAITRDY
> > >   instr[4] = DATA_IN(len=64)
> > >   5: ret=0 status=d0000000 wait=50000000
> > >   instr[0] = CMD(00)
> > >   instr[1] = ADDR(00 00 ff 09 00)
> > >   instr[2] = CMD(30)
> > >   instr[3] = WAITRDY
> > >   instr[4] = DATA_IN(len=2112)
> > >   5: ret=0 status=d0000000 wait=50000000
> > >   instr[0] = CMD(00)
> > >   instr[1] = ADDR(00 00 fd 09 00)
> > >   instr[2] = CMD(30)
> > >   instr[3] = WAITRDY
> > >   instr[4] = DATA_IN(len=2112)
> > >   5: ret=0 status=d0000000 wait=50000000
> > >   instr[0] = CMD(00)
> > >   instr[1] = ADDR(00 00 fe 09 00)
> > >   instr[2] = CMD(30)
> > >   instr[3] = WAITRDY
> > >   instr[4] = DATA_IN(len=2112)
> > >   5: ret=0 status=d0000000 wait=50000000
> > >   instr[0] = CMD(00)
> > >   instr[1] = ADDR(00 08 00 0a 00)
> > >   instr[2] = CMD(30)
> > >   instr[3] = WAITRDY
> > >   instr[4] = DATA_IN(len=64)
> > >   5: ret=-110 status=90000000 wait=50000000
> > >   jffs2: cannot read OOB for EB at 00500000, requested 8 bytes, read 0 bytes, error -110
> > > 
> > > Indeed, commenting out the CAFE_NAND_IRQ_FLASH_RDY makes things work  
> > 
> > Looks like that happens when you read less than 2k.  
> 
> Not really, there's a successful len=64 insn above. In fact, you've
> provided a clue about what is going on below: the interrupt handler is
> racing with readl_poll_timeout() and sometimes wins, acknowledging the
> CAFE_NAND_IRQ_FLASH_RDY before readl_poll_timeout() can see it.
> 
> This fixes it:
> 
> -       writel(irqs & ~(CAFE_NAND_IRQ_CMD_DONE | CAFE_NAND_IRQ_DMA_DONE),
> +       writel(irqs & ~(CAFE_NAND_IRQ_CMD_DONE | CAFE_NAND_IRQ_DMA_DONE | CAFE_NAND_IRQ_FLASH_RDY),

We really should mask IRQs (AKA disable IRQs in my naming convention
:-)) here, unless we want to switch to interrupt-based waits (which
would be a good thing when we have DMA or WAIT_RDY involved). Having an
interrupt handler in the current implementation doesn't make any sense
(that's assuming the IRQ_STATUS bits are updated even if the interrupts
are disabled, which am not sure is a valid assumption in this case).

> 
> > Can you print the
> > CAFE_NAND_STATUS register in your trace? I suspect
> > CAFE_NAND_STATUS_FLASH_BUSY will be cleared, so maybe it's the way to
> > go if we want to make sure the check Ready/Busy pin status.
> >   
> > > (on a somewhat unrelated note, the waitrdy doesn't seem to be used at
> > > all):  
> > 
> > Yep, I initially thought I would need to poll the NAND_STATUS register
> > and added a boolean to keep track that before realizing there was a bit
> > in the IRQ_STATUS reg.
> >   
> > > 
> > >        case NAND_OP_WAITRDY_INSTR:
> > > 	       // wait |= CAFE_NAND_IRQ_FLASH_RDY;
> > > 	       waitrdy = true;
> > > 	       break;
> > >        }
> > > 
> > > 
> > >   bash-5.0# time mount -t jffs2 mtd0 /mnt
> > >   jffs2: jffs2_scan_dirent_node(): Name CRC failed on node at 0x30212fc8: Read 0x583ccb57, calculated 0x06d03796
> > >   jffs2: notice: (96) jffs2_build_xattr_subsystem: complete building xattr subsystem, 0 of xdatum (0 unchecked, 0 orphan) and 0 of xref (0 dead, 0 orphan) f.
> > >   
> > >   real    5m5.512s
> > >   user    0m0.000s
> > >   sys     0m17.523s
> > >   bash-5.0#
> > > 
> > > The mount time seems to be significantly higher than with mainline,
> > > where it looks more like this:  
> > 
> > Can you add a trace in the IRQ handler (before the "if (!irqs)" check).
> > I interpreted the 'masked' state as 'irq disabled', but maybe that's
> > the opposite, and we're being flood by uncleared 'FLASH_RDY'
> > interrupts. In any case, given we're polling the IRQ_STATUS
> > register, I don't think we need to enable interrupts (unless the
> > status is only updated when the interrupt is enabled).
> > 
> > Using readl_poll_timeout_atomic() instead of readl_poll_timeout() might
> > also help.  
> 
> We've been actually acidentally clearing FLASH_RDY (see above), so I
> don't think that's the case. I'm not seeing an interrupt storm either:

I think it's worth trying to use the atomic version of
readl_poll_timeout(), even if we don't have an interrupt storm here.

> 
>   bash-5.0# grep CAFE /proc/interrupts
>    11:       1469    XT-PIC      CAFE NAND, cafe-ccic, mmc0
>   bash-5.0# time mount -t jffs2 mtd0 /mnt
>   jffs2: jffs2_scan_dirent_node(): Name CRC failed on node at 0x30212fc8: Read 0x583ccb57, calculated 0x06d03796
>   jffs2: notice: (121) jffs2_build_xattr_subsystem: complete building xattr subsystem, 0 of xdatum (0 unchecked, 0 orphan) and 0 of xref (0 dead, 0 orphan) .
>   real    5m5.382s
>   user    0m0.000s
>   sys     0m17.594s
>   bash-5.0# grep CAFE /proc/interrupts
>    11:       1902    XT-PIC      CAFE NAND, cafe-ccic, mmc0
>   bash-5.0#
> 
> I'll try to look more into it, but I suspect the kid is going to wake up
> any time soon, so I won't be able to look into that today.

Hehe, no problem.

> Ideas welcome.

Apart from those I have already mentioned, nope.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
