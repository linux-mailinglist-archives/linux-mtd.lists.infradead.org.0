Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C031E70F0
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 01:56:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T0L2TgwdLSf1mMwrMtyBpWfzEmMYnNitsUXOQekaZJo=; b=Gaug/EhW4Pqkqg
	BTszPqeFZiy6XFuGRa3td8hUa76mYotepLF6M1nAYmCTnmuHlyj5aAiuRDQn7oi7pShNDnvQvqM+a
	L/klQQH4t8frAJzhsOg3Eum3YMbsElaNl1URTyc2mjcQM1V6AVm/8uXqTxGLziLRryXwzt9btFliE
	v7oVY0ygmKPL9/nAWhGQQ3HYP2hiSd5qvPKHv0jHSoqRp4B/jYNhgU9YhNY3wOC6+XW8OR0d7hr4g
	yxIzY/L32/yY5xUPGCMvH7Q+rLUWQd6eBRFIlYu9zJIPdQyRWEu1OHUHjiR03hCi709xWunuM6fFT
	7dRNRymt3vPlySN6coLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeSNM-00056E-Dl; Thu, 28 May 2020 23:55:52 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeSMx-0004t1-Of; Thu, 28 May 2020 23:55:29 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id ED71F20003;
 Thu, 28 May 2020 23:55:20 +0000 (UTC)
Date: Fri, 29 May 2020 01:55:19 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v6 18/18] mtd: rawnand: Move generic bits to the ECC
 framework
Message-ID: <20200529015519.14ee29be@xps13>
In-Reply-To: <20200528175656.0a32dd7c@collabora.com>
References: <20200528113113.9166-1-miquel.raynal@bootlin.com>
 <20200528113113.9166-19-miquel.raynal@bootlin.com>
 <20200528175656.0a32dd7c@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_165527_938319_43D7581D 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.200 listed in wl.mailspike.net]
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
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>, Weijie Gao <weijie.gao@mediatek.com>,
 Paul Cercueil <paul@crapouillou.net>, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, Chuanhong Guo <gch981213@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Boris Brezillon <boris.brezillon@collabora.com> wrote on Thu, 28 May
2020 17:56:56 +0200:

> On Thu, 28 May 2020 13:31:13 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > +/**
> > + * nanddev_get_flash_node() - Get the device node attached to a NAND device
> > + * @nand: NAND device
> > + *
> > + * Return: the device node linked to @nand.
> > + */
> > +static inline struct device_node *nanddev_get_flash_node(struct nand_device *nand)
> > +{
> > +	return mtd_get_of_node(nanddev_to_mtd(nand));
> > +}
> > +  
> 
> Can we name that one nanddev_get_of_node(). We'll probably want to
> expose fwnode at some point, and get_flash_node() is a bit too generic
> IMO.

I just spot that there is a nanddev_get_of_node() function already,
which does exactly the same as nanddev_get_flash_node(), so I just
dropped it.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
