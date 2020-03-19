Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DF918B046
	for <lists+linux-mtd@lfdr.de>; Thu, 19 Mar 2020 10:31:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sDGkVgi2A/oQBg8HB4O+F9AeJ29VpD8gRo9HpHT4aqY=; b=sEzGhKEXK1CUo+
	6WwzVkqwmKhbHqDTwYUzI46fth50P4qNrZ8I2x+ViZy5+CLgglYt0OB/vazjVejx/z4yYgWFqAvQ3
	shzaZJU3IM4fyNGI0OUG0FL/0wG2Qzl28X/l9qcSKqOeOQwXVwUyFUZr1ptC5sHW7ICdjwdwMbRWo
	DGeWYCEN/MlKX+WpdujS1RA6sqD14GtZfF4XvZYtVP566Z253xyVSrQeJ/wyjmQiEZtb7yU6SwqlJ
	IQe2BlOHg/vtmqjrbvfRaRzqg+bLTtlRSlw2FBE9uRFLjZsL6l7s7HxK5JmGI0mP9QVBMipKhO7ck
	P7ebx6cD4tM4E7uRkUbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jErWO-0007al-HK; Thu, 19 Mar 2020 09:31:24 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jErWE-0007JS-Ja
 for linux-mtd@lists.infradead.org; Thu, 19 Mar 2020 09:31:16 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02J9UYBS011730;
 Thu, 19 Mar 2020 04:30:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584610234;
 bh=ptAVA86iz3NfXhHh5PQXjwSG9wm973u3msedd17ZuX8=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=VuAyYpf/EBe7FQ6xvzD+INTZYdQ/Mq8HR1E/4smZY/8XVDybC7+K1KXK7I3LER6Gd
 ldEv7HsPQFy795qArDBhGezA3PoaC9xD8bLYi3rXGwCX3FARUeY9kfmOk5aDJxAsnP
 m5pWJ5QsUxkeWvwzXX29v3pQaKl3ebngcQ+2bP/Y=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02J9UY41027080
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 19 Mar 2020 04:30:34 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 19
 Mar 2020 04:30:34 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 19 Mar 2020 04:30:33 -0500
Received: from [10.250.132.123] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02J9UPQM028697;
 Thu, 19 Mar 2020 04:30:26 -0500
Subject: Re: [PATCH v12 2/4] mtd: spi-nor: add spi-mem support in
 cadence-quadspi controller driver
To: <Tudor.Ambarus@microchip.com>, <linux-mtd@lists.infradead.org>,
 <vadivel.muruganx.ramuthevar@linux.intel.com>
References: <20200310015213.1734-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200310015213.1734-3-vadivel.muruganx.ramuthevar@linux.intel.com>
 <3360641.Vn3sISamPi@192.168.0.120>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <cea89434-d2bf-72e6-0b3b-0e0efd0d149e@ti.com>
Date: Thu, 19 Mar 2020 15:00:24 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <3360641.Vn3sISamPi@192.168.0.120>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_023114_734911_0F55E2BF 
X-CRM114-Status: GOOD (  19.73  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: marex@denx.de, devicetree@vger.kernel.org, tien.fong.chee@intel.com,
 tudor.ambarus@gmail.com, boris.brezillon@free-electrons.com,
 computersforpeace@gmail.com, richard@nod.at, simon.k.r.goldschmidt@gmail.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-spi@vger.kernel.org,
 dinguyen@kernel.org, broonie@kernel.org, miquel.raynal@bootlin.com,
 cheol.yong.kim@intel.com, cyrille.pitchen@atmel.com, qi-ming.wu@intel.com,
 dwmw2@infradead.org, david.oberhollenzer@sigma-star.at
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 19/03/20 1:39 pm, Tudor.Ambarus@microchip.com wrote:
> Hi,
> 
> On Tuesday, March 10, 2020 3:52:11 AM EET Ramuthevar, Vadivel MuruganX wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the
>> content is safe
>>
>> From: Ramuthevar Vadivel Murugan
>> <vadivel.muruganx.ramuthevar@linux.intel.com>
>>
>> This patch adds a spi-mem framework adaptation over cadence-quadspi driver.
> 
> you need to specify on which versions of the controller you tested this.
> 
>>
>> Signed-off-by: Ramuthevar Vadivel Murugan
>> <vadivel.muruganx.ramuthevar@linux.intel.com> Signed-off-by: Vignesh
>> Raghavendra <vigneshr@ti.com>
>> ---
>>  drivers/mtd/spi-nor/cadence-quadspi.c | 538
>> +++++++++++++--------------------- 1 file changed, 209 insertions(+), 329
>> deletions(-)
>>
>> diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c
>> b/drivers/mtd/spi-nor/cadence-quadspi.c index 494dcab4aaaa..7b52e109036e
>> 100644
>> --- a/drivers/mtd/spi-nor/cadence-quadspi.c
>> +++ b/drivers/mtd/spi-nor/cadence-quadspi.c
>> @@ -3,6 +3,8 @@
> 
> cut
> 
>>  struct cqspi_st {
>> @@ -70,23 +66,20 @@ struct cqspi_st {
>>         void __iomem            *ahb_base;
>>         resource_size_t         ahb_size;
>>         struct completion       transfer_complete;
>> -       struct mutex            bus_mutex;
> 
> are we now supporting just a single flash on the bus? Does 
> CQSPI_MAX_CHIPSELECT make sense anymore?
> 

Driver still supports multiple CS but SPI core takes care of
serialization by holding bus_lock_mutex in spi_mem_access_start()

So, I don't see a need for this mutex

[...]

> 
> cut
> 
>> -static int cqspi_of_get_pdata(struct platform_device *pdev)
>> +static int cqspi_of_get_pdata(struct cqspi_st *cqspi)
>>  {
>> -       struct device_node *np = pdev->dev.of_node;
>> -       struct cqspi_st *cqspi = platform_get_drvdata(pdev);
>> -
>> -       cqspi->is_decoded_cs = of_property_read_bool(np,
>> "cdns,is-decoded-cs"); +       struct device *dev = &cqspi->pdev->dev;
> 
> you dropped the reading of this property, but you kept the is_decoded_cs 
> member, shouldn't you drop the latter too? I guess this deserves a dedicated 
> patch.
> 

is_decoded_cs cannot be supported with spi-mem as this requires
knowlegde of flash geometry which is not available via spi-mem

I don't see any user of decoded-cs in the kernel. So, IMO its okay to
drop entire support in a patch prior to converting driver to spi-mem.

[...]

>> @@ -1423,16 +1295,28 @@ static int cqspi_probe(struct platform_device *pdev)
>> cqspi->current_cs = -1;
>>         cqspi->sclk = 0;
>>
>> -       ret = cqspi_setup_flash(cqspi, np);
>> +       ret = cqspi_setup_flash(cqspi);
>>         if (ret) {
>> -               dev_err(dev, "Cadence QSPI NOR probe failed %d\n", ret);
>> +               dev_err(dev, "failed to setup flash parameters %d\n", ret);
>>                 goto probe_setup_failed;
>>         }
>>
>> -       return ret;
>> +       if (cqspi->use_dac_mode) {
>> +               ret = cqspi_request_mmap_dma(cqspi);
> 
> the driver was requesting the mmap for each available flash and now you do it 
> once, which is great, but this too has to be made in a dedicated patch.
>

Not really, current driver does:

                        if (!cqspi->rx_chan)
                                cqspi_request_mmap_dma(cqspi);

So, cqspi_request_mmap_dma() is not called again if it succeeds for at
least one flash.

Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
