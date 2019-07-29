Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBB2791C5
	for <lists+linux-mtd@lfdr.de>; Mon, 29 Jul 2019 19:06:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6X0ijKO51VEHigtcYjNhoh0upUhtc5Bezgyvu+lOrzE=; b=snVGIHsIA0Q6lNDQEutMrbxbw
	qIzAv/4sDUxPfp6fGAPVyAXcH0fEaMmGNV2i7XMlpSzi56KAmtd63xc1jXMLcOkcOtiNE4jsa7SiS
	aVtaBdL83hJyMx+qmIKswnK2p6AbOHQboK+YJyx6yfao+hlG2BanDwPHWmZvPYZSbW8UU6wujmveb
	/wW91jCbEB9d4bge7Ree5G2duy0rTPI1QWw76bBoosTxrTdzeunQjVcNbnz8RPSg0x8sqGTaEbJQb
	4T4EuuaFWtX1613wk5SLm6tUkNTRaoAjJ+IjEYln0w6QHmOQfneKV8R96rVPo4Tsz7dqRL739YZWP
	KqGBjvXIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs96A-0002Ba-1d; Mon, 29 Jul 2019 17:06:10 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs960-0002A4-39
 for linux-mtd@lists.infradead.org; Mon, 29 Jul 2019 17:06:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1564419948; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6ct5sfA9aKEmr8hMlVPpfoX1PCyM/MxIecN3pTsFsbo=;
 b=tGIbEOveRSTKHoZcpg/izsWRXZB3sJbHvlT52bDMqqruC35KNldtJ6Z1UumMknOBTmqxkS
 L0QxFFWQrtfalRctJpTe/AFwPD5hYLu/miXPRxLnpxQZvMuW30gWEtzMHrKJVpyhyW4MrF
 oruZx2tu/qGuw0Xp6xod1DxlnpMTbLU=
Date: Mon, 29 Jul 2019 13:05:21 -0400
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH 00/11] JZ4740 SoC cleanup
To: Richard Weinberger <richard.weinberger@gmail.com>
Message-Id: <1564419921.1759.1@crapouillou.net>
In-Reply-To: <CAFLxGvyi0+0E3M12A7cRoHfEKd8-7Yr8EMG9J=2XcjCxPWY5pA@mail.gmail.com>
References: <20190725220215.460-1-paul@crapouillou.net>
 <CAFLxGvyi0+0E3M12A7cRoHfEKd8-7Yr8EMG9J=2XcjCxPWY5pA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_100600_321681_554B151B 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 James Hogan <jhogan@kernel.org>, alsa-devel <alsa-devel@alsa-project.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>, linux-mips@vger.kernel.org,
 od@zcrc.me, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, Lee Jones <lee.jones@linaro.org>,
 Artur Rojek <contact@artur-rojek.eu>, Richard Weinberger <richard@nod.at>,
 linux-pm@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Mark Brown <broonie@kernel.org>, linux-hwmon@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, Ralf Baechle <ralf@linux-mips.org>,
 LKML <linux-kernel@vger.kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 dmaengine@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Richard,


Le lun. 29 juil. 2019 =E0 7:23, Richard Weinberger =

<richard.weinberger@gmail.com> a =E9crit :
> On Fri, Jul 26, 2019 at 12:02 AM Paul Cercueil <paul@crapouillou.net> =

> wrote:
>> =

>>  Hi,
>> =

>>  This patchset converts the Qi LB60 MIPS board to devicetree and =

>> makes it
>>  use all the shiny new drivers that have been developed or updated
>>  recently.
>> =

>>  All the crappy old drivers and custom code can be dropped since they
>>  have been replaced by better alternatives.
>> =

>>  Some of these alternatives are not yet in 5.3-rc1 but have already =

>> been
>>  accepted by their respective maintainer for inclusion in 5.4-rc1.
>> =

>>  To upstream this patchset, I think that as soon as MIPS maintainers
>>  agree to take patches 01-03/11 and 11/11, the other patches can go
>>  through their respective maintainer's tree.
> =

> Was this series tested with the Ben Nanonote device?
> I have one of these and from time to time I upgrade the kernel on it.

Yes! Artur (Cc'd) tested it.

You can test it yourself, after merging this patchset with:
https://git.kernel.org/pub/scm/linux/kernel/git/vkoul/slave-dma.git =

branch next,
git://git.freedesktop.org/git/drm-misc branch drm-misc-next.

These will be in 5.4-rc1.

Cheers,
-Paul



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
