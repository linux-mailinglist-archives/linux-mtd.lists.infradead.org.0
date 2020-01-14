Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0977913B148
	for <lists+linux-mtd@lfdr.de>; Tue, 14 Jan 2020 18:47:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3uEBgQ9o8KmS0Es4K/W8gYQAHQ0qzESDdWC3IxaZfzM=; b=puU0MjpUVTVb7M
	l34VJ6APdhaIWxUvhktIGTFOZsMlOJ84k4Ss91PRG89GTsr9iqNOP1VwJ9Th3vHuUvnXwcRYqnrhL
	rqUKhB70myNAdsuAAqQ5Tf7vHX/TmWvhYEkrc0XHuMaui9djkJmuDdJyw2WXYCv2i5YmQi8sc+bcZ
	izQGxeWHcHuNuHxkwJLB7kV0iXCWvQkK6hW6+EYiI2rS/DaNjFkauF4K/gHNXXsTchsPvZvDXi+qL
	L3njLchILyZV5BIPmmvgM+7SVIr3ob8z0JZA2UYGBriDh3oeIlH13Do1Yer7t4DYDGVINoY41/Duy
	gQ9HY/pdtQAfcldSXSgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irQHV-0006xj-14; Tue, 14 Jan 2020 17:47:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irQGu-0006WW-K5
 for linux-mtd@lists.infradead.org; Tue, 14 Jan 2020 17:46:36 +0000
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
 [209.85.219.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C49DB24676
 for <linux-mtd@lists.infradead.org>; Tue, 14 Jan 2020 17:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579023990;
 bh=mXc8/w8tY8RXyg7swtRyAC0oYcXKe+2puA+wT86utiY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=GtJFvbQppI3HBhwyp4tghMZXrfz/z/1w99fjcRMRroM5f8oxp6Vkwj7tEZUkWM7ET
 QPDAGH6OUbi3B1R1pCtRHL4weTMw+8BWSeSujAwoeWZoqRZeCEBK99vXq+pkYzIX98
 vZnl5bhKtW8wH7/k3b6xV4U/uze/X+4BRy+A0490=
Received: by mail-qv1-f41.google.com with SMTP id z3so6066100qvn.0
 for <linux-mtd@lists.infradead.org>; Tue, 14 Jan 2020 09:46:30 -0800 (PST)
X-Gm-Message-State: APjAAAXmfzmRgSJPzLDE/uAinlr/Zg7dIcfCpU9mqxWbLXZgZdVusE3f
 VoTU/oM+ax5vu6pOLQ4gmpVrihvk3kcFKnS81w==
X-Google-Smtp-Source: APXvYqyzXMJ62ahYNuL6VK1Cf8ZGH/+06Kwo7FdWPAvSiMHBuwB7fFnCgD4KmcvFWnoyxKzjiFXuvKUl+MLXk2qpQcg=
X-Received: by 2002:a0c:f68f:: with SMTP id p15mr17346460qvn.79.1579023989888; 
 Tue, 14 Jan 2020 09:46:29 -0800 (PST)
MIME-Version: 1.0
References: <20191127105522.31445-1-miquel.raynal@bootlin.com>
 <20191127105522.31445-5-miquel.raynal@bootlin.com>
 <20191209113506.41341ed4@collabora.com>
In-Reply-To: <20191209113506.41341ed4@collabora.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 14 Jan 2020 11:46:18 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJP3-h7bPAommzt7KQKoohZpkk=RMxfN1j3rXbisD4eCA@mail.gmail.com>
Message-ID: <CAL_JsqJP3-h7bPAommzt7KQKoohZpkk=RMxfN1j3rXbisD4eCA@mail.gmail.com>
Subject: Re: [PATCH v5 4/4] mtd: Add driver for concatenating devices
To: Boris Brezillon <boris.brezillon@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_094632_701374_721365DD 
X-CRM114-Status: GOOD (  23.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Mark Brown <broonie@kernel.org>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Bernhard Frauendienst <kernel@nospam.obeliks.de>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Dec 9, 2019 at 4:35 AM Boris Brezillon
<boris.brezillon@collabora.com> wrote:
>
> On Wed, 27 Nov 2019 11:55:22 +0100
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
>
> > Introduce a generic way to define concatenated MTD devices. This may
> > be very useful in the case of ie. stacked SPI-NOR. Partitions to
> > concatenate are described in an additional property of the partitions
> > subnode:
> >
> >         flash0 {
> >                 partitions {
> >                         compatible = "fixed-partitions";
> >                         part-concat = <&flash0_part1>, <&flash1_part0>;
> >
> >                       part0@0 {
> >                               label = "part0_0";
> >                               reg = <0x0 0x800000>;
> >                       };
> >
> >                       flash0_part1: part1@800000 {
> >                               label = "part0_1";
> >                               reg = <0x800000 0x800000>;
>
> So, flash0_part1 and flash0_part2 will be created even though the user
> probably doesn't need them?

I don't follow?

>
> >                       };
> >                 };
> >         };
> >
> >         flash1 {
> >                 partitions {
> >                         compatible = "fixed-partitions";
> >
> >                       flash0_part1: part1@0 {
> >                               label = "part1_0";
> >                               reg = <0x0 0x800000>;
> >                       };
> >
> >                       part0@800000 {
> >                               label = "part1_1";
> >                               reg = <0x800000 0x800000>;
> >                       };
> >                 };
> >         };
>
> IMHO this representation is far from intuitive. At first glance it's not
> obvious which partitions are linked together and what's the name of the
> resulting concatenated part. I definitely prefer the solution where we
> have a virtual device describing the concatenation. I also understand
> that this goes against the #1 DT rule: "DT only decribes HW blocks, not
> how they should be used/configured", but maybe we can find a compromise
> here, like moving this description to the /chosen node?
>
> chosen {
>         flash-arrays {
>                 /*
>                  * my-flash-array is the MTD name if label is
>                  * not present.
>                  */
>                 my-flash-array {
>                         /*
>                          * We could have
>                          * compatible = "flash-array";
>                          * but we can also do without it.
>                          */
>                         label = "foo";
>                         flashes = <&flash1 &flash2 ...>;
>                         partitions {
>                                 /* usual partition description. */
>                                 ...
>                         };
>                 };
>         };
> };
>
> Rob, what do you think?

I don't think chosen is the right place to put all the partition
information. It's not something the bootloader configures.

This suffers from the same issue I have with the original proposal. It
will not work for existing s/w. There's only 1 logical partition that
concatenated. The rest of the partitions shouldn't need any special
handling. So we really only need some way to say 'link these 2
partitions into 1 logical partition'. Though perhaps one could want to
combine any number of physical partitions into logical partitions, but
then none of the proposals could support that. Then again, maybe
that's a userspace problem like with disks.

To throw out another option, what if the first device contains the
complete partitions for both devices with some property in one or both
devices pointing to the other device? That would make the partitions
in the 1st device still accessible to existing s/w (unless it bounds
checks the partitions).

Rob

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
