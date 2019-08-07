Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3251485454
	for <lists+linux-mtd@lfdr.de>; Wed,  7 Aug 2019 22:11:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ND3tnqov9MLgr1nFReNFpk4f9YgL7j3EfUbnk+ZYTiY=; b=VdijJ3uyuFp8PuFefjeJsPAO/
	ebN43f4lSLXsH9SB1/RfhtB2GvyaYAMY9l4xHrO3YEMImA5pWqdWyLlwStLQjkU58xVoKk5o2yWpw
	coTo8o8nQ7E6qV+WkNwX3Y1N0I830OVx6jfMEqpRMLMcH7e6kHaoDKQ6BJBq+3xzntdqHv42J2q/X
	BkHGH0y4lc44AnR4XnQSwgEiqp51ldKP0nuPVXKmG97bDVHoRPCUT66UkdL88Bz6zhx8luNzmAQpY
	pAr0DEpXZ/ADp8R59ScNInMaxRFmSQ5d7kjVXlIRYIH92atlnM82Goi1KDFzeSlcKQzIUhoRFLoLK
	9jiaDgYUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvSHF-0004np-4H; Wed, 07 Aug 2019 20:11:17 +0000
Received: from [213.175.92.62] (helo=mail.pbx.lv)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvSH0-0004nB-I0
 for linux-mtd@lists.infradead.org; Wed, 07 Aug 2019 20:11:04 +0000
Received: by mail.pbx.lv (MailSystem, from userid 80)
 id 65F401A6083; Wed,  7 Aug 2019 23:10:57 +0300 (EEST)
To: Tudor.Ambarus@microchip.com
Subject: Re: [PATCH 1/2] mtd: spi-nor: fix GigaDevice =?UTF-8?Q?quad=5Fenable?=
MIME-Version: 1.0
Date: Wed, 07 Aug 2019 23:10:57 +0300
From: Roman Yeryomin <roman@advem.lv>
In-Reply-To: <c80dc6d3-d9de-7e95-f1e0-62dea07ef923@microchip.com>
References: <20190726210830.1932-1-roman@advem.lv>
 <11718527-0145-a99d-83fe-19885c9609f0@microchip.com>
 <c80dc6d3-d9de-7e95-f1e0-62dea07ef923@microchip.com>
Message-ID: <08565a3d0816c8b52e2472718b755e41@advem.lv>
X-Sender: roman@advem.lv
User-Agent: Roundcube Webmail/1.0.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_131102_782245_EF33EC1A 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: marek.vasut@gmail.com, linux-mtd@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 2019-07-28 09:21, Tudor.Ambarus@microchip.com wrote:
> On 07/28/2019 08:48 AM, Tudor.Ambarus@microchip.com wrote:
>> External E-Mail
>> 
>> 
>> Hi, Roman,
>> 
>> On 07/27/2019 12:08 AM, Roman Yeryomin wrote:
>>> External E-Mail
>>> 
>>> 
>>> According to datasheets all GD devices are capable of quad mode, 
>>> which
>> 
>> Does any of these flashes implement the Basic Flash Parameter Table? 
>> Can't we
>> determine the QE Requirements by parsing BFPT?
> 
> GD25Q256D can retrieve the QE requirements from BFPT dword 15. No need 
> to set
> the quad_enable pointer when declaring this flash, it will be 
> overwritten when
> parsing BFPT.

ok, I see, thanks for the pointer, didn't see that

> GD25Q256C implements JESD216A - just the first 9 dwords of BFPT, and it 
> can't
> determine the QE Requirements by parsing the BFPT. That's way we 
> explicitly set
> the quad_enable function pointer at flash declaration.
> 
>> 
>>> is enabled via Status Register-2, bit 1 (S9). This corresponds to
>>> Spansion SR/CR operations. Unfortunately only gd25q256 datasheet is
>>> clear about Quad Enable Requirements (QER), others have no such
>>> information in datasheets.
>>> So define quad_enable for all GD devices to be sure.
>> 
>> Which flash did you test?
> 
> What you can do is to check which of these flashes can't determine the 
> QE
> requirements by parsing BFPT and set the quad_enable just for those who 
> can't.
> And it would be preferable to do this just for the flashes that you can 
> test.

Unfortunately I don't have the devices. I only studied the datasheets.
Though I do have gd25q512 (the second patch) somewhere. I used it on one 
of embedded board prototypes.
I will try to find it and test the BFPT parsing.

>> 
>> Cheers,
>> ta
>> 
>>> Also gd25q256 is an exception. There are two versions: C and D.
>>> First one uses S6 bit (like described in e27072851bf7d) but the 
>>> latter
>>> uses S9 bit like others. To add support for D this should be handled
>>> differently, so, to retain compatibility, leave gd25q256 quad_enable
>>> callback intact.
>>> 
>>> Signed-off-by: Roman Yeryomin <roman@advem.lv>
>>> ---
>>>  drivers/mtd/spi-nor/spi-nor.c | 6 ++++++
>>>  1 file changed, 6 insertions(+)
>>> 
>> ______________________________________________________
>> Linux MTD discussion mailing list
>> http://lists.infradead.org/mailman/listinfo/linux-mtd/
>> 
>> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
