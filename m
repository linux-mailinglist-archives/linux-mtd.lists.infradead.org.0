Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D474F50EB2
	for <lists+linux-mtd@lfdr.de>; Mon, 24 Jun 2019 16:39:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fxPqF3yqy6Z/+SS7eHVDZPXz04UXeBJcOvDhHXJcKLc=; b=pPdlX9wdfTNC1g
	mb9M9U6UHvvhOHkYhj02vj9Nj1ehuuWNsickBSrxXAxUZP2JwfbXjnELjRHOyamPHasoc5AKJ4zpz
	BiwxVxd2kgdx9l1heqed1FpxsNT7wjMF2tU/zaEXX9GQPMtxTL5m4LPbhNJAU+XV0J2B06QZWOtbf
	L6BaH5wU0+bRGJfxngJGIfvyaLVLqnAxziQa+aAlT4+TZI0rUS9nzKcnRL4eHsaAf7qpT6x+MkcWz
	Eo4eWjsu53tALLUJrwVn/Ucq6V6vYJtCnZ/ixSNhDN+Z47o2Jl1tayNKUxIn0jUd4g8L/OVQsS9TY
	ti47+5ZS6zMdZD3P3YLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQ8F-0002It-3D; Mon, 24 Jun 2019 14:39:43 +0000
Received: from m15-41.126.com ([220.181.15.41])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQ7g-0001v4-MN
 for linux-mtd@lists.infradead.org; Mon, 24 Jun 2019 14:39:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=+sdgh
 JB/TLNpVA12VTC+HwIxrI+KvMHiMNktZnWRL0I=; b=nDmzM6deNuzbSwrhibezr
 9HRUmNgQwaPkgOLR/tLJWvg9VdbeCmCCq4XWftTp7b1lvGlRvRJ/D0bnDnugkck4
 8XL93ko6VLkMun3KxTMiCzwXnVuC1B5+HoatRWX+nt3Rq4nPQvPm+eJtjwuf+FQt
 rvCtj0IlZWZ2L7YvigS3ng=
Received: from liuxiang_1999$126.com ( [222.209.17.143] ) by
 ajax-webmail-wmsvr41 (Coremail) ; Mon, 24 Jun 2019 22:38:35 +0800 (CST)
X-Originating-IP: [222.209.17.143]
Date: Mon, 24 Jun 2019 22:38:35 +0800 (CST)
From: "Liu Xiang" <liuxiang_1999@126.com>
To: Tudor.Ambarus@microchip.com
Subject: Re:Re: [PATCH v3] mtd: spi-nor: fix nor->addr_width when its value
 configured from SFDP does not match the actual width
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
 20190614(cb3344cf) Copyright (c) 2002-2019 www.mailtech.cn 126com
In-Reply-To: <5ffc9e32-ff69-9819-7bfd-ad9f793bb629@microchip.com>
References: <1554018157-10860-1-git-send-email-liu.xiang6@zte.com.cn>
 <5ffc9e32-ff69-9819-7bfd-ad9f793bb629@microchip.com>
MIME-Version: 1.0
Message-ID: <675ae013.8c92.16b89eca4a9.Coremail.liuxiang_1999@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: KcqowAD3VIFs4BBduQhHAA--.19543W
X-CM-SenderInfo: xolx5x5dqjsiqzzzqiyswou0bp/1tbi2wndsFpD9RwKmQABsd
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_073909_428510_8C6209E0 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (liuxiang_1999[at]126.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (liuxiang_1999[at]126.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: vigneshr@ti.com, bbrezillon@kernel.org, richard@nod.at,
 linux-kernel@vger.kernel.org, marek.vasut@gmail.com,
 linux-mtd@lists.infradead.org, liu.xiang6@zte.com.cn, nagasure@xilinx.com,
 computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



Hi, ta

Thanks for your advice! I will send the update patch in soon.




At 2019-06-22 19:49:25, Tudor.Ambarus@microchip.com wrote:
>Hi, Liu,
>
>On 03/31/2019 10:42 AM, Liu Xiang wrote:
>
>> Some is25lp256 get BFPT_DWORD1_ADDRESS_BYTES_3_ONLY from BFPT table for
>> address width. But in actual fact the flash can support 4-byte address.
>> So we should fix it.
>
>It's better to be imperative. Substitute "So we should fix it" with something
>like "Use a post bfpt fixup hook to overwrite the address width advertised by
>the BFPT".
>
>>
>
>We'll need a fixes tag here.> Suggested-by: Boris Brezillon <bbrezillon@kernel.org>
>> Suggested-by: Vignesh Raghavendra <vigneshr@ti.com>
>
>When? If they didn't explicitly suggested this approach, lets drop the S-b tags.
>
>> Signed-off-by: Liu Xiang <liu.xiang6@zte.com.cn>
>> ---
>> 
>> Changes in v3:
>>  add a fixup for is25lp256 to solve the address width problem.
>> 
>>  drivers/mtd/spi-nor/spi-nor.c | 25 ++++++++++++++++++++++++-
>>  1 file changed, 24 insertions(+), 1 deletion(-)
>> 
>> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
>> index 6e13bbd..d252a66 100644
>> --- a/drivers/mtd/spi-nor/spi-nor.c
>> +++ b/drivers/mtd/spi-nor/spi-nor.c
>> @@ -1682,6 +1682,28 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
>>  		.flags = SPI_NOR_NO_FR | SPI_S3AN,
>>  
>>  static int
>> +is25lp256_post_bfpt_fixups(struct spi_nor *nor,
>> +			   const struct sfdp_parameter_header *bfpt_header,
>> +			   const struct sfdp_bfpt *bfpt,
>> +			   struct spi_nor_flash_parameter *params)
>> +{
>> +	/*
>> +	 * IS25LP256 supports 4B opcodes.
>> +	 * Unfortunately, some devices get BFPT_DWORD1_ADDRESS_BYTES_3_ONLY
>                            ^ which devices, did you get a list from issi?
>
>> +	 * from BFPT table for address width. We should fix it.
>
>How about "IS25LP256 supports 4B opcodes, but the BFPT advertises a
>BFPT_DWORD1_ADDRESS_BYTES_3_ONLY address width. Overwrite the address width
>advertised by the BFPT."
>
>> +	 */
>> +	if ((bfpt->dwords[BFPT_DWORD(1)] & BFPT_DWORD1_ADDRESS_BYTES_MASK) ==
>> +		BFPT_DWORD1_ADDRESS_BYTES_3_ONLY)
>> +		nor->addr_width = 4;
>> +
>> +	return 0;
>> +}
>> +
>> +static struct spi_nor_fixups is25lp256_fixups = {
>
>Naga will use "is25lp256_fixups" for the is25wp256 too, but it's not the case to
>change the name yet. All good here.
>
>I really want to have this in next, can I have an update in the next few days?
>
>Cheers,
>ta
______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
