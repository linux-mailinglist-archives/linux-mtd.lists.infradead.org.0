Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C2514CCC0
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Jan 2020 15:49:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S0lbaKcsWm3q7AvuPPOymlHvP82w3Or8CnTexzD/Fak=; b=ljXi6nIRXvVWn4
	gXOMSSuSLP0bf4YzoKoRgNB/kPTH6sEdADww+rEehXW/tEilnSsHWDBFMzzWhn4F4cWyGXzlNTxrG
	FoZ8LHULnlT9Z1/h0N9pLNHvxfwsZ/lvhTEj1eBKc4F18cfF5M0dj7zNa8MCuouDKs5OgSCt7019F
	TbI/XZwyP9cJ1EM7NpX4oG1IS1FJeIapTLEqCDCkp885SR70gzfTxJ9YUDM5egJZKLH8BUataGksj
	PPCxUKlKPE7ERDCAy/RPwRVkcuh+GaTFUFppLTvRTlK8Eqeq48y46JQwVXIM2uRwEQeDkayFui2Pt
	0FvJC6Zv/cRKnMZchA/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwof0-0003wf-P1; Wed, 29 Jan 2020 14:49:42 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwoes-0003w9-Pr
 for linux-mtd@lists.infradead.org; Wed, 29 Jan 2020 14:49:36 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E4870292DE5;
 Wed, 29 Jan 2020 14:49:31 +0000 (GMT)
Date: Wed, 29 Jan 2020 15:49:26 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>
Subject: Re: How to handle write-protect pin of NAND device ?
Message-ID: <20200129154926.50e955e8@collabora.com>
In-Reply-To: <20200129145950.2a324acf@xps13>
References: <CAK7LNAR0FemABUg5uN5fhy5LRsOm7n5GhmFVVHE8T57knDM9Ug@mail.gmail.com>
 <20200127153559.60a83e76@xps13>
 <20200127164554.34a21177@collabora.com>
 <20200127164755.29183962@xps13>
 <20200128075833.129902f6@collabora.com>
 <CAK7LNAQyK+jy4pm5M5z58uD5Zdv95Day6C6D3Gwvpv2C4Vh53Q@mail.gmail.com>
 <20200129143639.7f80addb@xps13>
 <20200129145336.66f840ea@collabora.com>
 <20200129145950.2a324acf@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_064935_100144_12ACD416 
X-CRM114-Status: GOOD (  45.46  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 29 Jan 2020 14:59:50 +0100
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Hi Boris,
> 
> Boris Brezillon <boris.brezillon@collabora.com> wrote on Wed, 29 Jan
> 2020 14:53:36 +0100:
> 
> > On Wed, 29 Jan 2020 14:36:39 +0100
> > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> >   
> > > Hello,
> > > 
> > > Masahiro Yamada <masahiroy@kernel.org> wrote on Wed, 29 Jan 2020
> > > 19:06:46 +0900:
> > >     
> > > > On Tue, Jan 28, 2020 at 3:58 PM Boris Brezillon
> > > > <boris.brezillon@collabora.com> wrote:      
> > > > >
> > > > > On Mon, 27 Jan 2020 16:47:55 +0100
> > > > > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> > > > >        
> > > > > > Hi Hello,
> > > > > >
> > > > > > Boris Brezillon <boris.brezillon@collabora.com> wrote on Mon, 27 Jan
> > > > > > 2020 16:45:54 +0100:
> > > > > >        
> > > > > > > On Mon, 27 Jan 2020 15:35:59 +0100
> > > > > > > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> > > > > > >        
> > > > > > > > Hi Masahiro,
> > > > > > > >
> > > > > > > > Masahiro Yamada <masahiroy@kernel.org> wrote on Mon, 27 Jan 2020
> > > > > > > > 21:55:25 +0900:
> > > > > > > >        
> > > > > > > > > Hi.
> > > > > > > > >
> > > > > > > > > I have a question about the
> > > > > > > > > WP_n pin of a NAND chip.
> > > > > > > > >
> > > > > > > > >
> > > > > > > > > As far as I see, the NAND framework does not
> > > > > > > > > handle it.        
> > > > > > > >
> > > > > > > > There is a nand_check_wp() which reads the status of the pin before
> > > > > > > > erasing/writing.
> > > > > > > >        
> > > > > > > > >
> > > > > > > > > Instead, it is handled in a driver level.
> > > > > > > > > I see some DT-bindings that handle the WP_n pin.
> > > > > > > > >
> > > > > > > > > $ git grep wp -- Documentation/devicetree/bindings/mtd/
> > > > > > > > > Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt:-
> > > > > > > > > brcm,nand-has-wp          : Some versions of this IP include a
> > > > > > > > > write-protect        
> > > > > > > >
> > > > > > > > Just checked: brcmnand de-assert WP when writing/erasing and asserts it
> > > > > > > > otherwise. IMHO this switching is useless.
> > > > > > > >        
> > > > > > > > > Documentation/devicetree/bindings/mtd/ingenic,jz4780-nand.txt:-
> > > > > > > > > wp-gpios: GPIO specifier for the write protect pin.
> > > > > > > > > Documentation/devicetree/bindings/mtd/ingenic,jz4780-nand.txt:
> > > > > > > > >          wp-gpios = <&gpf 22 GPIO_ACTIVE_LOW>;
> > > > > > > > > Documentation/devicetree/bindings/mtd/nvidia-tegra20-nand.txt:-
> > > > > > > > > wp-gpios: GPIO specifier for the write protect pin.
> > > > > > > > > Documentation/devicetree/bindings/mtd/nvidia-tegra20-nand.txt:
> > > > > > > > >          wp-gpios = <&gpio TEGRA_GPIO(S, 0) GPIO_ACTIVE_LOW>;        
> > > > > > > >
> > > > > > > > In both cases, the WP GPIO is unused in the code, just de-asserted at
> > > > > > > > boot time like what you do in the patch below.
> > > > > > > >        
> > > > > > > > >
> > > > > > > > >
> > > > > > > > >
> > > > > > > > > I wrote a patch to avoid read-only issue in some cases:
> > > > > > > > > http://patchwork.ozlabs.org/patch/1229749/
> > > > > > > > >
> > > > > > > > > Generally speaking, we expect NAND devices
> > > > > > > > > are writable in Linux. So, I think my patch is OK.        
> > > > > > > >
> > > > > > > > I think the patch is fine.
> > > > > > > >        
> > > > > > > > >
> > > > > > > > >
> > > > > > > > > However, I asked this myself:
> > > > > > > > > Is there a useful case to assert the write protect
> > > > > > > > > pin in order to make the NAND chip really read-only?
> > > > > > > > > For example, the system recovery image is stored in
> > > > > > > > > a read-only device, and the write-protect pin is
> > > > > > > > > kept asserted to assure nobody accidentally corrupts it.        
> > > > > > > >
> > > > > > > > It is very likely that the same device is used for RO and RW storage so
> > > > > > > > in most cases this is not possible. We already have squashfs which is
> > > > > > > > actually read-only at filesystem level, I'm not sure it is needed to
> > > > > > > > enforce this at a lower level... Anyway if there is actually a pin for
> > > > > > > > that, one might want to handle the pin directly as a GPIO, what do you
> > > > > > > > think?        
> > > > > > >
> > > > > > > FWIW, I've always considered the WP pin as a way to protect against
> > > > > > > spurious destructive command emission, which is most likely to happen
> > > > > > > during transition phases (bootloader -> linux, linux -> kexeced-linux,
> > > > > > > platform reset, ..., or any other transition where the pin state might
> > > > > > > be undefined at some point). This being said, if you're worried about
> > > > > > > other sources of spurious cmds (say your bus is shared between
> > > > > > > different kind of memory devices, and the CS pin is unreliable), you
> > > > > > > might want to leave the NAND in a write-protected state de-asserting WP
> > > > > > > only when explicitly issuing a destructive command (program page, erase
> > > > > > > block).        
> > > > > >
> > > > > > Ok so with this in mind, only the brcmnand driver does a useful use of
> > > > > > the WP output.        
> > > > >
> > > > > Well, I'd just say that brcmnand is more paranoid, which is a good
> > > > > thing I guess, but that doesn't make other solutions useless, just less
> > > > > safe. We could probably flag operations as 'destructive' at the
> > > > > nand_operation level, so drivers can assert/de-assert the pin on a
> > > > > per-operation basis.        
> > > > 
> > > > Sounds a good idea.
> > > > 
> > > > If it is supported in the NAND framework,
> > > > I will be happy to implement in the Denali NAND driver.
> > > >       
> > > 
> > > There is currently no such thing at NAND level but I doubt there is
> > > more than erase and write operation during which it would be needed
> > > to assert/deassert WP. I don't see why having this flag would help
> > > the controller drivers?    
> > 
> > Because ->exec_op() was designed to avoid leaving such decisions to the
> > NAND controller drivers :P. If you now ask drivers to look at the
> > opcode and guess when they should de-assert the WP pin, you're just
> > going back to the ->cmdfunc() mess.  
> 
> I was actually thinking to the ->write_page(_raw)() helpers, but
> yeah, in the case of ->exec_op() it's different. However, for these
> helpers as don't use ->exec_op(), we need another way to flag the
> operation as destructive.

I don't think we really care about ancient (AKA non-exec_op()) drivers.
They seem to work fine as they are now, so let's focus on the modern
ones.

> 
> But actually we could let the driver toggle the pin for any operation.
> If we want to be protected against spurious access, not directly ordered
> by the controller driver itself, then we don't care if the operation is
> actually destructive or not as long as the pin is deasserted during our
> operations and asserted otherwise.

Or we could patch the ->exec_op() path to pass this information (and
maybe provide helpers for the GPIO case). Should be as simple as:

--->8---
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index f64e3b6605c6..4f0fdbd5b760 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -1343,6 +1343,7 @@ static int nand_exec_prog_page_op(struct nand_chip *chip, unsigned int page,
                op.ninstrs--;
        }
 
+       op.flags = NAND_OPERATION_DEASSERT_WP;
        ret = nand_exec_op(chip, &op);
        if (!prog || ret)
                return ret;
@@ -1416,6 +1417,7 @@ int nand_prog_page_end_op(struct nand_chip *chip)
                };
                struct nand_operation op = NAND_OPERATION(chip->cur_cs, instrs);
 
+               op.flags = NAND_OPERATION_DEASSERT_WP;
                ret = nand_exec_op(chip, &op);
                if (ret)
                        return ret;
@@ -1692,6 +1694,7 @@ int nand_erase_op(struct nand_chip *chip, unsigned int eraseblock)
                if (chip->options & NAND_ROW_ADDR_3)
                        instrs[1].ctx.addr.naddrs++;
 
+               op.flags = NAND_OPERATION_DEASSERT_WP;
                ret = nand_exec_op(chip, &op);
                if (ret)
                        return ret;
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 4ab9bccfcde0..1b08ddf67a12 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -849,9 +849,12 @@ struct nand_op_parser {
                             sizeof(struct nand_op_parser_pattern),                             \
        }
 
+#define NAND_OPERATION_DEASSERT_WP     BIT(0)
+
 /**
  * struct nand_operation - NAND operation descriptor
  * @cs: the CS line to select for this NAND operation
+ * @flags: operation flags
  * @instrs: array of instructions to execute
  * @ninstrs: length of the @instrs array
  *
@@ -859,6 +862,7 @@ struct nand_op_parser {
  */
 struct nand_operation {
        unsigned int cs;
+       u32 flags;
        const struct nand_op_instr *instrs;
        unsigned int ninstrs;
 };

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
