Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF9714CBE2
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Jan 2020 14:53:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uMIWN6gBuvr0AzZIyPzq5F1uKykpb9Pr99ovOk0PNA0=; b=Sli/s3PXRtwy2c
	VQul/IWES/8sI0RamowtOIMqUrH6yWgse1mE366AM7KbizVg6DXNZHshtkEUmU0oTY4eVy5s7TFUQ
	ngr6/Mzr2rZLqcXXUuXWbDW8tNAoU3i8RqUVBnDd1KfWz3sLh/Jw4JC1DPoPmU/GTop7iPz5izsIH
	JPk+fsAglddbfIeQvufK0PRfKg48cNWlZrz9mIM30TMZFZKzaha+xFP1DeBSHevS43843B+Zn2twX
	bZqjSKCO5rBhTDbIBq5Evn+TcPLEfHWceMhmrd09TU68mzA+pdnb1J9+H3/QhQvCNhISKCfUtXz23
	fFnD6MYL+frhAhVXrcHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwnn0-0000io-2R; Wed, 29 Jan 2020 13:53:54 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwnmn-0000hH-RJ
 for linux-mtd@lists.infradead.org; Wed, 29 Jan 2020 13:53:43 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id A1D4828F74F;
 Wed, 29 Jan 2020 13:53:38 +0000 (GMT)
Date: Wed, 29 Jan 2020 14:53:36 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: How to handle write-protect pin of NAND device ?
Message-ID: <20200129145336.66f840ea@collabora.com>
In-Reply-To: <20200129143639.7f80addb@xps13>
References: <CAK7LNAR0FemABUg5uN5fhy5LRsOm7n5GhmFVVHE8T57knDM9Ug@mail.gmail.com>
 <20200127153559.60a83e76@xps13>
 <20200127164554.34a21177@collabora.com>
 <20200127164755.29183962@xps13>
 <20200128075833.129902f6@collabora.com>
 <CAK7LNAQyK+jy4pm5M5z58uD5Zdv95Day6C6D3Gwvpv2C4Vh53Q@mail.gmail.com>
 <20200129143639.7f80addb@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_055342_184447_EE618630 
X-CRM114-Status: GOOD (  36.63  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Masahiro Yamada <masahiroy@kernel.org>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 29 Jan 2020 14:36:39 +0100
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Hello,
> 
> Masahiro Yamada <masahiroy@kernel.org> wrote on Wed, 29 Jan 2020
> 19:06:46 +0900:
> 
> > On Tue, Jan 28, 2020 at 3:58 PM Boris Brezillon
> > <boris.brezillon@collabora.com> wrote:  
> > >
> > > On Mon, 27 Jan 2020 16:47:55 +0100
> > > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> > >    
> > > > Hi Hello,
> > > >
> > > > Boris Brezillon <boris.brezillon@collabora.com> wrote on Mon, 27 Jan
> > > > 2020 16:45:54 +0100:
> > > >    
> > > > > On Mon, 27 Jan 2020 15:35:59 +0100
> > > > > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> > > > >    
> > > > > > Hi Masahiro,
> > > > > >
> > > > > > Masahiro Yamada <masahiroy@kernel.org> wrote on Mon, 27 Jan 2020
> > > > > > 21:55:25 +0900:
> > > > > >    
> > > > > > > Hi.
> > > > > > >
> > > > > > > I have a question about the
> > > > > > > WP_n pin of a NAND chip.
> > > > > > >
> > > > > > >
> > > > > > > As far as I see, the NAND framework does not
> > > > > > > handle it.    
> > > > > >
> > > > > > There is a nand_check_wp() which reads the status of the pin before
> > > > > > erasing/writing.
> > > > > >    
> > > > > > >
> > > > > > > Instead, it is handled in a driver level.
> > > > > > > I see some DT-bindings that handle the WP_n pin.
> > > > > > >
> > > > > > > $ git grep wp -- Documentation/devicetree/bindings/mtd/
> > > > > > > Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt:-
> > > > > > > brcm,nand-has-wp          : Some versions of this IP include a
> > > > > > > write-protect    
> > > > > >
> > > > > > Just checked: brcmnand de-assert WP when writing/erasing and asserts it
> > > > > > otherwise. IMHO this switching is useless.
> > > > > >    
> > > > > > > Documentation/devicetree/bindings/mtd/ingenic,jz4780-nand.txt:-
> > > > > > > wp-gpios: GPIO specifier for the write protect pin.
> > > > > > > Documentation/devicetree/bindings/mtd/ingenic,jz4780-nand.txt:
> > > > > > >          wp-gpios = <&gpf 22 GPIO_ACTIVE_LOW>;
> > > > > > > Documentation/devicetree/bindings/mtd/nvidia-tegra20-nand.txt:-
> > > > > > > wp-gpios: GPIO specifier for the write protect pin.
> > > > > > > Documentation/devicetree/bindings/mtd/nvidia-tegra20-nand.txt:
> > > > > > >          wp-gpios = <&gpio TEGRA_GPIO(S, 0) GPIO_ACTIVE_LOW>;    
> > > > > >
> > > > > > In both cases, the WP GPIO is unused in the code, just de-asserted at
> > > > > > boot time like what you do in the patch below.
> > > > > >    
> > > > > > >
> > > > > > >
> > > > > > >
> > > > > > > I wrote a patch to avoid read-only issue in some cases:
> > > > > > > http://patchwork.ozlabs.org/patch/1229749/
> > > > > > >
> > > > > > > Generally speaking, we expect NAND devices
> > > > > > > are writable in Linux. So, I think my patch is OK.    
> > > > > >
> > > > > > I think the patch is fine.
> > > > > >    
> > > > > > >
> > > > > > >
> > > > > > > However, I asked this myself:
> > > > > > > Is there a useful case to assert the write protect
> > > > > > > pin in order to make the NAND chip really read-only?
> > > > > > > For example, the system recovery image is stored in
> > > > > > > a read-only device, and the write-protect pin is
> > > > > > > kept asserted to assure nobody accidentally corrupts it.    
> > > > > >
> > > > > > It is very likely that the same device is used for RO and RW storage so
> > > > > > in most cases this is not possible. We already have squashfs which is
> > > > > > actually read-only at filesystem level, I'm not sure it is needed to
> > > > > > enforce this at a lower level... Anyway if there is actually a pin for
> > > > > > that, one might want to handle the pin directly as a GPIO, what do you
> > > > > > think?    
> > > > >
> > > > > FWIW, I've always considered the WP pin as a way to protect against
> > > > > spurious destructive command emission, which is most likely to happen
> > > > > during transition phases (bootloader -> linux, linux -> kexeced-linux,
> > > > > platform reset, ..., or any other transition where the pin state might
> > > > > be undefined at some point). This being said, if you're worried about
> > > > > other sources of spurious cmds (say your bus is shared between
> > > > > different kind of memory devices, and the CS pin is unreliable), you
> > > > > might want to leave the NAND in a write-protected state de-asserting WP
> > > > > only when explicitly issuing a destructive command (program page, erase
> > > > > block).    
> > > >
> > > > Ok so with this in mind, only the brcmnand driver does a useful use of
> > > > the WP output.    
> > >
> > > Well, I'd just say that brcmnand is more paranoid, which is a good
> > > thing I guess, but that doesn't make other solutions useless, just less
> > > safe. We could probably flag operations as 'destructive' at the
> > > nand_operation level, so drivers can assert/de-assert the pin on a
> > > per-operation basis.    
> > 
> > Sounds a good idea.
> > 
> > If it is supported in the NAND framework,
> > I will be happy to implement in the Denali NAND driver.
> >   
> 
> There is currently no such thing at NAND level but I doubt there is
> more than erase and write operation during which it would be needed
> to assert/deassert WP. I don't see why having this flag would help
> the controller drivers?

Because ->exec_op() was designed to avoid leaving such decisions to the
NAND controller drivers :P. If you now ask drivers to look at the
opcode and guess when they should de-assert the WP pin, you're just
going back to the ->cmdfunc() mess.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
