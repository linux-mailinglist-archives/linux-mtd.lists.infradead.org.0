Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E29B1D8A00
	for <lists+linux-mtd@lfdr.de>; Mon, 18 May 2020 23:23:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FcuQxh7BeQHlCQDMx+oiMvAxRt9JjxvPDsJLwTGUUms=; b=T7LdMhDReU/70t
	TN7k8b0W8UhaY8k5MArdw6VaceY5D2lCWe3Cjek3ZPwF0l/YL27hIUXQG0N5WvR7IOj5yVTKioXnK
	K6k5Q3xmxSsNrZ7GyNNTskIcCO3g6YpGSM9vgptLLlosgzFK1UepsEk7yYxEEiMUQN6vWdxmbZLbm
	RkDCQ1Dh0y9ZLYcFIDsZzxopVyTunLqJ/X9C5+7pSaJ/TccvoejHOgrn8WTlaqZAl2y9qjbl6a6da
	Yv6m9Dh4Qwonzxhre0HZ7ekB/2SUZ0yQ6f8L9UZuMl9iqfLEprA0jAsXpDVhUq/dyYBCosF48qy9X
	3zzSrmMHKbp02seF8Dvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1janEX-0003Pj-Vb; Mon, 18 May 2020 21:23:37 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1janEO-0003P8-1r
 for linux-mtd@lists.infradead.org; Mon, 18 May 2020 21:23:31 +0000
Received: by mail-ot1-f67.google.com with SMTP id 69so4870295otv.2
 for <linux-mtd@lists.infradead.org>; Mon, 18 May 2020 14:23:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U92BB+6C4uVhJQrf36MoRzDWDXvidueX3Mpx+wYGjHE=;
 b=iHrOldSfx+HkfTiHFq2oHP6pXg5uTzRDcyZQ3Gk2TDzElvwEaPKzA4sV17+mOS8DMT
 Efal0ads8DeYKPe8IQ3/T61eDlg1c0H6rgweynYXI81JfJXU5VSauflFMIlZUkakW9Hp
 F39hvSnloI6SFUFd7qlgVRHz2+HQbr7YMi6wSTTBI/Vhk81B3zb5FY2ePEwNBUS+BnAN
 QWaQv03wBd69lA2veYVGGf6p9SYDo+CaVqhane8yNQfegeWpp/iiKF/cCkPS0xvibdQ4
 tc6Ocr/Dce/MYW5RXM48ryT41JMg83wkssG1TYpb192PcQieLsQCMMBW1gJiplNeTEUt
 IJSQ==
X-Gm-Message-State: AOAM533fay4r/kz6OPb6RgmIqXKzyrtA5q0sRYPM2Q1f3eCC+rxrIN36
 858UPaXeKugaQCHP+DIKnbCqwVMTlXzVQ3kdAk8=
X-Google-Smtp-Source: ABdhPJxXwxJ5xuvSfmX1AYEFPzUHohPAxLY19VYdsib15uohT6ml7h8lWA+I3c4PBsWvNIX259XyYBX58w4WJiRsU14=
X-Received: by 2002:a9d:7e92:: with SMTP id m18mr13486340otp.145.1589837007047; 
 Mon, 18 May 2020 14:23:27 -0700 (PDT)
MIME-Version: 1.0
References: <26faf5e8-26eb-cceb-a500-f0fd64609737@cogentembedded.com>
 <f998fe6c-c586-17cb-9343-30460ce0bf9d@cogentembedded.com>
In-Reply-To: <f998fe6c-c586-17cb-9343-30460ce0bf9d@cogentembedded.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 18 May 2020 23:23:15 +0200
Message-ID: <CAMuHMdVg4=1JA2x4PN6Y4cE_WJ9LSZUTi0hyxUqiUWujv8Z3pg@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: memory: document Renesas RPC-IF
 bindings
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_142328_094388_C277C34F 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-spi <linux-spi@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Mason Yang <masonccyang@mxic.com.tw>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Sergei,

On Mon, May 18, 2020 at 10:33 PM Sergei Shtylyov
<sergei.shtylyov@cogentembedded.com> wrote:
> Renesas Reduced Pin Count Interface (RPC-IF) allows a SPI flash or
> HyperFlash connected to the SoC to be accessed via the external address
> space read mode or the manual mode.
>
> Document the device tree bindings for the Renesas RPC-IF found in the R-Car
> gen3 SoCs.
>
> Based on the original patch by Mason Yang <masonccyang@mxic.com.tw>.
>
> Signed-off-by: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>

Thanks for your patch!

> --- /dev/null
> +++ linux/Documentation/devicetree/bindings/memory-controllers/renesas,rpc-if.yaml
> @@ -0,0 +1,88 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/memory-controllers/renesas,rpc-if.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas Reduced Pin Count Interface (RPC-IF)
> +
> +maintainers:
> +  - Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
> +
> +description: |
> +  Renesas RPC-IF allows a SPI flash or HyperFlash connected to the SoC to
> +  be accessed via the external address space read mode or the manual mode.
> +
> +  The flash chip itself should be represented by a subnode of the RPC-IF node.
> +  The flash interface is selected based on the "compatible" property of this
> +  subnode:
> +  - if it contains "jedec,spi-nor", then SPI is used;
> +  - if it contains "cfi-flash", then HyperFlash is used.
> +
> +allOf:
> +  - $ref: "/schemas/spi/spi-controller.yaml#"
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +        - renesas,r8a77980-rpc-if

Usually we add a comment with the SoC name, e.g. "# R-Car V3H"

> +        - renesas,r8a77995-rpc-if
> +      - enum:
> +        - renesas,rcar-gen3-rpc-if # a generic R-Car gen3 device

No need for an enum, just use "- const: renesas,rcar-gen3-rpc-if".

> +examples:
> +  - |
> +    #include <dt-bindings/clock/renesas-cpg-mssr.h>
> +    #include <dt-bindings/power/r8a77995-sysc.h>
> +
> +    spi@ee200000 {
> +      compatible = "renesas,r8a77995-rpc-if", "renesas,rcar-gen3-rpc-if";
> +      reg = <0 0xee200000 0 0x200>,
> +            <0 0x08000000 0 0x4000000>,
> +            <0 0xee208000 0 0x100>;

Examples are built with #{address,size}-cells = <1>, so please drop
the zeroes.

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
