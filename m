Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0921CCB18
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 14:31:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U+0NZ6qcu3ioT5GJBN5U6P2D6DHAR81iTPwNnkSYahs=; b=Qsa7K9T6XuvN4M
	4S4ou5uFaH/ptTQp1RgMMDan6zprddYdQsZvA9GSstpJTNWCHOq/F/A/CxPBkJzPNPFX9TqgV+to4
	gtjk9VNlCki3gir3pi1JD7URp0yeTwivmWUSP6YJZzUNsqv1S8B+5PQ9OjbQbnFxm7dY0cMx1EQll
	mMkGHvbwfsHF1KIdY3UqZnuZEtMhoia4t2YiNfJXMUTaFny2S9ngdXbxR3nnMsgO82XPNaEKig+0/
	z0BV8RUTiWPRjfSV9+9wPHQ8vunVZXTVW9ZBG9tbUlRQjDTyvs49keAGBH76RPByVSH+VUUlYwTCr
	5CNqJywit7K2bTh2ZbDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXl75-0005vU-5w; Sun, 10 May 2020 12:31:23 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXl6w-0005uI-IM
 for linux-mtd@lists.infradead.org; Sun, 10 May 2020 12:31:16 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id B31C9240003;
 Sun, 10 May 2020 12:31:10 +0000 (UTC)
Date: Sun, 10 May 2020 14:31:09 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH 1/2] MAINTAINERS: Remove Piotr Sroka and mark Cadence
 NFC as orphaned
Message-ID: <20200510143109.750b7ec0@xps13>
In-Reply-To: <0bb52429f245717698a2600da094a00977859c79.camel@perches.com>
References: <20200510122430.19105-1-miquel.raynal@bootlin.com>
 <0bb52429f245717698a2600da094a00977859c79.camel@perches.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_053114_739935_4C32F4CC 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.230 listed in wl.mailspike.net]
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
Cc: Richard Weinberger <richard@nod.at>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Joe Perches <joe@perches.com> wrote on Sun, 10 May 2020 05:30:02 -0700:

> On Sun, 2020-05-10 at 14:24 +0200, Miquel Raynal wrote:
> > Piotr's address is bouncing, remove him from MAINTAINERS and mark the
> > driver he was maintaining, Cadence's, as orphaned.
> > 
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >  MAINTAINERS | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> > 
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 1f2c83ead00b..fdd6e96a689b 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -3749,9 +3749,8 @@ F:	Documentation/devicetree/bindings/media/cdns,*.txt
> >  F:	drivers/media/platform/cadence/cdns-csi2*
> >  
> >  CADENCE NAND DRIVER
> > -M:	Piotr Sroka <piotrs@cadence.com>
> > +S:	Orphan
> >  L:	linux-mtd@lists.infradead.org
> > -S:	Maintained
> >  F:	Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt
> >  F:	drivers/mtd/nand/raw/cadence-nand-controller.c  
> 
> Please don't change the relative locations.
> L should still comes first, then S
> 

Ok

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
