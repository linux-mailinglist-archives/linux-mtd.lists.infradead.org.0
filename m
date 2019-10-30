Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A8AE981B
	for <lists+linux-mtd@lfdr.de>; Wed, 30 Oct 2019 09:26:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pf9ucW3Njpre3iZW0X0nVJ1CiMEy/nNSH5bxnY9+uMk=; b=Khdak1CTEi2awh
	aj9MbP8EYN0XY/DTu1eaXr7nFuGbGAu1KFiDSFUspARVQ1YVCdeopOdUqjC1xYYVMZzMMYZ0TIzTO
	t3fsv8vFnU4kgcQUjaywR/HiUK15si3bOOf+T9TGs0t/qldbgX1iGd27KdThektMQL2ccct7ywHjW
	SydmnMTFeDr374WuLhwChrqVLhsrrwhQIM8RHmskWOc4nWwHi+KeNvhF3W3eFIqjReAXEOa0aIKXh
	0F7nlMZ+v/1+upfxnG+U1G1f0shbqHrqztiSl2cVe6F5HGOAiUxPW0xhIcjsJVTasL7/3yNOegsK6
	aM0jhXWFNOo0W1RRivUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPjJA-0005KZ-4c; Wed, 30 Oct 2019 08:26:24 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPjIJ-0004c9-72
 for linux-mtd@lists.infradead.org; Wed, 30 Oct 2019 08:25:32 +0000
Received: from localhost.localdomain (67.173.185.81.rev.sfr.net
 [81.185.173.67]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id C790220000D;
 Wed, 30 Oct 2019 08:25:28 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>, Richard Weinberger <richard@nod.at>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH 2/2 v4] mtd: physmap_of: add a hook for Intel IXP4xx flash
 probing
Date: Wed, 30 Oct 2019 09:25:27 +0100
Message-Id: <20191030082527.12898-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191020230042.7364-2-linus.walleij@linaro.org>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 2aba2f2a704d368583e832555b25d88265e62b6d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_012531_401151_05A87E02 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.232 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sun, 2019-10-20 at 23:00:42 UTC, Linus Walleij wrote:
> In order to support device tree probing of IXP4xx NOR flash
> chips, a certain big-endian or mixed-endian memory access
> pattern need to be used.
> 
> I have opted to use the pattern set by previous plug-ins
> to physmap for Gemini and Versatile, just override some
> functions and reuse most of the physmap core code as it
> is to minimize maintenance.
> 
> Parts of drivers/mtd/ixp4xx.c are copied into this file.
> 
> After we have IXP4xx converted fully to device tree, the
> drivers/mtd/ixp4xx.c file will be deleted and this will
> be the only access pattern to the IXP4xx flash.
> 
> I did not keep the quirk in the flash write function
> after probe, where the old code for a while checks for
> access to odd addresses, fails and assigns a "faster"
> write function once it has convinced probe to only use
> 2-byte accesses. As we mandate that this device should
> be using bank-width = <2> this should not be a problem
> unless misconfigured.
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
