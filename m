Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C34031E14A6
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 21:10:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hk72w4GDoFaJEwSc2M6vVP4cFitI8Y++aE8EUvAP3/U=; b=fR2HW/nM7f9R8z
	0C2IIHMwPSPvAGspttdAtA4XtyZp8fEbk5PdbAv+lS+LEfZeLHrlMrP7N9iwXioWNpwuYGXKvr4x/
	6Dywj4nmgH6qC7bbh2WaG/5/LyvNIttezRAzItCaHyGYdVVLmd7azb7v2BNk5ppG5co+lK/7FeoeB
	6JvufZgCBrD7A9rxGOGw+HD89ZbLHFk/fs3hwz4NtvvJhvwIHNf8lyRQwmE52auDUIrkEUpZ6mrS0
	lTBjzvK3GMPqHbRQOwHPVbv6uExNtaz7ZAdlUkd1abNRcagZ9i+gfH7tbd147gPRcE6DFfpEfimfe
	EDH8AJejt0XR1SjrQ9oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdIUW-0001CR-UX; Mon, 25 May 2020 19:10:29 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdIUL-0001Bx-Rp
 for linux-mtd@lists.infradead.org; Mon, 25 May 2020 19:10:19 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 92DE72A0E00;
 Mon, 25 May 2020 20:10:16 +0100 (BST)
Date: Mon, 25 May 2020 21:10:13 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v4 10/19] mtd: rawnand: Rename
 nand_has_setup_data_interface()
Message-ID: <20200525211013.641cf36f@collabora.com>
In-Reply-To: <20200525174239.11349-11-miquel.raynal@bootlin.com>
References: <20200525174239.11349-1-miquel.raynal@bootlin.com>
 <20200525174239.11349-11-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_121018_034572_6614527E 
X-CRM114-Status: GOOD (  19.87  )
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
Cc: Rickard Andersson <rickaran@axis.com>, Richard Weinberger <richard@nod.at>,
 linux-mtd@lists.infradead.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 25 May 2020 19:42:30 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> This is really a NAND controller hook so call it
> nand_controller_has_setup_data_interface(), which makes much more
> sense.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/nand/raw/internals.h   | 2 +-
>  drivers/mtd/nand/raw/nand_base.c   | 6 +++---
>  drivers/mtd/nand/raw/nand_legacy.c | 2 +-
>  3 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/internals.h b/drivers/mtd/nand/raw/internals.h
> index a518acfd9b3f..347d42c55353 100644
> --- a/drivers/mtd/nand/raw/internals.h
> +++ b/drivers/mtd/nand/raw/internals.h
> @@ -130,7 +130,7 @@ static inline int nand_exec_op(struct nand_chip *chip,
>  	return chip->controller->ops->exec_op(chip, op, false);
>  }
>  
> -static inline bool nand_has_setup_data_iface(struct nand_chip *chip)
> +static inline bool nand_controller_has_setup_data_iface(struct nand_chip *chip)
>  {
>  	if (!chip->controller || !chip->controller->ops ||
>  	    !chip->controller->ops->setup_data_interface)
> diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> index 514ac78899ec..d446394a2ea0 100644
> --- a/drivers/mtd/nand/raw/nand_base.c
> +++ b/drivers/mtd/nand/raw/nand_base.c
> @@ -910,7 +910,7 @@ static int nand_reset_data_interface(struct nand_chip *chip, int chipnr)
>  {
>  	int ret;
>  
> -	if (!nand_has_setup_data_iface(chip))
> +	if (!nand_controller_has_setup_data_iface(chip))
>  		return 0;
>  
>  	/*
> @@ -955,7 +955,7 @@ static int nand_setup_data_interface(struct nand_chip *chip, int chipnr)
>  	u8 tmode_param[ONFI_SUBFEATURE_PARAM_LEN] = { mode, };
>  	int ret;
>  
> -	if (!nand_has_setup_data_iface(chip))
> +	if (!nand_controller_has_setup_data_iface(chip))
>  		return 0;
>  
>  	/* Change the mode on the chip side (if supported by the NAND chip) */
> @@ -1024,7 +1024,7 @@ static int nand_init_data_interface(struct nand_chip *chip)
>  {
>  	int modes, mode, ret;
>  
> -	if (!nand_has_setup_data_iface(chip))
> +	if (!nand_controller_has_setup_data_iface(chip))
>  		return 0;
>  
>  	/*
> diff --git a/drivers/mtd/nand/raw/nand_legacy.c b/drivers/mtd/nand/raw/nand_legacy.c
> index d64791c06a97..8b91aa7773d8 100644
> --- a/drivers/mtd/nand/raw/nand_legacy.c
> +++ b/drivers/mtd/nand/raw/nand_legacy.c
> @@ -365,7 +365,7 @@ static void nand_ccs_delay(struct nand_chip *chip)
>  	 * Wait tCCS_min if it is correctly defined, otherwise wait 500ns
>  	 * (which should be safe for all NANDs).
>  	 */
> -	if (nand_has_setup_data_iface(chip))
> +	if (nand_controller_has_setup_data_iface(chip))
>  		ndelay(chip->data_interface.timings.sdr.tCCS_min / 1000);
>  	else
>  		ndelay(500);


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
