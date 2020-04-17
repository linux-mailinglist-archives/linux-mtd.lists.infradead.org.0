Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0540B1AE1D4
	for <lists+linux-mtd@lfdr.de>; Fri, 17 Apr 2020 18:08:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vd4tuxSkqqMiBMjjJhG3kJbMzpHCX8tasfdqKkybwBA=; b=i62bzriYAlB2Lz
	FdCodNZfOhldpjhpQt2XYnbVawYaXBuz7MDUMU7K8PIK9oQLFzeunsoSqegn9VHZkxzFrxfAemI/8
	ULVFhzj/ulXzQupQvxlgi37lmqM+jPnAlIRNV/YOJkeL6kBY9GulLPIrUWBzgqfkygNMMj8s7pYxF
	BpNXp5ubxWPyXMcCkUz1oyzbimlUD7vZ8TOQTJbUxDC8nynSmA/S3rB145p6s4N1dBt4NzdfJJcwV
	ErQo0F95GmQNU0OYQbnURpkRGFvay4ZyG1Rn1lYZ6vepwkQsmqt72lhdj6VwZziVyMdm7Cv3VH3Co
	jo3wyFzTwQa3BbfxKiMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPTWz-0003bT-6f; Fri, 17 Apr 2020 16:07:53 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPTWs-0003af-CD
 for linux-mtd@lists.infradead.org; Fri, 17 Apr 2020 16:07:47 +0000
IronPort-SDR: PS45Y+VmNvQHVPOe0VXpwz4vz9nxEb5HWznoWrEXTHLRim1pK32A48t2q5xR2UTfBOSpgT+S8D
 GkcIt9Q6LhEA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 09:07:41 -0700
IronPort-SDR: 1HQJvjnolJPKFAP62COZ9TMk7tX9XoyU6VSAa4A7mIedIlinFnA7I98Cnc8kxK0YKbxP0gp0PZ
 IYjUtkB9s9xA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="364367135"
Received: from lahna.fi.intel.com (HELO lahna) ([10.237.72.163])
 by fmsmga001.fm.intel.com with SMTP; 17 Apr 2020 09:07:37 -0700
Received: by lahna (sSMTP sendmail emulation); Fri, 17 Apr 2020 19:07:36 +0300
Date: Fri, 17 Apr 2020 19:07:36 +0300
From: Mika Westerberg <mika.westerberg@linux.intel.com>
To: "Ronald G. Minnich" <rminnich@gmail.com>
Subject: Re: [PATCH] mtd: spi-nor: controllers: intel-spi: Add support for
 command line partitions
Message-ID: <20200417160736.GE2586@lahna.fi.intel.com>
References: <20200417152613.176554-1-rminnich@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417152613.176554-1-rminnich@google.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_090746_436770_8B41A18C 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Boris Brezillon <bbrezillon@kernel.org>,
 Jethro Beekman <jethro@fortanix.com>, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Alexander Sverdlin <alexander.sverdlin@nokia.com>,
 "Ronald G. Minnich" <rminnich@google.com>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Apr 17, 2020 at 08:26:11AM -0700, Ronald G. Minnich wrote:
> On Intel platforms, the usable SPI area is located several
> MiB in from the start, to leave room for descriptors and
> the Management Engine binary. Further, not all the remaining
> space can be used, as the last 16 MiB contains firmware.
> 
> To make the SPI usable for mtdblock and other devices,
> it is necessary to enable command line partitions so the
> middle usable region can be specified.
> 
> Add a part_probes array which includes only "cmdelineparts",
> and change to mtd_device_parse_register to use this part_probes.
> 
> Signed-off-by: Ronald G. Minnich <rminnich@google.com>

Reviewed-by: Mika Westerberg <mika.westerberg@linux.intel.com>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
