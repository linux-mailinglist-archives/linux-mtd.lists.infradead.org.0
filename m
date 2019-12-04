Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAD1112C36
	for <lists+linux-mtd@lfdr.de>; Wed,  4 Dec 2019 14:03:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bkAhaydDI58MjnD+BMMVNwrqBXy3KDMGeU6NezGSNdY=; b=HSqFpnxiVoGnAJ
	NUlseFf7g8ZrTx+4aRCnVu4NK35RfzK5k1E8qlsONj/0vjlieQAkt9+/2SqqZsav98JyI2j5jAjKv
	90QjhBzmPgs2GCtjMlnXNnsOpHU10IeHtS2FGtIGULVVERm2k0m/B9HDVWx4ec/XNOWxXMivdQaX3
	/csF+aqFxhRDxMdmtlUC0MfuHT9WLF1yyfJxZXFQ6U6aPhZwWTGVwRdKbF6sg575PgLpsRvAW6YMI
	Zabnd57MnY70zXuYXAeNPayxZRi3YDOSPg5fWideYOwArV0q1NCeiU4PgAv6GyDmfdrfeAzYPcLcX
	G5Fustb81yAjyY9SoLZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icUJo-00043q-24; Wed, 04 Dec 2019 13:03:48 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icUJc-00043Q-2n
 for linux-mtd@lists.infradead.org; Wed, 04 Dec 2019 13:03:37 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xB4D3MCh042037;
 Wed, 4 Dec 2019 07:03:22 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1575464603;
 bh=a648Q8PR7Fd9pDqZhKY3IibCqOE8UuutHYsZW4LNa+o=;
 h=From:Subject:To:CC:References:Date:In-Reply-To;
 b=AjWT/abcZk2gtbwVTyszweomFn8doLCGhBZcFQBek6PfBMkB2YyI0d1gTDHxz7sVi
 blsnHbbtXOJsdBysgnj3goSRNJa/xWHNkAJTmTyeU9foaYM36b0cGkCfhwYscGhHo7
 h9JaItthgWioy3XiBISRlz0w/7b6r4vRCHbLCfTw=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xB4D3MSp094535
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 4 Dec 2019 07:03:22 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 4 Dec
 2019 07:03:22 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 4 Dec 2019 07:03:22 -0600
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xB4D3I8p028973;
 Wed, 4 Dec 2019 07:03:18 -0600
From: Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH 3/4] mtd: spi-nor: Add Octal 8D-8D-8D mode support for
 Macronix mx25uw51245g
To: Mason Yang <masonccyang@mxic.com.tw>, <broonie@kernel.org>,
 <miquel.raynal@bootlin.com>, <richard@nod.at>, <marek.vasut@gmail.com>,
 <dwmw2@infradead.org>, <computersforpeace@gmail.com>,
 <bbrezillon@kernel.org>, <tudor.ambarus@microchip.com>
References: <1573808288-19365-1-git-send-email-masonccyang@mxic.com.tw>
 <1573808288-19365-4-git-send-email-masonccyang@mxic.com.tw>
Message-ID: <1f1a368a-e3d3-4e58-819e-b4dffc3212ef@ti.com>
Date: Wed, 4 Dec 2019 18:33:49 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <1573808288-19365-4-git-send-email-masonccyang@mxic.com.tw>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_050336_208247_C0D2D90D 
X-CRM114-Status: GOOD (  25.54  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: juliensu@mxic.com.tw, Boris Brezillon <boris.brezillon@bootlin.com>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 15/11/19 2:28 pm, Mason Yang wrote:
> mx25uw51245g is a SPI NOR that supports 1-1-1/8-8-8 mode and the SFDPRD
> command but returns an empty SFDP page. This forces us to add a new entry
> in the flash_info table and patch spi_nor_fixups hooks to tweak flash
> parameters for spi_nor_read/pp_setting() and then to enter
> Octal 8D-8D-8D modes.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@bootlin.com>
> Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 114 ++++++++++++++++++++++++++++++++++++++++++
>  include/linux/mtd/spi-nor.h   |   3 ++
>  2 files changed, 117 insertions(+)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 4cdf52d..9013590 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -615,6 +615,56 @@ static int write_disable(struct spi_nor *nor)
>  }
>  
>  /*
> + * Read configuration register 2, returning its value in the
> + * location. Return the configuration register 2 value.
> + * Returns negative if error occurred.
> + */
> +static int read_cr2(struct spi_nor *nor, u32 addr)

Please prefix spi_nor_* for all new functions. 
Also, include manf name if its vendor specific.

> +{
> +	int ret;
> +
> +	if (nor->spimem) {
> +		struct spi_mem_op op =
> +			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_RDCR2, 1),
> +				   SPI_MEM_OP_ADDR(4, addr, 1),
> +				   SPI_MEM_OP_DUMMY(4, 1),
> +				   SPI_MEM_OP_DATA_IN(1, nor->bouncebuf, 1));
> +
> +		if (spi_nor_protocol_is_8_8_8(nor->read_proto)) {
> +			op.cmd.buswidth = 8;
> +			op.addr.buswidth = 8;
> +			op.dummy.buswidth = 8;
> +			op.data.buswidth = 8;
> +			op.cmd.nbytes = 2;
> +
> +			if (spi_nor_protocol_is_8D_8D_8D(nor->read_proto)) {
> +				op.dummy.nbytes *= 2;
> +				op.cmd.dtr = true;
> +				op.addr.dtr = true;
> +				op.dummy.dtr = true;
> +				op.data.dtr = true;
> +			}
> +
> +			if (nor->ext_cmd_mode == EXT_CMD_IS_INVERSE)
> +				op.cmd.ext_opcode = ~SPINOR_OP_RDCR2;
> +			else
> +				op.cmd.ext_opcode = SPINOR_OP_RDCR2;
> +		}
> +
> +		ret = spi_mem_exec_op(nor->spimem, &op);
> +	} else {
> +		ret = -ENOTSUPP;
> +	}
> +
> +	if (ret < 0) {
> +		dev_err(nor->dev, "error %d reading CR\n", ret);
> +		return ret;
> +	}
> +
> +	return nor->bouncebuf[0];
> +}
> +
> +/*
>   * Write configuration register 2 one byte
>   * Returns negative if error occurred.
>   */
> @@ -2275,10 +2325,72 @@ static int spi_nor_spansion_clear_sr_bp(struct spi_nor *nor)
>  	return 0;
>  }
>  
> +static void
> +spi_nor_set_read_settings(struct spi_nor_read_command *read,
> +			  u8 num_mode_clocks,
> +			  u8 num_wait_states,
> +			  u8 opcode,
> +			  enum spi_nor_protocol proto);
> +
> +static void
> +spi_nor_set_pp_settings(struct spi_nor_pp_command *pp,
> +			u8 opcode,
> +			enum spi_nor_protocol proto);
> +
> +static void
> +mx25uw51245g_default_init(struct spi_nor *nor)
> +{
> +	struct spi_nor_flash_parameter *params = &nor->params;
> +
> +	if (!(nor->spimem->spi->mode & (SPI_RX_OCTAL | SPI_TX_OCTAL)))
> +		return;
> +
> +	/* Octal 8S-8S-8S mode */
> +	params->hwcaps.mask |= SNOR_HWCAPS_OPI_FULL_STR;
> +	spi_nor_set_read_settings(&params->reads[SNOR_CMD_READ_8_8_8],
> +				  0, 20, SPINOR_OP_READ_8_8_8,
> +				  SNOR_PROTO_8_8_8);
> +
> +	spi_nor_set_pp_settings(&params->page_programs[SNOR_CMD_PP_8_8_8],
> +				SPINOR_OP_PP_8_8_8, SNOR_PROTO_8_8_8);
> +
> +	/* Octal 8D-8D-8D mode */
> +	params->hwcaps.mask |= SNOR_HWCAPS_OPI_FULL_DTR;
> +	spi_nor_set_read_settings(&params->reads[SNOR_CMD_READ_8D_8D_8D],
> +				  0, 20, SPINOR_OP_READ_8D_8D_8D,
> +				  SNOR_PROTO_8_8_8_DTR);
> +
> +	spi_nor_set_pp_settings(&params->page_programs[SNOR_CMD_PP_8D_8D_8D],
> +				SPINOR_OP_PP_8D_8D_8D, SNOR_PROTO_8_8_8_DTR);
> +
> +	nor->ext_cmd_mode = EXT_CMD_IS_INVERSE;
> +}

I don't see anything that is macronix specific here.. Can this be moved to
generic code with information parsed from SFDP table?

> +
> +static void
> +mx25uw51245g_post_sfdp_fixups(struct spi_nor *nor)
> +{
> +	struct spi_nor_flash_parameter *params = &nor->params;
> +	u8 cr2;
> +
> +	cr2 = read_cr2(nor, CR2_REG0) & CR2_REG0_MODE_MASK;
> +
> +	if (params->hwcaps.mask & SNOR_HWCAPS_OPI_FULL_DTR)
> +		cr2 |= CR2_REG0_MODE_OPI_DTR;
> +	else if (params->hwcaps.mask & SNOR_HWCAPS_OPI_FULL_STR)
> +		cr2 |= CR2_REG0_MODE_OPI_STR;
> +
> +	write_cr2(nor, CR2_REG0, cr2);
> +}
> +

I see this as a misuse of sfdp_fixups hook:

 * @post_sfdp: called after SFDP has been parsed (is also called for SPI NORs
 *             that do not support RDSFDP). Typically used to tweak various
 *             parameters that could not be extracted by other means (i.e.
 *             when information provided by the SFDP/flash_info tables are
 *             incomplete or wrong).
 *


This should only tweak options parsed by SFDP and not be used to
configure flash to a different mode. Please add a separate function 
to do so. See https://patchwork.kernel.org/patch/10638085/

Also, I guess JESD216C provides a way to discover command sequence 
to enter OPI mode?

>  static struct spi_nor_fixups mx25l25635_fixups = {
>  	.post_bfpt = mx25l25635_post_bfpt_fixups,
>  };
>  
> +static struct spi_nor_fixups mx25uw51245g_fixups = {
> +	.default_init = mx25uw51245g_default_init,
> +	.post_sfdp = mx25uw51245g_post_sfdp_fixups,
> +};
> +
>  static void gd25q256_default_init(struct spi_nor *nor)
>  {
>  	/*
> @@ -2442,6 +2554,8 @@ static void gd25q256_default_init(struct spi_nor *nor)
>  			 SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ)
>  			 .fixups = &mx25l25635_fixups },
>  	{ "mx25u25635f", INFO(0xc22539, 0, 64 * 1024, 512, SECT_4K | SPI_NOR_4B_OPCODES) },
> +	{ "mx25uw51245g", INFO(0xc2813a, 0, 64 * 1024, 1024, SECT_4K | SPI_NOR_4B_OPCODES)
> +				.fixups = &mx25uw51245g_fixups},
>  	{ "mx25v8035f",  INFO(0xc22314, 0, 64 * 1024,  16,
>  			 SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
>  	{ "mx25l25655e", INFO(0xc22619, 0, 64 * 1024, 512, 0) },
> diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
> index 2e720ca..3aa54dd 100644
> --- a/include/linux/mtd/spi-nor.h
> +++ b/include/linux/mtd/spi-nor.h
> @@ -114,6 +114,9 @@
>  /* Write CFG Reg 2 - defined in JEDEC JESD216C. */
>  #define SPINOR_OP_WRCR2		0x72	/* Write configuration register 2 */
>  
> +/* Used for Macronix flashes only */
> +#define SPINOR_OP_RDCR2		0x71	/* Read configuration register 2 */
> +
>  /* Used for Macronix and Winbond flashes. */
>  #define SPINOR_OP_EN4B		0xb7	/* Enter 4-byte mode */
>  #define SPINOR_OP_EX4B		0xe9	/* Exit 4-byte mode */
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
