Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD641E3010
	for <lists+linux-mtd@lfdr.de>; Tue, 26 May 2020 22:33:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CVk7AQOc7kkRKTpOZw18r6+DGAho6jIoSJDETCoyttw=; b=rntJZRCUV7sbPE
	sL3A2DdaLCRkfM8fvujZxUz70DSl3/noIjKzyfG4GKQHJkifQKw66uXZpzBD0mGeuuhFVizJ6GDty
	NmhEV2xDknEVxfk0sgQUoZvrlMmB49t8nTyr8oQbb34sl/s49ZKDPsZjV0rvLEXOBh4legfoJmbvU
	1qDm6+eVuu1nI0E8wl/Ou60dLaEQOHv2DO7qcQ8elfpHcZS0ICWiSrkSc07K8zwE619Gg+unQIzxr
	9kslYJ2Ksh2p2945whp15/tIMvkMOA1GNMj9tmmH2lIiVzNf9D3/F4cEWHVSHqvCRcih/Ttx+EaN0
	yBd+BgsBNaJavw2jLXEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdgGV-0000YZ-1b; Tue, 26 May 2020 20:33:35 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdgGL-0000YF-JQ
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 20:33:26 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 4E7FF2A2AB8;
 Tue, 26 May 2020 21:33:24 +0100 (BST)
Date: Tue, 26 May 2020 22:33:21 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v5 15/28] mtd: rawnand: timings: Avoid redefining tR_max
 and tCCS_min
Message-ID: <20200526223321.63903e51@collabora.com>
In-Reply-To: <20200526191725.7591-16-miquel.raynal@bootlin.com>
References: <20200526191725.7591-1-miquel.raynal@bootlin.com>
 <20200526191725.7591-16-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_133325_762761_FA6A27E0 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 linux-mtd@lists.infradead.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 26 May 2020 21:17:12 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> These two values are already hardcoded in the default ONFI timing
> structure, no need to redefine them here.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  drivers/mtd/nand/raw/nand_timings.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/nand_timings.c b/drivers/mtd/nand/raw/nand_timings.c
> index 3c44c4b90536..c2286a75d134 100644
> --- a/drivers/mtd/nand/raw/nand_timings.c
> +++ b/drivers/mtd/nand/raw/nand_timings.c
> @@ -371,9 +371,6 @@ int onfi_fill_data_interface(struct nand_chip *chip,
>  		/* microseconds -> picoseconds */
>  		timings->tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX;
>  		timings->tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX;
> -
> -		timings->tR_max = 200000000;
> -		timings->tCCS_min = 500000;

I'd rather drop the definitions in the ONFI timings and keep that one.

>  	}
>  
>  	return 0;


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
