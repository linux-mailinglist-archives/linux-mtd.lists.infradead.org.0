Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE4917235F
	for <lists+linux-mtd@lfdr.de>; Thu, 27 Feb 2020 17:29:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a8eGisgP2YDzrR9i2igkhPDxsezyLtSvAYgkyqEjo40=; b=ftpqNvlZx24hBJ
	oQJHH8gxYj7tKH3BzaL32sU+S07ipxVU42XYbzLR1E1itALlEhSBuEbfn3cjY+LbPlM5r4yuIP//7
	mpbGS6febse0NNezvSSTNfU2/3/KSvU0lZrIJE8GyYAkmrgNcUIDQ/RUZITtTGM6nhaN6gr8MrWnU
	0eP4NHBITfztunNf1yGOcKni5pdk9ldxdME+h6MrctYuVWs4yu3bdLqbyDtExDjrdZO8UuhrqZMrF
	E3cmDXu7z74bl0j97gotQvicnBVwuPtPGmIM28RvntwR9e/icvXN4BMDy2y/I3Q00/r+1LISaQw03
	iCKcy3PQBU/nLhbaNosA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7M2d-0007kz-Lh; Thu, 27 Feb 2020 16:29:39 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7M2R-0007kJ-KC
 for linux-mtd@lists.infradead.org; Thu, 27 Feb 2020 16:29:28 +0000
Received: by mail-oi1-f194.google.com with SMTP id p125so3861863oif.10
 for <linux-mtd@lists.infradead.org>; Thu, 27 Feb 2020 08:29:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3jXudNkkQRrHswSQ0SFgmC83sC0Xe1CS0lzGEyLon8c=;
 b=h3LqAP2zQhY0YLh/WIFtI6al1cKB35ttRmTodE5mAXVXrpm6xFK1aXmwpXKq8/ht5+
 Kv4xbj6k2hoUj6d9ksCjCIXh3onVJdLqatwZgO/FPkqtB9ouKw8EOKiWMY0XVMsOCSDL
 ljT7Hvju1F/Gl+nTjgS6x/cUwv8dad073071YLcorWEJ6MmsPonDq+hFVGn4MB2fm2IU
 QN6sL+TAhXSDpZzec79JjbDNQgo1J/tcY92DRn0y/RS55cFFIVNsJO9//pwiXsd1CBW9
 mwo3wLpK13f1f2DGE5u9yKWNPLIDMU/MfULOFkUA5uOawR/c0AX/ih74HtXy8/RDxk9+
 5Y4Q==
X-Gm-Message-State: APjAAAUptLD+6qURoO01z7qq3DVXVcYpppY63/yjhn1NMBlDPIGCh2ay
 Ux+hIFiiFP3dNAKlijq/1tYzsKeXQIREXwx2pUYzN4U8
X-Google-Smtp-Source: APXvYqyUfhYfCXxfIpygMIWcy0cqjpe0cJtNKxAMEU7HwDavOmFyIh2NtpJAG7ozbOpNRe59proDJcrYJm8sEB1JY1g=
X-Received: by 2002:aca:1a06:: with SMTP id a6mr3859856oia.148.1582820966275; 
 Thu, 27 Feb 2020 08:29:26 -0800 (PST)
MIME-Version: 1.0
References: <20200226093703.19765-1-p.yadav@ti.com>
 <20200226093703.19765-2-p.yadav@ti.com>
In-Reply-To: <20200226093703.19765-2-p.yadav@ti.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 27 Feb 2020 17:29:15 +0100
Message-ID: <CAMuHMdUGN8Yu6Tx0=OoLKzyOZ08fvjF6pEWi3ye02pr3Cgj=cg@mail.gmail.com>
Subject: Re: [PATCH v2 01/11] dt-bindings: spi: allow expressing DTR capability
To: Pratyush Yadav <p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_082927_661462_8DC15E57 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
 Mark Brown <broonie@kernel.org>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Pratyush,

On Wed, Feb 26, 2020 at 10:37 AM Pratyush Yadav <p.yadav@ti.com> wrote:
> Allow spi devices to express DTR receive and transmit capabilities via
> the properties "spi-rx-dtr" and "spi-tx-dtr".
>
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>

Thanks for your patch!

> --- a/Documentation/devicetree/bindings/spi/spi-controller.yaml
> +++ b/Documentation/devicetree/bindings/spi/spi-controller.yaml
> @@ -120,6 +120,11 @@ patternProperties:
>          description:
>            Delay, in microseconds, after a read transfer.
>
> +      spi-rx-dtr:
> +        $ref: /schemas/types.yaml#/definitions/flag
> +        description:
> +          Device supports receiving in DTR mode.

Please explain "DTR" in the document, at least once, e.g.

    Double Transfer Rate (DTR).

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
