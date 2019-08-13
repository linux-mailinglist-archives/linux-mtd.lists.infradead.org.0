Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9118B4E3
	for <lists+linux-mtd@lfdr.de>; Tue, 13 Aug 2019 12:02:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wQ32YkhGNYPVzNSAX4AYZ/osXhpQZpsD2ouvG0nld6k=; b=hsxgCJ20VyAiTTCXgDa1/3tAF
	81njQ4aBOVpasjbPaRoznjZACirSC+pkOlUNckrbvqLEwNgek5D5bmjZaJ8Q1D7C6+BzYGtr9lkYT
	0uf0bgtcpPtWb7Tu1R5STwxDijs9/F/4PLrU7IolswwFSqBi5Yj+7DtzoThBdYM94oKC/JAZqjKeM
	a4mjKCp8GFmfSVUSShBNwd3u3qjNiHKP4g9t0VdWIoNlckOgq7OXmn5nOQ6QP4/HrB/tUGR6HM7vR
	ynP88v9lmHlTQ3wlYWcLZ9lY3+5bnhkkdPgPMaKHYiaAlh+rxvfdnGX/IB0Pj/1dHPEA+kxi2Rtav
	XDx5WDpdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxTdP-0006iM-EH; Tue, 13 Aug 2019 10:02:31 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxTd4-0006aM-56
 for linux-mtd@lists.infradead.org; Tue, 13 Aug 2019 10:02:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1565690517; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZbzHVM6ENaR4P/6+oOoubZ60cH5LA2N4J6V2DJChuP0=;
 b=pFFfezQjKuJRCyCrZ9/ijjroaefD35Husngjhtv0sS9eRbULkJZieHwFjjUUwZHaOSMVhv
 Jym9DJW3vwQNxQw4SI21TSkg5AYgp4PLMnIjtp7Fi2rteFN9o2S3rSBW+rrUXddKsUjfoL
 iN4pdyxvhjsec4lYAWRoFxESQB5CuEc=
Date: Tue, 13 Aug 2019 12:01:48 +0200
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH 10/11] mfd: Drop obsolete JZ4740 driver
To: Philippe =?iso-8859-1?q?Mathieu-Daud=E9?= <f4bug@amsat.org>
Message-Id: <1565690508.1856.0@crapouillou.net>
In-Reply-To: <4b48e597-951e-45fd-dfb2-4a1292a8b067@amsat.org>
References: <20190725220215.460-1-paul@crapouillou.net>
 <20190725220215.460-11-paul@crapouillou.net> <20190812081640.GA26727@dell>
 <4b48e597-951e-45fd-dfb2-4a1292a8b067@amsat.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_030210_540892_F51EB3C1 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 James Hogan <jhogan@kernel.org>, alsa-devel@alsa-project.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, od@zcrc.me,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Lee Jones <lee.jones@linaro.org>, Artur Rojek <contact@artur-rojek.eu>,
 Richard Weinberger <richard@nod.at>, linux-pm@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, linux-mips@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Mark Brown <broonie@kernel.org>, linux-hwmon@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, Ralf Baechle <ralf@linux-mips.org>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sebastian Reichel <sre@kernel.org>, dmaengine@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Philippe,


Le mar. 13 ao=FBt 2019 =E0 10:44, Philippe =

=3D?iso-8859-1?q?Mathieu-Daud=3DE9?=3D <f4bug@amsat.org> a =E9crit :
> Hi Lee,
> =

> On 8/12/19 10:16 AM, Lee Jones wrote:
>>  On Thu, 25 Jul 2019, Paul Cercueil wrote:
>> =

>>>  It has been replaced with the ingenic-iio driver for the ADC.
>>> =

>>>  Signed-off-by: Paul Cercueil <paul@crapouillou.net>
>>>  Tested-by: Artur Rojek <contact@artur-rojek.eu>
>>>  ---
>>>   drivers/mfd/Kconfig      |   9 --
>>>   drivers/mfd/Makefile     |   1 -
>>>   drivers/mfd/jz4740-adc.c | 324 =

>>> ---------------------------------------
>>>   3 files changed, 334 deletions(-)
>>>   delete mode 100644 drivers/mfd/jz4740-adc.c
>> =

>>  Applied, thanks.
> =

> It seems the replacement is done in "MIPS: qi_lb60: Migrate to
> devicetree" which is not yet merged.

It's merged in the MIPS tree, though, so it'll blend together just
fine in linux-next.

> =

> Probably easier if this patch goes thru the MIPS tree as part of the
> "JZ4740 SoC cleanup" series.
> =

> Regards,
> =

> Phil.



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
