Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC2C1AD976
	for <lists+linux-mtd@lfdr.de>; Fri, 17 Apr 2020 11:08:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YFo+jyXABnLxKjJDK+kSHzgeg7/vqK+rkXp5KkuDyb0=; b=kXTth4leINUQbn
	aX63fULjIlTWWM8WB/99cVkYmhk5WIYiSs8FcJLx3GldA3GMOyUEjALzpnVtBlh88Lrv+3B0zKJGl
	UqF2So0TQVEgi3nCzXwPNSc1SsLCQQ3Yov2I4P7ynJcvQVY56h8NPPwLBmN3CRtDGg7ik4IgO8D6F
	6vsODKEReg7jfQwAZpdYLIYFsj8YgXnX32wf5z0gbgiJzwPldmgfmhbORErrs8C9LU0YVHwGwVos3
	Fw05+pyVW+e+JSS7pF5+NrQZLf8vH7E5UxMFPwbeYpqcSp7TVO35L4VNtp43HCTA7TLguUO/b9KEA
	3V5HqHdLXUs33nGLuBxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPMys-0002Bc-VJ; Fri, 17 Apr 2020 09:08:14 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPMyk-0002BE-Uk
 for linux-mtd@lists.infradead.org; Fri, 17 Apr 2020 09:08:08 +0000
IronPort-SDR: LCOQJX2kL6mBQTsZ/70AdWStR+uwmF8NgR5ko1bWlLd+oSmkZtI/bR4VS678pWJ3tqkc3TKxK9
 Vz28YpFIKpxQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 02:08:05 -0700
IronPort-SDR: jvMrM+Wg0TzZleKwbmoq0OBHeWB9RDLsiHFsRIDtB3wYf3jYPSBKF26C//gewkVl9dNEOF8sqa
 jyluc0XR7GNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,394,1580803200"; d="scan'208";a="364275831"
Received: from lahna.fi.intel.com (HELO lahna) ([10.237.72.163])
 by fmsmga001.fm.intel.com with SMTP; 17 Apr 2020 02:08:00 -0700
Received: by lahna (sSMTP sendmail emulation); Fri, 17 Apr 2020 12:07:59 +0300
Date: Fri, 17 Apr 2020 12:07:59 +0300
From: Mika Westerberg <mika.westerberg@linux.intel.com>
To: "Ronald G. Minnich" <rminnich@gmail.com>
Subject: Re: [PATCH] mtd: spi-nor: add cmdlineparts to intel-spi
Message-ID: <20200417090759.GN2586@lahna.fi.intel.com>
References: <20200416162830.183725-1-rminnich@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416162830.183725-1-rminnich@google.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_020806_999327_4DDEB173 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 "Ronald G. Minnich" <rminnich@google.com>, Enrico Weigelt <info@metux.net>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 09:28:28AM -0700, Ronald G. Minnich wrote:
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

I guess the $subject should be something like:

  mtd: spi-nor: controllers: intel-spi: Add support for command line partitions

The patch itself looks good to me,

Reviewed-by: Mika Westerberg <mika.westerberg@linux.intel.com>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
