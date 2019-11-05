Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B45EFD3A
	for <lists+linux-mtd@lfdr.de>; Tue,  5 Nov 2019 13:35:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RyVSVMOorCkhtdY1DOuIchDz9U3YiCYi+Xl6LOr3CyM=; b=QAct3oVaAM+y/V
	EdTDGLahDtwNhHM78rpfUPl0QoouBe2OFEVd3K6IHRLTgaBSdb2UaErCjhFf3JE+Eg2mwoXmFPNQW
	KP5Hm5stwfBb0q7bsPBG8/znaoquGPG6UfKq9TyrI4KzTXz6txET3yeToVuoeTcMXtGxbYijJzdxS
	teSERXMcv14GWcoALXi5xQjoZIrYCv5yvVfVIMqK829lc/h8wrt2iELQglBWC2nQz1xb1CHBi/fkX
	i+YOnpgAQ+o1yulsRuAkDxV+AkkqI5laQawwowOQhPyj5j45aVTU8JXrarOxFFHWGFfiRF1XJWE/9
	kuiIfQf3aK5hHVDujRwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRy3X-0007Ce-2p; Tue, 05 Nov 2019 12:35:31 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRy3D-0006ek-EU
 for linux-mtd@lists.infradead.org; Tue, 05 Nov 2019 12:35:14 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xA5CZ4mY048608;
 Tue, 5 Nov 2019 06:35:04 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1572957304;
 bh=JFqD4xlPPBVIe6T8bJmxDxuuyi6a4xzlFFgXzj5VySI=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Uq+FfCJZWDgBRXGHLYn6mplk0wiwFlnpPXTOcG//QicnJPGeBosAYfHXf0aqGrQ7t
 n5SJMdTameR97IZ89zYcUeHeSAhW3zZg6yytHwsI6lEBi4skDn0iAnVoWbwPxBAD/Q
 w2NtzB4kw+mRfHCVY32rk6izZzjPyoXaln0DEaVw=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xA5CZ3EX083033
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 5 Nov 2019 06:35:04 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 5 Nov
 2019 06:34:49 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 5 Nov 2019 06:34:49 -0600
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA5CZ1U7011246;
 Tue, 5 Nov 2019 06:35:02 -0600
Subject: Re: [PATCH v4 09/20] mtd: spi-nor: Drop spansion_quad_enable()
To: <Tudor.Ambarus@microchip.com>, <boris.brezillon@collabora.com>
References: <20191102112316.20715-1-tudor.ambarus@microchip.com>
 <20191102112316.20715-10-tudor.ambarus@microchip.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <1547a4b2-b279-ab4c-0b2c-cd88df219b4a@ti.com>
Date: Tue, 5 Nov 2019 18:05:37 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191102112316.20715-10-tudor.ambarus@microchip.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_043511_730173_3A8ED2AF 
X-CRM114-Status: GOOD (  29.38  )
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
> Drop the default spansion_quad_enable() method and replace it with
> spansion_read_cr_quad_enable().
> 
> The function was buggy, it didn't care about the previous values
> of the Status and Configuration Registers. spansion_read_cr_quad_enable()
> is a Read-Modify-Write-Check function that keeps track of what were
> the previous values of the Status and Configuration Registers.
> 
> In terms of instruction types sent to the flash, the only difference
> between the spansion_quad_enable() and spansion_read_cr_quad_enable()
> is that the later calls spi_nor_read_sr(). We can safely assume that all
> flashes support spi_nor_read_sr(), because all flashes call it in
> spi_nor_sr_ready(). The transition from spansion_quad_enable() to
> spansion_read_cr_quad_enable() will not affect anybody, drop the buggy
> code.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>

Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>

Regards
Vignesh

> ---
>  drivers/mtd/spi-nor/spi-nor.c | 58 ++++---------------------------------------
>  1 file changed, 5 insertions(+), 53 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 99a9a6aba41d..f5193733a0f6 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -1971,54 +1971,6 @@ static int macronix_quad_enable(struct spi_nor *nor)
>  }
>  
>  /**
> - * spansion_quad_enable() - set QE bit in Configuraiton Register.
> - * @nor:	pointer to a 'struct spi_nor'
> - *
> - * Set the Quad Enable (QE) bit in the Configuration Register.
> - * This function is kept for legacy purpose because it has been used for a
> - * long time without anybody complaining but it should be considered as
> - * deprecated and maybe buggy.
> - * First, this function doesn't care about the previous values of the Status
> - * and Configuration Registers when it sets the QE bit (bit 1) in the
> - * Configuration Register: all other bits are cleared, which may have unwanted
> - * side effects like removing some block protections.
> - * Secondly, it uses the Read Configuration Register (35h) instruction though
> - * some very old and few memories don't support this instruction. If a pull-up
> - * resistor is present on the MISO/IO1 line, we might still be able to pass the
> - * "read back" test because the QSPI memory doesn't recognize the command,
> - * so leaves the MISO/IO1 line state unchanged, hence spi_nor_read_cr() returns
> - * 0xFF.
> - *
> - * bit 1 of the Configuration Register is the QE bit for Spansion like QSPI
> - * memories.
> - *
> - * Return: 0 on success, -errno otherwise.
> - */
> -static int spansion_quad_enable(struct spi_nor *nor)
> -{
> -	u8 *sr_cr = nor->bouncebuf;
> -	int ret;
> -
> -	sr_cr[0] = 0;
> -	sr_cr[1] = CR_QUAD_EN_SPAN;
> -	ret = spi_nor_write_sr(nor, sr_cr, 2);
> -	if (ret)
> -		return ret;
> -
> -	/* read back and check it */
> -	ret = spi_nor_read_cr(nor, nor->bouncebuf);
> -	if (ret)
> -		return ret;
> -
> -	if (!(nor->bouncebuf[0] & CR_QUAD_EN_SPAN)) {
> -		dev_dbg(nor->dev, "Spansion Quad bit not set\n");
> -		return -EINVAL;
> -	}
> -
> -	return 0;
> -}
> -
> -/**
>   * spansion_no_read_cr_quad_enable() - set QE bit in Configuration Register.
>   * @nor:	pointer to a 'struct spi_nor'
>   *
> @@ -2170,9 +2122,9 @@ static int spi_nor_clear_sr_bp(struct spi_nor *nor)
>   *
>   * Read-modify-write function that clears the Block Protection bits from the
>   * Status Register without affecting other bits. The function is tightly
> - * coupled with the spansion_quad_enable() function. Both assume that the Write
> - * Register with 16 bits, together with the Read Configuration Register (35h)
> - * instructions are supported.
> + * coupled with the spansion_read_cr_quad_enable() function. Both assume that
> + * the Write Register with 16 bits, together with the Read Configuration
> + * Register (35h) instructions are supported.
>   *
>   * Return: 0 on success, -errno otherwise.
>   */
> @@ -4654,7 +4606,7 @@ static void spi_nor_info_init_params(struct spi_nor *nor)
>  	u8 i, erase_mask;
>  
>  	/* Initialize legacy flash parameters and settings. */
> -	params->quad_enable = spansion_quad_enable;
> +	params->quad_enable = spansion_read_cr_quad_enable;
>  	params->set_4byte = spansion_set_4byte;
>  	params->setup = spi_nor_default_setup;
>  
> @@ -4869,7 +4821,7 @@ static int spi_nor_init(struct spi_nor *nor)
>  	int err;
>  
>  	if (nor->clear_sr_bp) {
> -		if (nor->params.quad_enable == spansion_quad_enable)
> +		if (nor->params.quad_enable == spansion_read_cr_quad_enable)
>  			nor->clear_sr_bp = spi_nor_spansion_clear_sr_bp;
>  
>  		err = nor->clear_sr_bp(nor);
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
