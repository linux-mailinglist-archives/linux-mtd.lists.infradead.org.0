Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FADF1B0658
	for <lists+linux-mtd@lfdr.de>; Mon, 20 Apr 2020 12:15:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iK8Z9F/sX+ZoYMlE8kI9e5cR40czRbQr2qkXmHRsge0=; b=Ke5/a6gu/oWb5H
	sFfu5wDS/5X/yyGNXlExqyttD5iCChH6W35JUus+CEJK1Ju79WuXDS9QAadYgqPvpNTQEV7QcFYIZ
	j9v6eZE81uoeJsrW50TKVhFKcYvOhmhGJ1VG7TNdQWBMH3IwRdiANpQGNLSj/derQuB2YUcKXZH75
	91Xjwing4aHcs2hfcCFkykm7gy/NL+hYDr7nDni5TZPXaCm9MKdv7sq427kit1xKksd7lChYiEpHA
	tHoHEGN/URtAqt7L36CJkNxG9zDfeA0Hzu96mCwSaDsmD42HRBTfYXchSj8oe2jbqsxMxcdbYX2w8
	U8bXeAwhRvtP0C7nl6dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQTS6-0004fB-GA; Mon, 20 Apr 2020 10:14:58 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQTRx-0004ea-DZ
 for linux-mtd@lists.infradead.org; Mon, 20 Apr 2020 10:14:50 +0000
Received: by mail-pf1-x444.google.com with SMTP id b8so4708983pfp.8
 for <linux-mtd@lists.infradead.org>; Mon, 20 Apr 2020 03:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+plp5dslqkbN+jJKI4p9ucxk+mSNWrqMV1KZLrKDu8E=;
 b=m9/NpKD3YMhtt1l8zNAhqW7YCnAg0vuezB4FcJjBiW0qtvgfYxDE8Q+jH26Che+j09
 WIiar7jYNanQupQd41XmtOfKeb6r28kYQKdmiNBRV0NGpAjyGHWYazLmy0LhvSRtG7VN
 F/EYszmDw8mDmw/UL6hH7uM4Z2xWXP8/jMBVVAeyRk4hPBRLlBoF/zj+XzzRf3LFLIJc
 jRVwT7FgZTBNkxmx3j/36B68OKh/Ohr8aJ4+amz189J4w+rKjuS7VI8bO2jDK465A/qP
 YyUi8XJGibpb/IY1phIMWcFWNIt2JoWTdMiP6PUoYsPXcR53zk5yYxQCgX5G/4jFgU9Z
 R3bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+plp5dslqkbN+jJKI4p9ucxk+mSNWrqMV1KZLrKDu8E=;
 b=EdB2f6EVlGuuOEBt/Ee8AbGUPlMxlfvRdVO50yGkZSl11KYXzMZQp8EELjE5NM1WHe
 Tj8afVNpR89Hu7ZXiaIABSQdyZSiAPe7KYlaycjgoOnVHX4iQo/AHerITnd/HjcAA0yd
 aRasGRwr86NeFzai4+5duQl6FEFRA49Vg0y5TwuOWz3w6BhkUdPPMTtktxcMIyQ3kI92
 wv8ME73hYq2ZFOecJOmZzqpifDh8D7XXvGQMc6JZS+VfhWvQ2BEGUApB4YAQBtd8SLEB
 AHEVw20WtLT9N0sM5v0zm93lCnBBPgZmbP5j/cBniLoAtDisFNWww3Tz1WUeKVzB8r4j
 RU6Q==
X-Gm-Message-State: AGi0PubKcdPKmnmQbIno/o0po6Z12O7V8f/tQqoo1nYhVEmE1Zj9mEN4
 9mzTHeeztGn3bYOFNGc072yBpIlCwrJ9Wz/7JBA=
X-Google-Smtp-Source: APiQypL5JJh3lWpj0tF/H74qWnVXLQrlL9upOg621u5MaM3c0nHwfxf/sSiqTVj423joY+7ivzMJipVARFeU3GeIT9M=
X-Received: by 2002:aa7:8f26:: with SMTP id y6mr16420099pfr.36.1587377688814; 
 Mon, 20 Apr 2020 03:14:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200417082147.43384-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200417082147.43384-3-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200418105533.477ce529@collabora.com>
 <20200419222040.GJ185537@smile.fi.intel.com>
 <20200420111754.5863324b@collabora.com>
 <CAHp75VeOH+DC362tsEo13gr9fJpeCHXok=7O19B3njbxCOzd2A@mail.gmail.com>
 <20200420115256.3a0ff647@collabora.com>
In-Reply-To: <20200420115256.3a0ff647@collabora.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 20 Apr 2020 13:14:42 +0300
Message-ID: <CAHp75Vfp_WYNR8kHVsSVumGzuVbGEGpAjfXVvJAV7t6zXXY+HA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] mtd: rawnand: Add NAND controller support on Intel
 LGM SoC
To: Boris Brezillon <boris.brezillon@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_031449_457256_FFE29669 
X-CRM114-Status: GOOD (  17.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: cheol.yong.kim@intel.com, devicetree <devicetree@vger.kernel.org>,
 qi-ming.wu@intel.com, Anders Roxell <anders.roxell@linaro.org>,
 Andy Shevchenko <andriy.shevchenko@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 "hauke.mehrtens" <hauke.mehrtens@intel.com>,
 Richard Weinberger <richard@nod.at>,
 Brendan Higgins <brendanhiggins@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mips@vger.kernel.org, "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:MEMORY TECHNOLOGY..." <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Thomas Gleixner <tglx@linutronix.de>, masonccyang@mxic.com.tw,
 piotrs@cadence.com, Vignesh R <vigneshr@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 12:53 PM Boris Brezillon
<boris.brezillon@collabora.com> wrote:
> On Mon, 20 Apr 2020 12:44:51 +0300
> Andy Shevchenko <andy.shevchenko@gmail.com> wrote:
>
> > On Mon, Apr 20, 2020 at 12:21 PM Boris Brezillon
> > <boris.brezillon@collabora.com> wrote:
> > > On Mon, 20 Apr 2020 01:20:40 +0300
> > > Andy Shevchenko <andriy.shevchenko@intel.com> wrote:
> > > > On Sat, Apr 18, 2020 at 10:55:33AM +0200, Boris Brezillon wrote:
> > > > > On Fri, 17 Apr 2020 16:21:47 +0800
> > > > > "Ramuthevar,Vadivel MuruganX"
> > > > > <vadivel.muruganx.ramuthevar@linux.intel.com> wrote:
> > > > >
> > > > > > From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
> > > >
> > > > > > +static const struct of_device_id lgm_nand_match[] = {
> > > > > > + { .compatible = "intel,lgm-nand", },
> > > > > > + {}
> > > > > > +};
> > > > > > +MODULE_DEVICE_TABLE(of, lgm_nand_match);
> > > > >
> > > > > You probably have a missing "depends on OF" in your Kconfig.
> > > >
> > > > Since it's using device property API, dependency is not needed.
> > > >
> > >
> > > There's no compile-time dependency, but this driver will be pretty
> > > useless if all its users have the NAND controller node defined in their
> > > DT and CONFIG_OF is not enabled.
> >
> > No, it's not.
> > See [1] for the details how ACPI may utilize this table.
> >
> > [1]: https://www.kernel.org/doc/html/latest/firmware-guide/acpi/enumeration.html#device-tree-namespace-link-device-id
>
> Except the NAND framework does use the OF lib when parsing common DT
> properties (like nand-ecc-mode, etc), so it does depend on OF if you
> want those props to be parsed, which, according to the DT binding patch,
> is the case.

I see, so, NAND framework can be transformed at some point. In any
case, from driver perspective it's OF independent.

-- 
With Best Regards,
Andy Shevchenko

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
