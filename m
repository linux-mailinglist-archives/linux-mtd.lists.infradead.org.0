Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DC71BBD74
	for <lists+linux-mtd@lfdr.de>; Tue, 28 Apr 2020 14:22:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IPwkHQYoTha9cly2TTzjsiFsYYU7OE3b6VkPAGPNv3g=; b=XPSd1cnmqrg3zz
	fSvYFu4yFXEK1kIw4Ot7HiPJtJou4xyQDtwHxmAEZsyxsinU7gzEZZE2IQr7/k6MvjD8c9dzCqOVl
	IX8wsjD+aCgvAbrK1xD6tpWqUR6KwrAS68YG7629u/3vaE7BGjihFHjI3tEcP14ixzdID44uACxyq
	tn4e1pQ1aLm/viks5+VbUFI4XcrETmLW5lSOr9mjyff0hbDzqnpV5L2OnTabPZ46R6ZAo3k2QgZtr
	BnH28+a9W1Iw2mOLYSfsx9u6jFZrBMxTnqwqu4G2MP8C5EJhaYAdLPsY7rCRBBAFV8XYRcC1k/8Bn
	nf6hPb+2NlycJ2TjQQVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTPFb-0008It-1o; Tue, 28 Apr 2020 12:22:11 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTPFQ-0008I2-Pg
 for linux-mtd@lists.infradead.org; Tue, 28 Apr 2020 12:22:02 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03SCLu4G113738;
 Tue, 28 Apr 2020 07:21:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588076516;
 bh=cImtLORUdZvsPKiqfSv9Ud6qcgGfbWq9noxbh0+5EWA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=ylFhF8DsFhHh2EI9XRTGnUESR7d32GeLhsm5N5c+S7xaaq5WSCRZz7BFxi6R/56YE
 UmnZoGcwgeTtRmlPhwZ8D3MoQujLGTD8Z2+Q1xaBVORSlhGhFBi6l7DyvMiShQGbPg
 AMoWW0dJEmwrBmU1ZqZxdwj0+mIEIGOa2thxnrRs=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03SCLuh1095732;
 Tue, 28 Apr 2020 07:21:56 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 28
 Apr 2020 07:21:55 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 28 Apr 2020 07:21:55 -0500
Received: from [10.250.234.195] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03SCLrX5038934;
 Tue, 28 Apr 2020 07:21:54 -0500
Subject: Re: [PATCH 2/2] mtd: spi-nor: Fix description of the sr_ready()
 return value
To: <Tudor.Ambarus@microchip.com>, <sergei.shtylyov@cogentembedded.com>
References: <20200421063129.244466-1-tudor.ambarus@microchip.com>
 <20200421063129.244466-2-tudor.ambarus@microchip.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <14162c9a-2189-024f-7af2-e072ea1511da@ti.com>
Date: Tue, 28 Apr 2020 17:51:53 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200421063129.244466-2-tudor.ambarus@microchip.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_052200_913585_53AD4B24 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 21/04/20 12:01 pm, Tudor.Ambarus@microchip.com wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> The functions return 1 if ready, 0 if not ready, -errno on errors.

Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>

> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
>  drivers/mtd/spi-nor/core.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
> index 9dcc53bda8b0..9611553e829f 100644
> --- a/drivers/mtd/spi-nor/core.c
> +++ b/drivers/mtd/spi-nor/core.c
> @@ -499,7 +499,7 @@ int spi_nor_xread_sr(struct spi_nor *nor, u8 *sr)
>   * the flash is ready for new commands.
>   * @nor:	pointer to 'struct spi_nor'.
>   *
> - * Return: 0 on success, -errno otherwise.
> + * Return: 1 if ready, 0 if not ready, -errno on errors.
>   */
>  static int spi_nor_xsr_ready(struct spi_nor *nor)
>  {
> @@ -542,7 +542,7 @@ static void spi_nor_clear_sr(struct spi_nor *nor)
>   * for new commands.
>   * @nor:	pointer to 'struct spi_nor'.
>   *
> - * Return: 0 on success, -errno otherwise.
> + * Return: 1 if ready, 0 if not ready, -errno on errors.
>   */
>  static int spi_nor_sr_ready(struct spi_nor *nor)
>  {
> @@ -606,7 +606,7 @@ static void spi_nor_clear_fsr(struct spi_nor *nor)
>   * ready for new commands.
>   * @nor:	pointer to 'struct spi_nor'.
>   *
> - * Return: 0 on success, -errno otherwise.
> + * Return: 1 if ready, 0 if not ready, -errno on errors.
>   */
>  static int spi_nor_fsr_ready(struct spi_nor *nor)
>  {
> @@ -647,7 +647,7 @@ static int spi_nor_fsr_ready(struct spi_nor *nor)
>   * spi_nor_ready() - Query the flash to see if it is ready for new commands.
>   * @nor:	pointer to 'struct spi_nor'.
>   *
> - * Return: 0 on success, -errno otherwise.
> + * Return: 1 if ready, 0 if not ready, -errno on errors.
>   */
>  static int spi_nor_ready(struct spi_nor *nor)
>  {
> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
