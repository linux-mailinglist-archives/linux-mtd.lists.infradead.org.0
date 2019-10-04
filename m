Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F09CC02F
	for <lists+linux-mtd@lfdr.de>; Fri,  4 Oct 2019 18:07:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wBCvXvenski2BLtM3xQJzElsF5kUItdMtcMwKnRC4A4=; b=a0gw9QTp8R3MGtPIXtrUKofBmf
	v7QTrS13vr52oVYyk5RkXWVwaaDLAE62suK5Fqm07bejoXUJnemm1mNcLVD3blDWuN5U5m0gE9KPo
	F38gAIxxOYZU4WjKnrU+MS0ojaFHHuXJqmmOgbZdIldg8r94py+KoSEW/y923itgGHoJLlfr2Vjg2
	4APKSwSL236w67+97tav/FFy0YRp/gThsNffmyvCX93k8AVCj3z2A/PpG7rN1wNudsLJsAJJuXmWA
	f9pyOQnV4mmFcQM8tBolu45nN/gayalpdBNGU3F5R97c5OnylQLC9cBDDCWMyqtx68D+zTAv15PwD
	sD+WImpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGQ7C-0006B3-3D; Fri, 04 Oct 2019 16:07:34 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGQ71-0006AA-AQ
 for linux-mtd@lists.infradead.org; Fri, 04 Oct 2019 16:07:24 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x94G6tgi076297;
 Fri, 4 Oct 2019 11:06:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1570205215;
 bh=BsWmvlcQuJmrgH47mTCBTA5XIa3Tj4rOkLTCsDrH5lI=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=s5zIP7p/cygckP402n3In5MDCx6l9VOg6OJ0y+y3FVaUzY6kIrV4NAtkgQw6BkLZ9
 MLnBvtxoDIQJ6Fk8TPW0GV8SZVEoOLZVuJxHv8dkzoX8MJXnzC3SCsbhmoi9rtCyHn
 b2ktdoIQEN6w0B9xUzQZbtD8QMtetWQauCVBPRdU=
Received: from DFLE110.ent.ti.com (dfle110.ent.ti.com [10.64.6.31])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x94G6tso024225
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 4 Oct 2019 11:06:55 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 4 Oct
 2019 11:06:55 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 4 Oct 2019 11:06:55 -0500
Received: from [10.250.132.26] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x94G6qn9059591;
 Fri, 4 Oct 2019 11:06:53 -0500
Subject: Re: [PATCH] mtd: spi-nor: Fix direction of the write_sr() transfer
To: <Tudor.Ambarus@microchip.com>, <miquel.raynal@bootlin.com>,
 <richard@nod.at>, <linux-mtd@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <john.garry@huawei.com>
References: <c703dec2-dd11-5898-83ad-fb06127b6575@huawei.com>
 <20191004104746.23537-1-tudor.ambarus@microchip.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <3a09e103-a705-7e4c-6b75-82a928cac2d6@ti.com>
Date: Fri, 4 Oct 2019 21:36:51 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191004104746.23537-1-tudor.ambarus@microchip.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_090723_399663_9E79C2EE 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 04-Oct-19 4:17 PM, Tudor.Ambarus@microchip.com wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> write_sr() sends data to the SPI memory, fix the direction.
> 
> Fixes: b35b9a10362d ("mtd: spi-nor: Move m25p80 code in spi-nor.c")
> Reported-by: John Garry <john.garry@huawei.com>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---

Thanks for the quick fix!

Acked-by: Vignesh Raghavendra <vigneshr@ti.com>

>  drivers/mtd/spi-nor/spi-nor.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 1d8621d43160..7acf4a93b592 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -487,7 +487,7 @@ static int write_sr(struct spi_nor *nor, u8 val)
>  			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_WRSR, 1),
>  				   SPI_MEM_OP_NO_ADDR,
>  				   SPI_MEM_OP_NO_DUMMY,
> -				   SPI_MEM_OP_DATA_IN(1, nor->bouncebuf, 1));
> +				   SPI_MEM_OP_DATA_OUT(1, nor->bouncebuf, 1));
>  
>  		return spi_mem_exec_op(nor->spimem, &op);
>  	}
> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
