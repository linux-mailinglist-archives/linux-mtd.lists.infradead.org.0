Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E021B84A4
	for <lists+linux-mtd@lfdr.de>; Sat, 25 Apr 2020 10:27:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AplCxqh6IgnsmIjxXjtgiQJT20Yyed49qpOWWPlF6UU=; b=E2uNrpvGSzNG1y
	FJ1coQf4lq5UZU+O5viGJzbefNzX4KeEzPL3kpE9QdoKXRchA8UgHe5VrVAw0UvQzFah+EqfVzfFW
	VkCqX213k+y46inKt4bJyL0dxKQIi04pI1CyW9Fgj4+JHRlp42shD4xVuuIdfkK+Y5gXBPdzvRxV1
	EubFEgCTgVCA8puvedMqPg6yTr14m8iZioNQL6iyREru5ySmwL99mTGE4/d3hq6uZUhzQDGNcbWo5
	hKXeC2TKF/Eqke1eRO5wwUsLMmYb+MDxT+mjH8Fdb9nSojf1EjYTAJCXn72UPVoukNo6UdOSvOqpc
	aGToOWkztx2HsukFEPbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSG9K-0005S1-AY; Sat, 25 Apr 2020 08:26:58 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSG9C-0005Qy-QU
 for linux-mtd@lists.infradead.org; Sat, 25 Apr 2020 08:26:52 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 9239A2A2E93;
 Sat, 25 Apr 2020 09:26:49 +0100 (BST)
Date: Sat, 25 Apr 2020 10:26:46 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 8/9] mtd: rawnand: jedec: Define the number of
 parameter pages
Message-ID: <20200425102646.43407584@collabora.com>
In-Reply-To: <20200424164042.26572-9-miquel.raynal@bootlin.com>
References: <20200424164042.26572-1-miquel.raynal@bootlin.com>
 <20200424164042.26572-9-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_012650_997407_31C52274 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 24 Apr 2020 18:40:41 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Use a macro to define the number of parameter page instead of
> hardcoding it everywhere.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/nand/raw/nand_jedec.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/nand_jedec.c b/drivers/mtd/nand/raw/nand_jedec.c
> index 9b540e76f84f..0cd322a8be24 100644
> --- a/drivers/mtd/nand/raw/nand_jedec.c
> +++ b/drivers/mtd/nand/raw/nand_jedec.c
> @@ -16,6 +16,8 @@
>  
>  #include "internals.h"
>  
> +#define JEDEC_PARAM_PAGES 3
> +
>  /*
>   * Check if the NAND chip is JEDEC compliant, returns 1 if it is, 0 otherwise.
>   */
> @@ -47,7 +49,7 @@ int nand_jedec_detect(struct nand_chip *chip)
>  		goto free_jedec_param_page;
>  	}
>  
> -	for (i = 0; i < 3; i++) {
> +	for (i = 0; i < JEDEC_PARAM_PAGES; i++) {
>  		ret = nand_read_data_op(chip, p, sizeof(*p), true);
>  		if (ret) {
>  			ret = 0;
> @@ -59,7 +61,7 @@ int nand_jedec_detect(struct nand_chip *chip)
>  			break;
>  	}
>  
> -	if (i == 3) {
> +	if (i == JEDEC_PARAM_PAGES) {
>  		pr_err("Could not find valid JEDEC parameter page; aborting\n");
>  		goto free_jedec_param_page;
>  	}


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
