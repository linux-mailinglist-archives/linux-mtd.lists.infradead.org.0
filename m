Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BF41E3F1E
	for <lists+linux-mtd@lfdr.de>; Wed, 27 May 2020 12:34:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1B9Woe9NxXj0R4Muf3q/dqyG3rHycAXWg/fn/uMRb7Q=; b=N+wkdCDiBliTih
	klnW2TrswVPU8L2PqePTzPErnvjHtmWwQixM2VBrcW6qosGO+ZwoBwGHHJTGGFTorxBp2cfgaDkM+
	vZ8tYy8n05xrVOrUziOn9Y1BZgZewLzxYaR3ea/xNuROlt4om9mOzBlT+gmx+jqHiR7spYqUXzYAA
	pc5spKTQYDxhn0G8BceSIeGKCMO5uwfnoSNrLS4pSkE/JcB1UpGLm9jJNusbtQE2AjjsRun8lYeg4
	jD5MyRAK7Ikt6GRSVOv9vfOUVwyC+En+xp045XGQD60RbyspCsM+SZpjKdXVlhKAJ2Juzmrk96exJ
	xdEQkG9ilAY/UYPY2EnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdtNy-0002Qo-VV; Wed, 27 May 2020 10:34:11 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdtNp-0002QK-2L
 for linux-mtd@lists.infradead.org; Wed, 27 May 2020 10:34:03 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 1D7B8E44C1524EFBC1F4;
 Wed, 27 May 2020 18:33:53 +0800 (CST)
Received: from [10.65.58.147] (10.65.58.147) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0;
 Wed, 27 May 2020 18:33:45 +0800
Subject: Re: [RFC PATCH 3/3] spi: hisi-sfc-v3xx: Add prepare/unprepare methods
 to avoid race condition
To: Pratyush Yadav <me@yadavpratyush.com>
References: <1590060231-23242-1-git-send-email-yangyicong@hisilicon.com>
 <1590060231-23242-4-git-send-email-yangyicong@hisilicon.com>
 <20200525161436.c5h6d27pm3jptwbo@yadavpratyush.com>
 <6a41fb13-e746-54f3-24ef-197384dde6ab@hisilicon.com>
 <20200527093325.247l6tnxaicsqdst@yadavpratyush.com>
From: Yicong Yang <yangyicong@hisilicon.com>
Message-ID: <30d0d896-47cc-db61-39da-d145dbe06dc6@hisilicon.com>
Date: Wed, 27 May 2020 18:33:54 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20200527093325.247l6tnxaicsqdst@yadavpratyush.com>
X-Originating-IP: [10.65.58.147]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_033401_282129_FA7FD25C 
X-CRM114-Status: GOOD (  28.49  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: vigneshr@ti.com, tudor.ambarus@microchip.com, richard@nod.at,
 john.garry@huawei.com, linux-spi@vger.kernel.org, broonie@kernel.org,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


On 2020/5/27 17:33, Pratyush Yadav wrote:
> On 27/05/20 04:18PM, Yicong Yang wrote:
>> Hi Pratyush,
>>
>> On 2020/5/26 0:14, Pratyush Yadav wrote:
>>> Hi Yicong,
>>>
>>> On 21/05/20 07:23PM, Yicong Yang wrote:
>>>> The controller can be shared with the firmware, which may cause race
>>>> problems. As most read/write/erase/lock/unlock of spi-nor flash are
>>>> composed of a set of operations, while the firmware may use the controller
>>>> and start its own operation in the middle of the process started by the
>>>> kernel driver, which may lead to the kernel driver's function broken.
>>>>
>>>> Bit[20] in HISI_SFC_V3XX_CMD_CFG register plays a role of a lock, to
>>>> protect the controller from firmware access, which means the firmware
>>>> cannot reach the controller if the driver set the bit. Add prepare/
>>>> unprepare methods for the controller, we'll hold the lock in prepare
>>>> method and release it in unprepare method, which will solve the race
>>>> issue.
>>> I'm trying to understand the need for this change. What's wrong with
>>> performing the lock/unlock procedure in hisi_sfc_v3xx_exec_op()? You can 
>>> probably do something like:
>>>
>>>   hisi_sfc_v3xx_lock();
>>>   ret = hisi_sfc_v3xx_generic_exec_op(host, op, chip_select);
>>>   hisi_sfc_v3xx_unlock();
>>>   return ret;
>> if doing like this, suppose we perform a sequential operations like below:
>>
>> lock()->exec_op(cmd1)->unlock()->lock()->exec_op(cmd2)->unlock()->lock()->exec_op(cmd3)->unlock()
>>                        ^==========^is unlocked          ^==========^is unlocked
>>
>> As shown above, we cannot lock the device continuously during the whole operations.
> Correct. My argument is based on the assumption that lock() and unlock() 
> are cheap/fast operations. If you spend very little time in lock() and 
> unlock(), it doesn't make a big difference if you do all 3 operations in 
> one go or one at a time.

okay. we'd better not make such assumption and do what hardware suggests.


>
> In other words, since register write should be pretty fast, locking and 
> unlocking should be pretty fast. If we don't spend a lot of time in 
> lock() and unlock(), we don't gain a lot of performance by reducing 
> those calls.

I know your worries. But it won't reduce the performance as we only do lock
and unlock in the beginning or end. See what have implemented in spi-nor
framework, as for read:

->spi_nor_read()
--->spi_nor_lock_and_prep() // lock the device if necessary
--->spi_nor_read_data() // maybe called several times to read wanted bytes
--->spi_nor_unlock_and_unprep() // unlock the device

we don't call lock/unlock at every spi_nor_read_data(), but just in the beginning
/ending of the whole sequence. And we can do the same thing in
nand framework to avoid performance reduction, if prepare/unprepare is also needed.


>
>> But if we use upper layer method then it looks like
>>
>> prepare()->exec_op(cmd1)->exec_op(cmd2)->exec_op(cmd3)->unprepare()
>>         ^locked here                                              ^unlocked here
>>
>> we can hold the lock during the all 3 operations' execution.
> If you still think doing all operations in one go is a better idea, I  
> like Boris's idea of batching operations and its worth considering.

sure. it do worth discussion and maybe we need more suggestions.


>  
>>> What's the benefit of making upper layers do this? Acquiring the lock is 
>>> a simple register write, so it should be relatively fast. Unless there 
>>> is a lot of contention on the lock between the firmware and kernel, I 
>>> would expect the performance impact to be minimal. Maybe you can run 
>>> some benchmarks and see if there is a real difference.
>>>
>>>> Signed-off-by: Yicong Yang <yangyicong@hisilicon.com>
>>>> ---
>>>>  drivers/spi/spi-hisi-sfc-v3xx.c | 41 ++++++++++++++++++++++++++++++++++++++++-
>>>>  1 file changed, 40 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/spi/spi-hisi-sfc-v3xx.c b/drivers/spi/spi-hisi-sfc-v3xx.c
>>>> index e3b5725..13c161c 100644
>>>> --- a/drivers/spi/spi-hisi-sfc-v3xx.c
>>>> +++ b/drivers/spi/spi-hisi-sfc-v3xx.c
>>>> @@ -163,7 +192,15 @@ static int hisi_sfc_v3xx_generic_exec_op(struct hisi_sfc_v3xx_host *host,
>>>>  					 u8 chip_select)
>>>>  {
>>>>  	int ret, len = op->data.nbytes;
>>>> -	u32 config = 0;
>>>> +	u32 config;
>>>> +
>>>> +	/*
>>>> +	 * The lock bit is in the command register. Clear the command
>>>> +	 * field with lock bit held if it has been set in
>>>> +	 * .prepare().
>>>> +	 */
>>>> +	config = readl(host->regbase + HISI_SFC_V3XX_CMD_CFG);
>>>> +	config &= HISI_SFC_V3XX_CMD_CFG_LOCK;
>>> This will unlock the controller _before_ the driver issues 
>>> hisi_sfc_v3xx_read_databuf(). I'm not very familiar with the hardware, 
>>> but to me it seems like it can lead to a race. What if the firmware 
>>> issues a command that over-writes the databuf (I assume this is shared 
>>> between the two) before the driver gets a chance to copy that data to 
>>> the kernel buffer?
>> It won't unlock the controller if it has been locked in prepare(). It will clear
>> the other bits in the register other than the lock bit. For single operations, as 
>> prepare() method is not called, the bit is 0 and it won't change here.
> Right. I misread the code. Sorry.
>


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
