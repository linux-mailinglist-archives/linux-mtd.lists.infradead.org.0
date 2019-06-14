Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 182714521E
	for <lists+linux-mtd@lfdr.de>; Fri, 14 Jun 2019 04:54:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Am9q6r8pByGwBihdyKel+USpZdePdLqtDjyat/IEdT0=; b=U9+xlBEOEUJUe9U6SKSddbpW7
	0wmt7sDBczucj8tlu78CWoZ2XSyOzS96HM7bQd4SIPbFmtfjL9WZhC+QgDbRVM1OvvdDYR271S5Ux
	2jtqb8CnbdHyqNe2ws9hMSNYW7O/byiOshsJSJY33YDplSzof8btaLn8c1ozwsUfipfu0KvskxZKe
	4GkY9KBUwbE+sLQRnjJdYHyr7hiKWQ2ZXr2h9Bs6dRKhUiFEGRRtqBHMl7IQlPMsEwNFF/uWS6sMW
	8zZSzejIqhjfZlAeIfOZIzcocQYrCUT0V3VNKqzWLQ7KytTxdqoW9MIm14YpEeiKtBerLQTgkQq5C
	+y6hc8WHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcM2-00012z-4c; Fri, 14 Jun 2019 02:54:14 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcLu-00012f-Nw
 for linux-mtd@lists.infradead.org; Fri, 14 Jun 2019 02:54:07 +0000
Received: from ubuntu.pn.wagsky.com (c-69-181-42-248.hsd1.ca.comcast.net
 [69.181.42.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 7470E25220;
 Thu, 13 Jun 2019 19:54:05 -0700 (PDT)
Subject: Re: nand: Proper definition of "extra" OOB regions? (4x interleaved, 
 then one bulk user)
To: Chuanhong Guo <gch981213@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
References: <0145346c-f1c3-bc50-6bb7-492bbe4f2da4@allycomm.com>
 <CAJsYDVL6ykGPNiL0-8VdKfh8MkAPj3-SLSeUMqC1SSYX4_zX0A@mail.gmail.com>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <92995b54-c8f1-fde7-1053-986d986df17d@allycomm.com>
Date: Thu, 13 Jun 2019 19:54:05 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAJsYDVL6ykGPNiL0-8VdKfh8MkAPj3-SLSeUMqC1SSYX4_zX0A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_195406_787499_1F9534AA 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 6/13/19 6:12 PM, Chuanhong Guo wrote:

> Hi
>
> On Fri, Jun 14, 2019 at 3:33 AM Jeff Kletsky<lede@allycomm.com>  wrote:
>> [...]
>> Examining supported chips with similar OOB layouts with multiple
>> sections then an "additional" area, such as the GigaDevice GD5FxGQ4xA,
>> was not terribly insightful. The GD5F1GQ4UAY datasheet[2] marks the
>> upper 64-byte region as "reserved", in contrast to "User meta data"
>> and it is not described in the current `gigadevice.c`[3]. As such,
>> it isn't convincing evidence that it was omitted as "not required",
>> because it was marked "reserved", or perhaps for some other reason.
>>
>>
>> As a side note, the datasheet also marks the first byte of each region
>> as "reserved", which is not reflected in the current `gigadevice.c`,
>> which includes it in the free region for sections 1-3.
> The datasheet I found back then marked the first byte as "reserved for
> bad block mark" and the first 4 bytes of other regions are marked as
> "user meta data 1". And I wrote the ecc region code accordingly.
>
> I've put the one I found in the attachment.
>
> Regards,
> Chuanhong Guo

Thanks!

The datasheet kindly provided by Chuanhong Gou is labeled GD5F1GQ4UAYIG,
with a DID of 0xf1, matching the code in gigadevice.c.

It shows a 64-byte OOB area, verifying the correct layout in the code.

The one I referenced was labeled GD5F1GQ4UAY, which shows a 128-byte OOB.
The first 64 bytes organized nearly identically to the above, with
the remaining 64 bytes marked "Reserved".

The ordering information on both datasheets decodes the IG suffix as
Industrial,Green. This makes the two indistinguishable by appearance.
A chip sold as GD5F1GQ4UAYIG apparently could have been either variant.

Both datasheets on the "Read ID (9FH)" page show the DID to be 0xf1.

Contradicting itself, the 128-byte datasheet also gives a parenthetical
note on the "Commands Description" page with a DID of 0x10.

I'm just glad I wasn't dealing with these on a production run!


Jeff


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
