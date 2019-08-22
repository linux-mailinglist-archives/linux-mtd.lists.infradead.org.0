Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 697F498A44
	for <lists+linux-mtd@lfdr.de>; Thu, 22 Aug 2019 06:22:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KcME0oE3MG9VaAFo5oaQdj9DQf0s38FNhycNQWohE9w=; b=AUeU/DLY73aSgM
	8A/G2kgt76KfoovBimeCD8dJ4CJGoaGZ7+LJbDMQroG06udCE6GuAvQNUW4vK017M7enfc05vaS9V
	Nq1GEp0Tr43X/UIjU70HHFSi9ZU+4AoSFBWxND74ObNQxjglGcw/uyLXFdsYK4/tOe5vAQZ+Cyw4v
	uevUlF/mGG8h939+GzDSDWBD5NG3eDhxfOTBKbDoufVULcMiQTmkRfCgzz5ewfUrthCPP6tqI3tje
	qsgK38pdXIglWsoXzHNtcH707ZkDrzojK5xkOf3B/lHRo/nKw4GD2UzMgBGqIBRtwCGC5B9P+z6Nc
	hxS7ne3qfCdBzVXYtIKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ecc-0005dq-LV; Thu, 22 Aug 2019 04:22:50 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0ecS-0005cy-5M
 for linux-mtd@lists.infradead.org; Thu, 22 Aug 2019 04:22:42 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7M4MLLs066039;
 Wed, 21 Aug 2019 23:22:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566447741;
 bh=Qtz+l/8ogXSMEv9t2tFgpFnOf2Fu2uSuosv6yasRiOA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=mhUmvkeYK8dKovNl1mwaEZ/kZNepO6Gs+4tKeXr908Ru8KgpJy0g1g4H3DtYmSfUJ
 S/K3KnbIHvvxFGNCN0Yi0qlOZ5hJVvz0/UoWJcSGkaTWz9LGU2OKJKoo3ARci6N6F0
 WdFBwZQYzTwFu9ZH6sE2esNfARGIujefjqspHR+s=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7M4MLR5051119
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 21 Aug 2019 23:22:21 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 21
 Aug 2019 23:22:21 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 21 Aug 2019 23:22:21 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7M4MIuK017345;
 Wed, 21 Aug 2019 23:22:19 -0500
Subject: Re: [PATCH v7 0/9] mtd: cfi_cmdset_0002: Fix flash write issue for
 OpenWrt Project
To: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>, "ikegami.t@gmail.com"
 <ikegami.t@gmail.com>
References: <20190619165001.28410-1-ikegami.t@gmail.com>
 <7f092ec3300c2c982b85ecd58d45f39e3dbae98e.camel@infinera.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <1c069c15-afee-1c52-380c-13d311eba447@ti.com>
Date: Thu, 22 Aug 2019 09:52:58 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7f092ec3300c2c982b85ecd58d45f39e3dbae98e.camel@infinera.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_212240_335800_68D814B0 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "chris.packham@alliedtelesis.co.nz" <chris.packham@alliedtelesis.co.nz>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "fbettoni@gmail.com" <fbettoni@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 21/08/19 1:33 PM, Joakim Tjernlund wrote:
> On Thu, 2019-06-20 at 01:49 +0900, Tokunori Ikegami wrote:
>> CAUTION: This email originated from outside of the organization. Do not click links or open attachments unless you recognize the sender and know the content is safe.
>>
>>
>> The change is based on the fix for flash erase to use chip_good() done in
>> the past. And it is fixed as same way in the OpenWrt Project as below.
>>  <https://nam03.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgit.openwrt.org%2F%3Fp%3Dopenwrt%2Fopenwrt.git%3Ba%3Dcommitdiff%3Bh%3Dddc11c3932&amp;data=02%7C01%7CJoakim.Tjernlund%40infinera.com%7Cc576b3ddad2d4f3c09f008d6f4d635b2%7C285643de5f5b4b03a1530ae2dc8aaf77%7C1%7C0%7C636965598194534713&amp;sdata=1XV5w3jD6tbfP%2B2Q2eBqfeHp07kHLDxpiJhW4ZA5Ea8%3D&amp;reserved=0>
>> Also includes some refactoring changes.
>>
> 
> Did this go anywhere?
> 

I have this series in my queue and will consider for 5.4-rc1.

Regards
Vignesh

>  Jocke 
> 
>> Signed-off-by: Tokunori Ikegami <ikegami.t@gmail.com>
>> Cc: Fabio Bettoni <fbettoni@gmail.com>
>> Co: Hauke Mehrtens <hauke@hauke-m.de>
>> Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>
>> Cc: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
>> Cc: linux-mtd@lists.infradead.org
>>
>> Tokunori Ikegami (9):
>>   mtd: cfi_cmdset_0002: Use chip_good() to retry in do_write_oneword()
>>   mtd: cfi_cmdset_0002: Remove goto statement from do_write_buffer()
>>   mtd: cfi_cmdset_0002: Split do_write_oneword() to reduce function size
>>   mtd: cfi_cmdset_0002: Split do_write_oneword() op_done goto statement
>>   mtd: cfi_cmdset_0002: Remove op_done goto statement from
>>     do_write_oneword()
>>   mtd: cfi_cmdset_0002: Split write-to-buffer-reset sequence
>>   mtd: cfi_cmdset_0002: Split to wait write buffer to check if completed
>>   mtd: cfi_cmdset_0002: Split do_write_oneword() to reduce exit paths
>>   mtd: cfi_cmdset_0002: Disable write buffer functions if
>>     FORCE_WORD_WRITE is 1
>>
>>  drivers/mtd/chips/cfi_cmdset_0002.c | 290 ++++++++++++++++++++++--------------
>>  1 file changed, 182 insertions(+), 108 deletions(-)
>>
>> --
>> 2.11.0
>>
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
