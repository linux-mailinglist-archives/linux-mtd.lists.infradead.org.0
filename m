Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A84D172486
	for <lists+linux-mtd@lfdr.de>; Thu, 27 Feb 2020 18:07:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XBzR/kc+hYh3Uu28I+dr7zxsTZ3jkCeSETMES7hSF4w=; b=ThxfvzZQU+Mius
	Vg+qrk4XX+7FsoupkAnW3FFzFbu+Clibe0/T5WzS9jB20GTO7HiDIbtpV7yMyNFd0S8ECgMtj59rv
	J/6tglTATkXQuE7lfonqBagj9kM3DEkjNJn8f2hSpGl74RAtItwWE3w9FputJduM0hBTW9ZzjRKfQ
	oTOWVkjS4/gzEuRvbTnaV57cJSDTnbSjdAX+R5Uh16cP3RZ1vxPtcIN3v+KA7xLqbcAUT5xI1LO0l
	4qCE+quGH2PJhdE89wrKEwqSGb3C6iDOvCHbg3nmzHoOjKV/sabadzPnfYGUZE1EG5zB00AMXmVod
	N+xRbCVz1EJIw0c13xSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Mcy-0000YO-PT; Thu, 27 Feb 2020 17:07:12 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Mcp-0000XP-2h
 for linux-mtd@lists.infradead.org; Thu, 27 Feb 2020 17:07:04 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 68AEA296385;
 Thu, 27 Feb 2020 17:07:01 +0000 (GMT)
Date: Thu, 27 Feb 2020 18:06:58 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 01/11] dt-bindings: spi: allow expressing DTR capability
Message-ID: <20200227180658.58633141@collabora.com>
In-Reply-To: <20200227164425.GF4062@sirena.org.uk>
References: <20200226093703.19765-1-p.yadav@ti.com>
 <20200226093703.19765-2-p.yadav@ti.com>
 <20200227171147.32cc6fcf@collabora.com>
 <20200227162842.GE4062@sirena.org.uk>
 <CAMuHMdWMCDzQm0tjpybJZyHy4imbC9NqRXP5d4C0xgxQx-Pf8g@mail.gmail.com>
 <20200227164425.GF4062@sirena.org.uk>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_090703_250135_BA65220B 
X-CRM114-Status: GOOD (  17.90  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS" <devicetree@vger.kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Sekhar Nori <nsekhar@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Pratyush Yadav <p.yadav@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 27 Feb 2020 16:44:25 +0000
Mark Brown <broonie@kernel.org> wrote:

> On Thu, Feb 27, 2020 at 05:40:31PM +0100, Geert Uytterhoeven wrote:
> > On Thu, Feb 27, 2020 at 5:28 PM Mark Brown <broonie@kernel.org> wrote:  
> 
> > > It's what we do for other properties, and if this is anything like the
> > > other things adding extra wiring you can't assume that the ability to
> > > use the feature for TX implies RX.  
> 
> > Double Transfer Rate uses the same wire.  
> 
> But is it still on either the TX or RX signals?

There's no separate RX/TX pins when using xD-xD-xD modes (pins switch
from RX to TX) and I doubt DTR will ever be used on single SPI.

> 
> > But as you sample at both the rising and the falling edges of the clock, this
> > makes the cpha setting meaningless for such transfers, I think ;-)  
> 
> Might affect what the first bit is possibly?
> 
> > However, as the future may bring us QDR, perhaps this should not be a
> > boolean flag, but an integer value?
> > Cfr. spi-tx-bus-width vs. the original spi-tx-dual/spi-tx-quad proposal.  
> 
> > What would be a good name (as we only need one)? spi-data-phases?  
> 
> Sounds reasonable, apart from the increasingly vague connection with
> something that's recognizably SPI :P

Or maybe we should refrain from adding a new flag and wait a bit to see
if this DTR mode is actually used for regular SPI transfers (AKA not
spi-mem) :-).

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
