Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED81A99E1
	for <lists+linux-mtd@lfdr.de>; Thu,  5 Sep 2019 07:00:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xr3P6zNJ3NtOm5LxAm6+FrJJ2IHx23wveRrwVS31WFk=; b=dXwvtnesV9sbCm
	SfpnT3qOjB4bu2w4Q1voJqKuxsOD5dKPgt2ZdAN8aQeH6l8i5gwPF1Ix1BofChsZyxIF8HQJ5Wp6E
	th7hrNb1hdWmQcNziNscWdt7Ymu+JADVdtBBePdUP4dDuMkyqKE9XisiYoj6QLOiHcO4r5s6zmzZv
	uPY9VizEUEOF00FtgpfqOYBx5x1eCtGIvTQdJPYNgynCCiUqD9It6EqQWZx+DVc2YaIk/LxlexykE
	Um8+vhhq4Rq5VG2m8KJJp/7npi7Lq66s/AEUR6iO3KbJ9LktiQc+f61Vy7NihpolGRjunZ+hB9tjz
	vA4wIoqrHayXkXPvF3dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5jsD-0000p1-RQ; Thu, 05 Sep 2019 04:59:58 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5jrv-0000Sx-N5
 for linux-mtd@lists.infradead.org; Thu, 05 Sep 2019 04:59:41 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 21:55:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,469,1559545200"; d="scan'208";a="199194458"
Received: from lahna.fi.intel.com (HELO lahna) ([10.237.72.157])
 by fmsmga001.fm.intel.com with SMTP; 04 Sep 2019 21:55:34 -0700
Received: by lahna (sSMTP sendmail emulation); Thu, 05 Sep 2019 07:55:33 +0300
Date: Thu, 5 Sep 2019 07:55:33 +0300
From: Mika Westerberg <mika.westerberg@linux.intel.com>
To: Jethro Beekman <jethro@fortanix.com>
Subject: Re: [PATCH v2 2/2] mtd: spi-nor: intel-spi: add support for Intel
 Cannon Lake SPI flash
Message-ID: <20190905045533.GS18521@lahna.fi.intel.com>
References: <d62dec18-fed4-7ac5-35c8-25f1be2201a9@fortanix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d62dec18-fed4-7ac5-35c8-25f1be2201a9@fortanix.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_215939_794288_D8018055 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Enrico Weigelt <info@metux.net>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, Sep 04, 2019 at 01:15:24AM +0000, Jethro Beekman wrote:
> Now that SPI flash controllers without a software sequencer are
> supported, it's trivial to add support for CNL and its PCI ID.
> 
> Values from https://www.intel.com/content/dam/www/public/us/en/documents/datasheets/300-series-chipset-pch-datasheet-vol-2.pdf
> 
> Signed-off-by: Jethro Beekman <jethro@fortanix.com>

Reviewed-by: Mika Westerberg <mika.westerberg@linux.intel.com>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
