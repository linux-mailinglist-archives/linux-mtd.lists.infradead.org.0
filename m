Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 618264985D
	for <lists+linux-mtd@lfdr.de>; Tue, 18 Jun 2019 06:30:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r1NBSMVKNKYmBHT71m0wzI+3YzQtrtYsY1PeuZ6AMbI=; b=OVljIZnsRoSY4n
	yfLybEF6B2hg5It1KTioaBEOvHSsDnknuuf8h2ZUbGWV7HNK04mjL5nQ7c5d0h0ERbwJO1NuHHKVp
	j3zTAERlAqkfDRjq2C5/tjMOpYVZ4lOWO6rlVsEPS5MJMihme2+0uemrK3RzBx4KwiC7aexciLD7L
	KDwurz8rlB5LYlI8SEiR3UialWqC7GzQCeEq/VfUFT+yk07drsPgzk7gfuB/NQ8L64ypzm9MxNMKi
	sD9VfOv0szO6ncaW97MCwsyUGSR5+EmYNw9PykFIlUmCzuj3qM+Ex1vOVgNgpD3LIu1ODRP88NcJP
	UAy1fGLbuegFL7+7ahpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd5lP-0004BR-DN; Tue, 18 Jun 2019 04:30:31 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd5lF-0004Ap-9W
 for linux-mtd@lists.infradead.org; Tue, 18 Jun 2019 04:30:22 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5I4UCxS006649;
 Mon, 17 Jun 2019 23:30:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560832212;
 bh=jy0O0q00SMaAtIZLsjOFVvbAUWzpVwJidYDShm/Frn8=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=D7cSphGd+ZaQPr9kKAW2KqQFw0Nqk/Q7ZZp8Lsa3op3P23ONJ7hJPCp88v2HYfp8L
 e68QGsqNpy9DZYwltKYMT3U5nHl3D3/SXynHB9PrWDpYG7W3BCLosHZyE1jIg1KWWe
 3vt2ROwSZ5AikVDsxHKQN2A7DUg3SwNHgbGrrlwc=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5I4UCnr077242
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 17 Jun 2019 23:30:12 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 17
 Jun 2019 23:30:12 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 17 Jun 2019 23:30:12 -0500
Received: from [172.24.145.200] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5I4U9iJ106107;
 Mon, 17 Jun 2019 23:30:10 -0500
Subject: Re: [PATCH v4] mtd: devices: m25p80: Use the spi-mem dirmap API
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>, Marek Vasut
 <marek.vasut@gmail.com>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Richard Weinberger <richard@nod.at>, <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
References: <610761cf-5a19-c182-07d8-8d118ca20035@cogentembedded.com>
 <c405efc0-58ef-c67a-d519-95e0eb843229@cogentembedded.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <5cba0c3f-e42c-9d29-b21a-a0255f532e6f@ti.com>
Date: Tue, 18 Jun 2019 10:00:09 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <c405efc0-58ef-c67a-d519-95e0eb843229@cogentembedded.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_213021_419337_79E7ACF0 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

On 01-Jun-19 12:01 AM, Sergei Shtylyov wrote:
[...]
> 
>  drivers/mtd/devices/m25p80.c |  102 +++++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 99 insertions(+), 3 deletions(-)
> 
> Index: linux/drivers/mtd/devices/m25p80.c
> ===================================================================
> --- linux.orig/drivers/mtd/devices/m25p80.c
> +++ linux/drivers/mtd/devices/m25p80.c
> @@ -31,8 +31,70 @@
>  struct m25p {
>  	struct spi_mem		*spimem;
>  	struct spi_nor		spi_nor;
> +	struct {
> +		struct spi_mem_dirmap_desc *rdesc;
> +		struct spi_mem_dirmap_desc *wdesc;
> +	} dirmap;
>  };
>  
> +static int m25p_create_write_dirmap(struct m25p *flash)
> +{
> +	struct spi_nor *nor = &flash->spi_nor;
> +	struct spi_mem_dirmap_info info = {
> +		.op_tmpl = SPI_MEM_OP(SPI_MEM_OP_CMD(nor->program_opcode, 1),
> +				      SPI_MEM_OP_ADDR(nor->addr_width, 0, 1),
> +				      SPI_MEM_OP_NO_DUMMY,
> +				      SPI_MEM_OP_DATA_OUT(0, NULL, 1)),
> +		.offset = 0,
> +		.length = flash->spi_nor.mtd.size,
> +	};
> +	struct spi_mem_op *op = &info.op_tmpl;
> +
> +	/* get transfer protocols. */
> +	op->cmd.buswidth = spi_nor_get_protocol_inst_nbits(nor->write_proto);
> +	op->addr.buswidth = spi_nor_get_protocol_addr_nbits(nor->write_proto);
> +	op->dummy.buswidth = op->addr.buswidth;
> +	op->data.buswidth = spi_nor_get_protocol_data_nbits(nor->write_proto);
> +
> +	if (nor->program_opcode == SPINOR_OP_AAI_WP && nor->sst_write_second)
> +		op->addr.nbytes = 0;
> +
> +	flash->dirmap.wdesc = spi_mem_dirmap_create(flash->spimem, &info);

Could you change this and elsewhere to devm_spi_mem_dirmap_create() and
thus simplify error handling?

Regards
Vignesh


> +	if (IS_ERR(flash->dirmap.wdesc))
> +		return PTR_ERR(flash->dirmap.wdesc);
> +
> +	return 0;
> +}
> +
> +static int m25p_create_read_dirmap(struct m25p *flash)
> +{
> +	struct spi_nor *nor = &flash->spi_nor;
> +	struct spi_mem_dirmap_info info = {
> +		.op_tmpl = SPI_MEM_OP(SPI_MEM_OP_CMD(nor->read_opcode, 1),
> +				      SPI_MEM_OP_ADDR(nor->addr_width, 0, 1),
> +				      SPI_MEM_OP_DUMMY(nor->read_dummy, 1),
> +				      SPI_MEM_OP_DATA_IN(0, NULL, 1)),
> +		.offset = 0,
> +		.length = flash->spi_nor.mtd.size,
> +	};
> +	struct spi_mem_op *op = &info.op_tmpl;
> +
> +	/* get transfer protocols. */
> +	op->cmd.buswidth = spi_nor_get_protocol_inst_nbits(nor->read_proto);
> +	op->addr.buswidth = spi_nor_get_protocol_addr_nbits(nor->read_proto);
> +	op->dummy.buswidth = op->addr.buswidth;
> +	op->data.buswidth = spi_nor_get_protocol_data_nbits(nor->read_proto);
> +
> +	/* convert the dummy cycles to the number of bytes */
> +	op->dummy.nbytes = (nor->read_dummy * op->dummy.buswidth) / 8;
> +
> +	flash->dirmap.rdesc = spi_mem_dirmap_create(flash->spimem, &info);
> +	if (IS_ERR(flash->dirmap.rdesc))
> +		return PTR_ERR(flash->dirmap.rdesc);
> +
> +	return 0;
> +}
> +
>  static int m25p80_read_reg(struct spi_nor *nor, u8 code, u8 *val, int len)
>  {
>  	struct m25p *flash = nor->priv;
> @@ -92,6 +154,9 @@ static ssize_t m25p80_write(struct spi_n
>  				   SPI_MEM_OP_DATA_OUT(len, buf, 1));
>  	int ret;
>  
> +	if (flash->dirmap.wdesc)
> +		return spi_mem_dirmap_write(flash->dirmap.wdesc, to, len, buf);
> +
>  	/* get transfer protocols. */
>  	op.cmd.buswidth = spi_nor_get_protocol_inst_nbits(nor->write_proto);
>  	op.addr.buswidth = spi_nor_get_protocol_addr_nbits(nor->write_proto);
> @@ -128,6 +193,9 @@ static ssize_t m25p80_read(struct spi_no
>  	size_t remaining = len;
>  	int ret;
>  
> +	if (flash->dirmap.rdesc)
> +		return spi_mem_dirmap_read(flash->dirmap.rdesc, from, len, buf);
> +
>  	/* get transfer protocols. */
>  	op.cmd.buswidth = spi_nor_get_protocol_inst_nbits(nor->read_proto);
>  	op.addr.buswidth = spi_nor_get_protocol_addr_nbits(nor->read_proto);
> @@ -238,19 +306,47 @@ static int m25p_probe(struct spi_mem *sp
>  	if (ret)
>  		return ret;
>  
> -	return mtd_device_register(&nor->mtd, data ? data->parts : NULL,
> -				   data ? data->nr_parts : 0);
> +	ret = m25p_create_write_dirmap(flash);
> +	if (ret)
> +		return ret;
> +
> +	ret = m25p_create_read_dirmap(flash);
> +	if (ret)
> +		goto err_destroy_write_dirmap;
> +
> +	ret = mtd_device_register(&nor->mtd, data ? data->parts : NULL,
> +				  data ? data->nr_parts : 0);
> +	if (ret)
> +		goto err_destroy_read_dirmap;
> +
> +	return 0;
> +
> +err_destroy_read_dirmap:
> +	spi_mem_dirmap_destroy(flash->dirmap.rdesc);
> +
> +err_destroy_write_dirmap:
> +	spi_mem_dirmap_destroy(flash->dirmap.wdesc);
> +
> +	return ret;
>  }
>  
>  
>  static int m25p_remove(struct spi_mem *spimem)
>  {
>  	struct m25p	*flash = spi_mem_get_drvdata(spimem);
> +	int ret;
>  
>  	spi_nor_restore(&flash->spi_nor);
>  
>  	/* Clean up MTD stuff. */
> -	return mtd_device_unregister(&flash->spi_nor.mtd);
> +	ret = mtd_device_unregister(&flash->spi_nor.mtd);
> +	if (ret)
> +		return ret;
> +
> +	spi_mem_dirmap_destroy(flash->dirmap.rdesc);
> +	spi_mem_dirmap_destroy(flash->dirmap.wdesc);
> +
> +	return 0;
>  }
>  
>  static void m25p_shutdown(struct spi_mem *spimem)
> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
