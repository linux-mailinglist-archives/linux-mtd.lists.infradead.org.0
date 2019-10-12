Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 073C3D4EAA
	for <lists+linux-mtd@lfdr.de>; Sat, 12 Oct 2019 11:38:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZXcxlusVhPKzZ4G1LfppwTpZt731Roi4O6SOGx3ILoc=; b=LJokahqqc6Dl/1
	+B5qjIMCtkVGVJ5myS2rYEprr8Twr70KwE0XM6PYxtHrtAyQdGYAB4+5vkA+2QMdI665EtqZDCiW4
	fwj59VXPYyL5VAlG4quoyVwlflq3DwQ+/UgKDVLX8imQB6Q8jpV53mctxNrmbIix463pUcxi15ED4
	iNNF390nseikADUor1PBJ+SsprOKLkiBV/Fo4XmnmYO2BaePwrI2v1cSS0bx2iY148dv7xsp5YgZ/
	N0R3OycylHGxy177Dn5mD15dQWuhzDj6OlDu40NhywcXffCASzOZXQbwMiB1xSifl/u2hNnxkHj5u
	AYeXOukLBs+8dnhKsl1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJDqq-0006tn-Hg; Sat, 12 Oct 2019 09:38:16 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJDqQ-0006jt-Bw; Sat, 12 Oct 2019 09:37:51 +0000
Received: from dhcp-172-31-174-146.wireless.concordia.ca (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B4D272912F1;
 Sat, 12 Oct 2019 10:37:48 +0100 (BST)
Date: Sat, 12 Oct 2019 11:37:45 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v3 13/40] mtd: nand: Add more parameters to the
 nand_ecc_props structure
Message-ID: <20191012113745.19b85fd6@dhcp-172-31-174-146.wireless.concordia.ca>
In-Reply-To: <20190919193141.7865-14-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
 <20190919193141.7865-14-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_023750_544244_56440A54 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mason Yang <masonccyang@mxic.com.tw>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 19 Sep 2019 21:31:13 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Prepare the migration to the generic ECC framework by adding more
> fields to the nand_ecc_props structure which will be used widely to
> describe different kind of ECC properties.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  include/linux/mtd/nand.h | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
> index 7072f14239e5..11cd7cc81a7a 100644
> --- a/include/linux/mtd/nand.h
> +++ b/include/linux/mtd/nand.h
> @@ -129,12 +129,20 @@ struct nand_page_io_req {
>  
>  /**
>   * struct nand_ecc_props - NAND ECC properties
> + * @provider: ECC engine provider type
> + * @placement: OOB placement (if relevant)
> + * @algo: ECC algorithm (if relevant)
>   * @strength: ECC strength
>   * @step_size: Number of bytes per step
> + * @flags: Misc properties
>   */
>  struct nand_ecc_props {
> +	unsigned int provider;
> +	unsigned int placement;
> +	unsigned int algo;

Hm, we should have enums here, and it's better to introduce the
provider/placement/algo definitions along with the fields.

>  	unsigned int strength;
>  	unsigned int step_size;
> +	unsigned int flags;
>  };
>  
>  #define NAND_ECCREQ(str, stp) { .strength = (str), .step_size = (stp) }


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
