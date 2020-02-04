Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 616B2151518
	for <lists+linux-mtd@lfdr.de>; Tue,  4 Feb 2020 05:46:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=x0ekxnWWhbRWRCDCNhuCImvo8VLPHvN63XHm7cyn2eo=; b=aqTaMsPALN9if/i5wHjRDPh8tZ
	9GC+S31Jjv7AmYW0B2BRaIMXDkgrZGLL715YCUzkU0ZRbAyCf8UOqojQkQwKDd/ntEG+RSqtHzkjq
	idcikwNNIEfUquimKqBMJZmyU4tkNwipO1+6aX8IOcF0ZE05Z8zJqA8bzW5sOU4xD3P/vxqWsr6wU
	kGMVJImHDDD1Q98tA1RyM00jKI35T9yp67CC46gWOsySQzBq6Krv9Sj3dKzNqypcBvYker6mTTDGI
	DvT6OVStJw/37MkvEFpNmVEL59oNFMVKJ9NUWoaxYRLcIrt2L5vWOk0yOL5v3T1BSpT364xppEt4U
	Q8NU2Zrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyq6e-0000Q0-IZ; Tue, 04 Feb 2020 04:46:36 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyq6V-0000PS-VH
 for linux-mtd@lists.infradead.org; Tue, 04 Feb 2020 04:46:29 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0144kMQU122620;
 Mon, 3 Feb 2020 22:46:22 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1580791582;
 bh=JCy+DqFaR6tV1wEGEcEeNcmRbcSZjEqKGzjO5wesrnI=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=lO05mBSzzKlaHt7oCvYz+jlHLAxj9Sb7J8L8fWo9BoADyzMZYJ2CCh/8U268rZhgc
 3ZTWqPDFvT1Gp8JlzVxWNvih40I3XpdnK1Ck3Mww0vIJs7b+fGoGrD7PjZjaCH44jm
 a+AvENFhXS7dS3jvidhl7j5ZUKsEbfR4JTKNah/A=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0144kME7120686;
 Mon, 3 Feb 2020 22:46:22 -0600
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 3 Feb
 2020 22:46:22 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 3 Feb 2020 22:46:22 -0600
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0144kK4G091568;
 Mon, 3 Feb 2020 22:46:21 -0600
Subject: Re: [PATCH] mtd: hyperbus: Add proper error message for missing
 compatible
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>, Dirk Behme
 <dirk.behme@de.bosch.com>, <linux-mtd@lists.infradead.org>
References: <20200203075531.3739-1-dirk.behme@de.bosch.com>
 <ede8426d-82d3-9c2b-1d6a-6259067ef256@cogentembedded.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <b3d5a2ce-0088-27a1-f02b-9ead1c6adce5@ti.com>
Date: Tue, 4 Feb 2020 10:16:59 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <ede8426d-82d3-9c2b-1d6a-6259067ef256@cogentembedded.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_204628_112051_E57A5B86 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On 04/02/20 12:07 am, Sergei Shtylyov wrote:
> On 02/03/2020 10:55 AM, Dirk Behme wrote:
> 
>> In case the compatible "cypress,hyperflash" is not given
>> output a proper error message. Do it the same way as some
>> lines above.
>>
>> Signed-off-by: Dirk Behme <dirk.behme@de.bosch.com>
>> ---
>>  drivers/mtd/hyperbus/hyperbus-core.c | 4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/mtd/hyperbus/hyperbus-core.c b/drivers/mtd/hyperbus/hyperbus-core.c
>> index 6af9ea34117d..61b0f686a6dc 100644
>> --- a/drivers/mtd/hyperbus/hyperbus-core.c
>> +++ b/drivers/mtd/hyperbus/hyperbus-core.c
>> @@ -73,8 +73,10 @@ int hyperbus_register_device(struct hyperbus_device *hbdev)
>>  
>>  	np = hbdev->np;
>>  	ctlr = hbdev->ctlr;
>> -	if (!of_device_is_compatible(np, "cypress,hyperflash"))
>> +	if (!of_device_is_compatible(np, "cypress,hyperflash")) {
>> +		pr_err("hyperbus: 'cypress,hyperflash' compatible missing\n");
> 
>    Traditionally, the string prop values are enclosed in "", not ''.
> 

Also, please use dev_err() here. ctlr->dev should have a valid device
pointer at this point.


-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
