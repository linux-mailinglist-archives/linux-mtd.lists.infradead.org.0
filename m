Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 576B0180948
	for <lists+linux-mtd@lfdr.de>; Tue, 10 Mar 2020 21:37:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5HyNlJhLMz5TiDiKt7geU8L1akTj1ALtoFG+xBQCyYE=; b=Kr9YJOUQn/QFJt
	877GvSM5XP7lbDXZ58p/Uzq1AUs9xqPFXHk8bRiyrV7wHXmXj9i3QhEqfsm7wmEeLhKt9cOMkzmje
	MH1TZRQ2x5aLzeAPHiwEsQVGEHRJKaRJAyPKuuQ8YKr5KY+MFZW8gFVDgeEkEZN0Idv9W/XBV08cE
	0MyPyo5UOacI/wDk6xRVE4C0UHLTm7Z532TTeBUuYQrSkVsX6IvnNBKlqRMypgxRNgrZJGDIsn3/p
	8tOw3IA2O4L11aM7lThPCjOcNFj03+UjhIvm1kOfa89c21rR976eDG8cF7ecENR5as5vVKr+VXKpC
	PbTnRuzEvpje7VX1HFrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBlcv-000393-Tv; Tue, 10 Mar 2020 20:37:21 +0000
Received: from [2601:1c0:6280:3f0::19c2]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBlcV-00034o-Om; Tue, 10 Mar 2020 20:36:55 +0000
Subject: Re: linux-next: Tree for Mar 10 (mtd/spi-nor/)
To: John Garry <john.garry@huawei.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
References: <20200310201923.24e34363@canb.auug.org.au>
 <43df5279-7d91-020d-1632-9b3528f4feee@infradead.org>
 <f9d33b09-fe9f-2c26-96dc-b2eaa53c614b@huawei.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <aa3b19cd-e043-e5ea-5d77-38b53bda2e60@infradead.org>
Date: Tue, 10 Mar 2020 13:36:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <f9d33b09-fe9f-2c26-96dc-b2eaa53c614b@huawei.com>
Content-Language: en-US
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
Cc: Joe Perches <joe@perches.com>, Mark Brown <broonie@kernel.org>,
 linux-mtd@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tudor Ambarus <tudor.ambarus@microchip.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 3/10/20 10:14 AM, John Garry wrote:
> +
> =

> On 10/03/2020 14:37, Randy Dunlap wrote:
>> On 3/10/20 2:19 AM, Stephen Rothwell wrote:
>>> Hi all,
>>>
>>> Changes since 20200306:
>>>
>>> Removed tree: nfc-next (abanboned)
>>
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 doned
>>
>>
>> on i386:
>>
>> WARNING: unmet direct dependencies detected for MTD_SPI_NOR
> =

> Uh, so kbuild honors a "select" of a config option which has unmet depend=
encies:
> =

> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/D=
ocumentation/kbuild/kconfig-language.rst?h=3Dv5.6-rc5#n143

Yes.

> So this looks introduced by:
> =

> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commi=
t/drivers/spi/Kconfig?h=3Dnext-20200310&id=3De14572c52546c16e159c4c18149848=
43a119e823
> =

>> =A0=A0 Depends on [m]: MTD [=3Dm] && SPI_MASTER [=3Dy] >=A0=A0=A0 Select=
ed by [y]:
>> =A0=A0 - SPI_HISI_SFC_V3XX [=3Dy] && SPI [=3Dy] && SPI_MASTER [=3Dy] && =
(ARM64 && ACPI [=3Dy] || COMPILE_TEST [=3Dy]) && HAS_IOMEM [=3Dy]

Would it be acceptable to move the Kconfig entry for this:

config SPI_HISI_SFC_V3XX
	tristate "HiSilicon SPI-NOR Flash Controller for Hi16XX chipsets"
	depends on (ARM64 && ACPI) || COMPILE_TEST
	depends on HAS_IOMEM
	select MTD_SPI_NOR

into drivers/mtd/spi-nor/Kconfig, say after this one:

config SPI_HISI_SFC
	tristate "Hisilicon FMC SPI-NOR Flash Controller(SFC)"
	depends on ARCH_HISI || COMPILE_TEST
	depends on HAS_IOMEM

and drop the "select MTD_SPI_NOR" because when it's in drivers/mtd/spi-nor/=
Kconfig,
it will depend on MTD_SPI_NOR.


>> ERROR: "spi_nor_scan" [drivers/mtd/spi-nor/intel-spi.ko] undefined!
>> ERROR: "spi_nor_scan" [drivers/mtd/spi-nor/mtk-quadspi.ko] undefined!
>> ERROR: "spi_nor_scan" [drivers/mtd/spi-nor/hisi-sfc.ko] undefined!
>> ERROR: "spi_nor_scan" [drivers/mtd/spi-nor/aspeed-smc.ko] undefined!
>>
>>
>> Full randconfig file is attached.
>>


-- =

~Randy


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
