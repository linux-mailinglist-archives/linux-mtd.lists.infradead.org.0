Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E86B36FE
	for <lists+linux-mtd@lfdr.de>; Mon, 16 Sep 2019 11:19:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tLPzInfSkWm2hUDNGvpHD3vNPTDcJjukHZznYhX1jVQ=; b=FPd4lZHXgv6wsd
	E3539/omFl/ylCubIQ/OMWCyNGF4Qxxgasvy/fsVi9RieP07XOxAKear3I33iDqSn0LehweBaYu/d
	cKrvYdoWhIB8qortax67WxNzi98YdRy6ZJzx+pkr1B5oSftV0vyjdFtBCaNztaookna1yYDHbauTa
	QXVbZRKfyWuS9vrHpW0ZIEVI8Hfmnbt84ibKC2d079hlshhhqCJ/i9GS8eaFNa5IRFag6BI03emTh
	hasuRbQYaX13qXbxqfOZG4PdTv80TFurgV7PJ14l6oHnEZPf4fuPPlAq4GQoc5wrR26sRxAqQJNOb
	uagFFDLBqTP7yrmjQvSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9nAX-0000i8-C9; Mon, 16 Sep 2019 09:19:37 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9nAM-0000hO-BA
 for linux-mtd@lists.infradead.org; Mon, 16 Sep 2019 09:19:27 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Sep 2019 02:19:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,512,1559545200"; d="scan'208";a="201562648"
Received: from lahna.fi.intel.com (HELO lahna) ([10.237.72.157])
 by fmsmga001.fm.intel.com with SMTP; 16 Sep 2019 02:19:21 -0700
Received: by lahna (sSMTP sendmail emulation); Mon, 16 Sep 2019 12:19:20 +0300
Date: Mon, 16 Sep 2019 12:19:20 +0300
From: Mika Westerberg <mika.westerberg@linux.intel.com>
To: Jethro Beekman <jethro@fortanix.com>
Subject: Re: [PATCH v2 1/2] mtd: spi-nor: intel-spi: support chips without
 software sequencer
Message-ID: <20190916091920.GS28281@lahna.fi.intel.com>
References: <69f4a8e8-7889-8b00-0adc-7faaef6b42e4@fortanix.com>
 <32ab6570-c3b7-4eec-7a0b-69bc2f7f76dc@fortanix.com>
 <20190916091157.GR28281@lahna.fi.intel.com>
 <e284a2a8-1d4c-2b57-642c-c91f39a5ee99@fortanix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e284a2a8-1d4c-2b57-642c-c91f39a5ee99@fortanix.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_021926_439290_F7AAECB1 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 09:12:50AM +0000, Jethro Beekman wrote:
> On 2019-09-16 11:11, Mika Westerberg wrote:
> > Hi,
> > 
> > On Sun, Sep 15, 2019 at 08:41:55PM +0000, Jethro Beekman wrote:
> >> Could someone please review this?
> >>
> >> On 2019-09-04 03:15, Jethro Beekman wrote:
> >>> Some flash controllers don't have a software sequencer. Avoid
> >>> configuring the register addresses for it, and double check
> >>> everywhere that its not accidentally trying to be used.
> > 
> > All the supported types in intel_spi_init() set ->sregs so I don't see
> > how we could end up calling functions with that not set properly. Which
> > controller we are talking about here? CNL?
> > 
> 
> Yes, see 2/2.

OK, thanks. Please mention that in the commit log as well.

The patch itself looks good to me.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
