Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2914C1CD66C
	for <lists+linux-mtd@lfdr.de>; Mon, 11 May 2020 12:21:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1rELQVzXQg9Fmi98zWeQzW/9MIoeNcunDpQyAneuhm0=; b=aG4u5vw/exxbTqXyOoCmOn8vG
	dVhPBw8TESWgJRvTXpF0ViORGRYrgDO890eRQnddisbt9yH3qZxn6um6ArHUlboZmN4P7+rYzjp1d
	/bhz1HZK6eFMWWNkrP5+y3CiJNc4MLIXyqWfl1tBjgnI8zbSTFJrnsggnDD10eaWy/Uo6ReSOUzJy
	7P53uV4p8ej9cSh9rVTT0FHa0ZBKfgYRGfu9u3cn/Yf/BCYDjRMJiXfiZdoekmzXUpIpI0em9ma9Y
	MyIDiNxQ4c6QdEMwymaZgL/QO4wnJU5Kp4w07PfxiO76VXeV93Wttq5Zo8waD+AYN49vyocWGg29Z
	B/ZIECwIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY5Yx-0004VI-Bk; Mon, 11 May 2020 10:21:31 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY5Yl-0004U9-Mq
 for linux-mtd@lists.infradead.org; Mon, 11 May 2020 10:21:21 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04BAI1NJ017907; Mon, 11 May 2020 12:21:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=HYIucn+K7P4IZIxEJitoqQ+kIYFvDpyLmXWqjyGXEpg=;
 b=Jhwm4G3t4wSW5c97351Ap3of9lmNawd9/Ya+JqvlnP9d5MDXETNHV+DjLAuOv4Pzg1q3
 gv+9lS6iODHmf1xdUgdINI1n+cKBvOvUSCpAR0YV+tiFj8DSgOgQsxl90LayHMRRcxvP
 tjSHhfa7pIykiiMZlLSVUl9Cp1ypVrLGn2ihzzrqIr8D+ILwpnAs8yJeuLWQklCO3xov
 a1Cr0bsk2RZCjbzfrJfE46/P/aGkNsTSKoh+Mw4AyNJX6LsG2GZVLjt/A6FfiFnTvu1q
 YSv1lc7zCm5SJoDTE+2RLl4+2po2Fu2Iz//6m/Xmo9sPcwMhRIy6D/QQ0x4HSSG2Vdif 8w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30whn99t5b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 11 May 2020 12:21:07 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7BA1D10002A;
 Mon, 11 May 2020 12:21:06 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 438C32C38B8;
 Mon, 11 May 2020 12:21:06 +0200 (CEST)
Received: from [10.211.5.64] (10.75.127.49) by SFHDAG6NODE2.st.com
 (10.75.127.17) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 11 May
 2020 12:21:04 +0200
Subject: Re: [PATCH v4 10/10] mtd: rawnand: stm32_fmc2: get resources from
 parent node
To: Miquel Raynal <miquel.raynal@bootlin.com>
References: <1588756279-17289-1-git-send-email-christophe.kerello@st.com>
 <1588756279-17289-11-git-send-email-christophe.kerello@st.com>
 <20200511111855.48216940@xps13>
From: Christophe Kerello <christophe.kerello@st.com>
Message-ID: <3377adc6-3e5e-b9b7-12be-c7aa44bfac82@st.com>
Date: Mon, 11 May 2020 12:21:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200511111855.48216940@xps13>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG7NODE2.st.com (10.75.127.20) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-11_04:2020-05-11,
 2020-05-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_032120_211031_99F662E9 
X-CRM114-Status: GOOD (  22.12  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, marex@denx.de,
 vigneshr@ti.com, gregkh@linuxfoundation.org, richard@nod.at,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, boris.brezillon@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Miquel,

On 5/11/20 11:18 AM, Miquel Raynal wrote:
> Hi Christophe,
> 
> Christophe Kerello <christophe.kerello@st.com> wrote on Wed, 6 May 2020
> 11:11:19 +0200:
> 
>> FMC2 EBI support has been added. Common resources (registers base
>> and clock) are now shared between the 2 drivers. It means that the
>> common resources should now be found in the parent device when EBI
>> node is available.
>>
>> Signed-off-by: Christophe Kerello <christophe.kerello@st.com>
>> ---
> 
> [...]
> 
>> +
>> +static bool stm32_fmc2_nfc_check_for_parent(struct platform_device *pdev)
>> +{
>> +	u32 i;
>> +	int nb_resources = 0;
>> +
>> +	/* Count the number of resources in reg property */
>> +	for (i = 0; i < pdev->num_resources; i++) {
>> +		struct resource *res = &pdev->resource[i];
>> +
>> +		if (resource_type(res) == IORESOURCE_MEM)
>> +			nb_resources++;
>> +	}
>> +
>> +	/* Each CS needs 3 resources defined (data, cmd and addr) */
>> +	if (nb_resources % 3)
>> +		return false;
>> +
>> +	return true;
>> +}
> 
> This function looks fragile. Why not just checking the compatible
> string of the parent node?
> 

Yes, it is another way to check that we have an EBI parent node.

In this implementation, I was checking the number of reg tuples.
In case we have 6, it means that the register base address is defined in 
the parent node (EBI node).
In case we have 7, it means that the register base address is defined in 
the current node (NFC node).

>> +
>>   static int stm32_fmc2_nfc_probe(struct platform_device *pdev)
>>   {
>>   	struct device *dev = &pdev->dev;
>> @@ -1824,8 +1865,8 @@ static int stm32_fmc2_nfc_probe(struct platform_device *pdev)
>>   	struct resource *res;
>>   	struct mtd_info *mtd;
>>   	struct nand_chip *chip;
>> -	void __iomem *mmio;
>>   	int chip_cs, mem_region, ret, irq;
>> +	int num_region = 1;
>>   
>>   	nfc = devm_kzalloc(dev, sizeof(*nfc), GFP_KERNEL);
>>   	if (!nfc)
>> @@ -1834,23 +1875,19 @@ static int stm32_fmc2_nfc_probe(struct platform_device *pdev)
>>   	nfc->dev = dev;
>>   	nand_controller_init(&nfc->base);
>>   	nfc->base.ops = &stm32_fmc2_nfc_controller_ops;
>> +	nfc->has_parent = stm32_fmc2_nfc_check_for_parent(pdev);
>> +	if (nfc->has_parent)
>> +		num_region = 0;
>>   
>>   	ret = stm32_fmc2_nfc_parse_dt(nfc);
>>   	if (ret)
>>   		return ret;
>>   
>> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>> -	mmio = devm_ioremap_resource(dev, res);
>> -	if (IS_ERR(mmio))
>> -		return PTR_ERR(mmio);
>> -
>> -	nfc->regmap = devm_regmap_init_mmio(dev, mmio, &stm32_fmc2_regmap_cfg);
>> -	if (IS_ERR(nfc->regmap))
>> -		return PTR_ERR(nfc->regmap);
>> -
>> -	nfc->io_phys_addr = res->start;
>> +	ret = stm32_fmc2_nfc_set_regmap_clk(pdev, nfc);
>> +	if (ret)
>> +		return ret;
> 
> Are you sure this driver sill works without the EBI block?
> 
> This change looks suspect.
> 

Yes, the driver works fine with current bindings and with EBI bindings.
In case we have an EBI parent node, it means that the register base 
address and the clock are defined in the parent node.
Without any EBI parent node, it means that the register base address and 
the clock are defined in the NFC node.

The new function stm32_fmc2_nfc_set_regmap_clk is looking for these 2 
resources in the NFC node or in the parent node.
static int stm32_fmc2_nfc_set_regmap_clk(struct platform_device *pdev,
					 struct stm32_fmc2_nfc *nfc)
{
	struct device *dev = &pdev->dev;
	struct resource res;
	int ret;

	if (nfc->has_parent)
		dev = dev->parent;

	ret = of_address_to_resource(dev->of_node, 0, &res);
	if (ret)
		return ret;

	nfc->io_phys_addr = res.start;

	nfc->regmap = device_node_to_regmap(dev->of_node);
	if (IS_ERR(nfc->regmap))
		return PTR_ERR(nfc->regmap);

	nfc->clk = devm_clk_get(dev, NULL);
	if (IS_ERR(nfc->clk))
		return PTR_ERR(nfc->clk);

	return 0;
}

Regards,
Christophe Kerello.

>>   
>> -	for (chip_cs = 0, mem_region = 1; chip_cs < FMC2_MAX_CE;
>> +	for (chip_cs = 0, mem_region = num_region; chip_cs < FMC2_MAX_CE;
>>   	     chip_cs++, mem_region += 3) {
>>   		if (!(nfc->cs_assigned & BIT(chip_cs)))
>>   			continue;
>> @@ -1888,10 +1925,6 @@ static int stm32_fmc2_nfc_probe(struct platform_device *pdev)
>>   
>>   	init_completion(&nfc->complete);
>>   
>> -	nfc->clk = devm_clk_get(dev, NULL);
>> -	if (IS_ERR(nfc->clk))
>> -		return PTR_ERR(nfc->clk);
>> -
> 
> Same here
> 
>>   	ret = clk_prepare_enable(nfc->clk);
>>   	if (ret) {
>>   		dev_err(dev, "can not enable the clock\n");
> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
