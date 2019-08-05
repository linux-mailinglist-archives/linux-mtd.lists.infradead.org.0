Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F62817DF
	for <lists+linux-mtd@lfdr.de>; Mon,  5 Aug 2019 13:10:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DVFWt3BpTw5hXQuBp11i+UjdL6Vyf10s9VUNkpvhgaY=; b=bkEkagVN4FofT/
	W58FXotUxgE5XoU5bAEOMiPQcyatJS5+IdPgYPngigo+Tcxqfezl97DdEwDMo0NiHlDlIftPqs3n7
	B7peCQTQnWUEIpG8/Yp3tqWdc5ezxHE6BR/hk5nHGjoalrEskk4TOwywKPdpaoXbLWsuE26StLAFt
	ywZ7P3P1riDfaH8xvvQFbt894if3ZbuJQ38sS1g+VmQnrgO0yd2B6LwbJrnp5y7XT/re/YmERq5Dr
	wB02n1B4gUKmAGARHFvok9VUigyQ3pKAMGskwK770AtMuVt1Ieui8sGsQyo80p5HSkkhfaFPEwSCQ
	viq+R2mCwt/UzE9xwUfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huasT-0003FS-6R; Mon, 05 Aug 2019 11:10:09 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huasA-0003F7-QY
 for linux-mtd@lists.infradead.org; Mon, 05 Aug 2019 11:09:52 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x75B9ha0087336;
 Mon, 5 Aug 2019 06:09:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565003384;
 bh=phcC27d39oZnXcLzFdJxH6ZDHLmxx0V6skoP0iFbOJg=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=zKqroS2pKrjvvvCSJ6M4rgBW8O8g9e878yOC9rwcDgZVxWBSX6YbQ+50wPcZ88BMd
 x8N6S3l/lQGjAyio/q+nz5A15qHHciPqxAD6LLLchBlotdi82pcStxi7TgcoTTEkVF
 ecd+GRLFlTp4QqaSdpmd0aEynXJKw0jT8/E0BO8c=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x75B9ha8085119
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 5 Aug 2019 06:09:43 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 5 Aug
 2019 06:09:43 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 5 Aug 2019 06:09:43 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x75B9eMd079870;
 Mon, 5 Aug 2019 06:09:41 -0500
Subject: Re: [PATCH v4 2/3] mtd: spi-nor: Move m25p80 code in spi-nor.c
To: <Tudor.Ambarus@microchip.com>, <miquel.raynal@bootlin.com>,
 <richard@nod.at>
References: <20190801162229.28897-1-vigneshr@ti.com>
 <20190801162229.28897-3-vigneshr@ti.com>
 <852ffdd1-a546-03db-3b60-47d60bd8d7cf@microchip.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <c4aa9ee0-9deb-9432-5ae6-0c807092ef35@ti.com>
Date: Mon, 5 Aug 2019 16:40:24 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <852ffdd1-a546-03db-3b60-47d60bd8d7cf@microchip.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_040950_946691_727D0A32 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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
Cc: marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, tmaimon77@gmail.com, bbrezillon@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 05/08/19 3:55 PM, Tudor.Ambarus@microchip.com wrote:
> 
> 
> On 08/01/2019 07:22 PM, Vignesh Raghavendra wrote:
> 
>> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
>> index e02376e1127b..866962c715b4 100644
>> --- a/drivers/mtd/spi-nor/spi-nor.c
>> +++ b/drivers/mtd/spi-nor/spi-nor.c
>> @@ -19,6 +19,7 @@
> 
> cut
> 
>> +static ssize_t spi_nor_spimem_read_data(struct spi_nor *nor, loff_t from,
>> +					size_t len, u8 *buf)
>> +{
>> +	struct spi_mem_op op =
>> +		SPI_MEM_OP(SPI_MEM_OP_CMD(nor->read_opcode, 1),
>> +			   SPI_MEM_OP_ADDR(nor->addr_width, from, 1),
>> +			   SPI_MEM_OP_DUMMY(nor->read_dummy, 1),
>> +			   SPI_MEM_OP_DATA_IN(len, buf, 1));
>> +
>> +	/* get transfer protocols. */
>> +	op.cmd.buswidth = spi_nor_get_protocol_inst_nbits(nor->read_proto);
>> +	op.addr.buswidth = spi_nor_get_protocol_addr_nbits(nor->read_proto);
> 
> nit: op.dummy.buswidth = op.addr.buswidth;
> 

Sure, will change.

> cut
> 
>>  
>> @@ -688,6 +1003,16 @@ static int spi_nor_erase_sector(struct spi_nor *nor, u32 addr)
>>  	if (nor->erase)
>>  		return nor->erase(nor, addr);
>>  
>> +	if (nor->spimem) {
>> +		struct spi_mem_op op =
>> +			SPI_MEM_OP(SPI_MEM_OP_CMD(nor->erase_opcode, 1),
>> +				   SPI_MEM_OP_ADDR(nor->addr_width, addr, 1),
>> +				   SPI_MEM_OP_NO_DUMMY,
>> +				   SPI_MEM_OP_NO_DATA);
>> +
>> +		return spi_mem_exec_op(nor->spimem, &op);
>> +	}
>> +
> 
> this should be done below in the function, after masking the address.

Nope. It would have been true if addr been sent as part of op.data.buf.out. 
But since addr is being send as part of op.addr.val, spi-mem.c takes care of this for spi_transfer(s)

> 
> You add a double space after return in:
>> +	return  nor->read_reg(nor, SPINOR_OP_RDSR2, sr2, 1);
> 

Ah, Will fix

> There are some checkpatch warnings that we can fix now.
> 

I did see warnings like:
>
>WARNING: line over 80 characters
>#1023: FILE: drivers/mtd/spi-nor/spi-nor.c:2554:
>+				   SPI_MEM_OP_DATA_IN(SPI_NOR_MAX_ID_LEN, id, 1));

I think its okay to overshoot 80 char limit for better readability. 
Let me know if you think otherwise

> ERROR: space required after that ',' (ctx:VxV)
>#1270: FILE: drivers/mtd/spi-nor/spi-nor.c:4846:
>+	{"mx25l25635e"},{"mx66l51235l"},
> 	               ^

This and similar warnings can be fixed, but will throw off alignment wrt previous lines.
Therefore I let them be as is.



> Looks good!
> ta
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
