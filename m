Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F265EFD41
	for <lists+linux-mtd@lfdr.de>; Tue,  5 Nov 2019 13:35:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RsI7GL/Qmq8QZWKUmwZuJICZMU3YtJaDh8W6ukMry+g=; b=dRRHlgLAesj8Lz
	EQqwtO8AsylQFLDWFyyzLTeuDLGRPa8A7TJEa4p5+InSR3HN+AHsucMrdfuiQn5jyXe0YjodcXYuJ
	ccL16e8QW3Z0X59NZDp7eCJgC8oVvanQYcpGfUqdqM/wRNxdJSjTQNPXEnkY+X+iw2AJX4dWzmMXo
	6F4Ldq0j1xrVAhnn7A/VxhQx4hoRpRuJ0UGUdNxa7c/hReTtTG4YQblNdRLNGh39hqgZJFcg74TKk
	bhzHFCmiBrDLK0QKu4hPnioQjFTsmNQ7E7UTL6f7+Anlhhle9wHZ6bmtCmU7yWuQUXsrbZGwdjLV+
	DiMD+akWKaTDZS/rjerQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRy3q-0007Wm-5E; Tue, 05 Nov 2019 12:35:50 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRy3b-0007Vf-Tm
 for linux-mtd@lists.infradead.org; Tue, 05 Nov 2019 12:35:37 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xA5CZVnu048667;
 Tue, 5 Nov 2019 06:35:31 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1572957331;
 bh=8/LkuZqw2Fwss/j34lhjzcKYqZ/5qbKCBCN7h5aUhg4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=oJ5m4d/LfKKiT4iFU3jWjs5/e2RAvAPV7m+fnD//K8usy15wstncvQH9wUWN5Wh6Z
 1b4bGnfcKDucrflHH2ekxRClvAAwgUtpsLmIewYWdfumt76v+Wamg8q45iUnOGk86z
 tVfGhd5CE9i0mzDJchw0ShIqM8YCTKTvZJiu2/2o=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xA5CZVBV070292
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 5 Nov 2019 06:35:31 -0600
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 5 Nov
 2019 06:35:16 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 5 Nov 2019 06:35:16 -0600
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA5CZS6x112873;
 Tue, 5 Nov 2019 06:35:29 -0600
Subject: Re: [PATCH v4 10/20] mtd: spi-nor: Fix errno on Quad Enable methods
To: <Tudor.Ambarus@microchip.com>, <boris.brezillon@collabora.com>
References: <20191102112316.20715-1-tudor.ambarus@microchip.com>
 <20191102112316.20715-11-tudor.ambarus@microchip.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <9c742bb8-3675-5f7a-519e-540471c1969f@ti.com>
Date: Tue, 5 Nov 2019 18:06:04 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191102112316.20715-11-tudor.ambarus@microchip.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_043536_040839_7F30067C 
X-CRM114-Status: GOOD (  18.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: richard@nod.at, linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 02/11/19 4:53 PM, Tudor.Ambarus@microchip.com wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> When the Read-Modify-Write-Read-Back Quad Enable methods failed on
> the Read-Back, they returned -EINVAL. Since this is an I/O error,
> return -EIO.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>

Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>

> ---
>  drivers/mtd/spi-nor/spi-nor.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index f5193733a0f6..14146619bf19 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -1964,7 +1964,7 @@ static int macronix_quad_enable(struct spi_nor *nor)
>  
>  	if (!(nor->bouncebuf[0] & SR_QUAD_EN_MX)) {
>  		dev_dbg(nor->dev, "Macronix Quad bit not set\n");
> -		return -EINVAL;
> +		return -EIO;
>  	}
>  
>  	return 0;
> @@ -2042,7 +2042,7 @@ static int spansion_read_cr_quad_enable(struct spi_nor *nor)
>  
>  	if (!(sr_cr[1] & CR_QUAD_EN_SPAN)) {
>  		dev_dbg(nor->dev, "Spansion Quad bit not set\n");
> -		return -EINVAL;
> +		return -EIO;
>  	}
>  
>  	return 0;
> @@ -2086,7 +2086,7 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
>  
>  	if (!(*sr2 & SR2_QUAD_EN_BIT7)) {
>  		dev_dbg(nor->dev, "SR2 Quad bit not set\n");
> -		return -EINVAL;
> +		return -EIO;
>  	}
>  
>  	return 0;
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
