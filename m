Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF76775BF2
	for <lists+linux-mtd@lfdr.de>; Fri, 26 Jul 2019 02:10:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lQH4yg10PBmoxqdrbRXsL9kKAkR+qgn3Sp5TESSkm5Y=; b=aOOvs2qXzlSLYywZ/LGEtrPZp
	t/w/qKSxvmf5qFfxxcJ0z/PKBxvXwJEKKb85U7xuqJJOP4JfoKiaUNoYgS/Vzu+NZHfeUYGNlIHqE
	dHnhSuJGsdRoWF87At3ublUCcFietzt5c3UMh0Kw8wylE5rjhV+kutr8q02zdtm0TgE0dzgRrpp6k
	hCT2gruEpwJHetjKm3y5g7UeRrI5ahmDJkIkKZAoqs1tsR4K0UWEV7PnKZSI6tAlIFinywklkmitn
	65NXJiVq5klZ9ExrEJ6xqxjGsoYJOSk999HMTmdoxvJM50DLFyCnabZoGuOUh6hmfG3NulFIXChRL
	oCnGTQABQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqnoZ-0003M9-8F; Fri, 26 Jul 2019 00:10:27 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqnoM-0003LD-Ub
 for linux-mtd@lists.infradead.org; Fri, 26 Jul 2019 00:10:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1564099806; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gFaFrhEeyihyNbT3NtUBxEN4a+tGXeK6Vj+6otZDbtA=;
 b=EjeAwp0Z/Iz3JRj9xNi/OYWvP2qoXOXLR2kbAZQ7FDIMPuZOSiF0qc+SgEr+9qWUDz7njx
 9fSJSmwLBKrpzZNSM2vLDDU9dSKZqz4/qtlXGm6qm9sWN7tSWyprI05k88rU07mM/u+DSu
 bZeGz0/dkH6Ou3QGiuwrGDsK3pWy2rI=
Date: Thu, 25 Jul 2019 20:09:41 -0400
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH 02/11] MIPS: qi_lb60: Migrate to devicetree
To: Paul Burton <paul.burton@mips.com>
Message-Id: <1564099781.1699.0@crapouillou.net>
In-Reply-To: <20190725234735.h7qmtt26qpkjw3n6@pburton-laptop>
References: <20190725220215.460-1-paul@crapouillou.net>
 <20190725220215.460-3-paul@crapouillou.net>
 <20190725234735.h7qmtt26qpkjw3n6@pburton-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_171015_363330_501B1DF8 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-fbdev@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, James Hogan <jhogan@kernel.org>,
 alsa-devel@alsa-project.org, dri-devel@lists.freedesktop.org,
 Sebastian Reichel <sre@kernel.org>, od@zcrc.me, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, Lee Jones <lee.jones@linaro.org>,
 Artur Rojek <contact@artur-rojek.eu>, Richard Weinberger <richard@nod.at>,
 linux-pm@vger.kernel.org, linux-mips@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Mark Brown <broonie@kernel.org>, linux-hwmon@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dmaengine@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



Le jeu. 25 juil. 2019 =E0 19:47, Paul Burton <paul.burton@mips.com> a =

=E9crit :
> Hi Paul,
> =

> On Thu, Jul 25, 2019 at 06:02:06PM -0400, Paul Cercueil wrote:
>>  Move all the platform data to devicetree.
> =

> Nice! :)
> =

>>  The only bit dropped is the PWM beeper, which requires the PWM =

>> driver
>>  to be updated. I figured it's okay to remove it here since it's =

>> really
>>  a non-critical device, and it'll be re-introduced soon enough.
> =

> OK, I can see that being a price worth paying. Though it's possible to
> include the binding at least for that in this series I'd be even
> happier. Actually I see we already have
> =

>   Documentation/devicetree/bindings/pwm/ingenic,jz47xx-pwm.txt
> =

> in mainline - what needs to change with it?

The PWM driver will be updated to use the TCU clocks and the regmap =

provided
by the TCU driver. The PWM node will be a sub-node of the TCU one.

Additionally, there is this[1] ongoing discussion about PWM which makes
me uneasy about how to write the binding. So I'd rather not rush it,
because once the devicetree is written, it's ABI.

[1]: https://lkml.org/lkml/2019/5/22/607


>>  +	spi {
>>  +		compatible =3D "spi-gpio";
>>  +		#address-cells =3D <1>;
>>  +		#size-cells =3D <0>;
>>  +
>>  +		sck-gpios =3D <&gpc 23 GPIO_ACTIVE_HIGH>;
>>  +		mosi-gpios =3D <&gpc 22 GPIO_ACTIVE_HIGH>;
>>  +		cs-gpios =3D <&gpc 21 GPIO_ACTIVE_LOW>;
>>  +		num-chipselects =3D <1>;
>>  +
>>  +		spi@0 {
>>  +			compatible =3D "ili8960";
> =

> Should this be "ilitek,ili8960"?
> =

> Is there a binding & driver for this submitted somewhere? If not then =

> do
> we need this at all? It doesn't look like the existing platform data
> would actually lead to a driver being loaded so I'm wondering if we =

> can
> just drop this until such a driver (or at least a documented DT =

> binding)
> exists.

I can drop it. There is no driver for it, and I'm not even sure the LB60
has a ILI8960 in the first place.


> Thanks,
>     Paul



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
