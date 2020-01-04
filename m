Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 361D9130464
	for <lists+linux-mtd@lfdr.de>; Sat,  4 Jan 2020 21:29:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aF44AxwsCZlr/TV1qsY4chqRz3D5ayi4oe7I9UjLkVQ=; b=rIX08Vh5jP+xoE
	vJtrjTbrzLk4YQ5QIC74L8L6j4QufGL8zV8tntPrZeXFDwux1gm0Hkngi+UIDKkKqXw8hx2m5Uo7l
	6Jcs59yvM84T23zgpVbfSButid0XhVvlAsFlXh0OPu2PHPXlXtYVTna9bB85tkQYf/OqGdrk8dXcA
	pGnZWDfzqt7E3HAe3hAHSzXv3Gz+3u2z7dtJ8OQkr5Kp0RNPTGR4qP6WVbK0Enl2okCVqyoZugxMZ
	cXP6Qr6Nbmfrhghlrciw96E2iglABTid1eUHUh4cnUmADY6HIPRgmIVyOT/Ft5kHr+wKpqrLqX+6l
	rMfYOP609jacOvDjOp0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inq2u-0008S1-Bi; Sat, 04 Jan 2020 20:29:16 +0000
Received: from fgw23-4.mail.saunalahti.fi ([62.142.5.110])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inq2m-0008R3-Dj
 for linux-mtd@lists.infradead.org; Sat, 04 Jan 2020 20:29:10 +0000
Received: from darkstar.musicnaut.iki.fi (85-76-82-2-nat.elisa-mobile.fi
 [85.76.82.2]) by fgw23.mail.saunalahti.fi (Halon) with ESMTP
 id d7f39843-2f30-11ea-90c5-005056bdfda7;
 Sat, 04 Jan 2020 22:29:02 +0200 (EET)
Date: Sat, 4 Jan 2020 22:29:01 +0200
From: Aaro Koskinen <aaro.koskinen@iki.fi>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH] mtd: onenand: omap2: Pass correct flags for
 prep_dma_memcpy
Message-ID: <20200104202901.GI15023@darkstar.musicnaut.iki.fi>
References: <20200104073453.16077-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200104073453.16077-1-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_122908_630952_C6675B69 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [62.142.5.110 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [62.142.5.110 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: vigneshr@ti.com, tony@atomide.com, hns@goldelico.com,
 linux-kernel@vger.kernel.org, kyungmin.park@samsung.com,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 linux-omap@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

On Sat, Jan 04, 2020 at 09:34:53AM +0200, Peter Ujfalusi wrote:
> The commit converting the driver to DMAengine was missing the flags for
> the memcpy prepare call.
> It went unnoticed since the omap-dma drive was ignoring them.
> 
> Fixes: 3ed6a4d1de2c5 (" mtd: onenand: omap2: Convert to use dmaengine for memcp")
> Reported-by: Aaro Koskinen <aaro.koskinen@iki.fi>
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---
> Hi,
> 
> Aaro reported [1] a failure on omap2-onenand pointing to
> 4689d35c765c696bdf0535486a990038b242a26b. It looks like the root cause is the
> conversion of omap2-onenand to DMAengine which missed the flags.
> 
> Basically the client is waiting for a callback without asking for it. This
> certainly causes timeout.
> 
> I have not tested the patch, but it should fix the issue.

This fixes the issue on Nokia boards.

Tested-by: Aaro Koskinen <aaro.koskinen@iki.fi>

Thanks,

A.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
