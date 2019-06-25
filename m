Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C3354E09
	for <lists+linux-mtd@lfdr.de>; Tue, 25 Jun 2019 13:56:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i5ojL7C5c/NPCs3w2MxZySJ8uxR2ZYd05JrxiZaTasg=; b=sUXFocrL1H0KwX
	W/ybI+hTE1PRoiV38E41wU63qE+RKWYJQe1OAW0yGRYukt5rt6rqnOabg1gbu+uEg79I/38wrM7aE
	hnqQFSOfTEM5kHIh8oEfoXXtc4i7m7LyS4AuscoMR5nQ43/Or1Xltxn0Vu9c1bAhDvNQN93D1yYw4
	LgV/QCv8EkWxZR5Nt2q4iXlk2e/dRewQMM3e8K0ttXISPA78ibrn+uIGQz7Cybn3aMNSys7GIeF0K
	JQB3mz1O9yGbrxLn6/pyvwyaESiw9th7pnPYmGvA+E4izPDRoBanvU7ptb1GXZkMlmOcuKrUJ7tI3
	ghGE+i9nvKnzIzvj6Mjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfk3e-0005WH-UB; Tue, 25 Jun 2019 11:56:18 +0000
Received: from smtp2207-205.mail.aliyun.com ([121.197.207.205])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfk3T-0005VC-32
 for linux-mtd@lists.infradead.org; Tue, 25 Jun 2019 11:56:08 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.08232059|-1; CH=green;
 DM=CONTINUE|CONTINUE|true|0.0138277-0.00107238-0.9851; FP=0|0|0|0|0|-1|-1|-1;
 HT=e02c03276; MF=liaoweixiong@allwinnertech.com; NM=1; PH=DS; RN=13; RT=13;
 SR=0; TI=SMTPD_---.Epy0fp2_1561463760; 
Received: from 172.16.10.102(mailfrom:liaoweixiong@allwinnertech.com
 fp:SMTPD_---.Epy0fp2_1561463760)
 by smtp.aliyun-inc.com(10.147.41.158);
 Tue, 25 Jun 2019 19:56:01 +0800
Subject: Re: [RESEND PATCH v2] mtd: spinand: read return badly if the last
 page has bitflips
To: Schrempf Frieder <frieder.schrempf@kontron.de>
References: <1561424549-784-1-git-send-email-liaoweixiong@allwinnertech.com>
 <20190625030807.GA11074@kroah.com>
 <97adf58f-4771-90f1-bdaf-5a9d00eef768@kontron.de>
From: liaoweixiong <liaoweixiong@allwinnertech.com>
Message-ID: <814a343e-e4c4-3ef2-29e2-d6c56f3d5bbb@allwinnertech.com>
Date: Tue, 25 Jun 2019 19:56:10 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <97adf58f-4771-90f1-bdaf-5a9d00eef768@kontron.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_045607_322034_27FFEA60 
X-CRM114-Status: GOOD (  15.45  )
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Chuanhong Guo <gch981213@gmail.com>, David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Oh, i am sorry that i had misunderstanded your letter.
Thank you for your document and guidance.

On 2019/6/25 PM 3:04, Schrempf Frieder wrote:
> Hi liaoweixiong,
> 
> On 25.06.19 05:08, Greg KH wrote:
>> On Tue, Jun 25, 2019 at 09:02:29AM +0800, liaoweixiong wrote:
>>> In case of the last page containing bitflips (ret > 0),
>>> spinand_mtd_read() will return that number of bitflips for the last
>>> page. But to me it looks like it should instead return max_bitflips like
>>> it does when the last page read returns with 0.
>>>
>>> Signed-off-by: liaoweixiong <liaoweixiong@allwinnertech.com>
>>> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
>>> Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
>>> Fixes: 7529df465248 ("mtd: nand: Add core infrastructure to support SPI NANDs")
>>> ---
>>>   drivers/mtd/nand/spi/core.c | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> <formletter>
>>
>> This is not the correct way to submit patches for inclusion in the
>> stable kernel tree.  Please read:
>>      https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
>> for how to do this properly.
>>
>> </formletter>
> 
> FYI, you should not send the patch to stable@vger.kernel.org, but 
> instead, as I said in my other reply, add the tag "Cc: 
> stable@vger.kernel.org". See "Option 1" in the document Greg referred to.
> 
> Thanks,
> Frieder
> 

-- 
liaoweixiong

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
