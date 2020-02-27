Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9435B172467
	for <lists+linux-mtd@lfdr.de>; Thu, 27 Feb 2020 18:03:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x/Gy1vRo4pfzSw5pvsCyvB5F1T8ooYTzxdEMoGRgkTQ=; b=cUpLlj5iJT0Yhk
	F2kGw6L9k/6iQbXgEY1pMJ0Dl46VmoGQld+NyH0FPiATyH8jwU4pUHR2c19ArUt6/lGe0aSw/UDtM
	2maLgQsHU/fvOE+9n1ci3tUI545jEHunfAfqpgfjeJ7TgTBVwvRkn5cIHvt9uSC+xAFyFAOwqDtl5
	Kknsj1nLoW5n8UHg6Q6bF+yrZAOP+08ZTiQxPeQax+vxruiQfDuTey/JTLjiT2XebsI17O6QuZJrN
	Yq3PQVZjpU3UZdWVVAKLnQnDQSpcqiPkAGq3lO/unwAUDea1zqxHm82rgiajQ4TC7XK/9zPsYAnfM
	Lx0cxlSgfDkoEZ0gAD2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7MZH-00074H-UK; Thu, 27 Feb 2020 17:03:23 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7MZ6-00072J-As
 for linux-mtd@lists.infradead.org; Thu, 27 Feb 2020 17:03:13 +0000
Received: by mail-oi1-f193.google.com with SMTP id l136so4041066oig.1
 for <linux-mtd@lists.infradead.org>; Thu, 27 Feb 2020 09:03:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3SLSeusjyF7xuR70ZDE6DWBdGicv7IAt+yuIdcwz2t8=;
 b=tZ7OP+Xz6fs0liuebc2gJGeyhNShcikVbSSpdRVzUdVrmdSoyn4qsvJz60Vk2URnNn
 kip8oWk3hsRhDAq04w2Sc5dM0IACVWsGeoBq6UjxEQFsaaxSyEwAJYr+N4RHv9VShpo/
 Qpxk+BVougnNJ8JnP+NQjbk5iNZxB+87fpoyhb2ZGNzQaGsaOG5BAvkzOfXuWWyGnbSv
 hXmSz9mez+dHWDVFd9s37jEut1ypO92NBDqlFfhQU1kmpEFOHcgm91KO/hHiimsBEb0t
 0LPp3Th8Cpf/qoUpW0SPOQo6XxKPMmyLnDDT9oGLx+bX5WGPTHm4cI9kCCOY8oO5DLhk
 v/aQ==
X-Gm-Message-State: APjAAAUsX7fEEyr9UbcMslX2jR6xxCsMVD8C68zVHuQqToWBjk1cebUH
 wSzxYbMfRKVf5d33yts01QD0IV//htYI/IS/maE=
X-Google-Smtp-Source: APXvYqzRjEtzoIaCCugVuFD4BsmBmzfqIzgRC0i4fNsaXIhsSXoYehtum4tWBRTUqYj7/Lp5oUYRtCM/IezBtVMEXfY=
X-Received: by 2002:aca:48cd:: with SMTP id v196mr11129oia.102.1582822991282; 
 Thu, 27 Feb 2020 09:03:11 -0800 (PST)
MIME-Version: 1.0
References: <20200226093703.19765-1-p.yadav@ti.com>
 <20200226093703.19765-2-p.yadav@ti.com>
 <20200227171147.32cc6fcf@collabora.com> <20200227162842.GE4062@sirena.org.uk>
 <CAMuHMdWMCDzQm0tjpybJZyHy4imbC9NqRXP5d4C0xgxQx-Pf8g@mail.gmail.com>
 <20200227164425.GF4062@sirena.org.uk>
In-Reply-To: <20200227164425.GF4062@sirena.org.uk>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 27 Feb 2020 18:03:00 +0100
Message-ID: <CAMuHMdV_1RfGFgDjJYzAnGd_x57zSwjZd8si=UTPp8ksgdwYGA@mail.gmail.com>
Subject: Re: [PATCH v2 01/11] dt-bindings: spi: allow expressing DTR capability
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_090312_375969_D0F1B4AE 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Sekhar Nori <nsekhar@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-spi <linux-spi@vger.kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Pratyush Yadav <p.yadav@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Mark,

On Thu, Feb 27, 2020 at 5:44 PM Mark Brown <broonie@kernel.org> wrote:
> On Thu, Feb 27, 2020 at 05:40:31PM +0100, Geert Uytterhoeven wrote:
> > On Thu, Feb 27, 2020 at 5:28 PM Mark Brown <broonie@kernel.org> wrote:
> > > It's what we do for other properties, and if this is anything like the
> > > other things adding extra wiring you can't assume that the ability to
> > > use the feature for TX implies RX.
>
> > Double Transfer Rate uses the same wire.
>
> But is it still on either the TX or RX signals?

E.g. good old Spansion S25FL512S supports single/dual/quad DDR, but
apparently only for read, not write.
Other FLASHes may support both directions. I guess.

> > But as you sample at both the rising and the falling edges of the clock, this
> > makes the cpha setting meaningless for such transfers, I think ;-)
>
> Might affect what the first bit is possibly?

Quoting the manual for the above part:

4.1.2
Double Data Rate (DDR)
Mode 0 and Mode 3 are also supported for DDR commands. In DDR
commands, the instruction bits are
always latched on the rising edge of clock, the same as in SDR
commands. However, the address and input
data that follow the instruction are latched on both the rising and
falling edges of SCK. The first address bit is
latched on the first rising edge of SCK following the falling edge at
the end of the last instruction bit. The first
bit of output data is driven on the falling edge at the end of the
last access latency (dummy) cycle.
SCK cycles are measured (counted) in the same way as in SDR commands,
from one falling edge of SCK to
the next falling edge of SCK. In mode 0 the beginning of the first SCK
cycle in a command is measured from
the falling edge of CS# to the first falling edge of SCK because SCK
is already low at the beginning of a
command.

> > However, as the future may bring us QDR, perhaps this should not be a
> > boolean flag, but an integer value?
> > Cfr. spi-tx-bus-width vs. the original spi-tx-dual/spi-tx-quad proposal.
>
> > What would be a good name (as we only need one)? spi-data-phases?
>
> Sounds reasonable, apart from the increasingly vague connection with
> something that's recognizably SPI :P

Yeah, especially Octal and Hyper modes are far from serial ;-)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
