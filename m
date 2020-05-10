Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5121CC977
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 10:36:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W8Id1Ol5rZbqeJQyBu6gdcUd3VvRVqKdHpBITIFdUrU=; b=L0bVf9Ydw2C74A
	yIIB9ymqH1oPzdKfY9QWDYUQYK1KoqBZaNgck3NZaMUJ55wn/DKjtglHgjajtAGSS4WDsMGwXRsYo
	2Pj4U8bTV+aogwl1BqauV/un/icxzyHWfbka+2yzUbuHaBZZLjhRDnCAUWEBqtbj5a7LD1M8X2tfG
	iMJHV5fd0GIL0RqqVfJkmzWZTdBE7o+b9WAxfHtporcKwFJcKzsHMZjBn05HFWnaxd15J3u7/a3lo
	6fxCCZzmaRClwhVezjhcr4cR7lNj0nXSjS7WlHpCYcvVCxBGGBDce1RvSigQtO4AdwlGJ1WhX8NYL
	VqhWb4j32c+nKcBhvwLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXhRR-0000kP-5O; Sun, 10 May 2020 08:36:09 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXhRB-0000g5-Py
 for linux-mtd@lists.infradead.org; Sun, 10 May 2020 08:35:55 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 16C74FF802;
 Sun, 10 May 2020 08:35:48 +0000 (UTC)
Date: Sun, 10 May 2020 10:35:47 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v4 7/8] mtd: rawnand: arasan: Add new Arasan NAND
 controller
Message-ID: <20200510103547.7399eba3@xps13>
In-Reply-To: <20200510090230.1ba6f6d7@collabora.com>
References: <20200508171339.8052-1-miquel.raynal@bootlin.com>
 <20200508171339.8052-8-miquel.raynal@bootlin.com>
 <20200510090230.1ba6f6d7@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_013553_981220_66B18E16 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.199 listed in wl.mailspike.net]
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

Boris Brezillon <boris.brezillon@collabora.com> wrote on Sun, 10 May
2020 09:02:30 +0200:

> On Fri,  8 May 2020 19:13:38 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > +static int anfc_len_to_steps(struct nand_chip *chip, unsigned int len)
> > +{
> > +	unsigned int steps = 1, pktsize = len;
> > +
> > +	while (pktsize > ANFC_MAX_PKT_SIZE) {
> > +		steps *= 2;
> > +		pktsize = DIV_ROUND_UP(len, steps);
> > +	}  
> 
> 
> Same here, you shouldn't have a round_up() but instead complain if
> "len != pkt_size * steps"
> 
> 	if (len % 4)
> 		return -ENOTSUPP;

This is not possible, we need unaligned accesses for NAND detection.

> 
> 	if (len < ANFC_MAX_PKT_SIZE)
> 		return len;
> 
> 	for (steps = 2; steps < ANFC_MAX_STEPS; steps *= 2) {
> 		pkt_size = len / steps;
> 		if (pkt_size <= ANFC_MAX_PKT_SIZE)
> 			break;
> 	}
> 
> 	if (pkt_size * steps != len)
> 		return -ENOTSUPP;
> 
> 	return pkt_size;

The rest looks fine, I will change it and also add these checks in
->exec_op() check_nonly path.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
