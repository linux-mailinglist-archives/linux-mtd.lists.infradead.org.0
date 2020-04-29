Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CA71BD748
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Apr 2020 10:29:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2zG/uwt8vsd94QFqH5NoZx65EUsQ6CrvIr2pmbsk+9E=; b=ftQqP3U8lbIu20
	pxF/+3OHxWv54DU2VkuZQfMEyPuIMNKieVAr2/mpqKO3lnlrwfLzxrCC/uDR/Kj9LnRBqW/20dUma
	IGdnCxpqdiEz4pH+MjzSLxyhLK4wvvWEg+vArPLnRFl0gRZ76gHWM2A0jNBbwwMribPw0dWMuZOnI
	6srTUwdH5IleuMDh1uQPnPgYRC2N/YiQiO7IWbv25stln9BecrDEp1UgNcTEkqHpR0iwT5O3XHYXR
	YYuc800XfOlnTwGmmSr25dVBwLJO5c+mdxBYp1sMAJ7BlmIVDAG30sJ4QOKR9D1awcIczcFfVKC8b
	WXlvgX6S+9j1CK4IVVog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTi5S-0005As-AE; Wed, 29 Apr 2020 08:28:58 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTi5G-0004vs-Ld
 for linux-mtd@lists.infradead.org; Wed, 29 Apr 2020 08:28:48 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 8D4542A2071;
 Wed, 29 Apr 2020 09:28:44 +0100 (BST)
Date: Wed, 29 Apr 2020 10:28:41 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 00/17] mtd: rawnand: cafe: Convert to exec_op() (and more)
Message-ID: <20200429102841.57acab4e@collabora.com>
In-Reply-To: <20200429083735.55a80097@windsurf.home>
References: <20200427082028.394719-1-boris.brezillon@collabora.com>
 <20200429083735.55a80097@windsurf.home>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_012846_850698_1EEF8217 
X-CRM114-Status: GOOD (  18.94  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Richard Weinberger <richard@nod.at>, Lubomir Rintel <lkundrak@v3.sk>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Thomas,

On Wed, 29 Apr 2020 08:37:35 +0200
Thomas Petazzoni <thomas.petazzoni@bootlin.com> wrote:

> Hello,
> 
> +Lubomir Rintel in Cc.
> 
> On Mon, 27 Apr 2020 10:20:10 +0200
> Boris Brezillon <boris.brezillon@collabora.com> wrote:
> 
> > A bit of context to explain the motivation behind those conversions
> > I've been sending for the last couple of weeks. The raw NAND subsystem
> > carries a lot of history which makes any rework not only painful, but
> > also subject to regressions which we only detect when someone dares to
> > update its kernel on one of those ancient HW. While carrying drivers
> > for old HW is not a problem per se, carrying ancient and unmaintained
> > drivers that are not converted to new APIs is a maintenance burden,
> > hence this massive conversion attempt I'm conducting here.
> > 
> > So here it is, a series converting the CAFE NAND controller driver to
> > exec_op(), plus a bunch of minor improvements done along the way.
> > I hope I'll find someone to test those changes, but if there's no one
> > still owning OLPC HW or no interest in keeping it supported in recent
> > kernel versions, we should definitely consider removing the driver
> > instead.  
> 
> Lubomir Rintel (in Cc) has very recently added defconfigs to Buildroot
> to support the two OLPC platforms (the Intel based one and the Marvell
> MMP based one). I suppose this means he has access to the hardware, so
> hopefully he should be able to test these NAND driver changes.

Oh, that's great news! Thanks a lot for letting me know.

Lubomir, let me know if you'd be okay to test those changes. I can
provide a branch if that's easier.

Regards,

Boris

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
