Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C80ADD82A
	for <lists+linux-mtd@lfdr.de>; Sat, 19 Oct 2019 12:35:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0iCk3oTgAslYfYUkZ7nz1J1se7uzE0jAExMUYWSyeQY=; b=JQo0PI2zNqqlik
	sPlBDgSWRee/pumlWP6OnxPYrHTjkzK4/YYDjhKCen6LZNnDV3SvopNcJVRHTiT02vUb3cUrQkYTW
	RdhDGBjY8/BAPSr8tQ1yq8JI2mIYy1ItydTmiz6mZBUV9F3ugSuujEwQHtc8R/c+mZfT4ij9KSxlJ
	sv7S0saqzSZV2AJGAdzjzYlEytz4GZoe1NmXBFh2Syt9Y57ZC9tdlpUgvWJf1+2wiPhSmBr9IdiMN
	42GH0C8OGMQUCOMKzhpn98lCKTDVZGIhay9A/lOzI6hTf0nxj4wERHFvRpQqc+s2K3vdZWQSsIIjf
	i2oh95HIBws/5zVXz/XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLm4y-00086n-6Y; Sat, 19 Oct 2019 10:35:24 +0000
Received: from smtp09.smtpout.orange.fr ([80.12.242.131]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLm4m-00085p-UX
 for linux-mtd@lists.infradead.org; Sat, 19 Oct 2019 10:35:14 +0000
Received: from belgarion ([90.76.41.223]) by mwinf5d17 with ME
 id FNb42100B4otT8A03Nb44m; Sat, 19 Oct 2019 12:35:10 +0200
X-ME-Helo: belgarion
X-ME-Auth: amFyem1pay5yb2JlcnRAb3JhbmdlLmZy
X-ME-Date: Sat, 19 Oct 2019 12:35:10 +0200
X-ME-IP: 90.76.41.223
From: Robert Jarzmik <robert.jarzmik@free.fr>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 00/46] ARM: pxa: towards multiplatform support
References: <20191018154052.1276506-1-arnd@arndb.de>
 <87v9slg9k5.fsf@belgarion.home>
 <CAK8P3a1JDtHsOW=iaxEycbJ4TBkR9MHUyDMeJnwxCtb=tefnBQ@mail.gmail.com>
 <CAK8P3a0376Anmoc8VWXcEBg+z2B+1vcxJoywYYROBQNxpVmZuA@mail.gmail.com>
X-URL: http://belgarath.falguerolles.org/
Date: Sat, 19 Oct 2019 12:35:03 +0200
In-Reply-To: <CAK8P3a0376Anmoc8VWXcEBg+z2B+1vcxJoywYYROBQNxpVmZuA@mail.gmail.com>
 (Arnd Bergmann's message of "Fri, 18 Oct 2019 21:32:36 +0200")
Message-ID: <87r239f2g8.fsf@belgarion.home>
User-Agent: Gnus/5.130008 (Ma Gnus v0.8) Emacs/26 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_033513_270589_2637ACCB 
X-CRM114-Status: GOOD (  22.82  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.131 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.131 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robert.jarzmik[at]free.fr)
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
Cc: linux-rtc@vger.kernel.org,
 Linux Fbdev development list <linux-fbdev@vger.kernel.org>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, USB list <linux-usb@vger.kernel.org>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, IDE-ML <linux-ide@vger.kernel.org>,
 linux-mtd <linux-mtd@lists.infradead.org>, Daniel Mack <daniel@zonque.org>,
 linux-leds@vger.kernel.org,
 "open list:HID CORE LAYER" <linux-input@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Arnd Bergmann <arnd@arndb.de> writes:

> On Fri, Oct 18, 2019 at 9:17 PM Arnd Bergmann <arnd@arndb.de> wrote:
>> On Fri, Oct 18, 2019 at 9:04 PM Robert Jarzmik <robert.jarzmik@free.fr> wrote:
>> > Arnd Bergmann <arnd@arndb.de> writes:
>> >
>> > > Hi PXA maintainers,
>> > >
>> > > I'm in the process of getting the old ARM platforms to all build
>> > > in a single kernel. The largest part of that work is changing all
>> > > the device drivers to no longer require mach/*.h header files.
>> > >
>> > > This series does it for arch/pxa/.
>> > >
>> > > As with the omap1 and s3c24xx series I sent before, I don't
>> > > expect this all to be correct in the first version, though
>> > > a lot of the patches are fairly simple and I did exhaustive
>> > > compile-time testing on them.
>> > >
>> > > Please test if you have the hardware, or review!
>> >
>> > Hi Arnd,
>> >
>> > Would you have a git tree I can pull from ?
>> > That would make my life easier than applying manually 46 patches...
>>
>> I've now pushed it to
>>
>> git://git.kernel.org:/pub/scm/linux/kernel/git/arnd/playground.git
>> pxa-multiplatform
>
> Sorry for the duplication, I had some problems with email configuration
> so my reply got rejected, let's see if it goes through this time.
I have it now, thanks, I'll test and review as soon as I can.

Cheers.

-- 
Robert

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
