Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9ED1D8650
	for <lists+linux-mtd@lfdr.de>; Mon, 18 May 2020 20:24:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U9UsrnKfODyeIa/tumV0LxTRyuBh2AE0Gdaytoz88HU=; b=niKz259siTWE6U
	2c3hXyE55Xh1HvpP31oXBsHUWPgo3xQ5CS/xzlUYPJtbjAROyAT2J6lwaq5CuW0eiqPVLlVODvmU4
	bWcqIL3zaS9Pcozbhq12MPYYLdvvvAFtQ4NVa2+jj/6iKDQU92L4aNf0LVtTRc01C45mvKnu19RfR
	zMr4Ow33geMDdn5XLwIUZhNBw0j/KvCRHeFbW5vtkz1d4YqlmCrjU6IwLY7UJNQBotnAP1wlit+2m
	vCG0OOjq85wlELK4Lat02tdebh17/9yycBSsi3K0eSjKCJZuRJN7xQhpVIXj/tIq40+l7W/lo3PjD
	EAEbOLa7r0ZrtrT7ARAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jakRY-0006ZX-PW; Mon, 18 May 2020 18:24:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jakRQ-0006Xd-Qg
 for linux-mtd@lists.infradead.org; Mon, 18 May 2020 18:24:46 +0000
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com
 [209.85.161.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 23CBC20888
 for <linux-mtd@lists.infradead.org>; Mon, 18 May 2020 18:24:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589826284;
 bh=4enFI36R6diBkb+gKGhwExmrDx+XcgPAs342xvS1tyA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=qMgzXTpgzcX/Oit85pI4z9hKpzqyrwpwUWnordtNIqxN+h2HwZo7eoTNmFui5ft58
 zblAZ4ImaByNw4dTzjObfyDNCtWPKdoT9C8zO6JjO3XUcynjG32dAXQqfA62cnZZk8
 UExxla2pZzcwYCkbGBzpUj46i9Ff4k84yCSJ6mv8=
Received: by mail-oo1-f50.google.com with SMTP id c187so2255920ooc.2
 for <linux-mtd@lists.infradead.org>; Mon, 18 May 2020 11:24:44 -0700 (PDT)
X-Gm-Message-State: AOAM5316ekVRkDjDfOWPGfhidVADdIxiLu/fxeP5tg73iJHwSBhJ+o+K
 P/KhQYasq7r8M9PAII8/UhOy14BW81ZuZiS7sQ==
X-Google-Smtp-Source: ABdhPJysCAF2m01NkslVAsSntTiUS/xi7dJDbBIKhlzFQaR4jWhennVyt0j+R7miFuq23VHXoO29v9QPs/K2DAV/BxA=
X-Received: by 2002:a4a:9285:: with SMTP id i5mr13579789ooh.50.1589826283325; 
 Mon, 18 May 2020 11:24:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200513104615.7905-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200513104615.7905-2-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200514130321.GB8436@bogus>
 <3248d380-1d08-3088-8d18-0373a8a5aef9@linux.intel.com>
In-Reply-To: <3248d380-1d08-3088-8d18-0373a8a5aef9@linux.intel.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 18 May 2020 12:24:31 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL3g-QYMF0PMSuHeoaZ5x88fg4TbzVbDUO6=ugxEZRpbQ@mail.gmail.com>
Message-ID: <CAL_JsqL3g-QYMF0PMSuHeoaZ5x88fg4TbzVbDUO6=ugxEZRpbQ@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] dt-bindings: mtd: Add Nand Flash Controller
 support for Intel LGM SoC
To: "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_112444_891065_E9A09790 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: cheol.yong.kim@intel.com, devicetree@vger.kernel.org, qi-ming.wu@intel.com,
 Anders Roxell <anders.roxell@linaro.org>, Vignesh R <vigneshr@ti.com>,
 Arnd Bergmann <arnd@arndb.de>, "hauke.mehrtens" <hauke.mehrtens@intel.com>,
 Richard Weinberger <richard@nod.at>,
 Brendan Higgins <brendanhiggins@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 =?UTF-8?Q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>,
 Thomas Gleixner <tglx@linutronix.de>, Mason Yang <masonccyang@mxic.com.tw>,
 Andy Shevchenko <andriy.shevchenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 8:06 PM Ramuthevar, Vadivel MuruganX
<vadivel.muruganx.ramuthevar@linux.intel.com> wrote:
>
> Hi Rob,
>
>     Thank you for the review comments...
>
> On 14/5/2020 9:03 pm, Rob Herring wrote:
> > On Wed, May 13, 2020 at 06:46:14PM +0800, Ramuthevar,Vadivel MuruganX wrote:
> >> From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
> >>
> >> Add YAML file for dt-bindings to support NAND Flash Controller
> >> on Intel's Lightning Mountain SoC.
> >>
> >> Signed-off-by: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
> >> ---
> >>   .../devicetree/bindings/mtd/intel,lgm-nand.yaml    | 83 ++++++++++++++++++++++
> >>   1 file changed, 83 insertions(+)
> >>   create mode 100644 Documentation/devicetree/bindings/mtd/intel,lgm-nand.yaml

> >> +      clocks = <&cgu0 125>;
> >> +      dma-names = "tx", "rx";
> >> +      #address-cells = <1>;
> >> +      #size-cells = <0>;
> >> +      #clock-cells = <1>;
> >
> > This is a clock provider too?
> Yes, it is getting clock from CGU for nand-controller.

That is a clock client (e.g. 'clocks' property), not a provider. The
CGU is the provider.

Rob

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
