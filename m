Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1310C195B65
	for <lists+linux-mtd@lfdr.de>; Fri, 27 Mar 2020 17:48:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3MSvSlolhWL354XQd8IVFCyrWpXmp46nIF6S6J7+vVk=; b=VnOhzSpV76wGP0
	QlVLX9mxK9NVMlynngif+Y4oqP4O7K5f4izQf16wnFGwU/uUoBzpOnZNv5tQEkyaYN01PWaKBwOkL
	yUicXL2Cf/PbFb19YuPbj+sFYHQYP0WcaE45x6TmcW7XcHg7qvBiMLJ6Kg/523kFknyyCjt4oIOT3
	teoJIDXT/72cVzwW/QIWmg6zZ7KxfyVkzMinCx+/yovTP4bSRTpM8VFLKl9QomSxtpPOuIOOCzVf/
	RlnnqwirO0Zn9Wox9dYvr2VPeiW0CkW3Y8ikXBrII6bRfYhuyEZryMj4pJ06TQ9yRqVVgrfKnBqLO
	JP0PjhYWzIVHtmBfcV5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHs9V-00021S-0W; Fri, 27 Mar 2020 16:48:13 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHs9O-00020y-IK
 for linux-mtd@lists.infradead.org; Fri, 27 Mar 2020 16:48:08 +0000
IronPort-SDR: 7pknkNuJYvJe9nwJe/7bgZUbav31Z8zbHjst2L34s8vmmYE6waPWuift7GDvleGIUHmxnM+HRS
 CZRUx/qt616Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2020 09:48:05 -0700
IronPort-SDR: Ircqv4hMcGfeKh+6+mqv0iV/yezZcq/SSiBW7VF4kSu53wUFvU32Ou2Cfr+xc65+d1LeEzJwoE
 2tpkTWUM6X3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,313,1580803200"; d="scan'208";a="358533357"
Received: from lahna.fi.intel.com (HELO lahna) ([10.237.72.163])
 by fmsmga001.fm.intel.com with SMTP; 27 Mar 2020 09:48:03 -0700
Received: by lahna (sSMTP sendmail emulation); Fri, 27 Mar 2020 18:48:02 +0200
Date: Fri, 27 Mar 2020 18:48:02 +0200
From: Mika Westerberg <mika.westerberg@linux.intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 1/1] mtd/intel-spi: Support cmdline-based partition
Message-ID: <20200327164802.GN2564@lahna.fi.intel.com>
References: <CAP6exYJ3xk46PODgT=5WAdiLDNY=9MggxyaEwov6qyDQstLj7g@mail.gmail.com>
 <CAP6exY+W+zTtEB1LmHYDnhEnPj26Y97Ld9TBAxsgX3vGDb4LnQ@mail.gmail.com>
 <CAP6exYKrAs_OpC_qkoW2cH0MxpqxDrgP2nhJGkp=2BX-6kAWbQ@mail.gmail.com>
 <CAP6exY+LQ4Cz3Wq3P=MP78HhHCovMYDfwhpVuASp17h3s2sgMw@mail.gmail.com>
 <CAP6exYJ_jzrB0D=RLXMNeegu4BwQq8raXVOMugkqzX2ZP_JSqw@mail.gmail.com>
 <20200327155608.GM2564@lahna.fi.intel.com>
 <20200327171907.7a7ffc73@xps13>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200327171907.7a7ffc73@xps13>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_094806_615341_883DC547 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: ron minnich <rminnich@gmail.com>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 05:19:07PM +0100, Miquel Raynal wrote:
> Hi Mika,
> 
> Mika Westerberg <mika.westerberg@linux.intel.com> wrote on Fri, 27 Mar
> 2020 17:56:08 +0200:
> 
> > Hi,
> > 
> > I don't think it is good idea to change PCI device name like that.
> > 
> > Instead the MTD cmdline parser should be teach to handle names like this
> > properly.
> 
> It is a bit more complicated than that since parsers have been using
> this syntax for a long time and, more importantly, it means
> potentially updating all bootloaders.
> 
> I am not against updating the parser, but the s/:/|/ solution proposed
> before is rather undescriptive and it is hard to find an alternative
> character that would have a meaning here.

I'm completely unfamiliar with these but would escape char work here? I
mean if you want ":" to be parsed literally then you pass "\:" in the
command line. That should work with the existing and also allow
supporting SPI NOR controllers on PCI bus.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
