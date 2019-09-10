Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B13AE980
	for <lists+linux-mtd@lfdr.de>; Tue, 10 Sep 2019 13:52:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o4A7/jWadx7BfAmVV9BJRYT6ptIyEzHP9JU+7zhoPcA=; b=rZaDMzqJAI7q7FgVO1y890nIB
	nYs0U/9TrxNsAX5hr0MeKpelhOEYn2578qBg481ggUsXZ8G+k68QmgLpXQ7CSEJNsgOOU6I0sn4l/
	Qtb6OLqH03usU2r77+WWZSKf8hGPYE7LPpXMt1ZjqvZSpixcXnR5FEJaC/45cG+DahxiQaiLyiN+a
	Gk8gkuYqhd/DVEm0Hyi365Z3An/Cu4QZT9gHQFLKG1CaZmJoEx+rXYO5uw7sUm1wS1gGbjPNLBAhQ
	UFkcjkRFFzmjB3SqDoJNkYaqJ+Oac11vb0Nyf52mpiTe7FMeq1zp7gZwR5vvq6dRknrEqlvsyFqSB
	2tCDWFNmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7egb-0006hh-0F; Tue, 10 Sep 2019 11:51:53 +0000
Received: from first.geanix.com ([116.203.34.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7egH-0006h2-LD
 for linux-mtd@lists.infradead.org; Tue, 10 Sep 2019 11:51:35 +0000
Received: from [192.168.100.95] (unknown [95.138.208.137])
 by first.geanix.com (Postfix) with ESMTPSA id 3C3B1622EB;
 Tue, 10 Sep 2019 11:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
 t=1568116259; bh=S3vGXv5HcRCxJzqncvQtPjYdFrYUXSumZ5U2fmp7KAY=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To;
 b=lr+7j15AxDodgt/mnQG9CEiLyRnVH5aECbxTTgVmLvw8wnHisPTABQe/f/jA3nJP/
 pFh5LwnAajQlQVHc2O4C9OiBEaNTgY6Nc/M6XkaPz2UpN+AwwS1/z65v6TEYjMkVJh
 AG++EN2tySyw24/DyBEi9QXTQFIQ5XnkvkL4Z/CGVOjgOPg/QmlJZ1r/C6k1tGtu9G
 vitQr7r1GMPHicRhVCQY9m8jrg5mJqfMb/DjitQunZZR72ZL6drbz7EetWR2DajhlY
 0Z1EvbqcUcGVXnmrSr/68SdyvW2DHxw9PIJCaNtK6dezjatE4kUBeViCyGhwlQt+nH
 9uLvImYETK2bA==
Subject: Re: [Bug] mtd: rawnand: gpmi
To: Sascha Hauer <s.hauer@pengutronix.de>
References: <6a333d0f-09b2-d0d1-a3a5-955b31b6291e@geanix.com>
 <20190910095515.yjg6zcoqrtwylyg3@pengutronix.de>
 <a0f518e3-2465-8e64-418b-cac27cde98de@geanix.com>
 <20190910104807.7r3x2crdhpcteomn@pengutronix.de>
 <b26d583f-454f-fbf1-280d-f1753cc13896@geanix.com>
 <20190910110833.5ngkqpgdps4y3t2v@pengutronix.de>
From: Sean Nyekjaer <sean@geanix.com>
Message-ID: <3a1a0bf1-4dd0-9be1-23bd-a2e1f2bc6783@geanix.com>
Date: Tue, 10 Sep 2019 13:51:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <20190910110833.5ngkqpgdps4y3t2v@pengutronix.de>
Content-Language: en-US-large
X-Spam-Status: No, score=-3.1 required=4.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,URIBL_BLOCKED
 autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on 77834cc0481d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_045133_987979_5947B05E 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mkl@pengutronix.de, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 10/09/2019 13.08, Sascha Hauer wrote:
> On Tue, Sep 10, 2019 at 01:00:30PM +0200, Sean Nyekjaer wrote:
>>
>>
>> On 10/09/2019 12.48, Sascha Hauer wrote:
>>> On Tue, Sep 10, 2019 at 12:18:25PM +0200, Sean Nyekjaer wrote:
>>>>
>>>>
>>>> On 10/09/2019 11.55, Sascha Hauer wrote:
>>>>>> [    2.434057] Bad block table written to 0x00001ffc0000, version 0x01
>>>>>> [    2.437254] Bad block table written to 0x00001ff80000, version 0x01
>>>>> What about this "Bad block table written" message? You should see this
>>>>> exactly once. Do you see this multiple times, especially when switching
>>>>> kernels between the good one and the bad one?
>>>>>
>>>>> Sascha
>>>>
>>>> Not exactly sure what you mean, but here is the dumps:
>>>>
>>>> Before (mtd: rawnand: gpmi: Implement exec_op)
>>>> [    3.389352] Bad block table written to 0x00001ffc0000, version 0x01
>>>> [    3.399019] Bad block table written to 0x00001ff80000, version 0x01
>>>>
>>>> After
>>>> [    3.301096] Bad block table written to 0x00001ffc0000, version 0x01
>>>> [    3.310599] Bad block table written to 0x00001ff80000, version 0x01
>>>
>>> The Bad block table is written once. When you see this message multiple
>>> times then this means that Linux can't read the BBT and writes it again.
>>> So the question is: Start the good kernel multiple times. Do you see
>>> this message once or on each boot? Then start the bad Kernel multiple
>>> times. Do you see the message once or on each boot?
>>>
>>> Sascha
>>>
>>
>> U-boot:
>> => nand erase.chip
>>
>> NAND erase.chip: device 0 whole chip
>> Skipping bad block at  0x0c780000
>> Skipping bad block at  0x18000000
>> Skipping bad block at  0x18040000
>> Skipping bad block at  0x1ff00000
>> Skipping bad block at  0x1ff40000
>> Skipping bad block at  0x1ff80000
>> Skipping bad block at  0x1ffc0000
>>
>> Look weird it marks the bbt location bad ?
> 
> Yes, that's normal. The BBT itself is marked as bad. Otherwise the they
> would just be used by regular mtd users.
> 
>> Or is it a uboot feature?
>> I have tried another board, and uboot marks the bbt location bad on that as
>> well
>>
>> First boot:
>> [    4.149870] nand: device found, Manufacturer ID: 0x98, Chip ID: 0xdc
>>
>>
>> [    4.156589] nand: Toshiba NAND 512MiB 3,3V 8-bit
>> [    4.161500] nand: 512 MiB, SLC, erase size: 256 KiB, page size: 4096, OOB
>> size: 128
>>
>> [    4.175918] Bad block table not found for chip 0
>> [    4.184059] Bad block table not found for chip 0
>> [    4.188808] Scanning device for bad blocks
>> [    4.690183] Bad eraseblock 798 at 0x00000c780000
>> [    5.155504] Bad eraseblock 1536 at 0x000018000000
>> [    5.161008] Bad eraseblock 1537 at 0x000018040000
>> [    5.487883] Bad block table written to 0x00001ffc0000, version 0x01
> 
> And is this the bad kernel or the good kernel? The question I am trying
> to answer is: Can the good kernel read the BBT it has written? Can the
> bad Kernel do that?

The "First boot" and "Second boot" was before the exec_op patch...

This is the new kernel including the exec_op patch:
[    1.343615] nand: device found, Manufacturer ID: 0x98, Chip ID: 0xdc 
 

[    1.343656] nand: Toshiba NAND 512MiB 3,3V 8-bit 
 

[    1.343693] nand: 512 MiB, SLC, erase size: 256 KiB, page size: 4096, 
OOB size: 128 

[    1.348666] random: fast init done 

[    1.349518] Bad block table not found for chip 0
[    1.351451] Bad block table not found for chip 0
[    1.351486] Scanning device for bad blocks
[    1.827337] Bad eraseblock 798 at 0x00000c780000 
 

[    2.265949] Bad eraseblock 1536 at 0x000018000000
[    2.266318] Bad eraseblock 1537 at 0x000018040000 
 

[    2.572820] Bad block table written to 0x00001ffc0000, version 0x01 

[    2.576120] Bad block table written to 0x00001ff80000, version 0x01 
 

[    2.577087] 3 fixed-partitions partitions found on MTD device 
gpmi-nand 

[    2.577127] Creating 3 MTD partitions on "gpmi-nand":
[    2.577188] 0x000000000000-0x000000800000 : "boot" 
 
 
 

[    2.584162] 0x000000800000-0x00001ca00000 : "ubi"
[    2.608571] 0x00001ca00000-0x000020000000 : "testing" 

[    2.614136] gpmi-nand 1806000.gpmi-nand: driver registered.

Exactly the same output... which must mean it fails reading/writing the 
bbt on the 4.19.x series kernel.

/Sean

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
