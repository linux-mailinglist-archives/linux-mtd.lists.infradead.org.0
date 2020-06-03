Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8891ED198
	for <lists+linux-mtd@lfdr.de>; Wed,  3 Jun 2020 15:59:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08dP4mKaAFFfFp4QkgoI97tW3Dix17q5DvZ+zPqWIzo=; b=IQTrcHt43tyBr8
	p9eGwASyBPWFPUqVBMMdhdSTfx1KosrMkCwSnTEVt3Uje/I+oTXlTjDTdsdDgJ173qEoZYhmiO2rj
	KlB+xX6USPM8l/8+R0qOkv+bRtT+G97zKshGNM5ThKGxhxwS8uRKqNmC/v0K+j8XY0EChBU5TJ7q6
	nqOt4qFXF/NafD/I9NHfK8jGk+FwV0UocDzyWD5fRGUVW+2Cv8u7OuZNLuHnBqM+TUbdMZUI90nLa
	5KZQE4B61Fb9tC7GwgQD6bLhzKaYpn3eYbRbii50UkJLQVXGpJUGWJM0gjHcmz69nvCQuTkSu4Urb
	XAlBrf2motCModY1Adzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgTvU-0003nV-JJ; Wed, 03 Jun 2020 13:59:28 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgTvJ-0003mz-DY
 for linux-mtd@lists.infradead.org; Wed, 03 Jun 2020 13:59:19 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 0A803200009;
 Wed,  3 Jun 2020 13:59:09 +0000 (UTC)
Date: Wed, 3 Jun 2020 15:59:08 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 06/10] mtd: rawnand: fsl_upm: Use gpio descriptors
Message-ID: <20200603155908.0d60607e@xps13>
In-Reply-To: <20200603134922.1352340-7-boris.brezillon@collabora.com>
References: <20200603134922.1352340-1-boris.brezillon@collabora.com>
 <20200603134922.1352340-7-boris.brezillon@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_065917_884995_0DB39A37 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.232 listed in wl.mailspike.net]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Anton Vorontsov <anton@enomsg.org>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Boris Brezillon <boris.brezillon@collabora.com> wrote on Wed,  3 Jun
2020 15:49:18 +0200:

> The integer-based GPIO ids are now deprecated in favor of the GPIO desc
> API. The PPC platforms have already been converted to GPIOLIB, so let's
> use gpio descs in the NAND driver too.
> 
> While at it, we use devm_gpiod_get_index_optional() so we can get rid
> of the manual gpio desc release done in the init error path and in the
> remove function.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---
>  drivers/mtd/nand/raw/fsl_upm.c | 44 ++++++++--------------------------
>  1 file changed, 10 insertions(+), 34 deletions(-)
> 


Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
