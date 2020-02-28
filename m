Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C022D1735AB
	for <lists+linux-mtd@lfdr.de>; Fri, 28 Feb 2020 11:54:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tBHggrG9xcMbUX3ZZhF7bZNekVGqPTdSDgl0lV7kAZs=; b=oEWxSxsaUm/S+0
	kNawQpWV+kaZI5W9Tt+PTmFdE7BOPxR8hod82jJXjv1OMqxRUtyUbny4493PmdRpwWvTkaNDhWjAv
	ZgxhkunrfmpzbrEvmcZKVbsxI3o8MZRyEu89s7hXhKW1YjDKt7C3Vvqo9qR2PIDm59KDkDbtMgQ0q
	W6IdRReigU5lS2SP1PyUB8hXLcZRXl3AZm+ZBZOmzPpTHakM3jJ8ZDVHULPZxjuOrg4aRvjScHz4M
	5C1pLyOMVvEn2tK8P69A3VlzOpqEoCvj/Wz//TNTRHtZgVTJpuv9uEox779oamBPn/ewpgflF7rle
	T55oDiP13Is80/dVaG3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7dHU-0006Fe-1z; Fri, 28 Feb 2020 10:54:08 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7dHM-0006Eo-6c
 for linux-mtd@lists.infradead.org; Fri, 28 Feb 2020 10:54:02 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 15DF9293656;
 Fri, 28 Feb 2020 10:53:58 +0000 (GMT)
Date: Fri, 28 Feb 2020 11:53:55 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Pratyush Yadav <p.yadav@ti.com>
Subject: Re: [PATCH v2 06/11] mtd: spi-nor: add support for DTR protocol
Message-ID: <20200228115355.5033798f@collabora.com>
In-Reply-To: <20200228093658.zc3uifqg4zruokq3@ti.com>
References: <20200226093703.19765-1-p.yadav@ti.com>
 <20200226093703.19765-7-p.yadav@ti.com>
 <20200227175841.51435e3f@collabora.com>
 <20200228093658.zc3uifqg4zruokq3@ti.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_025400_507702_CB49D4E0 
X-CRM114-Status: GOOD (  35.50  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Mark Brown <broonie@kernel.org>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 28 Feb 2020 15:06:58 +0530
Pratyush Yadav <p.yadav@ti.com> wrote:

> Hi Boris,
> 
> On 27/02/20 05:58PM, Boris Brezillon wrote:
> > On Wed, 26 Feb 2020 15:06:58 +0530
> > Pratyush Yadav <p.yadav@ti.com> wrote:
> >   
> > > Double Transfer Rate (DTR) is SPI protocol in which data is transferred
> > > on each clock edge as opposed to on each clock cycle. Make
> > > framework-level changes to allow supporting flashes in DTR mode.
> > > 
> > > Right now, mixed DTR modes are not supported. So, for example a mode
> > > like 4S-4D-4D will not work. All phases need to be either DTR or STR.  
> > 
> > Didn't go deep into the patch but at first glance you don't seem to
> > extend the framework to support stateful modes as I tried to do here
> > [1]. That's really something we should address before considering
> > supporting xD-xD-xD modes, unless the SPI-NOR only supports one
> > stateful mode. If we don't do that first, we might face all sort of
> > unpleasant issues:
> > 
> > * kexec not working correctly because the previous kernel left the NOR
> >   in an unknown state
> > * suspend/resume not working properly
> > * linux not booting properly because the bootloader left the device in
> >   its non-default mode
> > * ...  
> 
> Correct. I am working on a follow-up series that takes care of these 
> problems. The series will allow spi-nor to detect what mode the flash is 
> in and then run the SFPD procedure in that mode (or maybe switch to 
> single SPI mode and then go about its business as usual? I haven't 
> figured out all the details yet).
> 
> So for the context of this series, assume we are handed the flash in 
> single SPI mode.
>  
> > [1]https://patchwork.kernel.org/cover/10638055/  
> 
> BTW, I took a quick look at this series but I don't see any code that 
> tries to detect which mode the flash is in (which is the troublesome 
> part [0]). So, for example, if the bootloader leaves the flash in 
> 8D-8D-8D mode, how would your series handle that situation?

Oh, it's definitely not taking care of that, it was just paving the
road for spi-nor state tracking. You'd need to extend it to support
8D-8D-8D to 1-1-1 transitions at boot time (if that's even possible).

> 
> [0] There are multiple problems to take care of when trying to detect 
>     which mode a flash is in. We can try reading SFDP in each mode and 
>     whichever mode gives us the correct "SFDP" signature is the mode the 
>     flash is in. But the problem is that even in xSPI standard Read SFDP 
>     command is optional in 8D-8D-8D mode, let alone non-xSPI flashes.
>     Another problem is that the address bytes and dummy cycles for Read 
>     SFDP are not the same for every flash. The xSPI standard says 
>     address bytes can be 3/4 and dummy cycles can be 8/20. So, for 
>     example, Cypress s28hs/s28ht family and Micron Xccela (mt35x) family 
>     use 4 address bytes, but the Adesto ATXP032/ATXP032R flashes use 3 
>     address bytes.

I'd rather go with something simpler and more widely supported than SFDP
reads. Don't we have a simple command that's supported by all flashes
and returns well known data. Isn't there an EXIT sequence that allows
NORs to return to a single SPI state?

> 
>     Say that a flash supports Read SFDP in 8D-8D-8D mode and we try all 
>     the combinations to find out which mode the flash is in, we now have 
>     the problem of actually identifying the flash. Unfortunately, the 
>     Read ID command is not uniform across flash vendors. The Micron 
>     Xccela flashes use 8 dummy cycles and no address bytes for Read ID. 
>     The Cypress s28hs/t family uses configurable dummy cycles 
>     (defaulting to 3) and needs 4 dummy address bytes all of which are 
>     0.

Yep, that's what I complained about when I tried to support the
Macronix flash. They didn't plan for a reliable RETURN-TO-SINGLE-SPI
sequence which would not conflict with any other existing SPI commands,
and that's a real problem.

> 
>     If we can't find out which flash it is, we can't run its fixup 
>     hooks, and might end up running it with incorrect settings. And all 
>     this is assuming a flash even has SFDP and has it available in all 
>     modes.

Absolutely.

> 
>     So, the only solution I can now think of is having the flash name in 
>     its compatible string in the device tree. This way we can skip all 
>     the Read ID ugliness and can have flash-specific hooks to make it 
>     easier to detect the mode it is in (though I wonder if it is even 
>     possible to detect the mode in a flash that doesn't have SFDP in 
>     8D-8D-8D).

Hm, I'd really like to avoid that if possible.

> 
>     Thoughts? Is there a better way to solve this problem that I didn't 
>     think of?
> 

Nope, except maybe mandate that the bootloader always put the NOR in
single SPI mode before booting Linux (and Linux should do the same,
which is what my series was trying to address IIRC).

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
