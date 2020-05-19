Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 948BB1D977D
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 15:18:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jG54TqwtW9ZD1GJWfj2rlpn2YIbcZOb/5kel9bNUxXM=; b=PVMg3fzJrCrm07
	QnMndPJYt+t/x0dCHlcciTaVGIU0HWSsf6jgze5g90/MKyiUKFLgpkPfkEPlxPxj2tlKiBhUwnsLP
	4HJI1oO0vWh7MtR9HusI0vgVe2WPb/KJUHca60nVPh1U+8Y+36xJJ5Kl+zaVZAx59IRx79Fepg+il
	qXTiWYK1NnBiGlA4UsRsyoc9Vvb6OiC0IpD0+KPBzxkxR7XBRkLBnD/UdMtv1tP5A9OwDA0WTnOO9
	UXPbPAG4X0JmTzJRVgXvlDHcKyY5nVjRWeICxOUGe5a69wCD2jVqvOiJRdc9/4k+jog6+5xzfBhv2
	xtXtCrfyX1eU3k3LReDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb28w-00080A-Ra; Tue, 19 May 2020 13:18:50 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb1wT-00006b-EN
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 13:05:59 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id D11FA240011;
 Tue, 19 May 2020 13:05:52 +0000 (UTC)
Date: Tue, 19 May 2020 15:05:51 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2] mtd: rawnand: micron: Adapt the PAGE READ flow to
 constraint controllers
Message-ID: <20200519150551.624cc4c4@xps13>
In-Reply-To: <20200519150157.7b668605@collabora.com>
References: <20200519123032.32547-1-miquel.raynal@bootlin.com>
 <20200519150157.7b668605@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_060557_623725_F31DD460 
X-CRM114-Status: GOOD (  17.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Michal Simek <monstr@monstr.eu>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Boris Brezillon <boris.brezillon@collabora.com> wrote on Tue, 19 May
2020 15:01:57 +0200:

> On Tue, 19 May 2020 14:30:32 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > There are controllers not able to just read data cycles on the
> > bus. There are controllers not able to do a change column.
> > 
> > If we want to support both, we need to check which operation is
> > supported first. This is the exact same mechanism that is in use for
> > parameter page reads (ONFI/JEDEC) as the same problem occurs.
> > 
> > Speed testing does not show any throughput penalty so we do not
> > optimize more than that. However it is likely that, in the future, a
> > more robust and exhaustive test will run at boot time to avoid
> > re-checking what is supported and what is not at every call.
> > 
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
> > ---
> > 
> > Changes in v2:
> > * Added a comment before each check which is a condensate of the
> >   commit message.  
> 
> I don't see those comments :P.

Do you think I forgot a "git add ."?...

Let me resend this one.


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
