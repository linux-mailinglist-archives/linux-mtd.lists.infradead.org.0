Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FDBE1AFE95
	for <lists+linux-mtd@lfdr.de>; Mon, 20 Apr 2020 00:20:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2TsCEK4myVqZnsHsAI7xzJeLN5YBqFB+v9eKfoX39wU=; b=MdPCJrXx401HG+
	p5QJ5LBPFjMZOjq7IQbTNBb4Kjv1jDEekmyqclNkzkLtMSyUvYgGe048PE6kknbjl6S8LZNRBPJxL
	9l/UIo7sTiBHL9CAyAUdl7EOAif1Dc/cxH0Enirj9YBBTD6JJEu27mYQcp/As/A5DJilL/46cwvYN
	2NjGozPgVlLzB9LWqfr3MYRwwBAS7PWFh2aIidTJ5jHbrxw0TTFbl0HBN2qq0jBFAagvHe1Ieeoti
	rBK7OdM+/exQuM96uInFvIpqSyVQpMBiC3rR9x68KdkECXAz0pAs/tNDnW5x6OlyDRPQgdBVWFk7w
	glbehTIyDaxK7aFQpBYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQIJ0-0001Df-94; Sun, 19 Apr 2020 22:20:50 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQIIt-0001D6-0b
 for linux-mtd@lists.infradead.org; Sun, 19 Apr 2020 22:20:44 +0000
IronPort-SDR: PVDzgcb415dyePt6HsOMfVJgZjJhl6qAXuXfowFCUONOUY2s1oMnpLZfhpnyYQ4aHSwDqt0Bfi
 /b/cVQXs0gkA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2020 15:20:42 -0700
IronPort-SDR: iMyrqd0w9kkDgNJOqMuBhbWjtqKbPncMEvlvXXKhv/G3fplHyqe9BIQAcCQusETU+x7wl+zSaq
 U4QSkck0WrNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,404,1580803200"; d="scan'208";a="246747551"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga008.fm.intel.com with ESMTP; 19 Apr 2020 15:20:38 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@intel.com>)
 id 1jQIIq-001v70-5G; Mon, 20 Apr 2020 01:20:40 +0300
Date: Mon, 20 Apr 2020 01:20:40 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2 2/2] mtd: rawnand: Add NAND controller support on
 Intel LGM SoC
Message-ID: <20200419222040.GJ185537@smile.fi.intel.com>
References: <20200417082147.43384-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200417082147.43384-3-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200418105533.477ce529@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200418105533.477ce529@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_152043_065926_2F33356C 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>,
 robh+dt@kernel.org, linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 tglx@linutronix.de, masonccyang@mxic.com.tw, piotrs@cadence.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sat, Apr 18, 2020 at 10:55:33AM +0200, Boris Brezillon wrote:
> On Fri, 17 Apr 2020 16:21:47 +0800
> "Ramuthevar,Vadivel MuruganX"
> <vadivel.muruganx.ramuthevar@linux.intel.com> wrote:
> 
> > From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>

> > +static const struct of_device_id lgm_nand_match[] = {
> > +	{ .compatible = "intel,lgm-nand", },
> > +	{}
> > +};
> > +MODULE_DEVICE_TABLE(of, lgm_nand_match);
> 
> You probably have a missing "depends on OF" in your Kconfig.

Since it's using device property API, dependency is not needed.

-- 
With Best Regards,
Andy Shevchenko



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
