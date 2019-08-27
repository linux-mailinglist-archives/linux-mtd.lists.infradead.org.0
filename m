Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5519DC60
	for <lists+linux-mtd@lfdr.de>; Tue, 27 Aug 2019 06:20:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RYJ+02Xk424zlyXglsOJv4cncOLUCO2vEvPwXRDxaNY=; b=Q4xpQHxOV2OK4rmID4TgeNWsUp
	eYrW0LUtZ6K5ElsISuC34bMQ5PUU40897ODt+ND5fI38/5L1OTHpuXgiKy52t/rs1MJluNkPpmoTB
	tCCw+tHfrpEWYlV6mzkC5BzwEvE/11Mn1KvhIELVPfE7XxA4oyfn1Z2im+ChKcgJVtG8WqFh0CNde
	BfO5ObQiL3MqhhqwxlArWDZeop+i277bg8ffigKADMwGpwkwce7fj2JdJpGR6CBY6tXbaEMJi5i2F
	LCzEW6MwzrdS2EHCqo1SZc6GXY3h+MLD5AaSLR7c2PX5nlD3FPbCZxxi6p6tBFfA52AFG1clmdH9p
	k/opQgRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2SyK-0000kA-QL; Tue, 27 Aug 2019 04:20:44 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2SyB-0000jk-Mr
 for linux-mtd@lists.infradead.org; Tue, 27 Aug 2019 04:20:37 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7R4KRMC061472;
 Mon, 26 Aug 2019 23:20:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566879627;
 bh=mh+Mw837nSIanhXuh5pSu7hj8JRuO+0S3O+IT9eNPcs=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=YGdkrwBhImiJri7Y7Nt2PgEPp43bD1kFMOSfi6ssdXCIoB01oyt4CCujEzGZC7s0K
 96/A7Ixfat9vKUa3oxsJe8lXRzHDg1t4y8RQJDkBiQiiKGnndk15X5Sq+EbWCD3DU9
 rsZqVLY5eMZ9H9s1WW/HEURjBqcnRF09AsTHBRU0=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7R4KRdO090562
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 26 Aug 2019 23:20:27 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 26
 Aug 2019 23:20:27 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 26 Aug 2019 23:20:27 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7R4KMri087640;
 Mon, 26 Aug 2019 23:20:23 -0500
Subject: Re: [RESEND PATCH v3 01/20] mtd: spi-nor: Regroup flash parameter and
 settings
To: <Tudor.Ambarus@microchip.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20190826120821.16351-1-tudor.ambarus@microchip.com>
 <20190826120821.16351-2-tudor.ambarus@microchip.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <3b9e2faf-455c-28a8-52a1-bd2a49028b53@ti.com>
Date: Tue, 27 Aug 2019 09:51:00 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190826120821.16351-2-tudor.ambarus@microchip.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_212035_857182_A777C3B0 
X-CRM114-Status: GOOD (  23.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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



On 26/08/19 5:38 PM, Tudor.Ambarus@microchip.com wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> The scope is to move all [FLASH-SPECIFIC] parameters and settings
> from 'struct spi_nor' to 'struct spi_nor_flash_parameter'.
> 
> 'struct spi_nor_flash_parameter' describes the hardware capabilities
> and associated settings of the SPI NOR flash memory. It includes
> legacy flash parameters and settings that can be overwritten by the
> spi_nor_fixups hooks, or dynamically when parsing the JESD216
> Serial Flash Discoverable Parameters (SFDP) tables. All SFDP params
> and settings will fit inside 'struct spi_nor_flash_parameter'.
> 
> Move spi_nor_hwcaps related code to avoid forward declarations.
> Add a forward declaration that we can't avoid: 'struct spi_nor' will
> be used in 'struct spi_nor_flash_parameter'.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---

Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>

Regards
Vignesh

> v3: collect R-b
> 
>  drivers/mtd/spi-nor/spi-nor.c |  65 ------------
>  include/linux/mtd/spi-nor.h   | 239 +++++++++++++++++++++++++++++-------------
>  2 files changed, 164 insertions(+), 140 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 0597cb8257b0..d35dc6a97521 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -40,71 +40,6 @@
>  #define SPI_NOR_MAX_ID_LEN	6
>  #define SPI_NOR_MAX_ADDR_WIDTH	4
>  
> -struct spi_nor_read_command {
> -	u8			num_mode_clocks;
> -	u8			num_wait_states;
> -	u8			opcode;
> -	enum spi_nor_protocol	proto;
> -};
> -
> -struct spi_nor_pp_command {
> -	u8			opcode;
> -	enum spi_nor_protocol	proto;
> -};
> -
> -enum spi_nor_read_command_index {
> -	SNOR_CMD_READ,
> -	SNOR_CMD_READ_FAST,
> -	SNOR_CMD_READ_1_1_1_DTR,
> -
> -	/* Dual SPI */
> -	SNOR_CMD_READ_1_1_2,
> -	SNOR_CMD_READ_1_2_2,
> -	SNOR_CMD_READ_2_2_2,
> -	SNOR_CMD_READ_1_2_2_DTR,
> -
> -	/* Quad SPI */
> -	SNOR_CMD_READ_1_1_4,
> -	SNOR_CMD_READ_1_4_4,
> -	SNOR_CMD_READ_4_4_4,
> -	SNOR_CMD_READ_1_4_4_DTR,
> -
> -	/* Octal SPI */
> -	SNOR_CMD_READ_1_1_8,
> -	SNOR_CMD_READ_1_8_8,
> -	SNOR_CMD_READ_8_8_8,
> -	SNOR_CMD_READ_1_8_8_DTR,
> -
> -	SNOR_CMD_READ_MAX
> -};
> -
> -enum spi_nor_pp_command_index {
> -	SNOR_CMD_PP,
> -
> -	/* Quad SPI */
> -	SNOR_CMD_PP_1_1_4,
> -	SNOR_CMD_PP_1_4_4,
> -	SNOR_CMD_PP_4_4_4,
> -
> -	/* Octal SPI */
> -	SNOR_CMD_PP_1_1_8,
> -	SNOR_CMD_PP_1_8_8,
> -	SNOR_CMD_PP_8_8_8,
> -
> -	SNOR_CMD_PP_MAX
> -};
> -
> -struct spi_nor_flash_parameter {
> -	u64				size;
> -	u32				page_size;
> -
> -	struct spi_nor_hwcaps		hwcaps;
> -	struct spi_nor_read_command	reads[SNOR_CMD_READ_MAX];
> -	struct spi_nor_pp_command	page_programs[SNOR_CMD_PP_MAX];
> -
> -	int (*quad_enable)(struct spi_nor *nor);
> -};
> -
>  struct sfdp_parameter_header {
>  	u8		id_lsb;
>  	u8		minor;
> diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
> index 3075ac73b171..77ba692d9348 100644
> --- a/include/linux/mtd/spi-nor.h
> +++ b/include/linux/mtd/spi-nor.h
> @@ -334,6 +334,165 @@ struct spi_nor_erase_map {
>  };
>  
>  /**
> + * struct spi_nor_hwcaps - Structure for describing the hardware capabilies
> + * supported by the SPI controller (bus master).
> + * @mask:		the bitmask listing all the supported hw capabilies
> + */
> +struct spi_nor_hwcaps {
> +	u32	mask;
> +};
> +
> +/*
> + *(Fast) Read capabilities.
> + * MUST be ordered by priority: the higher bit position, the higher priority.
> + * As a matter of performances, it is relevant to use Octal SPI protocols first,
> + * then Quad SPI protocols before Dual SPI protocols, Fast Read and lastly
> + * (Slow) Read.
> + */
> +#define SNOR_HWCAPS_READ_MASK		GENMASK(14, 0)
> +#define SNOR_HWCAPS_READ		BIT(0)
> +#define SNOR_HWCAPS_READ_FAST		BIT(1)
> +#define SNOR_HWCAPS_READ_1_1_1_DTR	BIT(2)
> +
> +#define SNOR_HWCAPS_READ_DUAL		GENMASK(6, 3)
> +#define SNOR_HWCAPS_READ_1_1_2		BIT(3)
> +#define SNOR_HWCAPS_READ_1_2_2		BIT(4)
> +#define SNOR_HWCAPS_READ_2_2_2		BIT(5)
> +#define SNOR_HWCAPS_READ_1_2_2_DTR	BIT(6)
> +
> +#define SNOR_HWCAPS_READ_QUAD		GENMASK(10, 7)
> +#define SNOR_HWCAPS_READ_1_1_4		BIT(7)
> +#define SNOR_HWCAPS_READ_1_4_4		BIT(8)
> +#define SNOR_HWCAPS_READ_4_4_4		BIT(9)
> +#define SNOR_HWCAPS_READ_1_4_4_DTR	BIT(10)
> +
> +#define SNOR_HWCAPS_READ_OCTAL		GENMASK(14, 11)
> +#define SNOR_HWCAPS_READ_1_1_8		BIT(11)
> +#define SNOR_HWCAPS_READ_1_8_8		BIT(12)
> +#define SNOR_HWCAPS_READ_8_8_8		BIT(13)
> +#define SNOR_HWCAPS_READ_1_8_8_DTR	BIT(14)
> +
> +/*
> + * Page Program capabilities.
> + * MUST be ordered by priority: the higher bit position, the higher priority.
> + * Like (Fast) Read capabilities, Octal/Quad SPI protocols are preferred to the
> + * legacy SPI 1-1-1 protocol.
> + * Note that Dual Page Programs are not supported because there is no existing
> + * JEDEC/SFDP standard to define them. Also at this moment no SPI flash memory
> + * implements such commands.
> + */
> +#define SNOR_HWCAPS_PP_MASK	GENMASK(22, 16)
> +#define SNOR_HWCAPS_PP		BIT(16)
> +
> +#define SNOR_HWCAPS_PP_QUAD	GENMASK(19, 17)
> +#define SNOR_HWCAPS_PP_1_1_4	BIT(17)
> +#define SNOR_HWCAPS_PP_1_4_4	BIT(18)
> +#define SNOR_HWCAPS_PP_4_4_4	BIT(19)
> +
> +#define SNOR_HWCAPS_PP_OCTAL	GENMASK(22, 20)
> +#define SNOR_HWCAPS_PP_1_1_8	BIT(20)
> +#define SNOR_HWCAPS_PP_1_8_8	BIT(21)
> +#define SNOR_HWCAPS_PP_8_8_8	BIT(22)
> +
> +#define SNOR_HWCAPS_X_X_X	(SNOR_HWCAPS_READ_2_2_2 |	\
> +				 SNOR_HWCAPS_READ_4_4_4 |	\
> +				 SNOR_HWCAPS_READ_8_8_8 |	\
> +				 SNOR_HWCAPS_PP_4_4_4 |		\
> +				 SNOR_HWCAPS_PP_8_8_8)
> +
> +#define SNOR_HWCAPS_DTR		(SNOR_HWCAPS_READ_1_1_1_DTR |	\
> +				 SNOR_HWCAPS_READ_1_2_2_DTR |	\
> +				 SNOR_HWCAPS_READ_1_4_4_DTR |	\
> +				 SNOR_HWCAPS_READ_1_8_8_DTR)
> +
> +#define SNOR_HWCAPS_ALL		(SNOR_HWCAPS_READ_MASK |	\
> +				 SNOR_HWCAPS_PP_MASK)
> +
> +struct spi_nor_read_command {
> +	u8			num_mode_clocks;
> +	u8			num_wait_states;
> +	u8			opcode;
> +	enum spi_nor_protocol	proto;
> +};
> +
> +struct spi_nor_pp_command {
> +	u8			opcode;
> +	enum spi_nor_protocol	proto;
> +};
> +
> +enum spi_nor_read_command_index {
> +	SNOR_CMD_READ,
> +	SNOR_CMD_READ_FAST,
> +	SNOR_CMD_READ_1_1_1_DTR,
> +
> +	/* Dual SPI */
> +	SNOR_CMD_READ_1_1_2,
> +	SNOR_CMD_READ_1_2_2,
> +	SNOR_CMD_READ_2_2_2,
> +	SNOR_CMD_READ_1_2_2_DTR,
> +
> +	/* Quad SPI */
> +	SNOR_CMD_READ_1_1_4,
> +	SNOR_CMD_READ_1_4_4,
> +	SNOR_CMD_READ_4_4_4,
> +	SNOR_CMD_READ_1_4_4_DTR,
> +
> +	/* Octal SPI */
> +	SNOR_CMD_READ_1_1_8,
> +	SNOR_CMD_READ_1_8_8,
> +	SNOR_CMD_READ_8_8_8,
> +	SNOR_CMD_READ_1_8_8_DTR,
> +
> +	SNOR_CMD_READ_MAX
> +};
> +
> +enum spi_nor_pp_command_index {
> +	SNOR_CMD_PP,
> +
> +	/* Quad SPI */
> +	SNOR_CMD_PP_1_1_4,
> +	SNOR_CMD_PP_1_4_4,
> +	SNOR_CMD_PP_4_4_4,
> +
> +	/* Octal SPI */
> +	SNOR_CMD_PP_1_1_8,
> +	SNOR_CMD_PP_1_8_8,
> +	SNOR_CMD_PP_8_8_8,
> +
> +	SNOR_CMD_PP_MAX
> +};
> +
> +/* Forward declaration that will be used in 'struct spi_nor_flash_parameter' */
> +struct spi_nor;
> +
> +/**
> + * struct spi_nor_flash_parameter - SPI NOR flash parameters and settings.
> + * Includes legacy flash parameters and settings that can be overwritten
> + * by the spi_nor_fixups hooks, or dynamically when parsing the JESD216
> + * Serial Flash Discoverable Parameters (SFDP) tables.
> + *
> + * @size:		the flash memory density in bytes.
> + * @page_size:		the page size of the SPI NOR flash memory.
> + * @hwcaps:		describes the read and page program hardware
> + *			capabilities.
> + * @reads:		read capabilities ordered by priority: the higher index
> + *                      in the array, the higher priority.
> + * @page_programs:	page program capabilities ordered by priority: the
> + *                      higher index in the array, the higher priority.
> + * @quad_enable:	enables SPI NOR quad mode.
> + */
> +struct spi_nor_flash_parameter {
> +	u64				size;
> +	u32				page_size;
> +
> +	struct spi_nor_hwcaps		hwcaps;
> +	struct spi_nor_read_command	reads[SNOR_CMD_READ_MAX];
> +	struct spi_nor_pp_command	page_programs[SNOR_CMD_PP_MAX];
> +
> +	int (*quad_enable)(struct spi_nor *nor);
> +};
> +
> +/**
>   * struct flash_info - Forward declaration of a structure used internally by
>   *		       spi_nor_scan()
>   */
> @@ -379,6 +538,10 @@ struct flash_info;
>   * @quad_enable:	[FLASH-SPECIFIC] enables SPI NOR quad mode
>   * @clear_sr_bp:	[FLASH-SPECIFIC] clears the Block Protection Bits from
>   *			the SPI NOR Status Register.
> + * @params:		[FLASH-SPECIFIC] SPI-NOR flash parameters and settings.
> + *                      The structure includes legacy flash parameters and
> + *                      settings that can be overwritten by the spi_nor_fixups
> + *                      hooks, or dynamically when parsing the SFDP tables.
>   * @priv:		the private data
>   */
>  struct spi_nor {
> @@ -418,6 +581,7 @@ struct spi_nor {
>  	int (*flash_is_locked)(struct spi_nor *nor, loff_t ofs, uint64_t len);
>  	int (*quad_enable)(struct spi_nor *nor);
>  	int (*clear_sr_bp)(struct spi_nor *nor);
> +	struct spi_nor_flash_parameter params;
>  
>  	void *priv;
>  };
> @@ -463,81 +627,6 @@ static inline struct device_node *spi_nor_get_flash_node(struct spi_nor *nor)
>  }
>  
>  /**
> - * struct spi_nor_hwcaps - Structure for describing the hardware capabilies
> - * supported by the SPI controller (bus master).
> - * @mask:		the bitmask listing all the supported hw capabilies
> - */
> -struct spi_nor_hwcaps {
> -	u32	mask;
> -};
> -
> -/*
> - *(Fast) Read capabilities.
> - * MUST be ordered by priority: the higher bit position, the higher priority.
> - * As a matter of performances, it is relevant to use Octal SPI protocols first,
> - * then Quad SPI protocols before Dual SPI protocols, Fast Read and lastly
> - * (Slow) Read.
> - */
> -#define SNOR_HWCAPS_READ_MASK		GENMASK(14, 0)
> -#define SNOR_HWCAPS_READ		BIT(0)
> -#define SNOR_HWCAPS_READ_FAST		BIT(1)
> -#define SNOR_HWCAPS_READ_1_1_1_DTR	BIT(2)
> -
> -#define SNOR_HWCAPS_READ_DUAL		GENMASK(6, 3)
> -#define SNOR_HWCAPS_READ_1_1_2		BIT(3)
> -#define SNOR_HWCAPS_READ_1_2_2		BIT(4)
> -#define SNOR_HWCAPS_READ_2_2_2		BIT(5)
> -#define SNOR_HWCAPS_READ_1_2_2_DTR	BIT(6)
> -
> -#define SNOR_HWCAPS_READ_QUAD		GENMASK(10, 7)
> -#define SNOR_HWCAPS_READ_1_1_4		BIT(7)
> -#define SNOR_HWCAPS_READ_1_4_4		BIT(8)
> -#define SNOR_HWCAPS_READ_4_4_4		BIT(9)
> -#define SNOR_HWCAPS_READ_1_4_4_DTR	BIT(10)
> -
> -#define SNOR_HWCAPS_READ_OCTAL		GENMASK(14, 11)
> -#define SNOR_HWCAPS_READ_1_1_8		BIT(11)
> -#define SNOR_HWCAPS_READ_1_8_8		BIT(12)
> -#define SNOR_HWCAPS_READ_8_8_8		BIT(13)
> -#define SNOR_HWCAPS_READ_1_8_8_DTR	BIT(14)
> -
> -/*
> - * Page Program capabilities.
> - * MUST be ordered by priority: the higher bit position, the higher priority.
> - * Like (Fast) Read capabilities, Octal/Quad SPI protocols are preferred to the
> - * legacy SPI 1-1-1 protocol.
> - * Note that Dual Page Programs are not supported because there is no existing
> - * JEDEC/SFDP standard to define them. Also at this moment no SPI flash memory
> - * implements such commands.
> - */
> -#define SNOR_HWCAPS_PP_MASK	GENMASK(22, 16)
> -#define SNOR_HWCAPS_PP		BIT(16)
> -
> -#define SNOR_HWCAPS_PP_QUAD	GENMASK(19, 17)
> -#define SNOR_HWCAPS_PP_1_1_4	BIT(17)
> -#define SNOR_HWCAPS_PP_1_4_4	BIT(18)
> -#define SNOR_HWCAPS_PP_4_4_4	BIT(19)
> -
> -#define SNOR_HWCAPS_PP_OCTAL	GENMASK(22, 20)
> -#define SNOR_HWCAPS_PP_1_1_8	BIT(20)
> -#define SNOR_HWCAPS_PP_1_8_8	BIT(21)
> -#define SNOR_HWCAPS_PP_8_8_8	BIT(22)
> -
> -#define SNOR_HWCAPS_X_X_X	(SNOR_HWCAPS_READ_2_2_2 |	\
> -				 SNOR_HWCAPS_READ_4_4_4 |	\
> -				 SNOR_HWCAPS_READ_8_8_8 |	\
> -				 SNOR_HWCAPS_PP_4_4_4 |		\
> -				 SNOR_HWCAPS_PP_8_8_8)
> -
> -#define SNOR_HWCAPS_DTR		(SNOR_HWCAPS_READ_1_1_1_DTR |	\
> -				 SNOR_HWCAPS_READ_1_2_2_DTR |	\
> -				 SNOR_HWCAPS_READ_1_4_4_DTR |	\
> -				 SNOR_HWCAPS_READ_1_8_8_DTR)
> -
> -#define SNOR_HWCAPS_ALL		(SNOR_HWCAPS_READ_MASK |	\
> -				 SNOR_HWCAPS_PP_MASK)
> -
> -/**
>   * spi_nor_scan() - scan the SPI NOR
>   * @nor:	the spi_nor structure
>   * @name:	the chip type name
> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
