Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 081AD1E5CB4
	for <lists+linux-mtd@lfdr.de>; Thu, 28 May 2020 12:07:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sSlKK0mDo77fZ21XKT7R3H4rd2+6Zy752tmEfEEAQNw=; b=J0WEOkgjz42UnI
	b3/FNBGk/l+2/x6ar21ErlX0+48R60kY8YAXKKfn03JUtWCbXVk0b4yElih3HgmskaLS34Y+lCkdY
	Ys7qWoih2tGSGPArXMULXnmR2XCFmScUJ0PaWAFY2MN2Qw6K7FhGX60Hy0qw6RAj/2tt6f802tAQN
	pBcMRkTbBqUKvIxstecWwImmlfn1zglHOETLNbElYyuSOGGPRc4oyEiF/GLXHxpO8tKKVH3pOLr13
	U+JoTMnC48wUWPySRg97KkzPqfkdlnlMi/EwTKQ1/MqUOoVSarXVlqmRq2vyvC+066AjhfMIs7bRb
	1SI9VByqXbtyn52Qe7dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeFRk-0001Zl-Fr; Thu, 28 May 2020 10:07:32 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeFRd-0001Z6-7Y
 for linux-mtd@lists.infradead.org; Thu, 28 May 2020 10:07:27 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04SA7Amr011529;
 Thu, 28 May 2020 05:07:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590660430;
 bh=JIuX7vy1NOkZZG4cWNaBQkBz7x7Mn0OSQkz/l93tdT4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Ct26ohnr8OmHtcITq7XzJV2+6grBMLN4GIuygi4KhgTkgl7hgVeSiOgNgZspjm1vT
 VW537w7qPh33qn1LL/3EpWl0t4bXyHGj5qneXWk9M0th3j59C1i3lHMwQP/15ThW0E
 Pio2hpxqCv9kxJgGVq65PGt7gKjIUZslmNAnqxKc=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04SA7AfG092541;
 Thu, 28 May 2020 05:07:10 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 28
 May 2020 05:07:10 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 28 May 2020 05:07:10 -0500
Received: from [10.250.234.195] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04SA74na017181;
 Thu, 28 May 2020 05:07:04 -0500
Subject: Re: [PATCH RESEND v2] mtd: physmap: Add Baikal-T1 physically mapped
 ROMs support
To: Serge Semin <Sergey.Semin@baikalelectronics.ru>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>
References: <20200526225849.20985-1-Sergey.Semin@baikalelectronics.ru>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <5f5fc883-1cf0-f0b8-11bb-a60b45d135cd@ti.com>
Date: Thu, 28 May 2020 15:36:55 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200526225849.20985-1-Sergey.Semin@baikalelectronics.ru>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_030725_358574_F23429DC 
X-CRM114-Status: GOOD (  26.87  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Vadim Vlasov <V.Vlasov@baikalelectronics.ru>,
 Maxim Kaurkin <Maxim.Kaurkin@baikalelectronics.ru>,
 Ramil Zaripov <Ramil.Zaripov@baikalelectronics.ru>,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>,
 Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
 Alexey Kolotnikov <Alexey.Kolotnikov@baikalelectronics.ru>,
 Arnd Bergmann <arnd@arndb.de>,
 Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>,
 Ekaterina Skachko <Ekaterina.Skachko@baikalelectronics.ru>,
 linux-mtd@lists.infradead.org, Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

On 27/05/20 4:28 am, Serge Semin wrote:
> Baikal-T1 Boot Controller provides an access to a RO storages, which are
> physically mapped into the MMIO space. In particularly there are the
> Internal ROM embedded into the SoC with a pre-installed firmware,
> externally attached SPI flash (also accessed in the read-only mode) and a
> memory region, which mirrors one of them in accordance with the currently
> enabled system boot mode (also called Boot ROM).
> 
> This commit adds the ROMs support to the physmap driver of the MTD kernel
> subsystem. Currently the driver only supports the Internal ROM, since
> physically mapped SPI flash is utilized by the Baikal-T1 System Boot
> Controller driver so won't be available over mtd-rom interface and
> the Boot ROM mirror mapping has dependency on the SPI flash mapping
> switcher available within the SPI flash registers space. The real access
> to the Boot ROM memory will be added in future.
> 
> Note we had to create a dedicated code for the ROMs since read from the
> corresponding memory regions must be done via the dword-aligned addresses.
> In addition the driver in future states will have to take into account
> that the Boot ROM might mirror the SPI flash region so before accessing it
> the SPI flash direct mapping must be enabled by means of a dedicated flag
> in the Baikal-T1 System SPI register flag.
> 
> Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
> Cc: Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>
> Cc: Maxim Kaurkin <Maxim.Kaurkin@baikalelectronics.ru>
> Cc: Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>
> Cc: Ramil Zaripov <Ramil.Zaripov@baikalelectronics.ru>
> Cc: Ekaterina Skachko <Ekaterina.Skachko@baikalelectronics.ru>
> Cc: Vadim Vlasov <V.Vlasov@baikalelectronics.ru>
> Cc: Alexey Kolotnikov <Alexey.Kolotnikov@baikalelectronics.ru>
> Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: linux-mips@vger.kernel.org
> 
> ---
> 
> Miquel, Richard, Vignesh, the merge window is upon us, please review/merge
> in/whatever this patch.
> 
> This patchset is rebased and tested on the mainline Linux kernel 5.7-rc4:
> base-commit: 0e698dfa2822 ("Linux 5.7-rc4")
> tag: v5.7-rc4
> 
> New vendor prefix will be added in the framework of the next patchset:
> https://lkml.org/lkml/2020/5/6/1047


Sorry, driver patch and dt bindings have to be proposed together...
Driver cannot be accepted ahead of DT bindings been reviewed.

> 
> Note since the next patchset is no longer relevant (as a result of a
> discussion with @Lee and @Miquel)
> https://lkml.org/lkml/2020/3/6/421
> and Boot ROM mtd is currently unsupported I can freely submit this patch,
> while in former case I had to wait for the patchset merged.
> 

[...]
> +static void __xipram bt1_rom_map_copy_from(struct map_info *map,
> +					   void *to, unsigned long from,
> +					   ssize_t len)
> +{
> +	void __iomem *src = map->virt + from;
> +	ssize_t shift, chunk;
> +	u32 data;
> +
> +	if (len <= 0 || from >= map->size)
> +		return;
> +
> +	/* Make sure we don't go over the map limit. */
> +	len = min_t(ssize_t, map->size - from, len);
> +
> +	/*
> +	 * Since requested data size can be pretty big we have to implement
> +	 * the copy procedure as optimal as possible. That's why it's split
> +	 * up into the next three stages: unaligned head, aligned body,
> +	 * unaligned tail.
> +	 */
> +	shift = (ssize_t)src & 0x3;
> +	if (shift) {
> +		chunk = min_t(ssize_t, 4 - shift, len);
> +		data = readl_relaxed(src - shift);
> +		memcpy(to, &data + shift, chunk);
> +		src += chunk;
> +		to += chunk;
> +		len -= chunk;
> +	}
> +
> +	while (len >= 4) {
> +		data = readl_relaxed(src);
> +		memcpy(to, &data, 4);
> +		src += 4;
> +		to += 4;
> +		len -= 4;
> +	}
> +
> +	if (len) {
> +		data = readl_relaxed(src);
> +		memcpy(to, &data, len);
> +	}
> +}
> +
> +static map_word __xipram bt1_rom_dummy_read(struct map_info *map,
> +					  unsigned long ofs)
> +{
> +	map_word ret;
> +
> +	ret.x[0] = 0xFF;
> +
> +	return ret;
> +}

Why define dummy_io for "baikal,bt1-boot-rom"? I don't see any use of
adding a driver that always reads 0xFFs


> +
> +/*
> + * Currently Baikal-T1 SoC internal ROM is only supported. Boot ROM region is
> + * dummy-data filled for now since in case of the system booted up from an
> + * external SPI flash the ROM will mirror the Baikal-T1 System Boot SPI direct
> + * mapping memory region. That region can be only accessed when transparent
> + * mode is enabled, which we unable to do here because this feature is provided
> + * by the SPI controller config space occupied by the corresponding driver.
> + * In future we'll export the mode setting method from the Baikal-T1 System
> + * Boot SPI Controller driver to also have the Boot ROM supported here.
> + */
> +static const struct of_device_id bt1_rom_of_match[] = {
> +	{
> +		.compatible = "baikal,bt1-int-rom",
> +		.data = &bt1_rom_normal_io
> +	},

> +	{
> +		.compatible = "baikal,bt1-boot-rom",
> +		.data = &bt1_rom_dummy_io
> +	},
> +	{ }



[...]

Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
