Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2627F1B26
	for <lists+linux-mtd@lfdr.de>; Wed,  6 Nov 2019 17:26:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6LgNhQgduH/44A+jub14IxOv4vEpl3xOv8SdBfVDgXU=; b=pqdQHLWUXG0C+q
	arUTlQw/8AIi/k9B1h3atSTEOiMshsYVBj8h/AdjjyAEPk3AEjAzrh0/OyvykoTg+Bn/TnxPPJMD4
	/4JjTv0J06r3UnVSDBkr6TzeCG8NS8vAWLw1JhSOUPU0iH898VuwSIDiP8uo6s/+fuLUgc1JdPNFq
	biMNvQEIWOP5qJ9K0BCh3Xxkb9PkJYJRdfXJjOVA4UI2Pv9UZ62DNThdMhPNOFLiGXMCav4voZhpo
	HKssSp9E94UFDtv3Su+HDogTGTlQN8PICZ902YUFuG2W2oGsTXKuImJtEehzXuPDtqP8E7TZWO2Hg
	Psi1/DTXJkb3BAXD5BKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSO8r-0003fu-9K; Wed, 06 Nov 2019 16:26:45 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSO8j-0003f3-Hx
 for linux-mtd@lists.infradead.org; Wed, 06 Nov 2019 16:26:39 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xA6GQNDb117954;
 Wed, 6 Nov 2019 10:26:23 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573057583;
 bh=X2oBSwJNQPZVsVwxr22Pa+22epqGXv5cpkuKVJLk37w=;
 h=From:Subject:To:CC:References:Date:In-Reply-To;
 b=ISC8GuM88VTWl5REKJnJPa5Uu5p5RrYZ3NzQDKRMyFVbx08bjbhxkVsmRh8eFitnk
 JNOOWtavqblIKvUNmQs//m4KC4nrf0rFaMiTp8+Ys5bb44F6M7rgOHXGYu7RX7B6rU
 FXQhcAKPnaN5OuaqCWiZ7M/4pObIJR+ttoMuVmvk=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xA6GQNsi046367
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 6 Nov 2019 10:26:23 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 6 Nov
 2019 10:26:22 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 6 Nov 2019 10:26:07 -0600
Received: from [10.250.133.248] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA6GQKaH056886;
 Wed, 6 Nov 2019 10:26:20 -0600
From: Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH v4 13/20] mtd: spi-nor: Fix clearing of QE bit on
 lock()/unlock()
To: <Tudor.Ambarus@microchip.com>, <boris.brezillon@collabora.com>
References: <20191102112316.20715-1-tudor.ambarus@microchip.com>
 <20191102112316.20715-14-tudor.ambarus@microchip.com>
 <14e9c474-1a92-b8be-12cf-56c7f6d0d696@ti.com>
 <af6fa950-495f-9e49-bcfe-09188e454b6d@microchip.com>
Message-ID: <36967b16-a52d-667f-cd61-cef9b87a83cf@ti.com>
Date: Wed, 6 Nov 2019 21:56:04 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <af6fa950-495f-9e49-bcfe-09188e454b6d@microchip.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_082637_764372_97074C7A 
X-CRM114-Status: GOOD (  24.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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

Hi,

On 06/11/19 2:03 PM, Tudor.Ambarus@microchip.com wrote:
> 
> 
> On 11/05/2019 07:07 PM, Vignesh Raghavendra wrote:
>> On 02-Nov-19 4:53 PM, Tudor.Ambarus@microchip.com wrote:
>>> From: Tudor Ambarus <tudor.ambarus@microchip.com>
>>>
>>> Make sure that when doing a lock() or an unlock() operation we don't clear
>>> the QE bit from Status Register 2.
>>>
>>> JESD216 revB or later offers information about the *default* Status
>>> Register commands to use (see BFPT DWORDS[15], bits 22:20). In this
>>> standard, Status Register 1 refers to the first data byte transferred on a
>>> Read Status (05h) or Write Status (01h) command. Status register 2 refers
>>> to the byte read using instruction 35h. Status register 2 is the second
>>> byte transferred in a Write Status (01h) command.
>>>
>>> Industry naming and definitions of these Status Registers may differ.
>>> The definitions are described in JESD216B, BFPT DWORDS[15], bits 22:20.
>>> There are cases in which writing only one byte to the Status Register 1
>>> has the side-effect of clearing Status Register 2 and implicitly the Quad
>>> Enable bit. This side-effect is hit just by the
>>> BFPT_DWORD15_QER_SR2_BIT1_BUGGY and BFPT_DWORD15_QER_SR2_BIT1 cases.
>>>
>> But I see that 1 byte SR1 write still happens as part of
>> spi_nor_clear_sr_bp() until patch 20/20. So is this only a partial fix?
> 
> Fixing spi_nor_clear_sr_bp() would mean to add dead code that will be removed
> anyway with patch 20/20. This patch fixes the clearing of the QE bit, while in
> 20/20 the QE bit is already zero when the one byte SR1 write is used, so the
> quad mode is not affected. 20/20 fixes indirectly the clearing of all the bits
> from SR2 but QE bit, because it's already zero. I would say it's not a partial
> fix, but a different bug.
> 

I was not suggesting on fixing up spi_nor_clear_sr_bp(), but pointing
out that single byte writes SR1 can happen until patch 20/20.

But now I see that these patches are fixing related but different bugs.

> There are different angles to look at this, I chose the modifying of the quad
> mode angle. Given the two arguments from above (avoid adding dead code and
> changing of quad mode approach), I would prefer to keep things as they are. 

Ok, sounds fine, no need to change...

> But I get your approach too, so if you still want yours, I can do it. Please let me
> know.
> 
>> Should this patch be rearranged to appear along with 20/20?
> 
> Not necessarily (different bugs) but I can bring 20/20 immediately after this
> one if you want.
> >>
>>
>>> Suggested-by: Boris Brezillon <boris.brezillon@collabora.com>
>>> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
>>> ---
>>>  drivers/mtd/spi-nor/spi-nor.c | 120 ++++++++++++++++++++++++++++++++++++++++--
>>>  include/linux/mtd/spi-nor.h   |   3 ++
>>>  2 files changed, 118 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
>>> index 725dab241271..f96bc80c0ed1 100644
>>> --- a/drivers/mtd/spi-nor/spi-nor.c
>>> +++ b/drivers/mtd/spi-nor/spi-nor.c
>>> @@ -959,12 +959,19 @@ static int spi_nor_write_sr(struct spi_nor *nor, const u8 *sr, size_t len)
>>>  	return spi_nor_wait_till_ready(nor);
>>>  }
>>>  
>> [...]
>>> +/**
>>>   * spi_nor_write_sr2() - Write the Status Register 2 using the
>>>   * SPINOR_OP_WRSR2 (3eh) command.
>>>   * @nor:	pointer to 'struct spi_nor'.
>>> @@ -3634,19 +3723,38 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
>>>  		break;
>>>  
>>>  	case BFPT_DWORD15_QER_SR2_BIT1_BUGGY:
>>> +		/*
>>> +		 * Writing only one byte to the Status Register has the
>>> +		 * side-effect of clearing Status Register 2.
>>> +		 */
>>>  	case BFPT_DWORD15_QER_SR2_BIT1_NO_RD:
>>> +		/*
>>> +		 * Read Configuration Register (35h) instruction is not
>>> +		 * supported.
>>> +		 */
>>> +		nor->flags |= SNOR_F_HAS_16BIT_SR | SNOR_F_NO_READ_CR;
>> Since SNOR_F_HAS_16BIT_SR is set by default in
>> spi_nor_info_init_params(), no need to set the flag here again
>>
> 
> I did this on purpose. I set SNOR_F_HAS_16BIT_SR here based on SFDP standard, I
> want to indicate where the standard requires the 16 bit SR write .
> spi_nor_info_init_params() initializes data based on info, but that data can be
> overwritten (even with the same data) when parsing SFDP.
> 

Alright.

Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>

Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
