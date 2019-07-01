Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58238494F2
	for <lists+linux-mtd@lfdr.de>; Tue, 18 Jun 2019 00:13:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=TpOSY7MQNSAbG9LZmJenmxn9mgLC37n/Qsdit81bn/0=; b=uc3titPQ+s9G8P
	qq1z7RbslO0cWkYi12pdzLpYK2Joct0ooxisN4C5YZcRBF01BMXO7kG74TZJcOGztHe/lQBPXdONc
	bgW53zYRMsMoyAat8SBZxjML51inMVQHAli869eh/2gPFNaPtsrWe23rHxmUXe4AStVUKgyw39V4y
	/3q+nVlcDubT8WTLjrVFlBKpwshxxaElwuoG5VgEBTyKjpZvrDwh2DxIV+Usb+1bCbHB9WSqS4hHY
	anmZeMlvc93qaPHaJM4UQjStoAeurkIA2I3DlZyBf/zyx7k2Xd2FGrCfxFyqdz9Q1nOjKf21rkuW2
	9tTr9Mou23BoatmiY42Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hczs8-0002Yz-Oi; Mon, 17 Jun 2019 22:13:04 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hczqt-0001hG-BU
 for linux-mtd@lists.infradead.org; Mon, 17 Jun 2019 22:11:49 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id F0FAF806A8;
 Tue, 18 Jun 2019 10:11:42 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1560809502;
 bh=DSLbrc5ukZCi8kilt1qLlyon/yI7IWOwk3BYxT6iAaE=;
 h=From:To:CC:Subject:Date:References;
 b=fcB3luCLIBJWQsT9GCHVwIkLWguH3NSFqKHBsKDIS38SNRWwVrzgCtbHiElyKDpQ/
 HDkMkQRHbX+zZErKxvdiuLuJqTLAiVQFP2Z/QEVhfWVNfiMY3BVqMuO3FGL/afdKTU
 eaF6/NdlyGR3g44H5vPZBpKuch+Wsb+OTsZ3WKRle7rPq2WjfElXAzuoxZU5/km/th
 DhxbhlpjJHODF3PgDgJnlQ/L7GyWckPhghceoKUf8Dc9ANIlhfTnT4iubWwqczgusz
 9eBq0brMAArF1bieH0dg44qmbo8y4zO61ye2OHdnyuPnj+0u57aaQCVZ8ddBHhkAyh
 MD3L/k+I09CPw==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d08101f0000>; Tue, 18 Jun 2019 10:11:43 +1200
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8)
 by svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8) with
 Microsoft SMTP Server (TLS) id 15.0.1156.6; Tue, 18 Jun 2019 10:11:42 +1200
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Tue, 18 Jun 2019 10:11:42 +1200
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: Richard Weinberger <richard.weinberger@gmail.com>
Subject: Re: [PATCH v2 1/2] mtd: concat: refactor concat_lock/concat_unlock
Thread-Topic: [PATCH v2 1/2] mtd: concat: refactor concat_lock/concat_unlock
Thread-Index: AQHVEPTbCX8jgKCQ/EWiWr4BFnYFGQ==
Date: Mon, 17 Jun 2019 22:11:42 +0000
Message-ID: <365a80987504424f8685faaceb23b468@svr-chch-ex1.atlnz.lc>
References: <20190522231948.17559-1-chris.packham@alliedtelesis.co.nz>
 <355dad1321ed46baa98ca6f47b4d00b5@svr-chch-ex1.atlnz.lc>
 <CAFLxGvwNNWKzbfKvDjAK6rujbr5qtmVAWCDD5aULO4BVKutRKw@mail.gmail.com>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:3a2c:4aff:fe70:2b02]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_151147_810679_1A17D4E7 
X-CRM114-Status: UNSURE (   6.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "vigneshr@ti.com" <vigneshr@ti.com>, "richard@nod.at" <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 "computersforpeace@gmail.com" <computersforpeace@gmail.com>,
 "dwmw2@infradead.org" <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 18/06/19 10:08 AM, Richard Weinberger wrote:
> On Fri, Jun 14, 2019 at 5:26 AM Chris Packham
> <Chris.Packham@alliedtelesis.co.nz> wrote:
>>
>> Hi All,
>>
>> Ping?
> 
> Your patch is not lost. We start soon with collecting all material for
> the merge window. :-)
> 

OK thanks for the confirmation and sorry for the noise.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
