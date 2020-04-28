Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BD31BB995
	for <lists+linux-mtd@lfdr.de>; Tue, 28 Apr 2020 11:12:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+RjGmeCxy7uwxE3M4H87I8PSS0bKHBZknkZ5+Cial8=; b=UKnlXsahQTzGkv
	1tPWpC2mejowT2VVwXT94XWDvZ2vp4gpa611jSagQQEvCq8sLK3UFqcDKMVC56ye397SjAAJWO6Ls
	eY/XYS9m6h1eX/ljHOTuAba++YROpcUJ9zokwidSfPX2dwc1tO4iATRSBc5SsBvnQdx/381Dq5ru6
	0D9P8Mco1rMY+rg5kWsxix7K+qi+f6rVodDrwNC/lgCLBgLLJGyR6/8Cxh491EpqTm36RoRudeaN7
	iJb5w40MzvVWHcI/ik3C9IjObZQ0nMjc/CGOcos5rjSq+RkGNaYfognnJgsAijB/5jEx2oznd6DYH
	1MYDu+Au8f3lShJ2YfOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTMHi-0001l9-Ku; Tue, 28 Apr 2020 09:12:10 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTMHX-0001jn-Eg
 for linux-mtd@lists.infradead.org; Tue, 28 Apr 2020 09:12:00 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 207EA2A13F1;
 Tue, 28 Apr 2020 10:11:58 +0100 (BST)
Date: Tue, 28 Apr 2020 11:11:55 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 05/10] mtd: rawnand: Rename the use_bufpoi variables
Message-ID: <20200428111155.57b6c43d@collabora.com>
In-Reply-To: <20200428110501.2caafbd9@xps13>
References: <20200424173631.14311-1-miquel.raynal@bootlin.com>
 <20200424173631.14311-6-miquel.raynal@bootlin.com>
 <20200425104440.5a3144fe@collabora.com>
 <20200428110501.2caafbd9@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_021159_663723_E8876986 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Michal Simek <monstr@monstr.eu>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 28 Apr 2020 11:05:01 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Hi Boris,
> 
> Boris Brezillon <boris.brezillon@collabora.com> wrote on Sat, 25 Apr
> 2020 10:44:40 +0200:
> 
> > On Fri, 24 Apr 2020 19:36:26 +0200
> > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> >   
> > > Both in nand_do_read_ops() and nand_do_write_ops() there is a boolean
> > > called use_bufpoi which is set to true in case of unaligned request or
> > > when there is a need for a DMA-able buffer. It basically means "use a
> > > bounce buffer".
> > > 
> > > Depending on the value of use_bufpoi, the bufpoi variable is always
> > > used and will either point to the original buffer or to the nand_chip
> > > structure "internal data buffer" (this buffer is allocated with
> > > kmalloc() on purpose so that it will be DMA-compliant).
> > > 
> > > In all cases bufpoi is used so the boolean name is misleading. Rename
> > > use_bufpoi to be use_bouce_buf to be more accurate.
> > > 
> > > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>    
> > 
> > Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
> > 
> > I wonder if we shouldn't find a better name for bufpoi too. Not sure
> > what the poi means here (pointer?). So maybe just rename those into
> > read_buf, write_buf (since buf seems to be declared already).  
> 
> My first patch also renamed bufpoi.
> 
> Actually I read it like "buf pointer" and it makes sense and is used
> all across nand_base.c so I decided to let it as-is for now.

Fair enough.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
