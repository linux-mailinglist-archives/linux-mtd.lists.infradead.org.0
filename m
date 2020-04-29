Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D09E1BE374
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Apr 2020 18:09:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6IrxLESb78rxA+fJJ5v2kHgdOhJegH6Y0kBDEU2xpYQ=; b=gyetR4LYMlv+W9
	wb+SHj9wYxWi8tM3DD5paZU/Pj/dXAVSancIhJ9DbF0Q6tELIesS7W/T6YkdUrK2X/ec5AiWN1mdo
	NkVJ2LTgDxjGV8yGwGI03jvIqjs643iaffAZd8yimja5oceXBh9BeiyO4luDUSSvw1LTS5cV9xpZz
	XBjM3uamb+x+Jo14qB4T4H3RXNCEYwpVGNWRBjhdEfnGdOmcDbQEEzVoKQBdKUN1EjqJCm0EGqMb4
	FATeSp/xSnE92Q6Z/ecOnsFJtJPjhVaLSyvzexOgm3WLK5+nR8Lm5Qsx2wcKHHItVy8eiqU0mQLEB
	C9UpZ3Z/Frp0VGIrPP1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTpHO-0007cT-4L; Wed, 29 Apr 2020 16:09:46 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTpHF-0007bu-Il
 for linux-mtd@lists.infradead.org; Wed, 29 Apr 2020 16:09:38 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 3A1A22A2258;
 Wed, 29 Apr 2020 17:09:36 +0100 (BST)
Date: Wed, 29 Apr 2020 18:09:34 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 07/11] mtd: rawnand: onfi: Adapt the parameter page
 read to constraint controllers
Message-ID: <20200429180934.6a11c888@collabora.com>
In-Reply-To: <20200429155540.22048-8-miquel.raynal@bootlin.com>
References: <20200429155540.22048-1-miquel.raynal@bootlin.com>
 <20200429155540.22048-8-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_090937_746771_602B5AC1 
X-CRM114-Status: GOOD (  22.59  )
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
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 29 Apr 2020 17:55:36 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> We already know that there are controllers not able to read the three
> copies of the parameter page in one go. The workaround was to first
> request the controller to assert command and address cycles on the
> NAND bus to trigger a parameter page read, and then do a read
> operation for each page.
> 
> But there are also controllers which are not able to split the
> parameter page read between the command/address cycles and the actual
> data operation.
> 
> All controllers are expected to be able to change the read column
> though. So let's use a regular parameter page read operation for the
> first iteration and use a change read column operation for the
> following copies.
> 
> The extra command and address cycles sent over the NAND bus are
> negligible compared to the amount of data that is being transferred
> anyway.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/nand/raw/nand_onfi.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/nand_onfi.c b/drivers/mtd/nand/raw/nand_onfi.c
> index ee0f2c2549c1..19e1be94c7e3 100644
> --- a/drivers/mtd/nand/raw/nand_onfi.c
> +++ b/drivers/mtd/nand/raw/nand_onfi.c
> @@ -160,14 +160,14 @@ int nand_onfi_detect(struct nand_chip *chip)
>  	if (!pbuf)
>  		return -ENOMEM;
>  
> -	ret = nand_read_param_page_op(chip, 0, NULL, 0);
> -	if (ret) {
> -		ret = 0;
> -		goto free_onfi_param_page;
> -	}
> -
>  	for (i = 0; i < ONFI_PARAM_PAGES; i++) {
> -		ret = nand_read_data_op(chip, &pbuf[i], sizeof(*pbuf), true);
> +		if (!i)
> +			ret = nand_read_param_page_op(chip, 0, &pbuf[i],
> +						      sizeof(*pbuf));
> +		else
> +			ret = nand_change_read_column_op(chip, sizeof(*pbuf) * i,
> +							 &pbuf[i], sizeof(*pbuf),
> +							 true);
>  		if (ret) {
>  			ret = 0;
>  			goto free_onfi_param_page;


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
