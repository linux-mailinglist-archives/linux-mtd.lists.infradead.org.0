Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2377E173479
	for <lists+linux-mtd@lfdr.de>; Fri, 28 Feb 2020 10:46:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I6MI2wkgk/NN708KvhSaU4vNykarRE7irkJ+6PMB7bs=; b=ksaS8jFMz4MMrC
	ik6saoApsxqdQga2gBCf3yy+sho3KmrYyZJCtVvOe2ZFxsnzmTwlDIcpZku+9Y0PWocjdmqiveAlw
	2lE6wIMttRjs4oT4Sog239B+XweVU8JSA9FEONiDteCVprBtMVYZSsx4sonrY8WXEh3IyG0ms8m2v
	yN8H/gO13TcNON1t6bMo+Y/DUSRgDMuw3R8x9fZG8hnQ0DPY8ksPEfc8jFE6UZh1Ng2P2htk0uLnl
	X7NiOYe9/fMuiTbaOEdwS/t5LRrMS0N4dujRqEuY1QR6cy32MfKcOhFsSVUMZI9jK/6ZZmHXHb3+Z
	Z8MYTMSzYAQn6RDuRVkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7cE0-0005dw-2P; Fri, 28 Feb 2020 09:46:28 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7cDr-0005d7-8e
 for linux-mtd@lists.infradead.org; Fri, 28 Feb 2020 09:46:20 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01S9kA2p092506;
 Fri, 28 Feb 2020 03:46:10 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582883170;
 bh=c2o0KfeDE8LsXiUgyljzWzRxFOrZt7ujr7i1FEE6h+U=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=ExCJs9PnvbMVgnP4NkPmcH7pk7Uz+kF0/vY453UC96M6L8DAjXSBIX3qSYs1iQ+9w
 QldOiOUVgNXNp8gRaBoAsfcE4h41dWejqyBMQw0xA5iiWYFTrK7d6KjHwoZf72dkjg
 /TCrLvDjM6H6kFEXsV00dN7y8TVoDgi7GwuzKGn8=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01S9kAeC013540
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 28 Feb 2020 03:46:10 -0600
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 28
 Feb 2020 03:46:09 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 28 Feb 2020 03:46:09 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01S9k9IA123014;
 Fri, 28 Feb 2020 03:46:09 -0600
Date: Fri, 28 Feb 2020 15:16:08 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v2 01/11] dt-bindings: spi: allow expressing DTR capability
Message-ID: <20200228094606.fyxtlutq2aajfyyo@ti.com>
References: <20200226093703.19765-1-p.yadav@ti.com>
 <20200226093703.19765-2-p.yadav@ti.com>
 <CAMuHMdUGN8Yu6Tx0=OoLKzyOZ08fvjF6pEWi3ye02pr3Cgj=cg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdUGN8Yu6Tx0=OoLKzyOZ08fvjF6pEWi3ye02pr3Cgj=cg@mail.gmail.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_014619_388377_80791333 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, "open list:OPEN
 FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Vignesh Raghavendra <vigneshr@ti.com>,
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

Hi Geert,

On 27/02/20 05:29PM, Geert Uytterhoeven wrote:
> Hi Pratyush,
> 
> On Wed, Feb 26, 2020 at 10:37 AM Pratyush Yadav <p.yadav@ti.com> wrote:
> > Allow spi devices to express DTR receive and transmit capabilities via
> > the properties "spi-rx-dtr" and "spi-tx-dtr".
> >
> > Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> 
> Thanks for your patch!
> 
> > --- a/Documentation/devicetree/bindings/spi/spi-controller.yaml
> > +++ b/Documentation/devicetree/bindings/spi/spi-controller.yaml
> > @@ -120,6 +120,11 @@ patternProperties:
> >          description:
> >            Delay, in microseconds, after a read transfer.
> >
> > +      spi-rx-dtr:
> > +        $ref: /schemas/types.yaml#/definitions/flag
> > +        description:
> > +          Device supports receiving in DTR mode.
> 
> Please explain "DTR" in the document, at least once, e.g.
> 
>     Double Transfer Rate (DTR).

Will do.
 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> -- 
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

-- 
Regards,
Pratyush Yadav
Texas Instruments India

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
