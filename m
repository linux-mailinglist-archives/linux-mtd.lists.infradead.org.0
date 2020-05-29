Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 772681E7C42
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 13:49:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vXXZN25F5yvJPgAJdU9HziXzy7UCNOFo8TKw1rmcniU=; b=fGhEj5VQ1W91jI
	zndmW0IfFcvFLUkzR/B/Vl5MJMpfx9p1sXQTI5hzIbmeXRVd04jmhUnHHw/H5m/BZH5gA2RP9mBE3
	79d0LLTFjMr3ROobz/Ky4BAovsHAt8pjsrnXpmvvJuVQoJQf+SNs7A+77nVwmdKTbJhaAf5SX7QeG
	6vs8yiXWgzrwczZ+t+pXYenWRNYpBLwZwWf/hAU0aZZp2TPgzreSLUdNpjupOIeqj+gIYK0/QGPv1
	gw5ce9qYf4qutE5OAmR6fVzRTksAmifGk+LmSUWAX0dPb1MpUtr/m77xouTwmeRNhm4RGxGewYo9v
	sbiFpvVC3dquny3dHN+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jedVp-00010B-Mx; Fri, 29 May 2020 11:49:21 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jedVj-0000zn-0j
 for linux-mtd@lists.infradead.org; Fri, 29 May 2020 11:49:16 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 7C0912A442C;
 Fri, 29 May 2020 12:49:13 +0100 (BST)
Date: Fri, 29 May 2020 13:49:10 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v7 28/28] mtd: rawnand: Allocate the interface
 configurations dynamically
Message-ID: <20200529134910.0eaae3fa@collabora.com>
In-Reply-To: <20200529134354.02d79763@xps13>
References: <20200529111322.7184-1-miquel.raynal@bootlin.com>
 <20200529111322.7184-29-miquel.raynal@bootlin.com>
 <20200529133704.757ac63d@collabora.com>
 <20200529134105.12d5fc3a@collabora.com>
 <20200529134354.02d79763@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_044915_188118_F020469C 
X-CRM114-Status: GOOD (  14.74  )
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
Cc: Michal Simek <monstr@monstr.eu>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 29 May 2020 13:43:54 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Boris Brezillon <boris.brezillon@collabora.com> wrote on Fri, 29 May
> 2020 13:41:05 +0200:
> 
> > On Fri, 29 May 2020 13:37:04 +0200
> > Boris Brezillon <boris.brezillon@collabora.com> wrote:
> >   
> > > > +/* Default/reset data interface */
> > > > +const struct nand_interface_config *nand_get_reset_interface(void);      
> > > 
> > > nand_get_reset_interface_config(), and I'm not sure you need to
> > > expose that one. I'd expect it to be used only by the core.    
> > 
> > Just to be clear, I mean it should be defined in internal.h, not
> > rawnand.h.  
> 
> That's true, I'll change it.

Once fixed you can add

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

and the series should be good to go.

Thanks for baring with me and my annoying comments :P.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
