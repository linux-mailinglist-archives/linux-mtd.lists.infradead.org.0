Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B345F1E792A
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 11:18:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v8JHqPHvpGvF3r/XsVkg65DmXyEAEIiINSbVXARhTXw=; b=Xe3gC3OQzZFYsO
	7Pv7g3wNDaNEV7GwK0sDsRBy1Lc5i+hOc4MmXhpi3QMar1eLi+ojmpeVWZDb3S0ngM2EcJC5mXH7v
	R81RBnxjMPVDRLtGCfnPG9I39f560631P2l22Ym2z/E49N6RmRNvRAZDAB03A0kA708WDZqGvA9XH
	UEk/WMMEPzcng9MUi2kk/wM+3GXnP7u1MLfjT6rnT0MNSx/z9nK9nkB9RFZ//n0wZcO1uofBhOef1
	fcux2uCooR7wH6u7iHDuo9ROFmHvUjVpOxgvdZTLCe27ZNaNbLWC6ac0BS1gK9axUhzBMS5FmppfL
	w64232aEw0TfKYSfUTdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeb9X-0001Fx-Sx; Fri, 29 May 2020 09:18:11 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeb97-00017L-94; Fri, 29 May 2020 09:17:46 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 59CD8200004;
 Fri, 29 May 2020 09:17:36 +0000 (UTC)
Date: Fri, 29 May 2020 11:17:35 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v7 17/20] mtd: rawnand: Hide the generic OOB layout
 objects behind helpers
Message-ID: <20200529111735.61f87c22@xps13>
In-Reply-To: <20200529104640.1997434f@collabora.com>
References: <20200529002517.3546-1-miquel.raynal@bootlin.com>
 <20200529002517.3546-18-miquel.raynal@bootlin.com>
 <20200529104548.0038bbe7@collabora.com>
 <20200529104640.1997434f@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_021745_455231_42FB83DB 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.232 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>, Weijie Gao <weijie.gao@mediatek.com>,
 Paul Cercueil <paul@crapouillou.net>, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, Chuanhong Guo <gch981213@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Boris Brezillon <boris.brezillon@collabora.com> wrote on Fri, 29 May
2020 10:46:40 +0200:

> On Fri, 29 May 2020 10:45:48 +0200
> Boris Brezillon <boris.brezillon@collabora.com> wrote:
> 
> > On Fri, 29 May 2020 02:25:14 +0200
> > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> >   
> > > +const struct mtd_ooblayout_ops *nand_get_large_page_layout(void)    
> > 
> > nand_get_large_page_ooblayout() (same for the other helpers).
> >   
> 
> And sorry if I got it wrong in my previous review :-/.

Haha, no pb ;)

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
