Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A2D9C310
	for <lists+linux-mtd@lfdr.de>; Sun, 25 Aug 2019 13:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u/lsLTJOFfLLg+7wrEOD6GfFB+8b3JhtFtjcS07NVlI=; b=B/amSvuLcspzVU
	kvde5xpUiR0JowJKPXkfhlODwVgdp5MB6zYPECzIIL2M5+/Skw7Wl8mjUMLw7gnBtsybSK2v4C5LS
	habILgVdW+ap5eCWijBGgMJD+1i7OfGsQq5+ck9n9z7d/PJCNwRbw1gKMjZdd+qpL6inJ+ySEELUz
	7Z/l9FTF6e5a69/vF9P0Iekae/GX8KjsOlbgbq2qtg84BPbeWQyT0oczVaTMNV5YP7/C5I4kudNei
	XbiJRn0i52zQwDOiy0943jf/Q0grxCIaoZPH2YQvBxjiWD1fqQExZ2CToCx7a7cXhrqzDCf8QsuZc
	kxIW4fZNpakcPweeaWvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1qmq-0005vU-LU; Sun, 25 Aug 2019 11:34:20 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1qmd-0005u7-6w
 for linux-mtd@lists.infradead.org; Sun, 25 Aug 2019 11:34:10 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E2A45260D8D;
 Sun, 25 Aug 2019 12:34:05 +0100 (BST)
Date: Sun, 25 Aug 2019 13:34:02 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH 5/5] mtd: spi-nor: Move erase_map to 'struct
 spi_nor_flash_parameter'
Message-ID: <20190825133402.18ff8c96@collabora.com>
In-Reply-To: <20190823155325.13459-6-tudor.ambarus@microchip.com>
References: <20190823155325.13459-1-tudor.ambarus@microchip.com>
 <20190823155325.13459-6-tudor.ambarus@microchip.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_043407_508441_67F26D07 
X-CRM114-Status: GOOD (  27.18  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: vigneshr@ti.com, richard@nod.at, linux-kernel@vger.kernel.org,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 23 Aug 2019 15:53:43 +0000
<Tudor.Ambarus@microchip.com> wrote:

> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> All flash parameters and settings should reside inside
> 'struct spi_nor_flash_parameter'. Move the SMPT parsed erase map
> from 'struct spi_nor' to 'struct spi_nor_flash_parameter'.
> 
> Please note that there is a roll-back mechanism for the flash
> parameter and settings, for cases when SFDP parser fails. The SFDP
> parser receives a Stack allocated copy of nor->params, called
> sfdp_params, and uses it to retrieve the serial flash discoverable
> parameters. JESD216 SFDP is a standard and has a higher priority
> than the legacy initialized flash parameters, so will overwrite the
> sfdp_params data when needed. All SFDP code uses the local copy of
> nor->params, that will overwrite it in the end, if the parser succeds.
> 
> Saving and restoring the nor->params.erase_map is no longer needed,
> since the SFDP code does not touch it.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/spi-nor/spi-nor.c | 40 +++++++++++++++++++++-------------------
>  include/linux/mtd/spi-nor.h   |  8 +++++---
>  2 files changed, 26 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 15b0b1148bf3..f5c1c71caf1b 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -600,7 +600,7 @@ static void spi_nor_set_4byte_opcodes(struct spi_nor *nor)
>  	nor->erase_opcode = spi_nor_convert_3to4_erase(nor->erase_opcode);
>  
>  	if (!spi_nor_has_uniform_erase(nor)) {
> -		struct spi_nor_erase_map *map = &nor->erase_map;
> +		struct spi_nor_erase_map *map = &nor->params.erase_map;
>  		struct spi_nor_erase_type *erase;
>  		int i;
>  
> @@ -1133,7 +1133,7 @@ static int spi_nor_init_erase_cmd_list(struct spi_nor *nor,
>  				       struct list_head *erase_list,
>  				       u64 addr, u32 len)
>  {
> -	const struct spi_nor_erase_map *map = &nor->erase_map;
> +	const struct spi_nor_erase_map *map = &nor->params.erase_map;
>  	const struct spi_nor_erase_type *erase, *prev_erase = NULL;
>  	struct spi_nor_erase_region *region;
>  	struct spi_nor_erase_command *cmd = NULL;
> @@ -3328,7 +3328,7 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
>  			      const struct sfdp_parameter_header *bfpt_header,
>  			      struct spi_nor_flash_parameter *params)
>  {
> -	struct spi_nor_erase_map *map = &nor->erase_map;
> +	struct spi_nor_erase_map *map = &params->erase_map;
>  	struct spi_nor_erase_type *erase_type = map->erase_type;
>  	struct sfdp_bfpt bfpt;
>  	size_t len;
> @@ -3409,7 +3409,7 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
>  	 * Erase Types defined in the bfpt table.
>  	 */
>  	erase_mask = 0;
> -	memset(&nor->erase_map, 0, sizeof(nor->erase_map));
> +	memset(&params->erase_map, 0, sizeof(params->erase_map));
>  	for (i = 0; i < ARRAY_SIZE(sfdp_bfpt_erases); i++) {
>  		const struct sfdp_bfpt_erase *er = &sfdp_bfpt_erases[i];
>  		u32 erasesize;
> @@ -3684,14 +3684,18 @@ spi_nor_region_check_overlay(struct spi_nor_erase_region *region,
>  /**
>   * spi_nor_init_non_uniform_erase_map() - initialize the non-uniform erase map
>   * @nor:	pointer to a 'struct spi_nor'
> + * @params:     pointer to a duplicate 'struct spi_nor_flash_parameter' that is
> + *              used for storing SFDP parsed data
>   * @smpt:	pointer to the sector map parameter table
>   *
>   * Return: 0 on success, -errno otherwise.
>   */
> -static int spi_nor_init_non_uniform_erase_map(struct spi_nor *nor,
> -					      const u32 *smpt)
> +static int
> +spi_nor_init_non_uniform_erase_map(struct spi_nor *nor,
> +				   struct spi_nor_flash_parameter *params,
> +				   const u32 *smpt)
>  {
> -	struct spi_nor_erase_map *map = &nor->erase_map;
> +	struct spi_nor_erase_map *map = &params->erase_map;
>  	struct spi_nor_erase_type *erase = map->erase_type;
>  	struct spi_nor_erase_region *region;
>  	u64 offset;
> @@ -3770,6 +3774,8 @@ static int spi_nor_init_non_uniform_erase_map(struct spi_nor *nor,
>   * spi_nor_parse_smpt() - parse Sector Map Parameter Table
>   * @nor:		pointer to a 'struct spi_nor'
>   * @smpt_header:	sector map parameter table header
> + * @params:		pointer to a duplicate 'struct spi_nor_flash_parameter'
> + *                      that is used for storing SFDP parsed data
>   *
>   * This table is optional, but when available, we parse it to identify the
>   * location and size of sectors within the main data array of the flash memory
> @@ -3778,7 +3784,8 @@ static int spi_nor_init_non_uniform_erase_map(struct spi_nor *nor,
>   * Return: 0 on success, -errno otherwise.
>   */
>  static int spi_nor_parse_smpt(struct spi_nor *nor,
> -			      const struct sfdp_parameter_header *smpt_header)
> +			      const struct sfdp_parameter_header *smpt_header,
> +			      struct spi_nor_flash_parameter *params)
>  {
>  	const u32 *sector_map;
>  	u32 *smpt;
> @@ -3807,11 +3814,11 @@ static int spi_nor_parse_smpt(struct spi_nor *nor,
>  		goto out;
>  	}
>  
> -	ret = spi_nor_init_non_uniform_erase_map(nor, sector_map);
> +	ret = spi_nor_init_non_uniform_erase_map(nor, params, sector_map);
>  	if (ret)
>  		goto out;
>  
> -	spi_nor_regions_sort_erase_types(&nor->erase_map);
> +	spi_nor_regions_sort_erase_types(&params->erase_map);
>  	/* fall through */
>  out:
>  	kfree(smpt);
> @@ -3867,7 +3874,7 @@ static int spi_nor_parse_4bait(struct spi_nor *nor,
>  		{ 0u /* not used */,		BIT(12) },
>  	};
>  	struct spi_nor_pp_command *params_pp = params->page_programs;
> -	struct spi_nor_erase_map *map = &nor->erase_map;
> +	struct spi_nor_erase_map *map = &params->erase_map;
>  	struct spi_nor_erase_type *erase_type = map->erase_type;
>  	u32 *dwords;
>  	size_t len;
> @@ -4097,7 +4104,7 @@ static int spi_nor_parse_sfdp(struct spi_nor *nor,
>  
>  		switch (SFDP_PARAM_HEADER_ID(param_header)) {
>  		case SFDP_SECTOR_MAP_ID:
> -			err = spi_nor_parse_smpt(nor, param_header);
> +			err = spi_nor_parse_smpt(nor, param_header, params);
>  			break;
>  
>  		case SFDP_4BAIT_ID:
> @@ -4129,7 +4136,7 @@ static int spi_nor_parse_sfdp(struct spi_nor *nor,
>  static int spi_nor_init_params(struct spi_nor *nor)
>  {
>  	struct spi_nor_flash_parameter *params = &nor->params;
> -	struct spi_nor_erase_map *map = &nor->erase_map;
> +	struct spi_nor_erase_map *map = &params->erase_map;
>  	const struct flash_info *info = nor->info;
>  	u8 i, erase_mask;
>  
> @@ -4229,17 +4236,12 @@ static int spi_nor_init_params(struct spi_nor *nor)
>  	if ((info->flags & (SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ)) &&
>  	    !(info->flags & SPI_NOR_SKIP_SFDP)) {
>  		struct spi_nor_flash_parameter sfdp_params;
> -		struct spi_nor_erase_map prev_map;
>  
>  		memcpy(&sfdp_params, params, sizeof(sfdp_params));
> -		memcpy(&prev_map, &nor->erase_map, sizeof(prev_map));
>  
>  		if (spi_nor_parse_sfdp(nor, &sfdp_params)) {
>  			nor->addr_width = 0;
>  			nor->flags &= ~SNOR_F_4B_OPCODES;
> -			/* restore previous erase map */
> -			memcpy(&nor->erase_map, &prev_map,
> -			       sizeof(nor->erase_map));
>  		} else {
>  			memcpy(params, &sfdp_params, sizeof(*params));
>  		}
> @@ -4353,7 +4355,7 @@ spi_nor_select_uniform_erase(struct spi_nor_erase_map *map,
>  
>  static int spi_nor_select_erase(struct spi_nor *nor, u32 wanted_size)
>  {
> -	struct spi_nor_erase_map *map = &nor->erase_map;
> +	struct spi_nor_erase_map *map = &nor->params.erase_map;
>  	const struct spi_nor_erase_type *erase = NULL;
>  	struct mtd_info *mtd = &nor->mtd;
>  	int i;
> diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
> index 399ac34a529d..a3a765c21edc 100644
> --- a/include/linux/mtd/spi-nor.h
> +++ b/include/linux/mtd/spi-nor.h
> @@ -479,6 +479,8 @@ struct spi_nor;
>   *                      in the array, the higher priority.
>   * @page_programs:	page program capabilities ordered by priority: the
>   *                      higher index in the array, the higher priority.
> + * @erase_map:		the erase map parsed from the SFDP Sector Map Parameter
> + *                      Table.
>   * @quad_enable:	enables SPI NOR quad mode.
>   * @disable_block_protection: disables block protection during power-up.
>   */
> @@ -490,6 +492,8 @@ struct spi_nor_flash_parameter {
>  	struct spi_nor_read_command	reads[SNOR_CMD_READ_MAX];
>  	struct spi_nor_pp_command	page_programs[SNOR_CMD_PP_MAX];
>  
> +	struct spi_nor_erase_map        erase_map;
> +
>  	int (*quad_enable)(struct spi_nor *nor);
>  	int (*disable_block_protection)(struct spi_nor *nor);
>  };
> @@ -521,7 +525,6 @@ struct flash_info;
>   * @read_proto:		the SPI protocol for read operations
>   * @write_proto:	the SPI protocol for write operations
>   * @reg_proto		the SPI protocol for read_reg/write_reg/erase operations
> - * @erase_map:		the erase map of the SPI NOR
>   * @prepare:		[OPTIONAL] do some preparations for the
>   *			read/write/erase/lock/unlock operations
>   * @unprepare:		[OPTIONAL] do some post work after the
> @@ -562,7 +565,6 @@ struct spi_nor {
>  	enum spi_nor_protocol	reg_proto;
>  	bool			sst_write_second;
>  	u32			flags;
> -	struct spi_nor_erase_map	erase_map;
>  
>  	int (*prepare)(struct spi_nor *nor, enum spi_nor_ops ops);
>  	void (*unprepare)(struct spi_nor *nor, enum spi_nor_ops ops);
> @@ -609,7 +611,7 @@ spi_nor_region_mark_overlay(struct spi_nor_erase_region *region)
>  
>  static bool __maybe_unused spi_nor_has_uniform_erase(const struct spi_nor *nor)
>  {
> -	return !!nor->erase_map.uniform_erase_type;
> +	return !!nor->params.erase_map.uniform_erase_type;
>  }
>  
>  static inline void spi_nor_set_flash_node(struct spi_nor *nor,


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
