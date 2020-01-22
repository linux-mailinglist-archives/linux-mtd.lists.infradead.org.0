Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 054D3145433
	for <lists+linux-mtd@lfdr.de>; Wed, 22 Jan 2020 13:10:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lEDbBSAMPbSj2t7w8FsP/sjCp9oG2j4vPlfFZamKWO0=; b=Jo19i+f8ZBxTjU
	mMxrd82VyJ/PJrLvrKPGrInAMfSqAhmH8GTy099KRmSAJ/DTLG3orXYM7vKotZ/x83JdbhZ03z4K4
	6d8N7XJRCaeZ6d1GloQ0TYftFV8AQO7yXEDDDNf0aGb9ZVDHBIqjOP7dxHnhIh6WsmCB7xX9OpWBg
	YucJifNmsKvRNObDhTFTJOKmcz6DbsAU5Oy/ZxX+ClQL5LHQspwBclRW8OLwI4K6ktVPFBcrI7qGb
	FLN4sBZKCb1icPLslCiPGknC0lQFZjdggNiQoadunRhJ3go1RvYkd8yOF+XtIujuNO6E/Ug3Ii+nN
	ZBmRKRr5rnVjz0MUFbMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuEpq-0005NA-Ip; Wed, 22 Jan 2020 12:10:14 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuEpf-0004a1-Mc
 for linux-mtd@lists.infradead.org; Wed, 22 Jan 2020 12:10:05 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00MC9q30125917;
 Wed, 22 Jan 2020 06:09:52 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579694992;
 bh=DURafSP9jXxKBg06v735OUNmSHNLqrtC9E3PQ25ELkk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=rB1SF7TvFaXo2dRUOVoUlXi/QZEjwZMQcvNhPv9TuzM0HRqudEDpt26Ko5geBMKi5
 EwqRGi5LplxTS1jOFFqJVbTHCqJCknTECTiVCpHNsJSP+U7FPx3jlIRXdbzYVgehkN
 Mzf5nr9/WRo2YSVjDWg7xSqiVMb/NO3nERsaYBWw=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00MC9qeS058322
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 22 Jan 2020 06:09:52 -0600
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 22
 Jan 2020 06:09:52 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 22 Jan 2020 06:09:52 -0600
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00MC9kbi046917;
 Wed, 22 Jan 2020 06:09:48 -0600
Subject: Re: [PATCH v2] mtd: spi-nor: keep lock bits if they are non-volatile
To: <Tudor.Ambarus@microchip.com>, <michael@walle.cc>
References: <20200103221229.7287-1-michael@walle.cc>
 <8187061.UfBqSTmf1g@192.168.0.113>
 <62b578b07d5eb46a015dafd4c2f45bc2@walle.cc>
 <5323055.WqobA3rpa8@192.168.0.113>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <990b9b16-36e5-ce73-36c7-0ebfa391c26b@ti.com>
Date: Wed, 22 Jan 2020 17:40:15 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <5323055.WqobA3rpa8@192.168.0.113>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_041003_848402_E406757C 
X-CRM114-Status: GOOD (  17.21  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: marex@denx.de, richard@nod.at, linux-kernel@vger.kernel.org,
 boris.brezillon@collabora.com, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 22/01/20 12:23 am, Tudor.Ambarus@microchip.com wrote:
> Hi, Michael, Vignesh,
> 
> On Sunday, January 12, 2020 12:50:57 AM EET Michael Walle wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the
>> content is safe
[...]

>>> I see three choices:
>>> 1/ dt prop which gives a per flash granularity. The prop is related to
>>> hw
>>> protection and there might be some chances to get this accepted, maybe
>>> it is
>>> worth to involve Rob. But I tend to share Vignesh's opinion, this would
>>> configure the flash and not describe it.
>>
>> Still my preferred way. but also see below. But I wouldn't say it
> 
> Try to convince Rob.
> 
>> configures the
>> flash but describe that the user want to use the write protection.
>>
>>> 2/ kconfig option, the behavior would be enforced on all the flashes.
>>> It would
>>> be similar to what we have with CONFIG_MTD_SPI_NOR_USE_4K_SECTORS. I
>>> did a
>>> patch to address this some time ago:
>>> https://patchwork.ozlabs.org/patch/
>>> 1133278/
>>
>> Mhh. If we would combine this with this patch that would be at least a
>> step into
>> the right direction. At least a distro could enable that kernel option
>> without
>> breaking old boards/flashes. Because as outlined about you need that for
>> flashes
>> in category (2). Or you'd have to do a flash_unlock every time you want
>> to write
>> to it. But that would be really a backwards incompatible change.. ;)
>>
>>> 3/ module param, the behavior would be enforced on all the flashes.
>>>
>>> Preferences or suggestions?
>>
> I would go with 2/ or 3/. Vignesh, what do you prefer and why?
> 

I dont like option 1, because I am not convinced that this is a HW
description to be put in DT.  IIUC, problem is more of what to do with
locking configuration that is done before Linux comes up(either in
previous boot or by bootloader or POR default). Current code just
discards it and unlocks entire flash.
But proposal is not to touch those bits at probe time and leave this
upto userspace to handle.

Adding a Kconfig does not scale well for multi-platform builds. There
would not be a way to have protection enabled on one platform but
disabled on other. Does not scale for multiple flashes either

Option 3 sounds least bad among all. If module param can be designed to
be a string then, we could control locking behavior to be per flash
using flash name.


-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
