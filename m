Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57EA2E7918
	for <lists+linux-mtd@lfdr.de>; Mon, 28 Oct 2019 20:14:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2e6PpIFqpeyoh0mBBfe5JzhcASdl/IKnDu9nQ8WYzSk=; b=AfUF9+KQ+szejf
	lA8uT3RthkCJfoG9SiuZDTUb/wg0Ru2Rp4d12yBtCohTBXD2f+FLDDr7GgBtG//VWVpA7IYWRMAa5
	SA8bac+bySz8FRH0GYY5WiiJhgi2Ou+bVAf5ZyiZ5t4aNZDRmOOflo3qZwkM5jEPRa8QzZz74LHs1
	TszhJFdcclt9Dh6NfbI22FKWspvvSrU8FOADQADhXcJ9L9/UevOrur3ONxsK0E8O7RdJZI0NxGmfk
	VUXZK/QO/TFZvGGZzCuaDg/D5T5jkvDrHOaDO3UjaTvL/N51zGvn2Rqq85qc+XMHH6ONNTkv6KVrq
	3ABKZgwbSYTDFzcCqd9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPATb-0004P9-58; Mon, 28 Oct 2019 19:14:51 +0000
Received: from smtp09.smtpout.orange.fr ([80.12.242.131]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPATC-0004Ep-RO
 for linux-mtd@lists.infradead.org; Mon, 28 Oct 2019 19:14:28 +0000
Received: from belgarion ([90.55.204.252]) by mwinf5d17 with ME
 id K7EJ2100B5TFNlm037EJ4o; Mon, 28 Oct 2019 20:14:24 +0100
X-ME-Helo: belgarion
X-ME-Auth: amFyem1pay5yb2JlcnRAb3JhbmdlLmZy
X-ME-Date: Mon, 28 Oct 2019 20:14:24 +0100
X-ME-IP: 90.55.204.252
From: Robert Jarzmik <robert.jarzmik@free.fr>
To: Arnd Bergmann <arnd@arndb.de>, Russell King <linux@arm.linux.org.uk>
Subject: Re: [PATCH 05/46] ARM: pxa: split up mach/hardware.h
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-5-arnd@arndb.de>
X-URL: http://belgarath.falguerolles.org/
Date: Mon, 28 Oct 2019 20:14:18 +0100
In-Reply-To: <20191018154201.1276638-5-arnd@arndb.de> (Arnd Bergmann's message
 of "Fri, 18 Oct 2019 17:41:20 +0200")
Message-ID: <87d0egof79.fsf@belgarion.home>
User-Agent: Gnus/5.130008 (Ma Gnus v0.8) Emacs/26 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_121427_165479_B8ED4371 
X-CRM114-Status: GOOD (  22.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.131 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.131 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robert.jarzmik[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-usb@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Dominik Brodowski <linux@dominikbrodowski.net>, linux-mtd@lists.infradead.org,
 Pavel Machek <pavel@ucw.cz>, linux-clk@vger.kernel.org,
 linux-leds@vger.kernel.org, linux-rtc@vger.kernel.org,
 linux-input@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Guenter Roeck <linux@roeck-us.net>, linux-watchdog@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-pm@vger.kernel.org,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, linux-fbdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dri-devel@lists.freedesktop.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Arnd Bergmann <arnd@arndb.de> writes:

> The mach/hardware.h is included in lots of places, and it provides
> three different things on pxa:
>
> - the cpu_is_pxa* macros
> - an indirect inclusion of mach/addr-map.h
> - the __REG() and io_pv2() helper macros
>
> Split it up into separate <linux/soc/pxa/cpu.h> and mach/pxa-regs.h
> headers, then change all the files that use mach/hardware.h to
> include the exact set of those three headers that they actually
> need, allowing for further more targeted cleanup.
>
> linux/soc/pxa/cpu.h can remain permanently exported and is now in
> a global location along with similar headers. pxa-regs.h and
> addr-map.h are only used in a very small number of drivers now
> and can be moved to arch/arm/mach-pxa/ directly when those drivers
> are to pass the necessary data as resources.

For the pxa part, that looks fine to me.
I'd like to focus a bit of Russell's attention to the sa11xx part (reminder in
[1]), and more specifically :

 - the change to drivers/pcmcia/soc_common.c
 - the change to drivers/pcmcia/sa1111_generic.c

I must admit my knowledge of PCMCIA is relatively poor, and even if the patch
looks harmless, one never knows if Assebet will ever by same after ...

Cheers.

--
Robert

[1] Extract of the patch for Russell's scrutiny
> diff --git a/drivers/pcmcia/sa1111_generic.c b/drivers/pcmcia/sa1111_generic.c
> index 11783410223b..2f556fa37c43 100644
> --- a/drivers/pcmcia/sa1111_generic.c
> +++ b/drivers/pcmcia/sa1111_generic.c
> @@ -17,7 +17,6 @@
>  
>  #include <pcmcia/ss.h>
>  
> -#include <mach/hardware.h>
>  #include <asm/hardware/sa1111.h>
>  #include <asm/mach-types.h>
>  #include <asm/irq.h>
... zip ...

> diff --git a/drivers/pcmcia/soc_common.c b/drivers/pcmcia/soc_common.c
> index 3a8c84bb174d..9276a628473d 100644
> --- a/drivers/pcmcia/soc_common.c
> +++ b/drivers/pcmcia/soc_common.c
> @@ -47,8 +47,6 @@
>  #include <linux/spinlock.h>
>  #include <linux/timer.h>
>  
> -#include <mach/hardware.h>
> -
>  #include "soc_common.h"
>  
>  static irqreturn_t soc_common_pcmcia_interrupt(int irq, void *dev);

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
