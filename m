Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF691D198F
	for <lists+linux-mtd@lfdr.de>; Wed, 13 May 2020 17:35:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TK8+i68h1L9LALxkD6LeNLhn0DU7FGbIP6GRfed8x78=; b=obT7PvWpItN++y
	uYxHiuZyJsRNjwELaL4gTSUHUrQDLbeqG6CFlz3DmFDksYdfkvspxDZyqZpbllXVu1S3jd9PJDNAR
	R0nCSr9QCszpsgc4Xz6PHsLU20lb1jbxO0xip2eknxbGImp6RWy7dGYsk+npBt4n44fQpykmNzvaw
	8aWuEh7yV0ajVfGvVi3+6bZ5jIuLeYby/EHqAgn2XwbHhQ8m7mojj6bdDCNREsOC2Mkw8nhYEQMOh
	LXpc/8YN2oKDyXR812nc+A/Xk7Ag3LQIQiaS3IvxT8ZvdQfegpy72IUgjUO3yPEhReDohyfe+j8Yv
	Z81GtgqCdFQl2YetYYHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYtQB-00030W-8J; Wed, 13 May 2020 15:35:47 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYtQ3-000308-GL
 for linux-mtd@lists.infradead.org; Wed, 13 May 2020 15:35:40 +0000
IronPort-SDR: rqUf7qZwtAzAYarbIaPmvA1Uczj5Xlq6YUJ5tUgcJASmJ0/3czsfly5kF4bXORPs5fVXYTcCor
 P02+blOpU7AA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 08:35:34 -0700
IronPort-SDR: pwsSBjsRnOgLG5QqYs80dlDULprquX2PSgKG/EHmKfpyRIohKpac0bIFTaL7UdVNLpYT6sStsn
 HrChOT8l8rvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,388,1583222400"; d="scan'208";a="298401178"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga008.jf.intel.com with ESMTP; 13 May 2020 08:35:29 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@intel.com>)
 id 1jYtPw-006Rwo-39; Wed, 13 May 2020 18:35:32 +0300
Date: Wed, 13 May 2020 18:35:32 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
Subject: Re: [PATCH v6 2/2] mtd: rawnand: Add NAND controller support on
 Intel LGM SoC
Message-ID: <20200513153532.GT185537@smile.fi.intel.com>
References: <20200513104615.7905-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200513104615.7905-3-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200513153405.GS185537@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513153405.GS185537@smile.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_083539_573221_696217A1 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 anders.roxell@linaro.org, vigneshr@ti.com, arnd@arndb.de,
 hauke.mehrtens@intel.com, richard@nod.at, brendanhiggins@google.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-mips@vger.kernel.org,
 boris.brezillon@collabora.com, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com, tglx@linutronix.de, masonccyang@mxic.com.tw
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 06:34:05PM +0300, Andy Shevchenko wrote:
> On Wed, May 13, 2020 at 06:46:15PM +0800, Ramuthevar,Vadivel MuruganX wrote:

...

> > +static int ebu_nand_remove(struct platform_device *pdev)
> > +{
> > +	struct ebu_nand_controller *ebu_host = platform_get_drvdata(pdev);
> > +
> 
> > +	if (ebu_host) {
> 
> How it can be NULL here?
> 
> > +		mtd_device_unregister(nand_to_mtd(&ebu_host->chip));
> > +		nand_cleanup(&ebu_host->chip);
> > +		ebu_nand_disable(&ebu_host->chip);
> > +

> > +		if (ebu_host->dma_rx || ebu_host->dma_tx)

This is duplicate and thus redundant.

> > +			ebu_dma_cleanup(ebu_host);
> > +
> > +		clk_disable_unprepare(ebu_host->clk);
> > +	}
> > +
> > +	return 0;
> > +}

-- 
With Best Regards,
Andy Shevchenko



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
