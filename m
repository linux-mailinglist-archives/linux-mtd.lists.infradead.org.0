Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1B41B0606
	for <lists+linux-mtd@lfdr.de>; Mon, 20 Apr 2020 11:53:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T0PcHU2cQa/xy/87yhRwgXxKeivCnBZWqqqUUr9uUps=; b=tdMOqosd8oJg0L
	o4lpGgzsk2Zq7RIVjrIAYXF6R2AL/XqmXCQpjbHIV82Jor+gi2nPcURtAw9jrRSVjDVqMJ0JzT4rS
	esvWClvdo5Y3TAzdwjcDGLatV6sG5hW5Cc/nJHv/rfD8LmIsNFYMzbve4kM57ilb1wVbH2c1oqpgh
	aG2y5xgMJe/2Kllx7apMPYzfkcUtdfBa3hWhW27hIRPgGmmvFJOIgzze6WWGKzCDO/aDlq8UhsI53
	JkMd3sYCZGr74KSpYBvXvuTmNibdNuBfMLxO3vZFzDKcfUIRaybGSs+EMxWzm3FGU4lwunMTI1ZdD
	+mJcy4lxf6IECz9KnRQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQT6z-0006qT-JR; Mon, 20 Apr 2020 09:53:09 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQT6r-0006py-IW
 for linux-mtd@lists.infradead.org; Mon, 20 Apr 2020 09:53:03 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 478942A0BBF;
 Mon, 20 Apr 2020 10:52:59 +0100 (BST)
Date: Mon, 20 Apr 2020 11:52:56 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH v2 2/2] mtd: rawnand: Add NAND controller support on
 Intel LGM SoC
Message-ID: <20200420115256.3a0ff647@collabora.com>
In-Reply-To: <CAHp75VeOH+DC362tsEo13gr9fJpeCHXok=7O19B3njbxCOzd2A@mail.gmail.com>
References: <20200417082147.43384-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200417082147.43384-3-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200418105533.477ce529@collabora.com>
 <20200419222040.GJ185537@smile.fi.intel.com>
 <20200420111754.5863324b@collabora.com>
 <CAHp75VeOH+DC362tsEo13gr9fJpeCHXok=7O19B3njbxCOzd2A@mail.gmail.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_025301_741442_DCC49514 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 linux-mips@vger.kernel.org, "Ramuthevar, Vadivel
 MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>, "open list:MEMORY
 TECHNOLOGY..." <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Thomas Gleixner <tglx@linutronix.de>, masonccyang@mxic.com.tw,
 piotrs@cadence.com, Vignesh R <vigneshr@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 20 Apr 2020 12:44:51 +0300
Andy Shevchenko <andy.shevchenko@gmail.com> wrote:

> On Mon, Apr 20, 2020 at 12:21 PM Boris Brezillon
> <boris.brezillon@collabora.com> wrote:
> > On Mon, 20 Apr 2020 01:20:40 +0300
> > Andy Shevchenko <andriy.shevchenko@intel.com> wrote:  
> > > On Sat, Apr 18, 2020 at 10:55:33AM +0200, Boris Brezillon wrote:  
> > > > On Fri, 17 Apr 2020 16:21:47 +0800
> > > > "Ramuthevar,Vadivel MuruganX"
> > > > <vadivel.muruganx.ramuthevar@linux.intel.com> wrote:
> > > >  
> > > > > From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>  
> > >  
> > > > > +static const struct of_device_id lgm_nand_match[] = {
> > > > > + { .compatible = "intel,lgm-nand", },
> > > > > + {}
> > > > > +};
> > > > > +MODULE_DEVICE_TABLE(of, lgm_nand_match);  
> > > >
> > > > You probably have a missing "depends on OF" in your Kconfig.  
> > >
> > > Since it's using device property API, dependency is not needed.
> > >  
> >
> > There's no compile-time dependency, but this driver will be pretty
> > useless if all its users have the NAND controller node defined in their
> > DT and CONFIG_OF is not enabled.  
> 
> No, it's not.
> See [1] for the details how ACPI may utilize this table.
> 
> [1]: https://www.kernel.org/doc/html/latest/firmware-guide/acpi/enumeration.html#device-tree-namespace-link-device-id

Except the NAND framework does use the OF lib when parsing common DT
properties (like nand-ecc-mode, etc), so it does depend on OF if you
want those props to be parsed, which, according to the DT binding patch,
is the case.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
