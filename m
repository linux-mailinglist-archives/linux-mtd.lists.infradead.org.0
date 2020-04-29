Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E373D1BE3EC
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Apr 2020 18:32:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qHU5RS3GbgjMZ1CEJ/HsQmv4pL9EYgZ3UENE4uNJkVY=; b=GQmRkuYgOAsfWp
	Pq4u0R3lkcoNhmOd5WCuFe+23eQUBwVT4Q73e2y3pnLxTrX/UjTSi+xWjB1OsR57BU+rgHmbYEXY4
	m5FAq79/p2gFfZt7jBIPjzjSjmwhClfvizKfYYtRJCiemuA7r82pJ2Wc9KlRygLjdXGb9X8HQwlE7
	eYUA1aVOFBaEmdFiNCd8h4Sf20JRyZwHrRSa26xKeBtfgRPF+5D8WK/PeX/WUxV7woDAIrE8igfjg
	v0TcltDt1k9ad3gkLaIGTE8iJU5y58OCuKEKnuPk+CN3yJrFVdGApIYWY6CQByp3aoBUXIotMcYzm
	5t9EQjpERwmXGMm4Rngw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTpdd-0001j2-Dv; Wed, 29 Apr 2020 16:32:45 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTpdV-0001he-10
 for linux-mtd@lists.infradead.org; Wed, 29 Apr 2020 16:32:38 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 1EC082A0AA3;
 Wed, 29 Apr 2020 17:32:35 +0100 (BST)
Date: Wed, 29 Apr 2020 18:32:31 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 03/11] mtd: rawnand: Rename a NAND chip option
Message-ID: <20200429183231.1a3607c1@collabora.com>
In-Reply-To: <20200429182200.4240303d@xps13>
References: <20200429155540.22048-1-miquel.raynal@bootlin.com>
 <20200429155540.22048-4-miquel.raynal@bootlin.com>
 <20200429180816.14f16be0@collabora.com>
 <20200429182200.4240303d@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_093237_200879_8E1819AD 
X-CRM114-Status: GOOD (  18.13  )
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
Cc: Michal Simek <monstr@monstr.eu>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 29 Apr 2020 18:22:00 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Hi Boris,
> 
> Boris Brezillon <boris.brezillon@collabora.com> wrote on Wed, 29 Apr
> 2020 18:08:16 +0200:
> 
> > On Wed, 29 Apr 2020 17:55:32 +0200
> > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> >   
> > > NAND controller drivers can set the NAND_USE_BOUNCE_BUFFER flag to a
> > > chip 'option' field. With this flag, the core is responsible of
> > > providing DMA-able buffers.
> > > 
> > > The current behavior is to not force the use of a bounce buffer when
> > > the core thinks this is not needed. So in the end the name is a bit
> > > misleading, because in theory we will always have a DMA buffer but in
> > > practice it will not always be a bounce buffer.
> > > 
> > > Rename this flag NAND_USE_DMA_BUFFER to be more accurate.    
> > 
> > I still think this one should be named NAND_CONTROLLER_USES_DMA.  
> 
> Actually I want to rework all the flags and prefix them with
> NAND_CONTROLLER, that's why I am keeping the NAND_ prefix. I can change
> the _USE_DMA_BUFFER into _USES_DMA though.

Ack on NAND_USES_DMA.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
