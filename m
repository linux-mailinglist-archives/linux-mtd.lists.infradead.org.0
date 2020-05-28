Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9E01E5D9A
	for <lists+linux-mtd@lfdr.de>; Thu, 28 May 2020 13:02:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iur9cAIKiMzOIR5kSas9sazS5/6qeQR4QdMpNCqSODI=; b=QrI5JEOJKJQDQ7
	wOXyHc0hiEN3sYWC3/z2f1bG/5y9Obp908yIO02e+Z1eOeol/8hpIk5ayGcDNTqgsWbXruSjKVHD6
	eqhH5yLfQuP1LpcW/YkxR0VLQtX/zaIkB/iInDiFdyFcN5+0Rt0gWb5RXttWCeM4hhcgLWtNU/7hf
	7gPkDHysazzY6jByf4cmc230Qyu8qSfzGFjgPxYTocnVcrg5HGboau57WvZSUzSBhSWUoof91BHoi
	BxzNU37X5cEHUjLGk7v6ownn7kXGtONKLdb7Opg48dtCbUiAEkdal8R0HHiAoQvhvdwaFAqBfTx2F
	EAcvAbsShvTILRe0B52w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeGIY-00075n-Mr; Thu, 28 May 2020 11:02:06 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeGIO-00073w-3h
 for linux-mtd@lists.infradead.org; Thu, 28 May 2020 11:01:57 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04SB1nP5047624;
 Thu, 28 May 2020 06:01:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590663709;
 bh=eZ+LzRXdAqLDmjIFFtSVLARH/fNt7cotb+N9npkFJXg=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=P5oBbOUi9kZWxa4qDviJIucWymckrM9WRiUANyvqvQ96VbY5vwhyLc3JrjPfz15+X
 vXWdk2shZRg+9PT8xWSAXqbEvHnTwbT6EP9jIb5/De3u/GvHGHdlESZhBJksu1I1zO
 iaDCNNaQH5kB3sSxlNQnaYbGt0cgOciq9fsND6yY=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04SB1nCp079663
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 28 May 2020 06:01:49 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 28
 May 2020 06:01:49 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 28 May 2020 06:01:49 -0500
Received: from [10.250.234.195] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04SB1j9F106456;
 Thu, 28 May 2020 06:01:46 -0500
Subject: Re: [PATCH 2/2] mtd: spi-nor: intel-spi: fix forced writable option
To: Daniel Walker <danielwa@cisco.com>, Andrew Morton
 <akpm@linux-foundation.org>
References: <20200518175930.10948-2-danielwa@cisco.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <73a475fa-3c26-89ab-aac6-54f9b5b15936@ti.com>
Date: Thu, 28 May 2020 16:31:44 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200518175930.10948-2-danielwa@cisco.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_040156_230656_9A38BFDE 
X-CRM114-Status: GOOD (  23.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
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
Cc: Jinhua Wu <jinhwu@cisco.com>, Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, xe-linux-external@cisco.com,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 18/05/20 11:29 pm, Daniel Walker wrote:
> This option currently doesn't work as expected. If the BIOS has this
> flash as read-only there is no way to change this thru the driver.
> There is a parameter which allows the flash to become writable with the
> "writable" option to the module, but it does nothing if the BIOS has it
> set to read-only.
> 
> I would expect this option would make the flash writable regardless of
> the BIOS settings. This patch changes this option so the BIOS setting
> doesn't stop the writable option from enabling read write on the flash.
> 

I am confused you say "If the BIOS has this flash as read-only there is
no way to change this thru the driver", so is it possible to override
BIOS setting? If yes, where is the code in the driver?

What happens if BIOS is set to allow writes but writeable is set to 0?

Also please send patch series as thread (2/2 in reply to 1/2). You can
use tool like git send-email

> Original patch by Jinhua Wu <jinhwu@cisco.com>
> 
> Cc: Jinhua Wu <jinhwu@cisco.com>
> Cc: xe-linux-external@cisco.com
> Signed-off-by: Daniel Walker <danielwa@cisco.com>
> ---
>  drivers/mtd/spi-nor/controllers/intel-spi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/spi-nor/controllers/intel-spi.c b/drivers/mtd/spi-nor/controllers/intel-spi.c
> index e5a3d51a2e4d..68a5877bfc0b 100644
> --- a/drivers/mtd/spi-nor/controllers/intel-spi.c
> +++ b/drivers/mtd/spi-nor/controllers/intel-spi.c
> @@ -954,7 +954,7 @@ struct intel_spi *intel_spi_probe(struct device *dev,
>  	intel_spi_fill_partition(ispi, &part);
>  
>  	/* Prevent writes if not explicitly enabled */
> -	if (!ispi->writeable || !writeable)
> +	if (!ispi->writeable && !writeable)
>  		ispi->nor.mtd.flags &= ~MTD_WRITEABLE;
>  
>  	ret = mtd_device_register(&ispi->nor.mtd, &part, 1);
> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
