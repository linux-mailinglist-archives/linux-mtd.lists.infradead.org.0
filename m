Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5211E3BA7
	for <lists+linux-mtd@lfdr.de>; Wed, 27 May 2020 10:14:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q8Q3kn0YtdSVACMQVvuG2FUPi/pju9PUp/8YSo4QRVg=; b=BKCZCFkQWU3x+4
	NhdpQJiM2+1FyB5sqKdrV6XGYwZQ+0En94DpHqBM+uo7polx4q/F3yyQSQvP2Gy8KtwV4zsSlIP+6
	TWnkkmnP3+uTWdk1ZbMUDmPJRTMGtnUBJmDtLzwfdmuyiTqiQrWFc85gzMEBvzRbqdkc0KYllMK7W
	BjWy6WeTySHwIhU7+/GdmZNzkwTDSrEjf4PwYVdG3HExORABkl4Q+/Qxmf0Gymxd+mOYLB8/dA0d1
	7a4zIndZsNfmzp64YOi9JnG6ymwEipy5b5ZFK5fVTonB9MD6fUyJJfesBryUa9GyTdmDELbhYp0KU
	lq/dyDLd5Zfkfebe+1RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdrD3-0003UU-5p; Wed, 27 May 2020 08:14:45 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdrCo-0003Ti-CM
 for linux-mtd@lists.infradead.org; Wed, 27 May 2020 08:14:31 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E91F72A0489;
 Wed, 27 May 2020 09:14:28 +0100 (BST)
Date: Wed, 27 May 2020 10:14:26 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v5 20/28] mtd: rawnand: Hide the chip->data_interface
 indirection
Message-ID: <20200527101426.04d84cb9@collabora.com>
In-Reply-To: <20200527093603.704c6891@xps13>
References: <20200526191725.7591-1-miquel.raynal@bootlin.com>
 <20200526191725.7591-21-miquel.raynal@bootlin.com>
 <20200526233620.44914f1f@collabora.com>
 <20200527093603.704c6891@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_011430_548003_367DD7E5 
X-CRM114-Status: GOOD (  19.99  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Rickard Andersson <rickaran@axis.com>, Richard Weinberger <richard@nod.at>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 27 May 2020 09:36:03 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Hi Boris,
> 
> Boris Brezillon <boris.brezillon@collabora.com> wrote on Tue, 26 May
> 2020 23:36:20 +0200:
> 
> > On Tue, 26 May 2020 21:17:17 +0200
> > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> >   
> > > As a preparation for allocating the data interface structure
> > > dynamically (and rename it), let's avoid calling it directly.
> > > 
> > > Instead, we operate a rename on an existing helper to reuse that name
> > > for another helper:
> > > * s/nand_get_sdr_timings/nand_extract_sdr_timings/    
> > >   -> this helper just extracts timings from a given data interface    
> > 
> > Hm, I'm not entirely happy with that name. In my mind extract means
> > that you had to do some transformation to get the data, which is not
> > the case here. How about nand_data_interface_get_sdr_timings()? 
> >   
> > > * nand_get_sdr_timings()    
> > >   -> this helper retrieves the in use timings from a nand_chip structure    
> > 
> > Do we really need that one? Can we do that in 2 steps instead?  
> 
> Yes I can do that in two steps, I didn't think it was needed but no pb.
> 
> > 
> > conf = nand_get_data_interface_config(chip);
> > sdr = nand_data_interface_get_sdr_timings(conf);  
> 
> I find the names too long. Do you think I can stick to
> nand_get_sdr_timings(conf) and nand_get_data_interface(chip)? These
> helpers are very often used at the start of a function and would
> definitely break systematically the 80 chars limit otherwise...

Could be nand_get_interface_config() (see my rename patch) and
nand_get_sdr_timings(), yes.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
