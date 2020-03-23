Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0329190017
	for <lists+linux-mtd@lfdr.de>; Mon, 23 Mar 2020 22:14:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tZsOC0hPeNe/HY65XO7r7TbUX46do8WtD4gIvkfRFhg=; b=J8TRU5UWBQqlJo+rHSr8Ii6BY
	c27vQeSGK7fpI4jLlLxLt3uBf7S5Lg0eiZ9ILJYCmfAFMkQVal3oG8hcOkkFjTgywpo64BprQ8SW7
	EzLc+IytZWSyOwRrkmFejeEGl6yaH1n1EMf/P+BnRWj3HVrqrdNxOtcBYqs77kXqoarCGbfkR0NRe
	peLYxKuDZAj3ted2o7tf7itW/qWf5APxTFdbLTgeNIOsvFQLYzlH8HSy8tS6LysCvafkXyxjQ0mCW
	J1D5QW1dhEQSzifq/NbWJynHltGUExQ0uRsUdfKF66MNN37rRtlniiz6e6OJTh2FRpHAmMc9GxHbr
	9O9Gh63Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGUOv-0005V0-6X; Mon, 23 Mar 2020 21:14:25 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGUOe-0005Pl-Tq
 for linux-mtd@lists.infradead.org; Mon, 23 Mar 2020 21:14:11 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id BFF7B2327F;
 Mon, 23 Mar 2020 22:14:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1584998046;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0lqpxbaNVqK7CcDAAt9YBufsRoyysGboIBerUTsJLms=;
 b=rDBHniwN/B9QTKUVkrXYiERBUlFTAJyjYSuat0tzhqN+L68u0mX6chGv92pQRK5cwU8RuR
 1VaIiOwe+Dj0LiqlskugbPjqg+mXYG669kkkUIcNOwole71nzqpf5aHTqzhPWEiK4/NFYV
 yXcdWnaQuPCNnuIagipZM7YxpOGfgxI=
MIME-Version: 1.0
Date: Mon, 23 Mar 2020 22:14:05 +0100
From: Michael Walle <michael@walle.cc>
To: Tudor.Ambarus@microchip.com
Subject: Re: [PATCH v3 1/5] mtd: spi-nor: Fix gap in SR block protection
 locking
In-Reply-To: <4551629.Jkd3TAmcGf@192.168.0.120>
References: <20200323092430.1466234-1-tudor.ambarus@microchip.com>
 <5899969.zVFlrMANan@192.168.0.120>
 <b2c8166871eda0ad5f8ed97cb6f69911@walle.cc>
 <4551629.Jkd3TAmcGf@192.168.0.120>
Message-ID: <401ca7a54a8d327a0397880db6a9a475@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: /
X-Spam-Status: No, score=-0.10
X-Rspamd-Server: web
X-Spam-Score: -0.10
X-Rspamd-Queue-Id: BFF7B2327F
X-Spamd-Result: default: False [-0.10 / 15.00]; FROM_HAS_DN(0.00)[];
 RCPT_COUNT_THREE(0.00)[4]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 MIME_GOOD(-0.10)[text/plain]; TO_DN_NONE(0.00)[];
 DKIM_SIGNED(0.00)[]; NEURAL_HAM(-0.00)[-0.781];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_MATCH_FROM(0.00)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_141409_277223_ED3A2608 
X-CRM114-Status: GOOD (  27.52  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-mtd@lists.infradead.org, vigneshr@ti.com, js07.lee@samsung.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Am 2020-03-23 21:26, schrieb Tudor.Ambarus@microchip.com:
> On Monday, March 23, 2020 9:54:38 PM EET Michael Walle wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know 
>> the
>> content is safe
>> Am 2020-03-23 20:20, schrieb Tudor.Ambarus@microchip.com:
>> > On Monday, March 23, 2020 8:27:13 PM EET Michael Walle wrote:
>> >> EXTERNAL EMAIL: Do not click links or open attachments unless you know
>> >> the
>> >> content is safe
>> >>
>> >> Hi,
>> >>
>> >> Am 2020-03-23 10:24, schrieb Tudor.Ambarus@microchip.com:
>> >> > From: Tudor Ambarus <tudor.ambarus@microchip.com>
>> >> >
>> >> > Fix the gap for the SR block protection, the BP bits were set with
>> >> > a +1 value than actually needed. This patch does not change the
>> >> > behavior of the locking operations, just fixes the protected areas.
>> >>
>> >> So instead of rounding up, it does round down now?
>> >
>> > No. Why do you say that it rounds up? The behavior is not changed, the
>> > patch
>> > merely fix the protected area, which was wrong before. The round down
>> > is
>> > present before this patch.
>> 
>> TBH I don't understand what this patch should do. Could you give an
>> example?
> 
> sure, let me try to be more explicit.
> 
>> 
>> >> > On a 16Mbit flash with 64KByte erase sector, the following changed
>> 
>> >> > for the lock operation:
>> 16MBit is a bad example, because it is broken anyway, isn't it? We use 
>> a
> 
> it's not.

If I'm not mistaken this falls into the same category like the new 4bits 
BP
flashes, because there are more slots free than needed. Ie. the last one
"protect all" is either 110b or 111b and thus don't work with the old
formula. This was actually my reason why there is no new formula for the
4 bits BP flashes; but the current one is not working with flashes 
<32Mbit.
See the old long thread.


> 
>> 32Mbit flash where 2MB are locked and the second 2MB are unlocked. Eg. 
>> a
>> 50/50 split. I haven't seen any issued. Shouldn't it be then 
>> completely
>> locked according this the following example?
> 
> I don't follow.

We've successfully used the "flash_lock 0 0x200" (with 4k sectors) on 
our
boards to lock the first half of our 4MiB flash.

> The table from below was generated for the S25FL116K 16 Mbit flash. 
> BTW, one
> has to disable CONFIG_MTD_SPI_NOR_USE_4K_SECTORS in order to test the 
> locking.
> When you have a 4k sector erase, the locking is simply wrong, but this 
> is
> another topic.

it should work with that too if you convert the number to the smaller 
sectors,
ie multiply by 16; But yeah the cli tool has a broken interface. It 
should
accept both offset and length in bytes; not one one in bytes and one in 
sectors,
where the latter also changes with CONFIG_MTD_SPI_NOR_USE_4K_SECTORS.


>> 
>> >> > Number of blocks | BP2:0 before | BP2:0 now |
>> >> >
>> >> >                1 | 010b         | 001b      |
> 
> - number of blocks is how many blocks you want to lock. One would do 
> for one
> block:
>     flash_lock /dev/mtd 0 1
> i.e. lock a single erase block starting from offset 0.
> 
> - "BP0:2 before" is the result of the operation "flash_lock /dev/mtd 0 
> 1"
> before this patch


Without your patch applied it works like expected:

[    1.914329] spi-nor spi0.0: w25q32dw (4096 Kbytes)
# flash_lock -l /dev/mtd1 0 1
# cat 
/sys/devices/platform/soc/20c0000.spi/spi_master/spi0/spi0.0/status_reg
a4

A4 is 1010_0100, ie BP[2:0] = 001b and TB=1

# flash_lock -u /dev/mtd1 0 64
# flash_lock -l /dev/mtd1 0 32
# cat 
/sys/devices/platform/soc/20c0000.spi/spi_master/spi0/spi0.0/status_reg
b8


With this patch applied:

# flash_lock -u /dev/mtd1 0 64
# cat 
/sys/devices/platform/soc/20c0000.spi/spi_master/spi0/spi0.0/status_reg
00
# flash_lock -l /dev/mtd1 0 1
flash_lock: error!: could not lock device: /dev/mtd1

             error 22 (Invalid argument)
# flash_lock -l /dev/mtd1 0 2
# cat 
/sys/devices/platform/soc/20c0000.spi/spi_master/spi0/spi0.0/status_reg
a4

which is wrong, isn't it?

-michael

> 
> - "BP0:2 now" is the result of the operation "flash_lock /dev/mtd 0 1" 
> using
> this patch
> 
> So before this patch, the lock operation was bad, because it locked 2 
> blocks
> instead of one.
> 
>> >> >                2 | 110b         | 010b      |
> 
> - lock 2 erase blocks starting from offset 0. Results before this 
> patch, and
> after this patch. Continue the logic on the following lines.
> 
> oops there's a typo in column 2, sorry. The value in column 2 should 
> have been
> 011b.
> 
> So before this patch, when one requested to lock 2 block starting from 
> offset
> 0, we would obtain 4 blocks locked, and he should have obtained just 2.
> 
> The scope of this patch is to first fix the locking ops, so that we can
> introduce a more generic formula that gives the same results as before
> introducing it. Without this patch, the new formula will silently fix 
> the bug
> that is described here.
> 
>> >> >                3 | 110b         | 010b      |
> 		^ typo s/110b/011b
> 
> rest of the examples are good.
> 
> Cheers,
> ta
> 
>> >> >                4 | 100b         | 011b      |
>> >> >                5 | 100b         | 011b      |
>> >> >                6 | 100b         | 011b      |
>> >> >                7 | 100b         | 011b      |
>> >> >                8 | 101b         | 100b      |
>> >> >                9 | 101b         | 100b      |
>> >> >
>> >> >              ... | ...          | ...       |
>> >> >
>> >> > For the lock operation, if one requests to lock an area that is not
>> >> > matching the upper boundary of a BP protected area, we round down
>> >> > the total length and lock less than the user requested, in order to
>> >> > not lock more than the user actually requested.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
