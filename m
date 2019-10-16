Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDAED8A80
	for <lists+linux-mtd@lfdr.de>; Wed, 16 Oct 2019 10:07:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Zk1E+v1NNwzMI9x5h6mBavQ14vYiCoq8+HPPvQDvgpY=; b=RGU50Zmhos1z9RexRIM2OG+Hws
	UJk3fddf8fqbXHaYsVYkaLzP4ss3yyd6kHnNFpEzbPkM6fpa57VXf1I3hose6zZZVAYgLPegcyz5i
	oZGqZmKB6T8pQLZeQadte3dsbGIZ23gBInm+yva43MbPB2NEuzCLFRDNYWUTx71KrFAd8zGekA8Vk
	1G3pvZLCFLhskyU4uzyhIND/P3VjXXvjNaSLRAIctzP0ESznzyXnfhCqJA2AD8kMZOZvBZPvqISyB
	sIbNkQ6p4NdJQRWnmxEZvwGNEZRk4hMPB/TOm+vn6eseP7y68MWFLTXxx0k2voPRwr1D/RFfVx/zq
	LyQggoqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKeKz-0001DA-9E; Wed, 16 Oct 2019 08:07:17 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKeKh-00014f-RX
 for linux-mtd@lists.infradead.org; Wed, 16 Oct 2019 08:07:02 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9G86wNP052670;
 Wed, 16 Oct 2019 03:06:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1571213218;
 bh=sgreu3QFD2ssDxo8fLKZq0OoeSwknM5r4Ll3OgjuWw0=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=OoGQxbQ+x5z1p4n08Qr4zwUhEzv/8M3/JAWIDnIS62zgI9MDVwxov9Gm4/QYob3yU
 qZPM+sai+6FhG4TDYuAJR9U34PHTGC2XPsHFer9yiOikFnT4ke1ALFo8I/myMBVgX/
 YjRai/yfdJ6SddauG7NGptM3ELpn5wIvV8986w5c=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9G86w8k038466
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 16 Oct 2019 03:06:58 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 16
 Oct 2019 03:06:58 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 16 Oct 2019 03:06:51 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9G86u3K005014;
 Wed, 16 Oct 2019 03:06:57 -0500
Subject: Re: [PATCH] mtd: spi-nor: add Winbond 1.8v SPI NOR Flash ID
To: Shih-Ting Lin <STLin2@winbond.com>, linux-mtd
 <linux-mtd@lists.infradead.org>
References: <745f82b2f6a34b87a4c356561cfc11e2@wectmlbox04.winbond.com.tw>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <7366c1fb-e10d-342d-3768-382262c4d496@ti.com>
Date: Wed, 16 Oct 2019 13:37:26 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <745f82b2f6a34b87a4c356561cfc11e2@wectmlbox04.winbond.com.tw>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_010700_022771_E0F6AE97 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

On 26/09/19 2:58 PM, Shih-Ting Lin wrote:
> Winbond SPI NOR Flash have new product for 1.8V production line.
> Following is the patch add new device ID and part number information in spi-nor.c file.
> 

This patch does not meet kernel coding guidelines. Use git format-patch
to generate patch and run ./scripts/checkpatch.pl --strict on the patch
and fix reported issues.

https://www.kernel.org/doc/html/latest/process/submitting-patches.html

Also please what modes were tested?

Regards
Vignesh

> Signed-off-by: Shih-Ting Lin <stlin2@winbond.com>
> 
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -2153,6 +2153,22 @@
>>  { "w25q256", INFO(0xef4019, 0, 64 * 1024, 512, SECT_4K |
>> SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },  { "w25m512jv",
>> INFO(0xef7119, 0, 64 * 1024, 1024,  SECT_4K | SPI_NOR_QUAD_READ |
>> SPI_NOR_DUAL_READ) },
>> +{ "w25q32jwxxIM", INFO(0xef8016, 0, 64 * 1024,  64, SECT_4K |
>> +SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | SPI_NOR_HAS_LOCK |
>> +SPI_NOR_HAS_TB) }, { "w25q64jwxxIM", INFO(0xef8017, 0, 64 * 1024,
>> +128, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
>> +SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) }, { "w25q128jwxxIM",
>> +INFO(0xef8018, 0, 64 * 1024, 256, SECT_4K | SPI_NOR_DUAL_READ |
>> +SPI_NOR_QUAD_READ | SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) }, {
>> +"w25q256jwxxIM", INFO(0xef8019, 0, 64 * 1024, 512, SECT_4K |
>> +SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | SPI_NOR_HAS_LOCK |
>> +SPI_NOR_HAS_TB) },
> 
> TEST=rebuild kernel,update to DUT
>     check DUT:
>     cat /var/log/messages | grep mtk-nor
>     ---
>     localhost ~ # cat /var/log/messages | grep mtk-nor
>     2019-07-08T04:42:51.636356-07:00 INFO kernel: [0.301351] mtk-nor \
>     1100d000.spi:w25q32jw (4096 Kbytes)
> 
> 
> 
> ________________________________
> 
> The privileged confidential information contained in this email is intended for use only by the addressees as indicated by the original sender of this email. If you are not the addressee indicated in this email or are not responsible for delivery of the email to such a person, please kindly reply to the sender indicating this fact and delete all copies of it from your computer and network server immediately. Your cooperation is highly appreciated. It is advised that any unauthorized use of confidential information of Winbond is strictly prohibited; and any information in this email irrelevant to the official business of Winbond shall be deemed as neither given nor endorsed by Winbond.
> 
> ______________________________________________________
> Linux MTD discussion mailing list
> http://lists.infradead.org/mailman/listinfo/linux-mtd/
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
