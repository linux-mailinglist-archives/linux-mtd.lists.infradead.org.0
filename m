Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F629D0C2
	for <lists+linux-mtd@lfdr.de>; Mon, 26 Aug 2019 15:39:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8QZ2W4gvODya33TURyAwAlGCCdEVDI4Cx/hZgFlnB2c=; b=OEEytPTgtM0LoP
	giEvKGQvYyuidJNnJhH+2tRtpV0L2fDbE30lTyMpwHScEPYGWgl1GNNTnKDccRQzqd/Md2rzPqw3x
	Btpt4kffV1MkANC9M89gOpRnOqzBA7mvNEfVFJ0XasRePJMYHYI+MsygTh/IIGhqv6KYNr9NFZcdo
	YtJMeP6aP2lTjALY8YsVnxUgZ3oMuXBnU1IXfRbvggC8rHDCrIP3xG+7dfEl2H0zPkdSnxcTAfGzj
	QVdKyzC3IFZo8NZKqE4zRz7OuuqheQMnTStfLRDXnGvbTf5bhie1P5NFGtDIPMKvH4IiYenNIRN+z
	rAMA8oFzdr7N7jwxdH3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2FD8-0005d1-6j; Mon, 26 Aug 2019 13:39:06 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2FCx-0005bu-KD
 for linux-mtd@lists.infradead.org; Mon, 26 Aug 2019 13:38:57 +0000
Received: from sntmail11s.snt-is.com (unknown [10.203.32.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id E332867A928;
 Mon, 26 Aug 2019 15:38:48 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail11s.snt-is.com
 (10.203.32.181) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 26 Aug
 2019 15:38:48 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Mon, 26 Aug 2019 15:38:48 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Boris Brezillon <boris.brezillon@collabora.com>,
 "Tudor.Ambarus@microchip.com" <Tudor.Ambarus@microchip.com>
Subject: Re: [RESEND PATCH v3 14/20] mtd: spi_nor: Add a ->setup() method
Thread-Topic: [RESEND PATCH v3 14/20] mtd: spi_nor: Add a ->setup() method
Thread-Index: AQHVXAeF9JHgldFrG0Cm/K0wg1GidacNPSwAgAAQawA=
Date: Mon, 26 Aug 2019 13:38:48 +0000
Message-ID: <d44218eb-458a-dd59-b79d-7803de2bdc09@kontron.de>
References: <20190826120821.16351-1-tudor.ambarus@microchip.com>
 <20190826120821.16351-15-tudor.ambarus@microchip.com>
 <20190826144002.479494be@collabora.com>
In-Reply-To: <20190826144002.479494be@collabora.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <D0F24203E231F740AC3F10735AB72514@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: E332867A928.ADC9A
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: boris.brezillon@collabora.com,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 marek.vasut@gmail.com, miquel.raynal@bootlin.com, richard@nod.at,
 tudor.ambarus@microchip.com, vigneshr@ti.com
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_063855_994116_500D6F7B 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.68 listed in list.dnswl.org]
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
Cc: "vigneshr@ti.com" <vigneshr@ti.com>, "richard@nod.at" <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 26.08.19 14:40, Boris Brezillon wrote:
> On Mon, 26 Aug 2019 12:08:58 +0000
> <Tudor.Ambarus@microchip.com> wrote:
> 
>> From: Tudor Ambarus <tudor.ambarus@microchip.com>
>>
>> nor->params.setup() configures the SPI NOR memory. Useful for SPI NOR
>> flashes that have peculiarities to the SPI NOR standard, e.g.
>> different opcodes, specific address calculation, page size, etc.
>> Right now the only user will be the S3AN chips, but other
>> manufacturers can implement it if needed.
>>
>> Move spi_nor_setup() related code in order to avoid a forward
>> declaration to spi_nor_default_setup().
>>
>> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
> 
> Nitpick: R-bs should normally be placed after your SoB.

Just a question unrelated to the patch content:

I learned to add R-b tags after my SoB when submitting MTD patches, but 
recently I submitted a patch to the serial subsystem and was told to put 
my SoB last. Is there an "official" rule for this? And if so where to 
find it?

> 
>> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
>> ---
> 
> ______________________________________________________
> Linux MTD discussion mailing list
> http://lists.infradead.org/mailman/listinfo/linux-mtd/
> 
______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
