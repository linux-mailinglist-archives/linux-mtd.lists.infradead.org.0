Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DF01CF1EA
	for <lists+linux-mtd@lfdr.de>; Tue, 12 May 2020 11:49:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gAwSQ5BtKYeMzLVP4XUaThAEU8EeJyGEjFJlPzUuKWw=; b=riDvKRK/7xsAkP
	NZjNWS+/7eXI4+x/L/upc/blVVOrEjtbk4j660jqIDWtceEmXufXBBecs7zF39dkpYYRU6gfOSswS
	L/7DqnpPWjyLaKpP4BE6teC5eaNK8N+qv/GKPA/HkUdGjSIPq2xsnnzQFvYGzmsi56vsHocRPg4+p
	+y7hbi4FCRZdqvgwj729bSkMz5RQbSlZz3NLp1p4kGPZyX5/jZI3Im3zA+snkovwdDgDtEAvakVP8
	9rNa3ssodSldEMgQr3mtJKilNw7kZMjBxPepQlV/7vjnF9zV6TmRqaLOme+rnFmJHgFRSmVF375iU
	B76eFAOauMouESaB0+fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYRXa-0007af-Jo; Tue, 12 May 2020 09:49:34 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYRXP-0007ZH-SC; Tue, 12 May 2020 09:49:25 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04C9nDED114366;
 Tue, 12 May 2020 04:49:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589276953;
 bh=jUYRZICT0PRktUXP+DkHT6YPgQop3lvSvIxDQCp6Tcw=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=YaY/K/6P+NWmD68AeIpmrtjtam+dzCKmnqb9uPVuISjUb+E/3vFaEgSV7VrB5uvyC
 mWswey9Fy7l9mRqoOSgWz3pBz8a2OiRcJOmTP6xtnOAYGsZPD6FS4JGagFMFeTEuyp
 bvOKqgSLWA0o3dlznsyX7ao7M9PYEM+uqqJ/IiS4=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04C9nDoe049255;
 Tue, 12 May 2020 04:49:13 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 12
 May 2020 04:49:13 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 12 May 2020 04:49:13 -0500
Received: from [10.250.234.195] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04C9n7cO076689;
 Tue, 12 May 2020 04:49:08 -0500
Subject: Re: [PATCH v4 00/16] mtd: spi-nor: add xSPI Octal DTR support
To: <Tudor.Ambarus@microchip.com>, <boris.brezillon@collabora.com>
References: <20200424184410.8578-1-p.yadav@ti.com>
 <3649933.zuh8VGJVCz@192.168.0.120> <20200511112712.466f7246@collabora.com>
 <144878625.o7txgtY6sz@192.168.0.120>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <49abc8f3-5bb5-bc6d-b2ec-f14b115c58dc@ti.com>
Date: Tue, 12 May 2020 15:19:07 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <144878625.o7txgtY6sz@192.168.0.120>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_024924_040398_1778FCFD 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: alexandre.belloni@bootlin.com, richard@nod.at, nsekhar@ti.com,
 linux-kernel@vger.kernel.org, Nicolas.Ferre@microchip.com,
 Ludovic.Desroches@microchip.com, broonie@kernel.org,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 linux-spi@vger.kernel.org, p.yadav@ti.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 12/05/20 11:46 am, Tudor.Ambarus@microchip.com wrote:
> Hi, Boris, Pratyush,
> 
> I stripped case 2/, we'll not treat it for now.
> 
> On Monday, May 11, 2020 12:27:12 PM EEST Boris Brezillon wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the
>> content is safe
>>
>> On Mon, 11 May 2020 09:00:35 +0000
>>
>> <Tudor.Ambarus@microchip.com> wrote:
>>> Hi, Pratyush, Boris,
>>>
>>> On Friday, April 24, 2020 9:43:54 PM EEST Pratyush Yadav wrote:
>>>> This series adds support for octal DTR flashes in the spi-nor framework,
>>>
>>> I'm still learning about this, but I can give you my 2 cents as of now, to
>>> open the discussion. Enabling 2-2-2, 4-4-4, and 8-8-8 modes is dangerous
>>> because the flash may not recover from unexpected resets. Entering one of
>>> these modes can be:
>>> 1/ volatile selectable, the device return to the 1-1-1 protocol after the
>>> next power-on. I guess this is conditioned by the optional RESET pin, but
>>> I'll have to check. Also the flash can return to the 1-1-1 mode using the
>>> software reset or through writing to its Configuration Register, without
>>> power-on or power- off.
>>
>> My understanding is that there's no standard software reset procedure
>> that guarantees no conflict with existing 1S commands, so even the
>> software reset approach doesn't work here.
>>
> 
> The software reset procedure can't protect you from unexpected resets, but the 
> hardware with its optional reset pin can. Pratyush to confirm.
> 
> cut
> 
>>
>>> Not recovering from unexpected resets is unacceptable. One should always
>>> prefer option 1/ and condition the entering in 2-2-2, 4-4-4 and 8-8-8 with
>>> the presence of the optional RESET pin.
>>
>> Totally agree with you on that one, but we know what happens in
>> practice...
> 
> What I proposed is to condition the entering in the state-full modes with the 
> presence of the optional RESET pin. We would introduce an optional device tree 
> property for the RESET pin. If hardware doesn't implement the optional RESET# 
> signal, then we will not enter in the state-full modes.
>

Are you asking for dedicated SW controllable reset line or just an
indication from DT that OSPI reset line is connected to board level
soft/hard reset lines?

Mandating SW controllable RESET line is bit of a stretch IMO... Board
design may not allow wasting dedicated pin due to lack of GPIOs perhaps..

For eg.: TI EVM has OSPI reset line connected to board level reset out.
This ensures any soft/warm/hard CPU reset will trigger OSPI Flash reset,
but there is no SW control that allows OSPI flash alone to be reset.
Isn't such a reset mechanism sufficient?

Regards
Vignesh


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
