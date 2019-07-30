Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCBE7B135
	for <lists+linux-mtd@lfdr.de>; Tue, 30 Jul 2019 20:04:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NszLP6/g4vkdfcDE6pxdE/AVaviAWaRRKn77EZlLtEk=; b=Y42wlb4uXKejQh
	UvYqg3xRJOnst7PXD5McNzuwlmjwVP8UgI8FenKTDJcYe8TAiSz3xtcNKRZdixVhhkLp5h0ohPab/
	2qNWWo2NH5Nij1zipOXw+ytQ9Jkieyd2Q5Oli2VWwQ0QSaRRjLmIgIBCmsS+SgEt9yM3LliyEsw7H
	tWVc2f5sf/2jVuGczJtv3eBqT2XCw/Gl4pfCJd5F/aeWxUbgmRFN05WNZyMnB6d/n3V3cUzdIOgus
	rS75R6eveN08Y1XHmspFjfDK1hGD+592/DQ8kmE8FBUwSU2ogu3dbjnVPr9XBMjw9QJ1kiD7usoRt
	rn/amp6MTUNlw4vsMgKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsWUM-0005D8-0I; Tue, 30 Jul 2019 18:04:42 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsWU9-0005AV-Qj
 for linux-mtd@lists.infradead.org; Tue, 30 Jul 2019 18:04:31 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6UI4P61065926;
 Tue, 30 Jul 2019 13:04:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1564509865;
 bh=Plg+6dO8ZCIV/LQ2ValIlp+OCS3L4NUfHtexWQxeqbQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=SciHzr6HoiABsNPhD7LE/mPyqAOuQIPQoGBAr8jh2lsEzUgMOGqF5RcstHgsdTULE
 Lig4h4y8W5jqJPamMySaW9lDwtFi1QhXGD/vgwljuQgtZEYq+Y7FALDwYj8WEYJ/7T
 iRxc8R3z2GJm2nvLuMM3OgBpurOLxbTtn0SmfpWY=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6UI4PSK111818
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 30 Jul 2019 13:04:25 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 30
 Jul 2019 13:04:24 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 30 Jul 2019 13:04:24 -0500
Received: from [10.250.133.35] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6UI4LYU105350;
 Tue, 30 Jul 2019 13:04:22 -0500
Subject: Re: [PATCH v2 1/2] mtd: spi-nor: Move m25p80 code in spi-nor.c
To: <Tudor.Ambarus@microchip.com>, <miquel.raynal@bootlin.com>,
 <richard@nod.at>, <marek.vasut@gmail.com>
References: <20190720080023.5279-1-vigneshr@ti.com>
 <20190720080023.5279-2-vigneshr@ti.com>
 <f6410e21-18c3-9733-4ea5-13eb26ad6169@microchip.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <512b5fac-b1e4-0350-a07c-184008f67341@ti.com>
Date: Tue, 30 Jul 2019 23:34:20 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <f6410e21-18c3-9733-4ea5-13eb26ad6169@microchip.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_110429_949237_075C81DD 
X-CRM114-Status: GOOD (  30.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: yogeshnarayan.gaur@nxp.com, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, bbrezillon@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Tudor,

On 25-Jul-19 4:49 PM, Tudor.Ambarus@microchip.com wrote:
> All,
> 
> I want this in 5.4, please review/test the soonest.
> 
> On 07/20/2019 11:00 AM, Vignesh Raghavendra wrote:
> 
>> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
>> index 03cc788511d5..f428a6d4022b 100644
>> --- a/drivers/mtd/spi-nor/spi-nor.c
>> +++ b/drivers/mtd/spi-nor/spi-nor.c
>> @@ -19,6 +19,7 @@
>>  
>>  #include <linux/mtd/mtd.h>
>>  #include <linux/of_platform.h>
>> +#include <linux/sched/task_stack.h>
>>  #include <linux/spi/flash.h>
>>  #include <linux/mtd/spi-nor.h>
>>  
>> @@ -288,6 +289,232 @@ struct flash_info {
>>  
>>  #define JEDEC_MFR(info)	((info)->id[0])
>>  
>> +/**
>> + * spi_nor_exec_op() - helper function to read/write flash registers
> 
> the function name can easily get confused with spi_mem_exec_op(). How about
> renaming it to spi_nor_spimem_xfer_reg(), it will be in concordance with
> spi_nor_spimem_xfer_data().
> 
>> + * @nor:        pointer to 'struct spi_nor'
>> + * @op:         pointer to 'struct spi_mem_op' template for transfer
>> + * @addr:       pointer to offset within flash
>> + * @buf:        pointer to data buffer into which data is read/written
>> + *              into
> 
>                    ^ drop second into
> 
>> + * @len:        length of the transfer
>> + *
>> + * Return: 0 on success, non-zero otherwise
> 
>                             ^ s/non-zero/-errno?
> 
>> + */
>> +static int spi_nor_exec_op(struct spi_nor *nor, struct spi_mem_op *op,
>> +			   u64 *addr, void *buf, size_t len)
>> +{
>> +	int ret;
>> +	bool usebouncebuf = false;
> 
> I don't think we need a bounce buffer for regs. What is the maximum size that we
> read/write regs, SPI_NOR_MAX_CMD_SIZE(8)?
> 
> In spi-nor.c the maximum length that we pass to nor->read_reg()/write_reg() is
> SPI_NOR_MAX_ID_LEN(6).
> 
> I can provide a patch to always use nor->cmd_buf when reading/writing regs so
> you respin the series on top of it, if you feel the same.
> 


> With nor->cmd_buf this function will be reduced to the following:
>

I will move the code introducing bounce buffer into separate patch at
the beginning of this series and switch over all read/write regs
functions to use bounce buffer instead of cmd_buf. cmd_buf will be dropped.
And then simplify this patch to spi_nor_spimem_xfer_reg() to you pointed
out below. Does that sound good?

> static int spi_nor_spimem_xfer_reg(struct spi_nor *nor, struct spi_mem_op *op)
> {
> 	if (!op || (op->data.nbytes && !nor->cmd_buf))
> 		return -EINVAL;
> 
> 	return spi_mem_exec_op(nor->spimem, op);
> }
> 
> spi_nor_exec_op() always received a NULL addr, let's get rid of it. We won't
> need buf anymore and you can retrieve the length from op->data.nbytes. Now that
> we trimmed the arguments, I think I would get rid of the
> spi_nor_data/nodata_op() wrappers and use spi_nor_spimem_xfer_reg() directly.
> 
>> +
>> +	if (!op || (len && !buf))
>> +		return -EINVAL;
>> +
>> +	if (op->addr.nbytes && addr)
>> +		op->addr.val = *addr;
>> +
>> +	op->data.nbytes = len;
>> +
>> +	if (object_is_on_stack(buf) || !virt_addr_valid(buf))
>> +		usebouncebuf = true;
>> +	if (len && usebouncebuf) {
>> +		if (len > nor->bouncebuf_size)
>> +			return -ENOTSUPP;
>> +
>> +		if (op->data.dir == SPI_MEM_DATA_IN) {
>> +			op->data.buf.in = nor->bouncebuf;
>> +		} else {
>> +			op->data.buf.out = nor->bouncebuf;
>> +			memcpy(nor->bouncebuf, buf, len);
>> +		}
>> +	} else {
>> +		op->data.buf.out = buf;
>> +	}
>> +
>> +	ret = spi_mem_exec_op(nor->spimem, op);
>> +	if (ret)
>> +		return ret;
>> +
>> +	if (usebouncebuf && len && op->data.dir == SPI_MEM_DATA_IN)
>> +		memcpy(buf, nor->bouncebuf, len);
>> +
>> +	return 0;
>> +}
> 
> cut
> 
>> +
>> +/**
>> + * spi_nor_spimem_xfer_data() - helper function to read/write data to
>> + *                              flash's memory region
>> + * @nor:        pointer to 'struct spi_nor'
>> + * @op:         pointer to 'struct spi_mem_op' template for transfer
>> + * @proto:      protocol to be used for transfer
>> + *
>> + * Return: number of bytes transferred on success, -errno otherwise
>> + */
>> +static ssize_t spi_nor_spimem_xfer_data(struct spi_nor *nor,
>> +					struct spi_mem_op *op,
>> +					enum spi_nor_protocol proto)
>> +{
>> +	bool usebouncebuf = false;
> 
> declare bool at the end to avoid stack padding.
> 

I prefer reverse xmas and hope compilers are intelligent enough to
reorder allocation to save padding :)

>> +	void *rdbuf = NULL;
>> +	const void *buf;
> 
> you can get rid of rdbuf and buf if you pass buf as argument.
> 
>> +	int ret;
>> +
>> +	/* get transfer protocols. */
>> +	op->cmd.buswidth = spi_nor_get_protocol_inst_nbits(proto);
>> +	op->addr.buswidth = spi_nor_get_protocol_addr_nbits(proto);
>> +	op->data.buswidth = spi_nor_get_protocol_data_nbits(proto);
>> +
>> +	if (op->data.dir == SPI_MEM_DATA_IN)
>> +		buf = op->data.buf.in;
>> +	else
>> +		buf = op->data.buf.out;
>> +
>> +	if (object_is_on_stack(buf) || !virt_addr_valid(buf))
>> +		usebouncebuf = true;
>> +
>> +	if (usebouncebuf) {
>> +		if (op->data.nbytes > nor->bouncebuf_size)
>> +			op->data.nbytes = nor->bouncebuf_size;
>> +
>> +		if (op->data.dir == SPI_MEM_DATA_IN) {
>> +			rdbuf = op->data.buf.in;
>> +			op->data.buf.in = nor->bouncebuf;
>> +		} else {
>> +			op->data.buf.out = nor->bouncebuf;
>> +			memcpy(nor->bouncebuf, buf,
>> +			       op->data.nbytes);
>> +		}
>> +	}
>> +
>> +	ret = spi_mem_adjust_op_size(nor->spimem, op);
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = spi_mem_exec_op(nor->spimem, op);
>> +	if (ret)
>> +		return ret;
>> +
>> +	if (usebouncebuf && op->data.dir == SPI_MEM_DATA_IN)
>> +		memcpy(rdbuf, nor->bouncebuf, op->data.nbytes);
>> +
>> +	return op->data.nbytes;
>> +}
>> +
>> +/**
>> + * spi_nor_spimem_read_data() - read data from flash's memory region via
>> + *                              spi-mem
>> + * @nor:        pointer to 'struct spi_nor'
>> + * @ofs:        offset to read from
>> + * @len:        number of bytes to read
>> + * @buf:        pointer to dst buffer
>> + *
>> + * Return: number of bytes read successfully, -errno otherwise
>> + */
>> +static ssize_t spi_nor_spimem_read_data(struct spi_nor *nor, loff_t ofs,
> 
> s/ofs/from? both flash and buf may have offsets, "from" better indicates that
> the offset is associated with the flash.

OK.

> 
>> +					size_t len, u8 *buf)
>> +{
>> +	struct spi_mem_op op =
>> +		SPI_MEM_OP(SPI_MEM_OP_CMD(nor->read_opcode, 1),
>> +			   SPI_MEM_OP_ADDR(nor->addr_width, ofs, 1),
>> +			   SPI_MEM_OP_DUMMY(nor->read_dummy, 1),
>> +			   SPI_MEM_OP_DATA_IN(len, buf, 1));
>> +
>> +	op.dummy.buswidth = spi_nor_get_protocol_addr_nbits(nor->read_proto);
>> +
>> +	/* convert the dummy cycles to the number of bytes */
>> +	op.dummy.nbytes = (nor->read_dummy * op.dummy.buswidth) / 8;
>> +
>> +	return spi_nor_spimem_xfer_data(nor, &op, nor->read_proto);
> 
> stop passing nor->read_proto and do all buswidth initialization here. This way
> we'll keep the inits all gathered together, and will have the xfer() that will
> do just the transfer (with bouncebuffer if needed). Function that does a single
> thing.
> 

Ok, my idea was to factor out all common code b/w
spi_nor_spimem_read_data() and spi_nor_spimem_write_data() in
spi_nor_spimem_xfer_data(). But, I am fine with your idea.

>> +}
> 
> cut
> 
>> @@ -459,7 +749,6 @@ static void spi_nor_set_4byte_opcodes(struct spi_nor *nor)
>>  		struct spi_nor_erase_map *map = &nor->erase_map;
>>  		struct spi_nor_erase_type *erase;
>>  		int i;
>> -
> 
> keep the blank line
> 

Will drop

> cut
> 
>> @@ -1406,7 +1807,18 @@ static int write_sr_cr(struct spi_nor *nor, u8 *sr_cr)
>>  
>>  	write_enable(nor);
>>  
>> -	ret = nor->write_reg(nor, SPINOR_OP_WRSR, sr_cr, 2);
>> +	if (nor->spimem) {
>> +		struct spi_mem_op op =
>> +			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_WRSR, 1),
>> +				   SPI_MEM_OP_NO_ADDR,
>> +				   SPI_MEM_OP_NO_DUMMY,
>> +				   SPI_MEM_OP_DATA_OUT(0, NULL, 1));
> 
> nbytes is 2.
> 

Will update when dropping spi_nor_data_op()

>> +
>> +		ret = spi_nor_data_op(nor, &op, sr_cr, 2);
>> +	} else {
>> +		ret = nor->write_reg(nor, SPINOR_OP_WRSR, sr_cr, 2);
>> +	}
> 
> cut
> 
>> @@ -1626,8 +2068,7 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
>>  		return ret;
>>  	}
>>  
>> -	/* Read back and check it. */
> 
> don't drop the comment

Agreed

> 
>> -	ret = nor->read_reg(nor, SPINOR_OP_RDSR2, &sr2, 1);
>> +	ret = spi_nor_read_sr2(nor, &sr2);
>>  	if (!(ret > 0 && (sr2 & SR2_QUAD_EN_BIT7))) {
>>  		dev_err(nor->dev, "SR2 Quad bit not set\n");
>>  		return -EINVAL;
>> @@ -2180,7 +2621,18 @@ static const struct flash_info *spi_nor_read_id(struct spi_nor *nor)
>>  	u8			id[SPI_NOR_MAX_ID_LEN];
>>  	const struct flash_info	*info;
>>  
>> -	tmp = nor->read_reg(nor, SPINOR_OP_RDID, id, SPI_NOR_MAX_ID_LEN);
>> +	if (nor->spimem) {
>> +		struct spi_mem_op op =
>> +			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_RDID, 1),
>> +				   SPI_MEM_OP_NO_ADDR,
>> +				   SPI_MEM_OP_NO_DUMMY,
>> +				   SPI_MEM_OP_DATA_IN(0, NULL, 1));
> 
> nbytes is SPI_NOR_MAX_ID_LEN and not 1.
> 

Will fix along with dropping spi_nor_data_op()

> Cheers,
> ta
> 

Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
