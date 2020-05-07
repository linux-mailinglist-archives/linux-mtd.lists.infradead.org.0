Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F8B1C9584
	for <lists+linux-mtd@lfdr.de>; Thu,  7 May 2020 17:53:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5cVw2TEanieDbo0BkRS6c6yTjFUtFuzQU8ZJg1o4Htg=; b=Y37yt3v5SYw8ki
	RCLgwWVtXgqVsy/HFbxB0J2GSlxz5nFXpRtl7BggyBeAOPp6SbvSL9QnokhWAcqGUn51/YtAblCs+
	uba1frcCUGjw6KWyLW8elWcHHYYvbXGjp04K5jmlp6/rqJAxdO+gYvsHwxKqh5jspHXr7lqZxJtRh
	XOUOwwKpnu/KDpe69fAimhd+DyGh4lhbyYbkUJpe7B34SsiM8SZ+1X1MlCQ5bphxiu8a1qlNlONIK
	Ff9ksLj64RlX6u6+XqSHreB6QKcXw3yhF+2kqr0C+NUr+NrK6T607T0fOJlIXdjJsGtTm2LKSlwLp
	g1j/0p7cIrEQ/MdmzRxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWipo-0007CE-Ma; Thu, 07 May 2020 15:53:16 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWiph-0007BO-JB
 for linux-mtd@lists.infradead.org; Thu, 07 May 2020 15:53:11 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 48DF8240007;
 Thu,  7 May 2020 15:53:03 +0000 (UTC)
Date: Thu, 7 May 2020 17:53:01 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v3 7/8] mtd: rawnand: arasan: Add new Arasan NAND
 controller
Message-ID: <20200507175301.7affb8f7@xps13>
In-Reply-To: <20200507172453.15a03574@collabora.com>
References: <20200507110034.14736-1-miquel.raynal@bootlin.com>
 <20200507110034.14736-8-miquel.raynal@bootlin.com>
 <20200507141103.0c241877@collabora.com>
 <20200507171311.7669d0db@xps13>
 <20200507172453.15a03574@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_085309_770429_21FE02C2 
X-CRM114-Status: GOOD (  14.65  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Michal Simek <monstr@monstr.eu>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Boris,

Boris Brezillon <boris.brezillon@collabora.com> wrote on Thu, 7 May
2020 17:24:53 +0200:

> On Thu, 7 May 2020 17:13:11 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > Hi Boris,
> > 
> > Boris Brezillon <boris.brezillon@collabora.com> wrote on Thu, 7 May
> > 2020 14:11:03 +0200:
> >   
> > > On Thu,  7 May 2020 13:00:33 +0200
> > > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> > > 
> > >     
> > > > +
> > > > +static void anfc_chips_cleanup(struct arasan_nfc *nfc)
> > > > +{
> > > > +	struct anand *anand, *tmp;
> > > > +
> > > > +	list_for_each_entry_safe(anand, tmp, &nfc->chips, node) {
> > > > +		nand_release(&anand->chip);      
> > > 
> > > 		ret = mtd_device_unregister(nand_to_mtd(&anand->chip));
> > > 		WARN_ON(ret);
> > > 		nand_cleanup(&anand->chip);
> > > 
> > > Or maybe add this WARN_ON() to nand_release() so we don't have to ask
> > > people to use mtd_device_unregister() + nand_cleanup().    
> > 
> > I don't get your point here? I'm not against adding a warn_on between
> > both functions but it's not related to this driver?  
> 
> We've asked people to not call nand_release() but instead call
> mtd_device_unregister()+nand_cleanup(), which is not done here. My
> point is, if even us can't get it right, maybe it's a sign we should
> instead patch nand_release() to do the right thing.

It's in my todo-list, yes. What about just dropping nand_release
entirely? So that nand_scan_tail as its nand cleanup and
mtd_device_register as its mtd_device_unregister and everything will be
much clearer?


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
