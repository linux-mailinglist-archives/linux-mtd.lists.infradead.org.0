Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0599B321
	for <lists+linux-mtd@lfdr.de>; Sat, 27 Apr 2019 11:18:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+0ACuqWkQKKRfAhfdpI4jQr71dkjQEWAEuT9gF1NlLo=; b=JYrVAjk/kBSPij
	4vJVS/iMcjdvDC7vwNgGSr1vVjQsOpKf7SeHfz4p29vjajad2Xyoqw7YRmlaRL+adHNoth9ovpQic
	daqvYycVDHI6eUFG3uJJvnDjZYeKPzOX1vgE7Yn6eERqxpbXTQI8An/DWcAuw0QLnGsMzyVqwaDFP
	xxUwMQDQMIjGgeipdsvxZOoqj+ybwXtniAkYPDmPK1Okq2joLrs82I5ihTwiSYKZ9jlxDhmOsbDCp
	aQHKeZz4QeclqdRf9wZ7QhQKRLgNw7O/MfayXUxLCMmK0wtnhYyZcnXELS0OSKyZFvLKnXkcTU7PO
	4KsPUvn/8WOpv9LsZvlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKJTa-0005zc-3f; Sat, 27 Apr 2019 09:18:30 +0000
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKJTS-0005yn-8h; Sat, 27 Apr 2019 09:18:24 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23990717AbfD0JSPYKUmC (ORCPT
 <rfc822;linux-mtd@lists.infradead.org> + 1 other);
 Sat, 27 Apr 2019 11:18:15 +0200
Date: Sat, 27 Apr 2019 11:18:06 +0200
From: Ladislav Michl <ladis@linux-mips.org>
To: Janusz Krzysztofik <jmkrzyszt@gmail.com>
Subject: Re: [PATCH v3] mtd: rawnand: ams-delta: Drop board specific
 partition info
Message-ID: <20190427091806.GA10143@lenoch>
References: <20190324223344.24590-1-jmkrzyszt@gmail.com>
 <20190424180212.10830-1-jmkrzyszt@gmail.com>
 <20190424221428.GA4172@lenoch> <3173726.PU223hZCOI@z50>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3173726.PU223hZCOI@z50>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_021822_309127_1E1C7CF0 
X-CRM114-Status: GOOD (  23.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [148.251.95.138 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: linux-omap@vger.kernel.org, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Tony Lindgren <tony@atomide.com>, Richard Weinberger <richard@nod.at>,
 Boris Brezillon <bbrezillon@kernel.org>, linux-kernel@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Apr 25, 2019 at 08:42:22PM +0200, Janusz Krzysztofik wrote:
> Hi Ladislav,
> 
> On Thursday, April 25, 2019 12:14:28 AM CEST Ladislav Michl wrote:
> > Hi Janusz,
> > 
> > On Wed, Apr 24, 2019 at 08:02:12PM +0200, Janusz Krzysztofik wrote:
> > > After recent modifications, only a hardcoded partition info makes
> > > the driver device specific.  Other than that, the driver uses GPIO
> > > exclusively and can be used on any hardware.
> > > 
> > > Drop the partition info and use MTD partition parser with default list
> > > of parser names instead.  For the OF parser to work correctly, pass
> > > device of_node to mtd.
> > > 
> > > Amstrad Delta users should append the following partition info to their
> > > kernel command line, possibly embedding it in CONFIG_CMDLINE:
> > > 
> > > mtdparts=ams-delta-nand:3584k(Kernel),256k(u-boot),256k(u-boot_params),\
> > > 256k(Amstrad_LDR),27m(File_system),768k(PBL_reserved)
> > 
> > now, when driver is no longer Amstrad Delta specific, why would you want
> > to have ams-delta-nand hardcoded on kernel cmdline? I'm assuming at some
> > point this driver will become gpio-nand [*] or something like that and
> > asking users to change their kernel cmdline twice is just unwise :)
> 
> Hmm, I have no idea of a good name for the driver if not "gpio-nand". Can you 
> suggest one?

gpio-nand is so good name that it should be worth merging gpio.c and
ams-delta.c into gpio_nand.c :)

> As a workaround, I can add a platform device id table to the driver with "ams-
> delta-nand" as a supported device name in hope that survives possible future 
> driver renaming.
> 
> > [*] btw, it is really shame gpio-nand name is already taken by driver
> > living in drivers/mtd/nand/raw/gpio.c which is more likely gpio-mem-nand
> > used by at least CompuLab CM-X255 and Picochip picoXcell.
> 
> I think the best approach would be to expose NAND data ports of those machines 
> as GPIO ports, possibly reusing the "gpio-nand" driver code while creating a 
> new GPIO driver for them if "basic-mmio-gpio" occurs inappropriate, and use 
> the pure GPIO NAND driver on top.

What about adding two fields into struct ams_delta_nand holding pointers to
either ams_delta_{read,write}_buf (renamed to gpio_nand_...) or mmio r/w
functions depending on driver configuration?

> > Otherwise your work on this driver is so amazing that I just spent
> > couple of hours finding that phone and compiling some decent userspace
> > for it :) Thank you!
> 
> I'm glad you like it :-)
> Janusz

Best regards,
	ladis

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
