Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E861E6460
	for <lists+linux-mtd@lfdr.de>; Thu, 28 May 2020 16:46:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1kUTaaj/Ql89VyUqnA1QGeLuhne6LiCIRJ8x/0sBw5U=; b=mn46yTu/9Bf5/4
	f0aCvvX6xKXTuIitq8UlfnFEdZ4LOTtrGZXJnpUVvyq+GHgjqV+n1pJXLRTL0FFeeF4b8+4pJmJ70
	3UjJcwz/fnrsHzRDV71kAhiQvmmSmPcfx8SLafj70fbh98lY+Dk+npDOw4FpIAy3o2kGAglOM4zt5
	yU9jJOSXtIh7vKNA8MIRt0qqDLKw8J10G3tfZuZOZZd5FiWoYeyN4noTJTcUci1bx7Ei7WNE829Ry
	RLsqhU5Euz03dPxMVHizt0qYivTxhKlj49WcH2pBLSAXy3cX6nbDyWN8dbvDdqPCsbr2NvjC3TVxH
	ErB34nXYgnMXHTxngyYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeJnQ-0000u4-BM; Thu, 28 May 2020 14:46:12 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeJmy-0000jO-CV; Thu, 28 May 2020 14:45:45 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 4C0F4C0009;
 Thu, 28 May 2020 14:45:37 +0000 (UTC)
Date: Thu, 28 May 2020 16:45:35 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v6 08/18] mtd: rawnand: Use the new ECC engine type
 enumeration
Message-ID: <20200528164535.3655ffcb@xps13>
In-Reply-To: <20200528163150.6ad71fcc@collabora.com>
References: <20200528113113.9166-1-miquel.raynal@bootlin.com>
 <20200528113113.9166-9-miquel.raynal@bootlin.com>
 <20200528163150.6ad71fcc@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_074544_556666_96E2E605 
X-CRM114-Status: GOOD (  17.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
2020 16:31:50 +0200:

> On Thu, 28 May 2020 13:31:03 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > Mechanical switch from the legacy "mode" enumeration to the new
> > "engine type" enumeration in drivers and board files.
> > 
> > The device tree parsing is also updated to return the new enumeration
> > from the old strings.
> > 
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>  
> 
> I didn't check all the changes, but I'm fine with the approach
> 
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
> 
> > diff --git a/include/linux/platform_data/mtd-davinci.h b/include/linux/platform_data/mtd-davinci.h
> > index 3383101c233b..dd474dd44848 100644
> > --- a/include/linux/platform_data/mtd-davinci.h
> > +++ b/include/linux/platform_data/mtd-davinci.h
> > @@ -60,16 +60,16 @@ struct davinci_nand_pdata {		/* platform_data */
> >  	struct mtd_partition	*parts;
> >  	unsigned		nr_parts;
> >  
> > -	/* none  == NAND_ECC_NONE (strongly *not* advised!!)
> > -	 * soft  == NAND_ECC_SOFT
> > -	 * else  == NAND_ECC_HW, according to ecc_bits
> > +	/* none  == NAND_ECC_ENGINE_TYPE_NONE (strongly *not* advised!!)
> > +	 * soft  == NAND_ECC_ENGINE_TYPE_SOFT
> > +	 * else  == NAND_ECC_ENGINE_TYPE_ON_HOST, according to ecc_bits
> >  	 *
> >  	 * All DaVinci-family chips support 1-bit hardware ECC.
> >  	 * Newer ones also support 4-bit ECC, but are awkward
> >  	 * using it with large page chips.
> >  	 */
> > -	enum nand_ecc_mode	ecc_mode;
> > -	enum nand_ecc_placement	ecc_placement;
> > +	enum nand_ecc_engine_type engine_type;
> > +	enum nand_ecc_placement ecc_placement;  
> 
> Nitpick: if you want to use a space instead of tab, it should be done in
> patch 3.

Right, fixed!

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
