Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCEF50C0F
	for <lists+linux-mtd@lfdr.de>; Mon, 24 Jun 2019 15:33:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cqL3C1b0Ymxw9xiEl14QS/6Hn2Dqh2+kAlBmjaeUafs=; b=mPIzLYP4TdN3yh
	R+BLwT/kIREi+uu5Ojq1Ym/OJSfEhuLvQaX3Jvd0VC+4eAzVeHKv9EgqPFySWUPbkRUnWO7vEWtZN
	TCNioFcu9c2NwIl5LNBYtPX2bPUcihslurMQ7D9TJw9CWwPxunmTH9miomyYzUXl69PEmq2x45YTw
	x9HIg2kGo/bQFPcpjeakYkhovEogPj0521MW8yG2BSltggi5NP9hIbcAk+KCtX9KU9VM7QShzIC/5
	kOjqFpHJKc6p0Q7xn1gRv/kMnhZz+WM3qLkX/tkiZu9+lX4lFas0WALbHuhYTrtcZVBEtA7bjbZ0l
	f6vzFD+BFv65mr4ewU/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfP68-0002iv-KM; Mon, 24 Jun 2019 13:33:28 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfP5p-0002iR-DP; Mon, 24 Jun 2019 13:33:10 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5ODX3H1103654;
 Mon, 24 Jun 2019 08:33:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561383183;
 bh=T0b0y9lRm0PF/7Q++y9fxvMPpbsAZoaqD8rEIUJSye0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Lj7qLlEk0mkinY9mM7qWIgaS7ynCHyCu9/jnLcJuqMn4gUcHh8isfl3iKuKQTg9Oo
 daJO0tQfP8Ia6dlSQ40TTwSm2KOu/VkQ4O4HEx3QOz7wt6QXcvxKX/WUSUk0AXxdd5
 2w/jfbmpYWcwiUXN+Gox2dYFrb+EWYhc/gYxbXpg=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5ODX3f7096762
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 24 Jun 2019 08:33:03 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 24
 Jun 2019 08:33:03 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 24 Jun 2019 08:33:03 -0500
Received: from [172.24.190.89] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5ODWxcF056686;
 Mon, 24 Jun 2019 08:33:00 -0500
Subject: Re: [PATCH v7 3/5] mtd: Add support for HyperBus memory devices
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>, Boris Brezillon
 <bbrezillon@kernel.org>, Marek Vasut <marek.vasut@gmail.com>, Richard
 Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>
References: <20190620172250.9102-1-vigneshr@ti.com>
 <20190620172250.9102-4-vigneshr@ti.com>
 <4d17e914-cd1f-c6fe-b70a-6aae02e0cf4e@cogentembedded.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <053894bc-1536-0b6c-5255-ab9be6d66eee@ti.com>
Date: Mon, 24 Jun 2019 19:03:44 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <4d17e914-cd1f-c6fe-b70a-6aae02e0cf4e@cogentembedded.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_063309_565051_DAFD7C8E 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 22/06/19 1:22 AM, Sergei Shtylyov wrote:
> Hello!
> 
> On 06/20/2019 08:22 PM, Vignesh Raghavendra wrote:
> 
>> Cypress' HyperBus is Low Signal Count, High Performance Double Data Rate
>> Bus interface between a host system master and one or more slave
>> interfaces. HyperBus is used to connect microprocessor, microcontroller,
>> or ASIC devices with random access NOR flash memory (called HyperFlash)
>> or self refresh DRAM (called HyperRAM).
>>
>> Its a 8-bit data bus (DQ[7:0]) with  Read-Write Data Strobe (RWDS)
>> signal and either Single-ended clock(3.0V parts) or Differential clock
>> (1.8V parts). It uses ChipSelect lines to select b/w multiple slaves.
>> At bus level, it follows a separate protocol described in HyperBus
>> specification[1].
>>
>> HyperFlash follows CFI AMD/Fujitsu Extended Command Set (0x0002) similar
>> to that of existing parallel NORs. Since HyperBus is x8 DDR bus,
>> its equivalent to x16 parallel NOR flash wrt bits per clock cycle. But
>> HyperBus operates at >166MHz frequencies.
> 
>    s/wrt/WRT/.

OK

[...]
>> diff --git a/include/linux/mtd/hyperbus.h b/include/linux/mtd/hyperbus.h
>> new file mode 100644
>> index 000000000000..ead969aad35b
>> --- /dev/null
>> +++ b/include/linux/mtd/hyperbus.h
>> @@ -0,0 +1,86 @@
> [...]
>> +/**
>> + * struct hyperbus_ops - struct representing custom HyperBus operations
>> + * @read16: read 16 bit of data to flash in a single burst. Used to read
> 
>    s/to flash/from flash/.
>

Will fix


> [...]
>> +#endif /* __LINUX_MTD_HYPERBUS_H__ */
> 
>    I thought you agreed to add the #defines for the HF commands. Well, I can add them
> as well...
> 

Sorry, I thought you were proposing to add them to your driver's header
file. Anyways, I think its better to add defines when there is an actual
user.

If there are no further comments, I will fixup things locally and queue
up for next release.

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
