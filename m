Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B061D81333
	for <lists+linux-mtd@lfdr.de>; Mon,  5 Aug 2019 09:32:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9yOUHh+4Vu7Gt2bxVlDRCzGLVUXdkeLFgVZ32RPz5X8=; b=IDQpA9OfvCil35
	is5NrYyrXDmFlKD2/xVw3Hdf5SMOUoBaY90KKua+1JkM4Xsz/I2lItclH5Utkr8ada/+KAraIL0lN
	BeYitemd5jdYkOIfHdyNkDaKPIMc5sfACOKuEO3TBamns5WzNy2eFZqQbK2BgGY2sW7dVCj7nzYr0
	Fq5R4vIbSFbMiuJ0yGyHEbV9nM3Mvk43Cr0CYCL/sGfpAMAechIyCJrlEpFXf6qTzHFMJ0zRz0fd/
	pw74svVF1ow+3sOxIhIRkrVVqbiok8np6gTGgT+0mOwII/rz7aDLrTmyfxhc5vLejw9nSiJMU5lcW
	w4bsWIj+O8bXINQ0DHew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huXU5-0001ro-BP; Mon, 05 Aug 2019 07:32:45 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huXTu-0001qu-4r
 for linux-mtd@lists.infradead.org; Mon, 05 Aug 2019 07:32:37 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: g46tughlXUBJNyBZKVe17P/z0VOcNvqyLm3fMsl3f/bd8RGKFO/Pyfcmk57O4hxVkvli1ZP51S
 p5XKZfrr+7wYPXLn31yWaNB8wdny+eYDqoKZrxLTI1i9t5+DKWPVE1MsBVy0YwQtVhsp4LKtWD
 HIjOJqBj61uyM/CrdGCM+vyxLwwbQjax4y/QXuQS/rywuGee6qpKiSXOhGjHyVVoIdTo50d71E
 8CoS9p4oL1Vk5NZ1K2krM8vF7ZH1qXIWdk/tMigxsToO2DFTklXeGsPolHdT1e3MrMSEKnwL8h
 m30=
X-IronPort-AV: E=Sophos;i="5.64,349,1559545200"; d="scan'208";a="43922944"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 Aug 2019 00:32:13 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 5 Aug 2019 00:32:13 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 5 Aug 2019 00:32:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O1/sySa+2dsTfS3gHZCRSvsuYJVUa5LdKPW3rqpPssidQLJPxoPErnPBfx0s+mj37OR4khW/Mcphi1UAPQ/jn5Jyy3g7GkEuTtIMQCPhFg5OGqcKXC0Am5+58QO5s/VFpavOvsfP+JSwqFmTKbDQ/ryZWkqs0P06QzwQI52d5WJXrF46bs8HNY7VktjSuwmxjfqMGb0GKoeG1/fJV3AcC9K5f5vmHBZiW9tmwAoLhfmBNiXBVE7HS3D6yeFw7bPhyrcPsgThJL1z1G0nZ4oxJCbdzNzTT05a5vwE4rRAUx8aiIhIIdatJEbH5B7L7O6uxZJbaM4mfJSHfsNDd0lbnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zHAOT+yeiuVdF7L/3Cnn1RZrgiB9FR1DwxR3eWVMAlg=;
 b=FUsyGHFkyouFvXSBXcrUYj3Ul/Rm2Us65LU/UnpRwachhMCcGna7zZK+EDqg/X1CPY+NzbjnbYOPEl/9ndqL4ffTp+v6ieMyebLE7K4Q6cRofzhRSNwDgVYc6f0ppB8pjUdZA9mpg0RIl7vhLiJTdo05AgmXr2Hqxf0th41HhBBRKh9D3H+NOb3IpoQEVdY/jcuKpHkzhjM79IGs4rsox8PkwcdKWumfwc+FoVolNB+pUc3lIwWv9vwbgBGNbP4DU1VrAOWTDQW8zI6QLw36VJvN7Pghr7EvCHdBBkZf77j+5qn7U5AU/FlAlxCgkTG3Yh4JyqYFgNTlYvXvIWG4ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zHAOT+yeiuVdF7L/3Cnn1RZrgiB9FR1DwxR3eWVMAlg=;
 b=aIBw1mohLRO7i8ghgRGTH0TubXyzmN0NcZ4AFny20F3sGU6qxgWAXbObRcnCe0/d6+p4h5QD/TeBIjXu7UckHGJCjK84Q+Ta11up0e4GjCwcZ02T/m/pnVk3XnZBv3+ndWm44jTeIML83wpYkM6JdbPrciJK2qA6dMUOZw/jLu8=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4205.namprd11.prod.outlook.com (52.135.39.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Mon, 5 Aug 2019 07:32:09 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5%7]) with mapi id 15.20.2136.018; Mon, 5 Aug 2019
 07:32:09 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>
Subject: Re: [PATCH 6/6] mtd: spi-nor: Add the SPI_NOR_XSR_RDY flag
Thread-Topic: [PATCH 6/6] mtd: spi-nor: Add the SPI_NOR_XSR_RDY flag
Thread-Index: AQHVR4ANBFbmyZuDXEi4qln0HD1tDabsCj2AgAAmgQA=
Date: Mon, 5 Aug 2019 07:32:09 +0000
Message-ID: <d87bf780-f728-e2e0-be6a-1731fddd32c9@microchip.com>
References: <20190731091145.27374-1-tudor.ambarus@microchip.com>
 <20190731091145.27374-7-tudor.ambarus@microchip.com>
 <93dc5a5d-3a72-c80e-0b0d-7fd758a1ea5e@ti.com>
In-Reply-To: <93dc5a5d-3a72-c80e-0b0d-7fd758a1ea5e@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR04CA0046.eurprd04.prod.outlook.com
 (2603:10a6:802:2::17) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: df3af668-ae51-49da-2eab-08d71977064f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB4205; 
x-ms-traffictypediagnostic: MN2PR11MB4205:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MN2PR11MB4205BA29339A2239EF1891ABF0DA0@MN2PR11MB4205.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(136003)(39860400002)(366004)(396003)(199004)(189003)(26005)(36756003)(110136005)(186003)(81156014)(6512007)(54906003)(486006)(3846002)(4326008)(66476007)(66556008)(64756008)(66446008)(6116002)(66946007)(966005)(2906002)(5660300002)(25786009)(31696002)(2616005)(11346002)(476003)(446003)(6486002)(86362001)(71200400001)(14454004)(66066001)(102836004)(68736007)(305945005)(229853002)(14444005)(256004)(478600001)(71190400001)(7416002)(2501003)(6246003)(31686004)(316002)(2201001)(53936002)(53546011)(386003)(6306002)(8676002)(6506007)(52116002)(6436002)(99286004)(8936002)(7736002)(81166006)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4205;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 8i5/7GjppMrceN2Jvo8QzFsliltPIcgIvEBpyKJ65flXcpoeovpGfxmOASp2hV9D++/KV79IEfUeQjy+87hcQbS6lzAWf0HbrgpPnxdbISY4OKucX/9tnOgMcsASwoYLEOUYd7wiO3fIMzW2qLHZjvUv7j+UIn72roM826MZGgn7mZ4a2o3y15zPUPbNiRksrhY9HzUmr7AFhkwR5mtLpag/QlQMSlRhhdpqxPEB6Cfs5wJYnUtqEGrJPJvyxycaw8sG/Uwxt9Ac+biu7VjbeMHoBOlnzFfk1+40Ov/TvZRLz63pFDV+kf74weExl5arz0w4wxjCtIaXhxsjF4G0M22BYEDw/a1bbXql/kYHgJ2yz4boGvu+JwYpOCEjLmO7fbXwlWeefd2Y05Qw6v+W5lDTzvCPBZa+Ogd0o8hK+AE=
Content-ID: <F2CC753D0DFAE04C926EF3F91C5BB4BA@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: df3af668-ae51-49da-2eab-08d71977064f
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 07:32:09.5288 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tudor.ambarus@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4205
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_003234_286750_F182A3BE 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: richard@nod.at, linux-kernel@vger.kernel.org, boris.brezillon@bootlin.com,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 08/05/2019 08:14 AM, Vignesh Raghavendra wrote:
> External E-Mail
> 
> 
> 
> On 31/07/19 2:42 PM, Tudor.Ambarus@microchip.com wrote:
>> From: Boris Brezillon <boris.brezillon@bootlin.com>
>>
>> S3AN flashes use a specific opcode to read the status register.
>> We currently use the SPI_S3AN flag to decide whether this specific
>> SR read opcode should be used, but SPI_S3AN is about to disappear, so
>> let's add a new flag.
>>
> 
> I think you can drop SPI_S3AN right away either as separate patch in
> this series or as part of this patch itself.
> 

SPI_NOR_XSR_RDY is more generic than SPI_S3AN, and lets other flashes use
SPINOR_OP_XRDSR SR read opcode if needed.

If I drop SPI_S3AN now, I'll have to select the s3an_nor_setup() method based on
SPI_NOR_XSR_RDY/SNOR_F_READY_XSR_RDY which might not be correct. There might be
flashes that use SPINOR_OP_XRDSR but have a different setup call.

Of course there are a lot of "might" here (because I couldn't find some other
NORs that use this opcode), and if you have a strong opinion I can change as you
suggested. I prefer to drop SPI_S3AN when moving the xillinx bits out of the
core, as in https://patchwork.ozlabs.org/patch/1009295/.

Cheers,
ta
______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
