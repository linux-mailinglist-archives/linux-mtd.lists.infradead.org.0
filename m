Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6301A523F1
	for <lists+linux-mtd@lfdr.de>; Tue, 25 Jun 2019 09:05:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pa8lUgIYD+CKKAi+NtoDC3KkQzLGrFQcr7v72mn5bW0=; b=laEAZ1SSbfXB3I
	9TL9ROkJJeOqbOo5IiBF2e/GUVyrgZmU5/vUrh8BAJuHkmdnzt85sR45U0wryztUAME24f7/CNgf1
	WkL7PuW+rkndvjZkYvZ61TzKUITMt6gRO4pJBJYId8fFc/0lfxYWoNvMVsNGz2bvYGPRMW93ITQ2C
	Fog/nlmomEr7w4i60YJHa+rtNN0gsr9qribGKGg36G00xCjS73KU2dXswV1sngau33zyfEcqQkAXt
	56i+mXIHU2XEXAvYpmIdVAaHtVtaQLADcAZjEe95ODl4jYPThoMVY20jNevbehokY0Iwr3gUaHP63
	s7xAPws+g2N6HX+RnQCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hffWX-0002O9-Lq; Tue, 25 Jun 2019 07:05:50 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hffV2-0000ZQ-Qa
 for linux-mtd@lists.infradead.org; Tue, 25 Jun 2019 07:04:19 +0000
Received: from sntmail12r.snt-is.com (unknown [10.203.32.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id 4605767A7D4;
 Tue, 25 Jun 2019 09:04:07 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail12r.snt-is.com
 (10.203.32.182) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Tue, 25 Jun
 2019 09:04:06 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Tue, 25 Jun 2019 09:04:06 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: liaoweixiong <liaoweixiong@allwinnertech.com>
Subject: Re: [RESEND PATCH v2] mtd: spinand: read return badly if the last
 page has bitflips
Thread-Topic: [RESEND PATCH v2] mtd: spinand: read return badly if the last
 page has bitflips
Thread-Index: AQHVKvG5vIRdXk03g0+SrXGJtaID9aarjwGAgABB7wA=
Date: Tue, 25 Jun 2019 07:04:06 +0000
Message-ID: <97adf58f-4771-90f1-bdaf-5a9d00eef768@kontron.de>
References: <1561424549-784-1-git-send-email-liaoweixiong@allwinnertech.com>
 <20190625030807.GA11074@kroah.com>
In-Reply-To: <20190625030807.GA11074@kroah.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <82C2E515EE53D0458A0A48579DDDDAF9@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 4605767A7D4.ADE8A
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: bbrezillon@kernel.org, computersforpeace@gmail.com,
 dwmw2@infradead.org, gch981213@gmail.com, gregkh@linuxfoundation.org,
 liaoweixiong@allwinnertech.com, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, marek.vasut@gmail.com,
 miquel.raynal@bootlin.com, richard@nod.at, stable@vger.kernel.org,
 vigneshr@ti.com
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_000417_201711_3C05EDD0 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.69 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Boris Brezillon <bbrezillon@kernel.org>, Richard
 Weinberger <richard@nod.at>, Miquel Raynal <miquel.raynal@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>, Marek
 Vasut <marek.vasut@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Chuanhong Guo <gch981213@gmail.com>, David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi liaoweixiong,

On 25.06.19 05:08, Greg KH wrote:
> On Tue, Jun 25, 2019 at 09:02:29AM +0800, liaoweixiong wrote:
>> In case of the last page containing bitflips (ret > 0),
>> spinand_mtd_read() will return that number of bitflips for the last
>> page. But to me it looks like it should instead return max_bitflips like
>> it does when the last page read returns with 0.
>>
>> Signed-off-by: liaoweixiong <liaoweixiong@allwinnertech.com>
>> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
>> Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
>> Fixes: 7529df465248 ("mtd: nand: Add core infrastructure to support SPI NANDs")
>> ---
>>   drivers/mtd/nand/spi/core.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> <formletter>
> 
> This is not the correct way to submit patches for inclusion in the
> stable kernel tree.  Please read:
>      https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
> for how to do this properly.
> 
> </formletter>

FYI, you should not send the patch to stable@vger.kernel.org, but 
instead, as I said in my other reply, add the tag "Cc: 
stable@vger.kernel.org". See "Option 1" in the document Greg referred to.

Thanks,
Frieder
______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
