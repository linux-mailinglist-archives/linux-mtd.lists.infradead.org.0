Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D636FF68C2
	for <lists+linux-mtd@lfdr.de>; Sun, 10 Nov 2019 12:39:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pRQfS79gYx/rwTo5MrAT16RdIc7m6dup/JBnbPJmn0g=; b=OJlfCWT8WfZ+hF
	RSzHQw5/myCAEIFfPIZ5XioVWMGp3e1r7sAnJsaWhXFd9D6U+0ETToyKdc2OJC1/GytmU0DkmXmXF
	GaYEzYHyv/sIxv8oG0nj2BpeRIBjo4kMXwNmsEqFiNZ0TGNrmZZZN+j+PGPLnLv75/z/gp6mv0Ucc
	mLg0bkFGkwvjpFWzNfRaybuaixdDnG4Q/UiQu+nAxrUU6qBmkPRLX49XP3KYg3aD1tgbFN6y+5J5X
	0AeuVOku2P94BpF8NfFlelS+xYr7P3PjIiuz0jbSqLZ6W9tOUeUCNS//kvc/Bn/r2YfOgOZ2f2Pe8
	X0vayOHeq2CCRvHoI4sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTlZD-0004bE-RK; Sun, 10 Nov 2019 11:39:39 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTlYy-0004a7-5X; Sun, 10 Nov 2019 11:39:25 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 716C828DA46;
 Sun, 10 Nov 2019 11:39:22 +0000 (GMT)
Date: Sun, 10 Nov 2019 12:39:19 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] mtd: rawnand: driver for Mediatek MT7621 SoC NAND flash
 controller
Message-ID: <20191110123919.5c998839@collabora.com>
In-Reply-To: <20191107084007.GA1203521@kroah.com>
References: <20191107073521.11413-1-gerg@kernel.org>
 <20191107084007.GA1203521@kroah.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_033924_340165_5AD04984 
X-CRM114-Status: GOOD (  22.61  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, gerg@kernel.org,
 linux-mtd@lists.infradead.org, neil@brown.name,
 linux-mediatek@lists.infradead.org, blogic@openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 7 Nov 2019 09:40:07 +0100
Greg KH <gregkh@linuxfoundation.org> wrote:

> On Thu, Nov 07, 2019 at 05:35:21PM +1000, gerg@kernel.org wrote:
> > From: Greg Ungerer <gerg@kernel.org>
> > 
> > Add a driver to support the NAND flash controller of the MediaTek MT7621
> > System-on-Chip device. (This one is the MIPS based parts from Mediatek).
> > 
> > This code is a re-working of the earlier patches for this hardware that
> > have been floating around the internet for years:
> > 
> > https://github.com/ReclaimYourPrivacy/cloak/blob/master/target/linux/ramips/patches-3.18/0045-mtd-add-mt7621-nand-support.patch
> > 
> > This is a much cleaned up version, put in staging to start with.
> > It does still have some problems, mainly that it still uses a lot of the
> > mtd raw nand legacy support.  
> 
> Is that an issue?

Well, yes that's an issue since we decided that all new drivers should
implement ->exec_op() instead of the legacy hooks. But that would be an
issue even if we were merging the driver in staging.

> Why not just put it in the "real" part of the kernel
> then, if those apis are still in use?
> 
> > The driver not only compiles, but it works well on the small range of
> > hardware platforms that it has been used on so far. I have been using
> > for quite a while now, cleaning up as I get time.
> > 
> > So... I am looking for comments on the best approach forward with this.
> > At least in staging it can get some more eyeballs going over it.  
> 
> staging will just nit-pick it to death for coding style issues, it's not
> going to be get any major api changes/cleanups there usually.  I'd
> recommend just merging this to the "real" part of the kernel now if it's
> working for you.

I agree on that point: we should merge this driver directly in the NAND
framework after it's been reworked to implement ->exec_op() instead of
the legacy hooks.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
