Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1134C1464A5
	for <lists+linux-mtd@lfdr.de>; Thu, 23 Jan 2020 10:32:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HQfwfaO+k4PwwehFMAW7p4iF3WqjlsGuxomDf1S/IqY=; b=k4GGiqSAgSB50oSbqSbsWL+QM
	noKSUcA2Rmqwq4+/IrVCPfVoAzLmnkQBd4znlnn4ILtyL6YcSPoBEXyTEQM+CNZWJHy2nKw4E3BV8
	HaCJ+qRnguhGi/dOlhSNfNNz54gYAOTFBEtBQdU35iVKVWoI4h5KZKtKLQ1WnGXFPVRinLM8eTabl
	EPz5PDFhdBomaeDbzZCfrgMK2BaOAaungZRIyTjiv78KvUbwgTYLiCioiKgxxsNUL3lvikoQBjUxl
	Zoy+UFq/aGYaaKln2KoNQc2lYM0LxPW9I99e27iUimCbVe6xjdaLUgwEPkJZyT0sm59b91ZtRP7IV
	irnOrf2mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuYqJ-0001mt-HK; Thu, 23 Jan 2020 09:32:03 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuYq8-0001m7-OU
 for linux-mtd@lists.infradead.org; Thu, 23 Jan 2020 09:31:55 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 8DEED22FAC;
 Thu, 23 Jan 2020 10:31:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1579771910;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fVJupsgYxkL8kAL/MdfCIDLujr6WkT+n1uKqv9d8KfE=;
 b=n5xuzYCrpUz1FOwxy0pWvJeib+vBnvxO5IbIdDNnHu16k6vyUzRJQzvF8igDGDAVqd0t7C
 Qi5e7MD2bUwusJKpWfizr12MkWF7RN7eMH5Nxxv9emXzVjOHEJyeFBCC4SXmNdEXGr4SNm
 OvFZtybC+0L1DpIxBogvWE/d+O6AT1Q=
MIME-Version: 1.0
Date: Thu, 23 Jan 2020 10:31:50 +0100
From: Michael Walle <michael@walle.cc>
To: Jungseung Lee <js07.lee@samsung.com>
Subject: Re: [PATCH v3 2/3] mtd: spi-nor: add 4bit block protection support
In-Reply-To: <7843bb76c9c3854a4b9fa4b2b69d760e965bbb22.camel@samsung.com>
References: <20200113055907.9029-2-js07.lee@samsung.com>
 <CGME20200122193640epcas1p2e8df0b73bdf6c6389709148702082aef@epcas1p2.samsung.com>
 <20200122193608.3859-1-michael@walle.cc>
 <0c4e70fcf58c93f9b7375d83b50028df225aed82.camel@samsung.com>
 <f4581c4cb231cc4c61b9a146dda5fada@walle.cc>
 <7843bb76c9c3854a4b9fa4b2b69d760e965bbb22.camel@samsung.com>
Message-ID: <0882ce3e8cf9de25681b475f10154cef@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.8
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: 8DEED22FAC
X-Spamd-Result: default: False [1.40 / 15.00]; ARC_NA(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 FREEMAIL_ENVRCPT(0.00)[gmail.com]; TAGGED_RCPT(0.00)[];
 MIME_GOOD(-0.10)[text/plain]; RCPT_COUNT_FIVE(0.00)[5];
 DKIM_SIGNED(0.00)[]; NEURAL_HAM(-0.00)[-0.765];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 FREEMAIL_CC(0.00)[gmail.com,lists.infradead.org,microchip.com,ti.com];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_013153_091947_730ECF17 
X-CRM114-Status: GOOD (  35.38  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: tudor.ambarus@microchip.com, linux-mtd@lists.infradead.org, vigneshr@ti.com,
 js07.lee@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Am 2020-01-23 09:53, schrieb Jungseung Lee:
> Hi, Michael
> 
> 2020-01-23 (Thu), 09:10 +0100, Michael Walle:
>> Hi Jungseung,
>> 
>> Am 2020-01-23 07:22, schrieb Jungseung Lee:
>> > Hi, Michael
>> >
>> > 2020-01-22 (Wed), 20:36 +0100, Michael Walle:
>> > > Hi,
>> > >
>> > > > Currently, we are supporting block protection only for
>> > > > flash chips with 3 block protection bits in the SR register.
>> > > > This patch enables block protection support for some flash with
>> > > > 4 block protection bits(bp0-3).
>> > > >
>> > > > Signed-off-by: Jungseung Lee <js07.lee@samsung.com>
>> > > > ---
>> > > > v3 :
>> > > >   Fix wrong ofs calculation on v2 patch
>> > > > v2 :
>> > > >   Add sample table portion about 4bit block protection on the
>> > > > comment
>> > > >   Trivial coding style change
>> > > >
>> > > >  drivers/mtd/spi-nor/spi-nor.c | 127
>> > > > +++++++++++++++++++++++++++++-
>> > > > ----
>> > > >  include/linux/mtd/spi-nor.h   |   8 +++
>> > > >  2 files changed, 119 insertions(+), 16 deletions(-)
>> > > >
>> > > > diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-
>> > > > nor/spi-nor.c
>> > > > index e3da6a8654a8..7e8af6c4fdfa 100644
>> > > > --- a/drivers/mtd/spi-nor/spi-nor.c
>> > > > +++ b/drivers/mtd/spi-nor/spi-nor.c
>> > > > @@ -238,6 +238,14 @@ struct flash_info {
>> > > >  					 * status register.
>> > > > Must be
>> > > > used with
>> > > >  					 * SPI_NOR_HAS_TB.
>> > > >  					 */
>> > > > +#define SPI_NOR_HAS_BP3		BIT(17)	/*
>> > > > +					 * Flash SR has 4 bit
>> > > > fields
>> > > > (BP0-3)
>> > > > +					 * for block
>> > > > protection.
>> > > > +					 */
>> > > > +#define SPI_NOR_BP3_SR_BIT6	BIT(18)	/*
>> > > > +					 * BP3 is bit 6 of
>> > > > status
>> > > > register.
>> > > > +					 * Must be used with
>> > > > SPI_NOR_HAS_BP3.
>> > > > +					 */
>> > > >
>> > > >  	/* Part specific fixup hooks. */
>> > > >  	const struct spi_nor_fixups *fixups;
>> > > > @@ -1767,23 +1775,47 @@ static void stm_get_locked_range(struct
>> > > > spi_nor *nor, u8 sr, loff_t *ofs,
>> > > >  	struct mtd_info *mtd = &nor->mtd;
>> > > >  	u8 mask = SR_BP2 | SR_BP1 | SR_BP0;
>> > > >  	u8 tb_mask = SR_TB_BIT5;
>> > > > -	int pow;
>> > > > +	u8 bp;
>> > > > +	int pow = 0;
>> > > >
>> > > >  	if (nor->flags & SNOR_F_HAS_SR_TB_BIT6)
>> > > >  		tb_mask = SR_TB_BIT6;
>> > > >
>> > > > -	if (!(sr & mask)) {
>> > > > -		/* No protection */
>> > > > -		*ofs = 0;
>> > > > -		*len = 0;
>> > > > +	if (nor->flags & SNOR_F_HAS_SR_BP3) {
>> > > > +		u8 tmp;
>> > > > +
>> > > > +		if (nor->flags & SNOR_F_HAS_SR_BP3_BIT6)
>> > > > +			tmp = sr & (mask | SR_BP3_BIT6);
>> > > > +		else
>> > > > +			tmp = sr & (mask | SR_BP3_BIT5);
>> > > > +
>> > > > +		if (tmp & SR_BP3_BIT6)
>> > > > +			tmp = (tmp & ~BIT(6)) | BIT(5);
>> > > > +
>> > > > +		bp = tmp >> SR_BP_SHIFT;
>> > > > +		if (!bp) {
>> > > > +			*ofs = 0;
>> > > > +			*len = 0;
>> > > > +			return;
>> > > > +		}
>> > > > +		if (bp <= ilog2(nor->n_sectors))
>> > > > +			pow = ilog2(nor->n_sectors) + 1 - bp;
>> > > >  	} else {
>> > > > -		pow = ((sr & mask) ^ mask) >> SR_BP_SHIFT;
>> > > > -		*len = mtd->size >> pow;
>> > > > -		if (nor->flags & SNOR_F_HAS_SR_TB && sr &
>> > > > tb_mask)
>> > > > +		bp = (sr & mask) >> SR_BP_SHIFT;
>> > > > +		if (!bp) {
>> > > >  			*ofs = 0;
>> > > > -		else
>> > > > -			*ofs = mtd->size - *len;
>> > > > +			*len = 0;
>> > > > +			return;
>> > > > +		}
>> > > > +		pow = bp ^ (mask >> SR_BP_SHIFT);
>> > > >  	}
>> > > > +
>> > > > +	*len = mtd->size >> pow;
>> > > > +
>> > > > +	if (nor->flags & SNOR_F_HAS_SR_TB && sr & tb_mask)
>> > > > +		*ofs = 0;
>> > > > +	else
>> > > > +		*ofs = mtd->size - *len;
>> > > >  }
>> > > >
>> > > >  /*
>> > > > @@ -1823,7 +1855,7 @@ static int stm_is_unlocked_sr(struct
>> > > > spi_nor
>> > > > *nor, loff_t ofs, uint64_t len,
>> > > >
>> > > >  /*
>> > > >   * Lock a region of the flash. Compatible with ST Micro and
>> > > > similar flash.
>> > > > - * Supports the block protection bits BP{0,1,2} in the status
>> > > > register
>> > > > + * Supports the block protection bits BP{0,1,2,3} in the
>> > > > status
>> > > > register
>> > > >   * (SR). Does not support these features found in newer SR
>> > > > bitfields:
>> > > >   *   - SEC: sector/block protect - only handle SEC=0 (block
>> > > > protect)
>> > > >   *   - CMP: complement protect - only support CMP=0 (range is
>> > > > not
>> > > > complemented)
>> > > > @@ -1831,7 +1863,7 @@ static int stm_is_unlocked_sr(struct
>> > > > spi_nor
>> > > > *nor, loff_t ofs, uint64_t len,
>> > > >   * Support for the following is provided conditionally for
>> > > > some
>> > > > flash:
>> > > >   *   - TB: top/bottom protect
>> > > >   *
>> > > > - * Sample table portion for 8MB flash (Winbond w25q64fw):
>> > > > + * Sample table portion for 8MB flash (Winbond w25q64fw / BP0-
>> > > > 2):
>> > > >   *
>> > > >   *   SEC  |  TB   |  BP2  |  BP1  |  BP0  |  Prot Length  |
>> > > > Protected Portion
>> > > >   *  --------------------------------------------------------
>> > > > ----
>> > > > --------------
>> > > > @@ -1851,6 +1883,32 @@ static int stm_is_unlocked_sr(struct
>> > > > spi_nor
>> > > > *nor, loff_t ofs, uint64_t len,
>> > > >   *    0   |   1   |   1   |   0   |   1   |  2 MB         |
>> > > > Lower
>> > > > 1/4
>> > > >   *    0   |   1   |   1   |   1   |   0   |  4 MB         |
>> > > > Lower
>> > > > 1/2
>> > > >   *
>> > > > + * Sample table portion for 64MB flash (Micron n25q512ax3 /
>> > > > BP0-
>> > > > 3):
>> > > > + *
>> > > > + *   TB   |  BP3  |  BP2  |  BP1  |  BP0  |  Prot Length  |
>> > > > Protected Portion
>> > > > + *  --------------------------------------------------------
>> > > > ----
>> > > > --------------
>> > > > + *    0   |   0   |   0   |   0   |   0   |  NONE         |
>> > > > NONE
>> > > > + *    0   |   0   |   0   |   0   |   1   |   64 KB       |
>> > > > Upper
>> > > > 1/1024
>> > > > + *    0   |   0   |   0   |   1   |   0   |  128 KB       |
>> > > > Upper
>> > > > 1/512
>> > > > + *    0   |   0   |   0   |   1   |   1   |  256 KB       |
>> > > > Upper
>> > > > 1/256
>> > > > + *   ...
>> > > > + *    0   |   1   |   0   |   0   |   1   |  16 MB        |
>> > > > Upper
>> > > > 1/4
>> > > > + *    0   |   1   |   0   |   1   |   0   |  32 MB        |
>> > > > Upper
>> > > > 1/2
>> > > > + *    0   |   1   |   0   |   1   |   1   |  64 MB        |
>> > > > ALL
>> > > > + *    0   |   1   |   1   |   0   |   0   |  64 MB        |
>> > > > ALL
>> > > > + *   ...
>> > > > + *  ------|-------|-------|-------|-------|---------------|---
>> > > > ----
>> > > > ------------
>> > > > + *    1   |   0   |   0   |   0   |   0   |   NONE        |
>> > > > NONE
>> > > > + *    1   |   0   |   0   |   0   |   1   |   64 KB       |
>> > > > Lower
>> > > > 1/1024
>> > > > + *    1   |   0   |   0   |   1   |   0   |  128 KB       |
>> > > > Lower
>> > > > 1/512
>> > > > + *    1   |   0   |   0   |   1   |   1   |  256 KB       |
>> > > > Lower
>> > > > 1/256
>> > > > + *   ...
>> > > > + *    1   |   1   |   0   |   0   |   1   |  16 MB        |
>> > > > Lower
>> > > > 1/4
>> > > > + *    1   |   1   |   0   |   1   |   0   |  32 MB        |
>> > > > Lower
>> > > > 1/2
>> > > > + *    1   |   1   |   0   |   1   |   1   |  64 MB        |
>> > > > ALL
>> > > > + *    1   |   1   |   1   |   0   |   0   |  64 MB        |
>> > > > ALL
>> > > > + *   ...
>> > > > + *
>> > > >   * Returns negative on errors, 0 on success.
>> > > >   */
>> > > >  static int stm_lock(struct spi_nor *nor, loff_t ofs, uint64_t
>> > > > len)
>> > > > @@ -1898,6 +1956,12 @@ static int stm_lock(struct spi_nor *nor,
>> > > > loff_t ofs, uint64_t len)
>> > > >  	if (nor->flags & SNOR_F_HAS_SR_TB_BIT6)
>> > > >  		tb_mask = SR_TB_BIT6;
>> > > >
>> > > > +	if (nor->flags & SNOR_F_HAS_SR_BP3) {
>> > > > +		if (nor->flags & SNOR_F_HAS_SR_BP3_BIT6)
>> > > > +			mask = mask | SR_BP3_BIT6;
>> > > > +		else
>> > > > +			mask = mask | SR_BP3_BIT5;
>> > > > +	}
>> > > >  	/*
>> > > >  	 * Need smallest pow such that:
>> > > >  	 *
>> > > > @@ -1908,7 +1972,17 @@ static int stm_lock(struct spi_nor *nor,
>> > > > loff_t ofs, uint64_t len)
>> > > >  	 *   pow = ceil(log2(size / len)) = log2(size) -
>> > > > floor(log2(len))
>> > > >  	 */
>> > > >  	pow = ilog2(mtd->size) - ilog2(lock_len);
>> > > > -	val = mask - (pow << SR_BP_SHIFT);
>> > > > +
>> > > > +	if (nor->flags & SNOR_F_HAS_SR_BP3) {
>> > > > +		val = ilog2(nor->n_sectors) + 1 - pow;
>> > >
>> > > Why do you use a new calculation here? As far as I can see, the
>> > > method is
>> > > the same except that is has one bit more. That also raises the
>> > > question why
>> > > n_sectors is now needed?
>> > >
>> > > Can't we just initialize the mask with
>> > >
>> > > mask = SR_BP2 | SR_BP1 | SR_BP0;
>> > > if (nor->flags & SNOR_F_HAS_SR_BP3)
>> > >     mask |= SR_BP3_BIT5;
>> > >
>> > > do the calculation and checks and then move the SR_BP3_BIT5 to
>> > > SR_BP3_BIT6
>> > > if SNOR_F_HAS_SR_BP3_BIT6 is set.
>> > >
>> >
>> > For most of flashes that supporting BP0-2, the smallest protected
>> > portion is fixed as 1/64
>> > and it can be properly handled by existing
>> > calculation. (Actually it's not fully generic, see flashes like
>> > w25q40bw or m25p80. Of course, it doesn't have SPI_NOR_HAS_LOCK
>> > flag
>> > even though it has BP0-2 bit in SR)
>> 
>> No. The rules are always the same wether there are three or four BP
>> bits (the example in stm_lock() has not enough information on this):
>> 
>> (1) the first setting (besides 0) protects one sector. The second
>>      protects 2, the third 4 and so on. eg 2^N
>> (2) the last setting is _always_ protect all, just like the '0'
>> setting
>>      is always protect none.
>> (3) if there is an overflow because there are no more free slots for
>>      further settings (for 3 bits with flashes > 32MBit, for 4
>>      bits if should be flashes > 16GBit), the first entry will be
>>      discarded (eg the very first is the "just one sector" entry).
>> 
>> This is true for all flashes which uses this kind of setting, have a
>> look at the m25p80 or w25q40bw, these are no exception. It is just
>> the
>> notation "lower 1/64" which is only true for flashes which either
>> overflows in (3) or fill all entries (eg. with 3bits that would be
>> the
>> 32Mbit version).
>> 
> 
> Looks like you noticed that we need new calculation method that would
> be based on n_sectors :).

No it will work without that (if I'm not mistaken). Give me some time
and I'll post a patch.

> Rule (1) is NOT true for some flashes
> supporting BP0-2 and that's why I said that smallest protected portion
> is fixed as '1/64' for these flashes.

No, you have to apply rule (3). (1) is only the starting point. It is 
kind
of a sliding window.

> See this one.
> 
> W25Q20EW	256KB	1/4 ... = 64KB		BP2
> W25Q128JV	16MB	1/64 ... = 256KB	BP2 <--
> S25FL132K	4MB	1/64 ... = 64KB		BP2 <--
> S25FL164K	8MB
> 1/64 ... = 128KB	BP2 <--

All these flashes need (3) to be applied, thus (1) doesn't apply
anymore.

Let me give you an example for the 64MBit case, the settings would be:

0 sectors (corresponds to protect none)
1 sector
2 sectors
4 sectors
8 sectors
16 sectors
32 sectors
64 sectors
128 sectors (corresponds to protect all)

Unfortunately, we have only 8 slots (because 3 BP bits), therefore we 
have
to discard some setting. According to rule (2) 0 is always "protect 
none"
and 7 is always "protect all". Thus we have 6 settings left. According 
to
rule (3) we discard the first ones. In this case, this is the "1 sector"
setting. Thus we end up with the following possible settings:

0 sectors (corresponds to protect none)
2 sectors
4 sectors
8 sectors
16 sectors
32 sectors
64 sectors
128 sectors (corresponds to protect all)

If you have a 128Mbit flash, the next setting that would be discarded is
"2 sectors". Thus it would start with:

0 sectors (corresponds to protect none)
4 sectors
[..]
256 sectors (corresponds to protect all)


Another example W25Q20EW, following possible settings:

0 sectors (corresponds to protect none)
1 sector
2 sectors
4 sectors (corresponds to protect all)

We now have less settings then our 8 possible slots. So this is where
rule (1) applies, because according to that the "1 sector" setting is
the first possible setting besides 0.

And this also applies to the 4 bit protection bits.



> W25Q256JV	32MB	1/512 ... =
> 64KB	BP3
> S25FL128L	16MB	1/256 ... = 64KB	BP3
> S25FL256L	32MB	1/512 ... = 64KB	BP3
> 
> In current BP implementation, block protection is just working for some
> flashes that has smallest protected portion as '1/64'.

No its currently working for all except flashes smaller than 32Mbit.
Applied to the 4 bits, this would mean "it works for all except flashes
smaller than 8Gbit" which are practially all. As I said, this is a bug
and once this bug is fixed, there should be no difference between 3
and 4 bits.

-michael

> 
> We need new fomula based on n_sectors for BP3 at least.

No they are the same, but yes there is a bug in the current
implementation.

-michael

> 
>> So for the 3 bit case the following flashes are border cases:
>>   - 16mbit (less settings than slots)
>>   - 32mbit (number of settings and free slots match)
>>   - 64mbit (more settings than slots, first setting is discarded)
>> 
>> That being said, I suspect all the 16mbit flashes (and below) which
>> have
>> the _LOCK bit set are broken, because the entries has to be shifted.
>> I'll
>> look into that later. This is the same "issue" you have with the 4
>> bits.
>> So if this is fixed, you should not need another formula for the 4
>> bit
>> case.
>> 
>> > We need new calculation method for 4bit block protection and for
>> > making
>> > it more generic, I choose n_sectors.
>> >
>> > On all the flashes I checked, n_sectors is proper value for getting
>> > block protected portion.
>> >
>> > 		density	portion	n_sectors
>> > W25M512JV	64MB	1/512	512
>> > N25Q128A	16MB	1/256	256
>> > N25Q512A	64MB	1/1024	1024
>> > MT25QL02GCBB	256MB	1/4096	4096
>> 
>> The rules above apply to these flashes, too. Could you double check
>> that?
>> 
>> -michael
>> 
>> >
>> > > > +		val = val << SR_BP_SHIFT;
>> > > > +
>> > > > +		if (val & BIT(5) && mask & SR_BP3_BIT6)
>> > > > +			val = (val & ~BIT(5)) | BIT(6);
>> > > > +	} else {
>> > > > +		val = mask - (pow << SR_BP_SHIFT);
>> > > > +	}
>> > > > +
>> > > >  	if (val & ~mask)
>> > > >  		return -EINVAL;
>> > > >  	/* Don't "lock" with no region! */
>> > > > @@ -1983,6 +2057,13 @@ static int stm_unlock(struct spi_nor
>> > > > *nor,
>> > > > loff_t ofs, uint64_t len)
>> > > >
>> > > >  	if (nor->flags & SNOR_F_HAS_SR_TB_BIT6)
>> > > >  		tb_mask = SR_TB_BIT6;
>> > > > +
>> > > > +	if (nor->flags & SNOR_F_HAS_SR_BP3) {
>> > > > +		if (nor->flags & SNOR_F_HAS_SR_BP3_BIT6)
>> > > > +			mask = mask | SR_BP3_BIT6;
>> > > > +		else
>> > > > +			mask = mask | SR_BP3_BIT5;
>> > > > +	}
>> > > >  	/*
>> > > >  	 * Need largest pow such that:
>> > > >  	 *
>> > > > @@ -1995,13 +2076,20 @@ static int stm_unlock(struct spi_nor
>> > > > *nor,
>> > > > loff_t ofs, uint64_t len)
>> > > >  	pow = ilog2(mtd->size) - order_base_2(lock_len);
>> > > >  	if (lock_len == 0) {
>> > > >  		val = 0; /* fully unlocked */
>> > > > +	} else if (nor->flags & SNOR_F_HAS_SR_BP3) {
>> > > > +		val = ilog2(nor->n_sectors) + 1 - pow;
>> > > > +		val = val << SR_BP_SHIFT;
>> > > > +
>> > > > +		if (val & BIT(5) && mask & SR_BP3_BIT6)
>> > > > +			val = (val & ~BIT(5)) | BIT(6);
>> > > >  	} else {
>> > > >  		val = mask - (pow << SR_BP_SHIFT);
>> > > > -		/* Some power-of-two sizes are not supported */
>> > > > -		if (val & ~mask)
>> > > > -			return -EINVAL;
>> > > >  	}
>> > > >
>> > > > +	/* Some power-of-two sizes are not supported */
>> > > > +	if (val & ~mask)
>> > > > +		return -EINVAL;
>> > > > +
>> > > >  	status_new = (status_old & ~mask & ~tb_mask) | val;
>> > > >
>> > > >  	/* Don't protect status register if we're fully
>> > > > unlocked */
>> > > > @@ -4736,6 +4824,7 @@ static void
>> > > > spi_nor_info_init_params(struct
>> > > > spi_nor *nor)
>> > > >  	/* Set SPI NOR sizes. */
>> > > >  	params->size = (u64)info->sector_size * info-
>> > > > >n_sectors;
>> > > >  	params->page_size = info->page_size;
>> > > > +	params->n_sectors = info->n_sectors;
>> > > >
>> > > >  	if (!(info->flags & SPI_NOR_NO_FR)) {
>> > > >  		/* Default to Fast Read for DT and non-DT
>> > > > platform
>> > > > devices. */
>> > > > @@ -5192,6 +5281,11 @@ int spi_nor_scan(struct spi_nor *nor,
>> > > > const
>> > > > char *name,
>> > > >  		nor->flags |= SNOR_F_NO_OP_CHIP_ERASE;
>> > > >  	if (info->flags & USE_CLSR)
>> > > >  		nor->flags |= SNOR_F_USE_CLSR;
>> > > > +	if (info->flags & SPI_NOR_HAS_BP3) {
>> > > > +		nor->flags |= SNOR_F_HAS_SR_BP3;
>> > > > +		if (info->flags & SPI_NOR_BP3_SR_BIT6)
>> > > > +			nor->flags |= SNOR_F_HAS_SR_BP3_BIT6;
>> > > > +	}
>> > > >
>> > > >  	if (info->flags & SPI_NOR_NO_ERASE)
>> > > >  		mtd->flags |= MTD_NO_ERASE;
>> > > > @@ -5199,6 +5293,7 @@ int spi_nor_scan(struct spi_nor *nor,
>> > > > const
>> > > > char *name,
>> > > >  	mtd->dev.parent = dev;
>> > > >  	nor->page_size = params->page_size;
>> > > >  	mtd->writebufsize = nor->page_size;
>> > > > +	nor->n_sectors = params->n_sectors;
>> > > >
>> > > >  	if (of_property_read_bool(np, "broken-flash-reset"))
>> > > >  		nor->flags |= SNOR_F_BROKEN_RESET;
>> > > > diff --git a/include/linux/mtd/spi-nor.h
>> > > > b/include/linux/mtd/spi-
>> > > > nor.h
>> > > > index 541c06d042e8..92d550501daf 100644
>> > > > --- a/include/linux/mtd/spi-nor.h
>> > > > +++ b/include/linux/mtd/spi-nor.h
>> > > > @@ -129,7 +129,9 @@
>> > > >  #define SR_BP1			BIT(3)	/* Block protect 1
>> > > > */
>> > > >  #define SR_BP2			BIT(4)	/* Block protect 2
>> > > > */
>> > > >  #define SR_TB_BIT5		BIT(5)	/* Top/Bottom protect
>> > > > */
>> > > > +#define SR_BP3_BIT5		BIT(5)	/* Block protect 3
>> > > > */
>> > >
>> > > maybe just name it SR_BP3? would also be more consistent with the
>> > > proposal
>> > > above.
>> > >
>> > > >  #define SR_TB_BIT6		BIT(6)	/* Top/Bottom protect
>> > > > */
>> > > > +#define SR_BP3_BIT6		BIT(6)	/* Block protect 3
>> > > > */
>> > > >  #define SR_SRWD			BIT(7)	/* SR write
>> > > > protect
>> > > > */
>> > > >  /* Spansion/Cypress specific status bits */
>> > > >  #define SR_E_ERR		BIT(5)
>> > > > @@ -248,6 +250,8 @@ enum spi_nor_option_flags {
>> > > >  	SNOR_F_HAS_16BIT_SR	= BIT(9),
>> > > >  	SNOR_F_NO_READ_CR	= BIT(10),
>> > > >  	SNOR_F_HAS_SR_TB_BIT6	= BIT(11),
>> > > > +	SNOR_F_HAS_SR_BP3	= BIT(12),
>> > > > +	SNOR_F_HAS_SR_BP3_BIT6	= BIT(13),
>> > > >
>> > > >  };
>> > > >
>> > > > @@ -519,6 +523,7 @@ struct spi_nor_locking_ops {
>> > > >   *
>> > > >   * @size:		the flash memory density in bytes.
>> > > >   * @page_size:		the page size of the SPI NOR flash
>> > > > memory.
>> > > > + * @n_sectors:		number of sectors
>> > > >   * @hwcaps:		describes the read and page program
>> > > > hardware
>> > > >   *			capabilities.
>> > > >   * @reads:		read capabilities ordered by priority:
>> > > > the
>> > > > higher index
>> > > > @@ -541,6 +546,7 @@ struct spi_nor_locking_ops {
>> > > >  struct spi_nor_flash_parameter {
>> > > >  	u64				size;
>> > > >  	u32				page_size;
>> > > > +	u16				n_sectors;
>> > > >
>> > > >  	struct spi_nor_hwcaps		hwcaps;
>> > > >  	struct spi_nor_read_command	reads[SNOR_CMD_READ_MAX
>> > > > ];
>> > > > @@ -573,6 +579,7 @@ struct flash_info;
>> > > >   * @bouncebuf_size:	size of the bounce buffer
>> > > >   * @info:		spi-nor part JDEC MFR id and other info
>> > > >   * @page_size:		the page size of the SPI NOR
>> > > > + * @n_sector:		number of sectors
>> > > >   * @addr_width:		number of address bytes
>> > > >   * @erase_opcode:	the opcode for erasing a sector
>> > > >   * @read_opcode:	the read opcode
>> > > > @@ -599,6 +606,7 @@ struct spi_nor {
>> > > >  	size_t			bouncebuf_size;
>> > > >  	const struct flash_info	*info;
>> > > >  	u32			page_size;
>> > > > +	u16			n_sectors;
>> > > >  	u8			addr_width;
>> > > >  	u8			erase_opcode;
>> > > >  	u8			read_opcode;
>> > > > --
>> > > > 2.17.1
>> > > >
>> > > >
>> > > > ______________________________________________________
>> > > > Linux MTD discussion mailing list
>> > > >
>> >
>> >
> https://protect2.fireeye.com/url?k=06b6dd5d-5b7d5a63-06b75612-0cc47a31309a-83164929001f7741&u=http://lists.infradead.org/mailman/listinfo/linux-mtd/
>> > > >
>> > >
>> > >
>> 
>> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
