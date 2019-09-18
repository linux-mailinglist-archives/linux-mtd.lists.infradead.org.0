Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05629B5B02
	for <lists+linux-mtd@lfdr.de>; Wed, 18 Sep 2019 07:45:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TcZxGl5zwcyfPpDeHV0IOtpXMtmO9lFVg4bU3cofrb4=; b=gRUF7fTV7CoQPf
	ODsMzpP0SP4i1taONxKZIN9i184b19In/WIcUO1akIuqAGZ32AnYj6vEfEF4LRFvD482dJE1TMI1s
	UQV04oAVcE7Af+iFAxSNN54Rwyp9Lf5q53Y0ENisqHWbn844Q6dN0kH5Nno5f83x1xr9PJEVf34bv
	sbX2SfNqRAjtCClihnQ7r9/WqtUI3Eg4s0Gkga3NVC/STeh90Er4BJM3sIgb719grnhuTbh9KIPF+
	obKaL6BgsrBN0ogp7feFaW32yTSClyRWIRo0VdlCxF86L/SVRPx/Z13sltVfJFJWoVrJ6MjKbdYLY
	7uksxR8wkhYEkvZoIj0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iASmT-000814-JV; Wed, 18 Sep 2019 05:45:33 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iASmJ-00080d-C1
 for linux-mtd@lists.infradead.org; Wed, 18 Sep 2019 05:45:24 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8I5iwVk083894;
 Wed, 18 Sep 2019 00:44:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1568785498;
 bh=7pG9/InaMSwJjn0yQpoBq7e14aVoFDf5QOSWplTd8hM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=ZLIhuMuhDMAAVa/OB57tiW6AEdePr3n7ZG8cw4fMVrCsTbdfklR7+96PSeevFfAeq
 W1gak/1zW2G/19fsI2qxAWgIQOqcWRTZkiUuLkHvSYxXfpGY+EIg+15yDEOuFItoNx
 7pR/kd6Y05ea3LGzcvrJ/S9tinY7zcRpyJl4b+Ys=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8I5iw9b075287
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 18 Sep 2019 00:44:58 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 18
 Sep 2019 00:44:58 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 18 Sep 2019 00:44:58 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8I5itkA022686;
 Wed, 18 Sep 2019 00:44:55 -0500
Subject: Re: [PATCH] mtd: cfi_util: use DIV_ROUND_UP() in cfi_udelay()
To: Geert Uytterhoeven <geert@linux-m68k.org>, Sergei Shtylyov
 <sergei.shtylyov@cogentembedded.com>
References: <610761cf-5a19-c182-07d8-8d118ca20035@cogentembedded.com>
 <bd64fb56-c42d-7f7b-c6f1-4d7b43a6d191@cogentembedded.com>
 <CAMuHMdVdKgBYSGJemH2LP+N61T+uui0XX1Zb-=dM5sNEAaQoMg@mail.gmail.com>
 <90d87853-621f-890a-be59-1591cfe1f4ea@cogentembedded.com>
 <CAMuHMdWEwc8_=NxY_UQ=tzR9o95Vv3_b6WF5s45nHjkzmVygMQ@mail.gmail.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <f182a0f5-eed9-56ab-a909-a327bcd5ba8f@ti.com>
Date: Wed, 18 Sep 2019 11:15:32 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdWEwc8_=NxY_UQ=tzR9o95Vv3_b6WF5s45nHjkzmVygMQ@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_224523_494004_F1072E8D 
X-CRM114-Status: GOOD (  14.60  )
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
Cc: Richard Weinberger <richard@nod.at>, Marek Vasut <marek.vasut@gmail.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Sergei,

On 18/09/19 2:53 AM, Geert Uytterhoeven wrote:
> Hi Sergei,
> 
> On Tue, Sep 17, 2019 at 9:53 PM Sergei Shtylyov
> <sergei.shtylyov@cogentembedded.com> wrote:
>> On 09/17/2019 10:43 PM, Geert Uytterhoeven wrote:
>>>> cfi_udelay() open-codes DIV_ROUND_UP(), violating the kernel coding style
>>>
>>> Perhaps "violating" sounds a bit too harsh?
>>
>>    Hm, indeed, scripts/checkpatch.pl doesn't complain on this line. Do you have
>> other ideas how to call this? Or just omit this?
> 

scripts/checkpatch.pl --strict will complain about this.

> Just "use the existing helper, instead of open-coding the same operation"?

I agree with Geert. This driver file predates checkpatch and therefore
does not follow all kernel coding styles. But its good to replace
open-coding with available helper macro.

Also, please don't post new patches in reply to an existing thread. This
patch appears in-reply-to ("mtd: devices: m25p80: Use the spi-mem dirmap
API") which is unrelated to current patch.


-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
