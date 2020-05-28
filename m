Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F911E64BF
	for <lists+linux-mtd@lfdr.de>; Thu, 28 May 2020 16:53:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6rbL0JcwIwvRTiep1UrR+bfgwfbulcJh50ktBrHxj9o=; b=cEj9AjxvO6FwYT
	9UAGplaopAQGv7N7qU7SRbtaJNUDqZZTurzt+iPl5iKA2V2gTdXhqzPeveF91g7qtssYEejFDcjOi
	LVIq0aMMTUEogV9kgSAUQzovs+sYEkyU/VncTBm4hNCxtNIs8An12FvlD/lFFqbERK7/5yB+1MgBz
	ieAHLtaMbCYgW9xx08y1++1A/XzC/j18sA9gEFj8D5H2rw4pQgKAGX6l9KQ+RFTjvMZ9o6MiADGf1
	/Ip00EkEDGRRqhXO4NnjyqyG7DN8E/9tu0QHurDKKmrGUWdRE4WEnYhjI05IcAb8ui9CXwqiFYp2f
	WC1N4WrFxEln+bKonNDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeJum-00077I-11; Thu, 28 May 2020 14:53:48 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeJuP-0006xU-GD; Thu, 28 May 2020 14:53:26 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id C190F20000C;
 Thu, 28 May 2020 14:53:17 +0000 (UTC)
Date: Thu, 28 May 2020 16:53:16 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v6 17/18] mtd: rawnand: Write a compatibility layer
Message-ID: <20200528165316.647f9cb0@xps13>
In-Reply-To: <20200528164217.4eec33ae@collabora.com>
References: <20200528113113.9166-1-miquel.raynal@bootlin.com>
 <20200528113113.9166-18-miquel.raynal@bootlin.com>
 <20200528164217.4eec33ae@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_075325_668462_AFCEA58C 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
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
2020 16:42:17 +0200:

> On Thu, 28 May 2020 13:31:12 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > +static enum nand_ecc_engine_type
> > +of_get_rawnand_ecc_engine_type_legacy(struct device_node *np)
> > +{
> > +	enum nand_ecc_legacy_mode {
> > +		NAND_ECC_INVALID,
> > +		NAND_ECC_NONE,
> > +		NAND_ECC_SOFT,
> > +		NAND_ECC_SOFT_BCH,
> > +		NAND_ECC_HW,
> > +		NAND_ECC_HW_SYNDROME,
> > +		NAND_ECC_ON_DIE,
> > +	};  
> 
> You're redefining an enum, but I don't see the old enum/defines being
> removed, is that expected?

Oh yeah, my desire was to get rid of this public enumeration and mov it
to the single legacy function using it, but indeed I am removing it in
the next patch as part of the global move to nand/core.c. I will do it
in this patch.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
