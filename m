Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6F052034
	for <lists+linux-mtd@lfdr.de>; Tue, 25 Jun 2019 03:01:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DrTGcb3dhh7R1rDiPrxcPXp/+LaeqOdjZVUTpZKz8RI=; b=Fxgqj3ZvwFkcrq
	w4ibFuwy38ccX6nVI6VIIjx+F2bIkGckLaObXeK+b28E/eh1cDjAPF6wO91WCaemW8ND1/S78pJTU
	s8yizdr26Shu1o3GEMsDMqV31BDr0UhfVjdVW2DzXN9w7e5vysEratSp9Wg4oEDz780BENZJB5QIq
	slEzKJiIN6q3qU+5wllp9LgBAi1wOA3rcdyGqrL5l8FievnW0ZanVRmB6FM7Y5IGHl1+VWSj5KKqy
	Xx8Jf0HXk9domPCrLeb8QC4fidXvuuzeBne2rr8UlCsmfPlwPG/gK46aAJ02Rh9VUsPByjDP/JyQY
	9B/Vommgdq6O2MuWdLtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfZpX-0006xg-Ot; Tue, 25 Jun 2019 01:01:03 +0000
Received: from smtp2207-205.mail.aliyun.com ([121.197.207.205])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfZpM-0006wj-Qz
 for linux-mtd@lists.infradead.org; Tue, 25 Jun 2019 01:00:54 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.08014652|-1; CH=green;
 DM=CONTINUE|CONTINUE|true|0.238094-0.0170177-0.744888; FP=0|0|0|0|0|-1|-1|-1;
 HT=e01l01425; MF=liaoweixiong@allwinnertech.com; NM=1; PH=DS; RN=14; RT=14;
 SR=0; TI=SMTPD_---.Epjbx14_1561424445; 
Received: from 172.16.10.102(mailfrom:liaoweixiong@allwinnertech.com
 fp:SMTPD_---.Epjbx14_1561424445)
 by smtp.aliyun-inc.com(10.147.42.135);
 Tue, 25 Jun 2019 09:00:46 +0800
Subject: Re: [RESEND PATCH v2] mtd: spinand: read return badly if the last
 page has bitflips
To: Schrempf Frieder <frieder.schrempf@kontron.de>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Frieder Schrempf <frieder.schrempf@exceet.de>,
 Peter Pan <peterpandong@micron.com>, Chuanhong Guo <gch981213@gmail.com>
References: <1561378534-26119-1-git-send-email-liaoweixiong@allwinnertech.com>
 <f86e6750-6b4f-daf7-3f0c-1c5e63b5b95d@kontron.de>
From: liaoweixiong <liaoweixiong@allwinnertech.com>
Message-ID: <049081eb-355e-6671-310c-3083cbdb0abc@allwinnertech.com>
Date: Tue, 25 Jun 2019 09:00:54 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <f86e6750-6b4f-daf7-3f0c-1c5e63b5b95d@kontron.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_180053_040002_E4296DB8 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Um.. I am sorry. It is the first time for me to resend patch.
I will send this patch again with correct tags.

On 2019/6/24 PM10:47, Schrempf Frieder wrote:
> On 24.06.19 14:15, liaoweixiong wrote:
>> In case of the last page containing bitflips (ret > 0),
>> spinand_mtd_read() will return that number of bitflips for the last
>> page. But to me it looks like it should instead return max_bitflips like
>> it does when the last page read returns with 0.
>>
>> Signed-off-by: liaoweixiong <liaoweixiong@allwinnertech.com>
>> Acked-by: Boris Brezillon <boris.brezillon@collabora.com>
>> Acked-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> Why did you change our Reviewed-by tags to Acked-by tags?
> 
>> Fixes: 7529df465248 ("mtd: nand: Add core infrastructure to support SPI NANDs")
>> ---
>>   drivers/mtd/nand/spi/core.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/mtd/nand/spi/core.c b/drivers/mtd/nand/spi/core.c
>> index 556bfdb..6b9388d 100644
>> --- a/drivers/mtd/nand/spi/core.c
>> +++ b/drivers/mtd/nand/spi/core.c
>> @@ -511,12 +511,12 @@ static int spinand_mtd_read(struct mtd_info *mtd, loff_t from,
>>   		if (ret == -EBADMSG) {
>>   			ecc_failed = true;
>>   			mtd->ecc_stats.failed++;
>> -			ret = 0;
>>   		} else {
>>   			mtd->ecc_stats.corrected += ret;
>>   			max_bitflips = max_t(unsigned int, max_bitflips, ret);
>>   		}
>>   
>> +		ret = 0;
>>   		ops->retlen += iter.req.datalen;
>>   		ops->oobretlen += iter.req.ooblen;
>>   	}

-- 
liaoweixiong

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
