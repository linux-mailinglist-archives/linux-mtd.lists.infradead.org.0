Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CAD1D8664
	for <lists+linux-mtd@lfdr.de>; Mon, 18 May 2020 20:27:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BxaOPJg66GIqxofr64Nn0eI8bT+uIuZFcJCd1L8PJO4=; b=UV+ombrh8iMyc4
	l4OCDjGR3n7WTll21cMCMxpqv6oGExwrcntwORkTAz+rtGLk7HH7hgteD9jF0n3G6qN4vrPO/4P3d
	TSXQapc48bBp1tunS/aD2eQKkBWlM3rIhUs4QlHGPnVwnFPHE2uQiGAUFdCSQbd9MquSr8K/3q5U8
	24w0AHSc0H2Uq/THigB1AJ86CvsXQKK3p+h0FcHJy2QjymjLM8V5pK7BcCU35bkDhCL1/aqMycxg3
	FBD8+xhR6HpOQ1DtGvCWmGgWSC3lkfWvGqwuVGrVc1Qj6lIFMNfvuWLy11tilzMyGxqlpcN1YJw6+
	9Nzxzdy2VqE7QqlEMioQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jakUA-0001MU-9M; Mon, 18 May 2020 18:27:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jakU0-0001Lj-GA
 for linux-mtd@lists.infradead.org; Mon, 18 May 2020 18:27:25 +0000
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
 [209.85.167.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1BF65207D3
 for <linux-mtd@lists.infradead.org>; Mon, 18 May 2020 18:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589826444;
 bh=vUexAKayig7hoQMTXHum2daB+jiGgP2Hd7w/7txXwSI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=jeqK2OJ6xFtqCNfN1ky7GwcFDsbDnhDlARUGcXd/rWqLG1sHGTSJARhdKe+3y/LCJ
 iHQseL6fG/6OqBdVnTsWEvNhB2EfPTXY6ZLceYvCD96AeJXHNC9pFJjEvD/JUuZCZd
 A1LlsKRgjQyaubXUtHLYEOujo3EDZJKJna3WYR0Q=
Received: by mail-oi1-f179.google.com with SMTP id w4so6022477oia.1
 for <linux-mtd@lists.infradead.org>; Mon, 18 May 2020 11:27:24 -0700 (PDT)
X-Gm-Message-State: AOAM531nVtCzldVe/4PWVa7p2AsHnRKhUgWCSn5kd++sWmsAn/Lyz8tk
 hOHjhW61RLL7INWF8277dyCirSI6i1Fmvv3hgg==
X-Google-Smtp-Source: ABdhPJx3fgeoOHAumedf5oacXjRoxMizojAOnq9MnOT4ZX6kWsKK8ZqiKg8ShKAj1LLh0Vm4moDpvYl9CG1Oub20DaY=
X-Received: by 2002:aca:1904:: with SMTP id l4mr523744oii.106.1589826443359;
 Mon, 18 May 2020 11:27:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200513104615.7905-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200513104615.7905-2-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200514125709.GA8436@bogus>
 <dc51e6af-bda8-d8b9-1782-f5c4d5d3fed7@linux.intel.com>
In-Reply-To: <dc51e6af-bda8-d8b9-1782-f5c4d5d3fed7@linux.intel.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 18 May 2020 12:27:11 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJxqdi2MmyHZteMOpx5yy_o+ZxaqGHMUV7aCknWWQ0ptg@mail.gmail.com>
Message-ID: <CAL_JsqJxqdi2MmyHZteMOpx5yy_o+ZxaqGHMUV7aCknWWQ0ptg@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] dt-bindings: mtd: Add Nand Flash Controller
 support for Intel LGM SoC
To: "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_112724_592876_A06ABA4E 
X-CRM114-Status: GOOD (  17.38  )
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
Cc: cheol.yong.kim@intel.com, "hauke.mehrtens" <hauke.mehrtens@intel.com>,
 qi-ming.wu@intel.com, Anders Roxell <anders.roxell@linaro.org>,
 Vignesh R <vigneshr@ti.com>, Arnd Bergmann <arnd@arndb.de>,
 devicetree@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 Brendan Higgins <brendanhiggins@google.com>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 =?UTF-8?Q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>,
 Thomas Gleixner <tglx@linutronix.de>, Mason Yang <masonccyang@mxic.com.tw>,
 Andy Shevchenko <andriy.shevchenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 8:08 PM Ramuthevar, Vadivel MuruganX
<vadivel.muruganx.ramuthevar@linux.intel.com> wrote:
>
> Hi Rob,
>
> On 14/5/2020 8:57 pm, Rob Herring wrote:
> > On Wed, 13 May 2020 18:46:14 +0800, Ramuthevar,Vadivel MuruganX wrote:
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
> >>
> >
> >
> > My bot found errors running 'make dt_binding_check' on your patch:
> >
> > /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/intel,lgm-nand.example.dt.yaml: nand-controller@e0f00000: 'dmas' is a dependency of 'dma-names'
> >
> > See https://patchwork.ozlabs.org/patch/1289160
> >
> > If you already ran 'make dt_binding_check' and didn't see the above
> > error(s), then make sure dt-schema is up to date:
> >
> > pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade
> >
> > Please check and re-submit.
> Thank you very much for review comments...
> I didn't find build errors, successfully built.

You need to build without DT_SCHEMA_FILES set or be on 5.7-rc (you
should be on a current -rcX at least for any patch submission). This
comes from the core schema.

Rob

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
