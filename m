Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D0F1BE6B8
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Apr 2020 20:56:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6GMkmruJoiyYthFJsB0Y0Ure27H/rfFyP53M5Xs/t5s=; b=YftG8I8MQh0qiT
	pKTSPBEpgivyKaWlPczgTdhjFqn3t0JdkBGvn+3rGvkXq12iDVaHxTJAOcEeXPZUVSMUVMABci0o6
	8seXoUc1gg9hPZnm3DEmyfaI2IGTWMPBTWpBXeZkCDAX4a0W6TcofG9gyBSm0bcek0Rw3TJub75Kc
	fhCZrnEwVVzgsNl7ECZKJqIppQwrEzgmfpB/Rd//zSmgPDJK+fN22aUGmwPbvlpNG8hfGEuWQ4JBu
	uTpDRhVp/bMyeSS5PO430qg2Oyr6shna5OEHaoHP/0EKZpDjRbzBuTAuaKuRLk+zCBgr5EYqkd/n0
	PGdTeIFwOhbI3oITCXuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTrsS-0003GX-8D; Wed, 29 Apr 2020 18:56:12 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTrsI-0003FS-QD
 for linux-mtd@lists.infradead.org; Wed, 29 Apr 2020 18:56:04 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 1CE12260990;
 Wed, 29 Apr 2020 19:56:01 +0100 (BST)
Date: Wed, 29 Apr 2020 20:55:58 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 03/11] mtd: rawnand: Rename a NAND chip option
Message-ID: <20200429205558.1badef78@collabora.com>
In-Reply-To: <20200429185459.0ce5fc21@xps13>
References: <20200429155540.22048-1-miquel.raynal@bootlin.com>
 <20200429155540.22048-4-miquel.raynal@bootlin.com>
 <20200429180816.14f16be0@collabora.com>
 <20200429182200.4240303d@xps13>
 <20200429183231.1a3607c1@collabora.com>
 <20200429183642.15e62ae5@collabora.com>
 <20200429185459.0ce5fc21@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_115602_976867_E2422565 
X-CRM114-Status: GOOD (  23.78  )
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

On Wed, 29 Apr 2020 18:54:59 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Boris Brezillon <boris.brezillon@collabora.com> wrote on Wed, 29 Apr
> 2020 18:36:42 +0200:
> 
> > On Wed, 29 Apr 2020 18:32:31 +0200
> > Boris Brezillon <boris.brezillon@collabora.com> wrote:
> >   
> > > On Wed, 29 Apr 2020 18:22:00 +0200
> > > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> > >     
> > > > Hi Boris,
> > > > 
> > > > Boris Brezillon <boris.brezillon@collabora.com> wrote on Wed, 29 Apr
> > > > 2020 18:08:16 +0200:
> > > >       
> > > > > On Wed, 29 Apr 2020 17:55:32 +0200
> > > > > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> > > > >         
> > > > > > NAND controller drivers can set the NAND_USE_BOUNCE_BUFFER flag to a
> > > > > > chip 'option' field. With this flag, the core is responsible of
> > > > > > providing DMA-able buffers.
> > > > > > 
> > > > > > The current behavior is to not force the use of a bounce buffer when
> > > > > > the core thinks this is not needed. So in the end the name is a bit
> > > > > > misleading, because in theory we will always have a DMA buffer but in
> > > > > > practice it will not always be a bounce buffer.
> > > > > > 
> > > > > > Rename this flag NAND_USE_DMA_BUFFER to be more accurate.          
> > > > > 
> > > > > I still think this one should be named NAND_CONTROLLER_USES_DMA.        
> > > > 
> > > > Actually I want to rework all the flags and prefix them with
> > > > NAND_CONTROLLER, that's why I am keeping the NAND_ prefix. I can change
> > > > the _USE_DMA_BUFFER into _USES_DMA though.      
> > > 
> > > Ack on NAND_USES_DMA.    
> > 
> > But then I wonder if it's really worth renaming this field now if you
> > plan to rename it again later :-).  
> 
> Hehe, well, it "fixes" the meaning of the flag, later changes will only
> be "cosmetic" :)
> 
> Saying we "use a bounce buffer" is not accurate as the code first checks
> if the buffer is compliant with DMA constraints, and uses a bounce
> buffer only if it is not.

I'm not questioning the need to fix the macro name, just the need to do
it twice. Anyway, it's not a big deal if you think it's necessary to do
it in 2 steps.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
