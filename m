Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 185ECD8828
	for <lists+linux-mtd@lfdr.de>; Wed, 16 Oct 2019 07:38:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KxahR1YFHUFEha8E/cWRIdc+BdnFntv3xoy+vZD/x2I=; b=nGYjt60BantAUn
	/efPh0UwK+1vBbQL5WvxCHhULAOAPWWLgAgX+ijBad3InVgkW8e+E7Zlp1mjvhGd0SO3R12hzR5oX
	FVVoXtTFKWmIvA9ew5Z5m9Q6hEPxawYq72VQRixveNa3UG5qXXVvHuSzfjWecZ5UV9RjEZ27wFvAz
	UVjQZ23Y4Vs+2+vRRZJ/kOYmvRAfeiifbhqy8CEDeCdHRs0les5DfA1NfhVNNERd+GHyFriHiFL20
	f9yYQLzoNusym9SVgK387qqs6nUORFuXi7GuslsrXqEl3xOI0/8eNCPqLF6M20BUchdH/MDbDdtv9
	WF9bHsminoBH1FG0ebNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKc17-0008Se-Fz; Wed, 16 Oct 2019 05:38:37 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKc0y-0008SF-R3
 for linux-mtd@lists.infradead.org; Wed, 16 Oct 2019 05:38:30 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9G5c5xo003489;
 Wed, 16 Oct 2019 00:38:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1571204285;
 bh=y/IDNnkOTu71r45eq7+2ssk6ywgWTSJOSMpDcEVePKE=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=TbublnuRIV50pwTg272gbkBHFt7HxrF25PlsQl475TZtGJiGD0mIbly6h35mI4J63
 4NBG6YGCHZIEeS1IW5TkPtj7Spf0RYAAgi47+JlDV94Rbfy1LilS135deOBjTBYIBt
 9X6nbbhMMNOOUw4mPxhjKHHVAtTYLqsiorf2KbK4=
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9G5c5jE104537
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 16 Oct 2019 00:38:05 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 16
 Oct 2019 00:37:58 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 16 Oct 2019 00:38:04 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9G5c28f065265;
 Wed, 16 Oct 2019 00:38:02 -0500
Subject: Re: [PATCH] mtd: cfi_cmdset_0002: don't free cfi->cfiq in error path
 of cfi_amdstd_setup()
To: Hou Tao <houtao1@huawei.com>
References: <20191008023637.133416-1-houtao1@huawei.com>
 <CAFLxGvyea-knZOz5K7uPNZLfCVkJRrO0+Cb7Xb4EaRa+gzTNDQ@mail.gmail.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <c5fd14ba-c905-58e6-c253-9dedb1b53ad0@ti.com>
Date: Wed, 16 Oct 2019 11:08:31 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAFLxGvyea-knZOz5K7uPNZLfCVkJRrO0+Cb7Xb4EaRa+gzTNDQ@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_223828_959235_08A9D518 
X-CRM114-Status: GOOD (  18.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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
Cc: Richard Weinberger <richard.weinberger@gmail.com>,
 Richard Weinberger <richard@nod.at>, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Hou,

On 16/10/19 1:17 AM, Richard Weinberger wrote:
> On Tue, Oct 8, 2019 at 4:29 AM Hou Tao <houtao1@huawei.com> wrote:
>>
>> Else there may be a double-free problem, because cfi->cfiq will
>> be freed by mtd_do_chip_probe() if both the two invocations of
>> check_cmd_set() return failure.
>>
>> Also check cfi_intelext_setup() & cfi_staa_setup() to find out
>> that cfi->cfiq is not freed as well in these functions.
> 

I guess you are trying to imply cfi_amdstd_setup() equivalents in
cfi_cmdset_0001.c (cfi_intelext_setup()) and cfi_cmdset_0020.c
(cfi_staa_setup()) dont't call kfree(cfi->cfiq). So cfi_amdstd_setup()
should not be freeing that pointer either?

This reference to other drivers in commit msg is quite confusing. My
suggestion would be to drop above line.

Let me know if that sound good. I will drop the it while applying.


> This sentence does not make sense to me.
> 
>> Signed-off-by: Hou Tao <houtao1@huawei.com>
>> ---
>>  drivers/mtd/chips/cfi_cmdset_0002.c | 1 -
>>  1 file changed, 1 deletion(-)
>>
>> diff --git a/drivers/mtd/chips/cfi_cmdset_0002.c b/drivers/mtd/chips/cfi_cmdset_0002.c
>> index cf8c8be40a9c..7eaa4b523197 100644
>> --- a/drivers/mtd/chips/cfi_cmdset_0002.c
>> +++ b/drivers/mtd/chips/cfi_cmdset_0002.c
>> @@ -785,7 +785,6 @@ static struct mtd_info *cfi_amdstd_setup(struct mtd_info *mtd)
>>         kfree(mtd->eraseregions);
>>         kfree(mtd);
>>         kfree(cfi->cmdset_priv);
>> -       kfree(cfi->cfiq);
>>         return NULL;
>>  }
> 
> Other than that,
> Reviewed-by: Richard Weinberger <richard@nod.at>
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
