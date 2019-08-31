Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DF7A451C
	for <lists+linux-mtd@lfdr.de>; Sat, 31 Aug 2019 17:44:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HeAoTomAgVolDXrLb0oTludfEVJnal6/ZqxoJpkqSKY=; b=EcFCzU4vWwQYqA
	kx7aIvoC1sjyqArU608B7UHnF7GLIJL1rML/v5wfDNlpvI3gp1dFTpIdjmZRuPRX/jsUgJUKUlz3F
	xHwDqZgqhfvhwlCmMIkO1wfZLx0Rc0dnR+iyMxThmdf0PHdl358QmzRU2RNZyj/acHpfSAy19vFzK
	QZ8DbpUDzKVxryPUKd1xP14uVsdRixK/9K3G9rPdZIVZBB50vW54xtxboPmgFf0AtwBBYwksxSQ9Z
	MJhVnqWWxpmfWwYjFiN5Yf3ieA8voqv9km+7L/OiZAV1I5ubps5HaQazXpoLfltC0f2M5c4jBP2he
	xqvuPXzrVAwJic7nLdlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i45YV-0006T5-Nn; Sat, 31 Aug 2019 15:44:47 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i45YM-0006Sj-Cz
 for linux-mtd@lists.infradead.org; Sat, 31 Aug 2019 15:44:39 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Aug 2019 08:44:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,451,1559545200"; d="scan'208";a="198257832"
Received: from lahna.fi.intel.com (HELO lahna) ([10.237.72.157])
 by fmsmga001.fm.intel.com with SMTP; 31 Aug 2019 08:44:33 -0700
Received: by lahna (sSMTP sendmail emulation); Sat, 31 Aug 2019 18:44:32 +0300
Date: Sat, 31 Aug 2019 18:44:32 +0300
From: Mika Westerberg <mika.westerberg@linux.intel.com>
To: Jethro Beekman <jethro@fortanix.com>
Subject: Re: [PATCH 2/2] mtd: spi-nor: intel-spi: add support for Intel
 Cannon Lake SPI flash
Message-ID: <20190831154432.GS3177@lahna.fi.intel.com>
References: <6cc18e41-82a6-942b-6d91-6297f73a33da@fortanix.com>
 <20190831133616.GQ3177@lahna.fi.intel.com>
 <74545c4c-a9fc-77c8-cb54-6fbf747f0eea@fortanix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <74545c4c-a9fc-77c8-cb54-6fbf747f0eea@fortanix.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_084438_485092_29BF49C1 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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

On Sat, Aug 31, 2019 at 03:29:21PM +0000, Jethro Beekman wrote:
> > > +		ispi->sregs = NULL;
> > > +		ispi->pregs = ispi->base + CNL_PR;
> > > +		ispi->nregions = CNL_FREG_NUM;
> > > +		ispi->pr_num = CNL_PR_NUM;
> > 
> > Does CNL really have a different number of PR and FR regions than the
> > previous generations?
> 
> I'm using this as a reference: https://www.intel.com/content/dam/www/public/us/en/documents/datasheets/300-series-chipset-pch-datasheet-vol-2.pdf
> . If you have more accurate information, please let me know.

No looks correct to me. I think it is a good idea to mention this in the
changelog, though.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
