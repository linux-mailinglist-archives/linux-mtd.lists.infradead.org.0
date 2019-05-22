Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 092512715D
	for <lists+linux-mtd@lfdr.de>; Wed, 22 May 2019 23:07:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=qIeUfnTTdq11LEhXmAz3YJohXywbQiKkXHvjprwfcTs=; b=BgEci0oWM0XFF9
	syQnjBXgED/wBrcu2pbi/q4YQ6gypGRrjQOlR7EKV+OdyfKxjfMZ/TuAGYiQdkKEJ47OXvqFJ0UEH
	Qkpoa4a6jrinAsGPsiQNns2choh0FlygjJBGJGfF2HzRCmYLDC9vGjwrUHr3aNMTxxCma3SulkFyK
	6smrFSbPKSx542EhBGnpZ66zLDRMb+EnCs+Jqs+VVEp0i9WyZk6eUy9kt6wcPx6j0DuYjkEW+x+qV
	bbXprcpwdWIib2eUvzBtavlqcysm6ZAD4nxPaFH39LHtrSNm2v4e3sIuRg8v/K2blEPZgQVWtwl5o
	pBiZL+N7RR8L9ESMUYEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTYRy-0000jB-Es; Wed, 22 May 2019 21:07:02 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTYRp-0000iJ-Sg
 for linux-mtd@lists.infradead.org; Wed, 22 May 2019 21:06:55 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 6FE968365B;
 Thu, 23 May 2019 09:06:49 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1558559209;
 bh=8p35s5XVWClYRtrAwLIBY55P6drz9IsxEb7+jakkOSE=;
 h=From:To:CC:Subject:Date:References;
 b=w/FMcy8LrCkP7/k1jhsMg6PjVW5Yf3xubMEg37maZ+K8yhuJsWQSxFV9ARFjjfU7n
 pSM13x6MhgVkg5CBWS27fnOk6e4qOp4HHUQt+FlQe1X7DpIWHcVTzol0/Jvl3SKC+r
 zaEgjZ7d4eWhmSu748gxfZjpyn6JR1SV7o+Y/MVcWho4ldU3qmVkEaz4MenDvuMPtz
 SV2B8Vb3NfXIXboQcXgoCiut3aSvfyyGQsQbh/wEm4EkJArmM2EkvaSGnJUGTQK9kd
 QOHrnVvCaFFFrv9bF/pJSoHj/gSJL2cnLTRMnfz71Qv8X2K3RB60cuNalM1FBzKpuY
 1U1KOJU+w5i+Q==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5ce5b9e70000>; Thu, 23 May 2019 09:06:47 +1200
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8)
 by svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8) with
 Microsoft SMTP Server (TLS) id 15.0.1156.6; Thu, 23 May 2019 09:06:49 +1200
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Thu, 23 May 2019 09:06:49 +1200
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: Richard Weinberger <richard.weinberger@gmail.com>
Subject: Re: [PATCH 2/2] mtd: concat: implement _is_locked mtd operation
Thread-Topic: [PATCH 2/2] mtd: concat: implement _is_locked mtd operation
Thread-Index: AQHVEDJo0iBq93PH/EeJquPgUtfeew==
Date: Wed, 22 May 2019 21:06:48 +0000
Message-ID: <0c59bcd6c866429cb9727f787b7f61ce@svr-chch-ex1.atlnz.lc>
References: <20190522000753.13300-1-chris.packham@alliedtelesis.co.nz>
 <20190522000753.13300-2-chris.packham@alliedtelesis.co.nz>
 <CAFLxGvy2c9KV1CyoFaD76jvThfPiotqfoeNchqjGcDp+uHie7Q@mail.gmail.com>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:3a2c:4aff:fe70:2b02]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_140654_503951_8F35D20D 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 LKML <linux-kernel@vger.kernel.org>, Marek Vasut <marek.vasut@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>, Miquel
 Raynal <miquel.raynal@bootlin.com>, Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 23/05/19 8:44 AM, Richard Weinberger wrote:
> On Wed, May 22, 2019 at 2:08 AM Chris Packham
> <chris.packham@alliedtelesis.co.nz> wrote:
>>
>> Add an implementation of the _is_locked operation for concatenated mtd
>> devices. As with concat_lock/concat_unlock this can simply use the
>> common helper and pass mtd_is_locked as the operation.
>>
>> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
>> ---
>>   drivers/mtd/mtdconcat.c | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/drivers/mtd/mtdconcat.c b/drivers/mtd/mtdconcat.c
>> index 9514cd2db63c..0e919f3423af 100644
>> --- a/drivers/mtd/mtdconcat.c
>> +++ b/drivers/mtd/mtdconcat.c
>> @@ -496,6 +496,11 @@ static int concat_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
>>          return __concat_xxlock(mtd, ofs, len, mtd_unlock);
>>   }
>>
>> +static int concat_is_locked(struct mtd_info *mtd, loff_t ofs, uint64_t len)
>> +{
>> +       return __concat_xxlock(mtd, ofs, len, mtd_is_locked);
>> +}
> 
> Hmm, here you start abusing your own new API. :(

Abusing because xxlock is a poor choice of name? I initially had a third 
copy of the logic from lock/unlock which is what lead me to do the 
cleanup first. mtd_lock(), mtd_unlock() and mtd_is_locked() all work the 
same way namely given an offset and a length either lock, unlock or 
return the status of the len/erasesz blocks at ofs.

> 
> Did you verify that the unlock/lock-functions deal correctly with all
> semantics from mtd_is_locked?
> i.e. mtd_is_locked() with len = 0 returns 1 for spi-nor.
> 

I believe so. I've only got access to a parallel NOR flash system that 
uses concatenation and that seems sane  (is mtdconcat able to work with 
spi memories?). The concat_is_locked() should just reflect what the 
underlying mtd device driver returns.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
