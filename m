Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4711BAD02
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 20:41:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LmEfuT7VjkSyrwbv28Lqx/SNhAqDygE5sMusGxlPvls=; b=ZHhUkNTuLYUG0r
	FSMihpBe9UusYY+hZI0oADUfGgpW4EbRs2IouNG0RSUb35dzGvlZz4o/PZlLben2lps0F1E8RulRJ
	twoP4aK8Qn4jhy3iBjo9MZU/HC14kn63+kAphGyDdAerRSOAztxZZ991AuXMlOIzL3qGXopOYzxfw
	3hnKi+hPJYaPmbM4TIOlg5g59/eN7tHZ3N1vbW5HzgYui5kpvf2MXJEeNg0VvGCqZwVbwjZu015PM
	OWU0y7bZ0YLL2ADlWk9Dj+eTZYHSkwrBZbmSpwlc3pbNmO/FrbDzTgEMHfEwC1DJAyobpubBGhpfS
	8zBbbla8UCfEs3zyDS8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT8gx-00053O-Ue; Mon, 27 Apr 2020 18:41:19 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT8gZ-0004i0-91
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 18:40:56 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id F1D682A0DF3;
 Mon, 27 Apr 2020 19:40:53 +0100 (BST)
Date: Mon, 27 Apr 2020 20:40:51 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 9/9] mtd: rawnand: bcm47xx: Move the driver to
 drivers/mtd/nand/raw/
Message-ID: <20200427204051.5306ed33@collabora.com>
In-Reply-To: <20200427192417.112a69b4@xps13>
References: <20200419125140.1307309-1-boris.brezillon@collabora.com>
 <20200419125140.1307309-10-boris.brezillon@collabora.com>
 <20200427192417.112a69b4@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_114055_460308_878D7CD1 
X-CRM114-Status: GOOD (  19.33  )
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
 Richard Weinberger <richard@nod.at>, Boris Brezillon <bbrezillon@kernel.org>,
 linux-mtd@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 bcm-kernel-feedback-list@broadcom.com, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 27 Apr 2020 19:24:17 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Hi Boris,
> 
> Boris Brezillon <boris.brezillon@collabora.com> wrote on Sun, 19 Apr
> 2020 14:51:40 +0200:
> 
> > Now that we have a single we can move it to the directory where all
> > single source file drivers live.
> > 
> > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> > ---
> >  drivers/mtd/nand/raw/Makefile                            | 1 +
> >  drivers/mtd/nand/raw/{bcm47xxnflash => }/bcm47xxnflash.c | 0
> >  drivers/mtd/nand/raw/bcm47xxnflash/Makefile              | 2 --
> >  3 files changed, 1 insertion(+), 2 deletions(-)
> >  rename drivers/mtd/nand/raw/{bcm47xxnflash => }/bcm47xxnflash.c (100%)
> >  delete mode 100644 drivers/mtd/nand/raw/bcm47xxnflash/Makefile  
> 
> Here are two independent comments:
> 
> 1/ I think calling the file bcm47xxn-nand-controller.c would best fit
> todays policy.

Sure I can do that.

> 
> 2/ I am not sure there is an interest in doing the merge +
> move/rename in separate steps. It's always a pain to follow changes in
> a file with git blame when code get's moved around so I would prefer
> doing this in a single change, what do you think?

Great minds think alike: I was planning to merge those 2 patches in v2
;-). It's indeed not necessary to do it in 2 steps.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
