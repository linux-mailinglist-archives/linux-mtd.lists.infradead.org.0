Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 306281CD4E1
	for <lists+linux-mtd@lfdr.de>; Mon, 11 May 2020 11:27:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sy6smiu7kIIMC8Y8KG+TVaEMHHyhA7KOIzqQqSDE44M=; b=f11EKiUQYP/hr2
	4t+AS7HkUvkLfXSkZzJbNWWxEF+sOt6TwDICHIyzzANhnRd+Wn61bsKRzvroCqjW1iQtnoif/vtjD
	/t3IGQNRfyix4Yx8iqZ+LbDu7PDqXJ8GH+S1ysLqz9PZi0J9Bm+CUheU3SYRSFcYSNzqLzdTWxzFB
	L6Kv/uvUFoO2POIMKoHi08HyQJaOnMKTvgN5K5FDU5j6ic5/bTTCK2adPJWCawQ034UKjkj3hsGFU
	FEZlnqnHWBJzXlg/Qzf3P0DX2EWzm81HU5J7vfvZvRTKB0khUiH+asWDyj/EdYAR26q4zzGNZQDF6
	GcdQZE5DpN4D88UVNyWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY4ir-00079f-E9; Mon, 11 May 2020 09:27:41 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY4iT-000729-PS; Mon, 11 May 2020 09:27:19 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id D85042A0F28;
 Mon, 11 May 2020 10:27:15 +0100 (BST)
Date: Mon, 11 May 2020 11:27:12 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH v4 00/16] mtd: spi-nor: add xSPI Octal DTR support
Message-ID: <20200511112712.466f7246@collabora.com>
In-Reply-To: <3649933.zuh8VGJVCz@192.168.0.120>
References: <20200424184410.8578-1-p.yadav@ti.com>
 <3649933.zuh8VGJVCz@192.168.0.120>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_022717_958156_7CE8D683 
X-CRM114-Status: GOOD (  21.88  )
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
Cc: alexandre.belloni@bootlin.com, vigneshr@ti.com, richard@nod.at,
 nsekhar@ti.com, Nicolas.Ferre@microchip.com, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, broonie@kernel.org,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 linux-spi@vger.kernel.org, p.yadav@ti.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 11 May 2020 09:00:35 +0000
<Tudor.Ambarus@microchip.com> wrote:

> Hi, Pratyush, Boris,
> 
> On Friday, April 24, 2020 9:43:54 PM EEST Pratyush Yadav wrote:
> > This series adds support for octal DTR flashes in the spi-nor framework,  
> 
> I'm still learning about this, but I can give you my 2 cents as of now, to 
> open the discussion. Enabling 2-2-2, 4-4-4, and 8-8-8 modes is dangerous 
> because the flash may not recover from unexpected resets. Entering one of 
> these modes can be:
> 1/ volatile selectable, the device return to the 1-1-1 protocol after the next 
> power-on. I guess this is conditioned by the optional RESET pin, but I'll have 
> to check. Also the flash can return to the 1-1-1 mode using the software reset 
> or through writing to its Configuration Register, without power-on or power-
> off.

My understanding is that there's no standard software reset procedure
that guarantees no conflict with existing 1S commands, so even the
software reset approach doesn't work here.

> 2/ non-volatile selectable in which RESET# and software reset are useless, the 
> flash defaults to the mode selected in the non volatile Configuration Register 
> bits. The only way to get back to 1-1-1 is to write to the Configuration 
> Register.

I'm less worried about this case though, since I'd expect the ROM
code and bootloaders to be able to deal with xD-xD-xD modes when the
flash is set in this mode by default. That implies letting Linux know
about this default mode of course, maybe through an extra DT
property/cmdline param.

> 
> Not recovering from unexpected resets is unacceptable. One should always 
> prefer option 1/ and condition the entering in 2-2-2, 4-4-4 and 8-8-8 with the 
> presence of the optional RESET pin.

Totally agree with you on that one, but we know what happens in
practice...

> 
> For the unfortunate flashes that support just option 2/, we should not enter 
> these modes on our own, just by discovering the capabilities from the SFDP 
> tables or by the flags in the flash_info struct. The best we can do for them 
> is to move the responsibility to the user. Maybe to add a Kconfig option that 
> is disabled by default with which we condition the entering in 2-2-2, 4-4-4 or 
> 8-8-8 modes.

Hm, a Kconfig option doesn't sound like the right solution to the
problem, since it should be a per-flash decision, not something you set
system-wise.

> Once entered in one of these modes, if an unexpected reset comes, 
> you most likely are doomed, because early stage bootloaders may not work in 
> these modes and you'll not be able to boot the board. Assuming that one uses 
> other environment to boot the board, we should at least make sure that the 
> flash works in linux after an unexpected reset. We should try to determine in 
> which mode we are at init, so maybe an extension of the default_init hook is 
> needed. But all this looks like a BIG compromise, I'm not yet sure if we 
> should adress 2/. Thoughts?

We should definitely not write non-volatile regs on our own, but
instead use the mode that's been chosen there. I doubt anyone
setting the non-volative conf to 8D-8D-8D will ever want to go back to
1S-1S-1S anyway, so 8D -> 1S transitions are not really an issue, right?

Of course, that still leaves us with the 'mode detection' issue, and I
have no solution other than flagging it through the DT/cmdline for that
one...

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
