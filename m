Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 513B81E7C26
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 13:44:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YDj19qcjNo4KbHv0Gy36n0oOcU+aymXykhqS6R0CqwY=; b=CBzCIbf+cXCOEU
	ysJ4urJmP61YQBqJ5zHbY4X7WRGzl6dnfXaVuy8GSQk7EpoJoiR/zzfXSQEUQ+wt9B2H2srDPMRco
	n2RQ48JAzaK9KxRAF6JVWqUpvffhd8GY2Wmpa+FYec9k/XO8RPWGx6nTJ1kPGlz5lC6B4W4uK5XDW
	j9UfXrssHNj3ijhCGik9xPlZrIURX8KXiInNEx5b6mEX1tm49nHZeFa/eBrfoclDKcmS/GhwnXtXy
	STNFOLPMSodQLXPqKKg2CtJ6FM9BVrX5Nt0u2LeCHkJVE2y+LUUMTjlJJX05XU4aCgL4jdsbHjAyr
	szrjEU1crWlU7eNa34mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jedQj-0006FK-3d; Fri, 29 May 2020 11:44:05 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jedQc-0006Ej-MR
 for linux-mtd@lists.infradead.org; Fri, 29 May 2020 11:44:00 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 50B0A240005;
 Fri, 29 May 2020 11:43:55 +0000 (UTC)
Date: Fri, 29 May 2020 13:43:54 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v7 28/28] mtd: rawnand: Allocate the interface
 configurations dynamically
Message-ID: <20200529134354.02d79763@xps13>
In-Reply-To: <20200529134105.12d5fc3a@collabora.com>
References: <20200529111322.7184-1-miquel.raynal@bootlin.com>
 <20200529111322.7184-29-miquel.raynal@bootlin.com>
 <20200529133704.757ac63d@collabora.com>
 <20200529134105.12d5fc3a@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_044358_865260_93D12D93 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Richard Weinberger <richard@nod.at>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Boris Brezillon <boris.brezillon@collabora.com> wrote on Fri, 29 May
2020 13:41:05 +0200:

> On Fri, 29 May 2020 13:37:04 +0200
> Boris Brezillon <boris.brezillon@collabora.com> wrote:
> 
> > > +/* Default/reset data interface */
> > > +const struct nand_interface_config *nand_get_reset_interface(void);    
> > 
> > nand_get_reset_interface_config(), and I'm not sure you need to
> > expose that one. I'd expect it to be used only by the core.  
> 
> Just to be clear, I mean it should be defined in internal.h, not
> rawnand.h.

That's true, I'll change it.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
