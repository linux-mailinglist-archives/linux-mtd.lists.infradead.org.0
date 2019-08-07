Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF3484407
	for <lists+linux-mtd@lfdr.de>; Wed,  7 Aug 2019 07:54:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QMnX3mSihAmGPvTa3Vi90SGL01nHy5FYod6JewByK3A=; b=rvXr/w1/f6cGuz
	FCPNjQknUaGaOYR+cQi4SRDI1aq1VhPNc6S97QYDWuvsCEsQKJpsl6+RULDD+bzzfVmQXyxeF9DMJ
	VbEhxvi5lHxlCRDXcQnQr6GQX8yiP5N8u7Wp2oIuLEkU8xpvwvoI3mvyJSkfBl+ut4qa36EAIVv+T
	gmXTsP3ZrxFPDzoQONj5svt9ShzXFki9xaNKhkCS8U9sIXwUtepx+jp84qls2NYLuWoZm1M2RPSa6
	hOAbjCmFE8cEcS7/0Zql/xQMvJg0rWXPlndcvr/haepdKyqq4VLdDyUpzpHvL6uzOisWGJhGf6/gI
	H3g5gmwqx9CUlTiwQ20Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvEtz-0005Q3-UL; Wed, 07 Aug 2019 05:54:23 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvEtr-0005Pf-UW
 for linux-mtd@lists.infradead.org; Wed, 07 Aug 2019 05:54:17 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: AkRVGV3AmLF2vmDiBhOOn5TDMguXp/F/I8pBKgXJ4NWEK1M+5fb5YvsJzixZ3+OIFRyVFFLYxi
 VHYGS++/zks2DJySRgR0cFzKFMYaRqW/Vw1GC9rI5IYoQ+f+ASsA1XwwS3Jbyioc182zfVqNe9
 NRxEqnBGy6DUVOBNgG0GbnehvnehDHCTDF5boqu27QiSScJnjjFnN5R0vwVo8Cbfkg4FlRtBwe
 JvJrVab01GsVu4/RFHk6JYwbKdYoAu3qWAKvw3o/OwDp6kcTzOKOd8mC+fNmYPR9jGQd5WEfNA
 doA=
X-IronPort-AV: E=Sophos;i="5.64,356,1559545200"; d="scan'208";a="43449305"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Aug 2019 22:54:14 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 6 Aug 2019 22:54:13 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 6 Aug 2019 22:54:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RHfIIRCoFepDG+zVtcO79G6gx/mRB0s5MZNwnJnP/QptWvmsA3ISJn7IzxFQ41SyusANy18QyrI3PLEoWOmfs+Vm1ub8mFs4ndR3x8vee2d/DXk9svFJVV1iqAb+eyAqnfJQbxAGYK61IisMGRIgrwfRqm8SQh3NK2qVex0GL5uTrbLs8ByTS0PaiamUdVxmWsM3x4fSGtWxz1iC/XfXN9rovuiThJzd+u0T/n+6ZwSZmWpCzuFk4DPr26ulLMU0rb1CKjomN/IPuP6Gp10ot7lmGvy8v7ZVVJeN7X8oGAF3xmzvMOtB1mSSZU8gDzQ9H6Se6rY1qTs3G9mWjMrf1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ze/3XoXw5VJmpxZyiNXB8Cb7Q4rmr7fQgEZPf+X3RFI=;
 b=fmS18p6eNk/GZ5X0ZiDE7IMUGkQT1ar7M6UTnUR63lBUcme6D+4xuchQAzYBXFW/XmyBbx3ndOKBygbX20X9664DiPHVuTXGnp+Wca0LiTQy1zqxfXsNhzOTYHeL14Izt8lweu1UXdHKu70Lvkx4U41lostmEbI5OIkmh8eMDtrpv0xlOtoqnETJjtwmXmRjcqkHpqNuNDxCbe1RCVuEHoLAgRbvBKCBUTMnAoZvN09+vmbwlC4fUgYk/haa6DjhWVBL/pu2dgSiMjIBucnad+1mFDVadJQEeSoTFUiPewZ94BGwRsSKC4EDBcnTiYDnFWw3XwBQTlLvpc/sPkcwgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ze/3XoXw5VJmpxZyiNXB8Cb7Q4rmr7fQgEZPf+X3RFI=;
 b=ZorF9sr+oJeY3+UaMbNoUs6TJEJl5gfM1+MJhZxpr5gqKGa6ofHhMVEi5C3bU0BGYRuOFEsavicivtJGToqQbI/OxKvCmBI/JeydJES/5sBETwypnm7AYWXWrBjnFJiIafJa1OC6EvuMJydVCwhCjX9QTlWULb+6eeAKZ1Zi9pE=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3935.namprd11.prod.outlook.com (10.255.180.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Wed, 7 Aug 2019 05:54:11 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5%7]) with mapi id 15.20.2136.018; Wed, 7 Aug 2019
 05:54:11 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>
Subject: Re: [PATCH v5 0/3] Merge m25p80 into spi-nor
Thread-Topic: [PATCH v5 0/3] Merge m25p80 into spi-nor
Thread-Index: AQHVTBVGOaYYiXIg0EaqOxIPYBmUqqbvMNuA
Date: Wed, 7 Aug 2019 05:54:10 +0000
Message-ID: <f2e987e8-95bc-ab5f-433b-ab3aaa4a78c0@microchip.com>
References: <20190806051041.3636-1-vigneshr@ti.com>
In-Reply-To: <20190806051041.3636-1-vigneshr@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR04CA0083.eurprd04.prod.outlook.com
 (2603:10a6:803:64::18) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [86.127.106.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bd27bfe1-77b3-40ad-f641-08d71afbab09
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR11MB3935; 
x-ms-traffictypediagnostic: MN2PR11MB3935:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MN2PR11MB39356597F262691C99BF65C7F0D40@MN2PR11MB3935.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(136003)(376002)(396003)(346002)(61684003)(199004)(189003)(2616005)(81156014)(186003)(54906003)(110136005)(446003)(486006)(316002)(26005)(36756003)(66446008)(64756008)(6116002)(66556008)(66476007)(6512007)(3846002)(66946007)(4326008)(2906002)(5660300002)(25786009)(966005)(31696002)(6486002)(86362001)(71190400001)(53936002)(14444005)(102836004)(68736007)(229853002)(305945005)(256004)(386003)(11346002)(476003)(478600001)(6246003)(31686004)(52116002)(8676002)(53546011)(99286004)(6436002)(6306002)(6506007)(71200400001)(76176011)(66066001)(14454004)(8936002)(81166006)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3935;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mNYAY21LrIUcrx+ru0o2UC1KnlToh3WgToxSRFAVB1hKVyjR09HPc3MkO7p7IDWIizfeORjqSn+Ympb8q+Mx/seFQcxxn26fjJQvPF9+8GIOeyqOduEJBU3kap5d5/5cgyr8p8+39PAi30swfhh69uK5EQri00CluRY+rPsrw/B9abSuxeMYl3IDqe98garowKr/2dTgPcZIC5pCBPTyDwbWQ0PKr+uaOC6CUzvQ4Oue91D9w46ESNpXSDUyTgt6XqfRKiR1Q0LuqHFOFsWM7RNRPJfeZbnGuA8d2yX3lrvYAOCFoGFJM4+u4KTWmC8re3e78eX2e7pRfcytYV+Yvitx25FqffykFZ84Qddz4wctRqG/rgzaVWpIZDNhWpa5rT8Px0ouBvOaDVxfeKHh7ME/4r1v8m08VE+UvxIeZ3E=
Content-ID: <2CF1DAFC64C2484FA253944DD2D43C32@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: bd27bfe1-77b3-40ad-f641-08d71afbab09
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 05:54:10.8412 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tudor.ambarus@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3935
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_225416_018147_E1D7ABE4 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, tmaimon77@gmail.com, bbrezillon@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 08/06/2019 08:10 AM, Vignesh Raghavendra wrote:
> External E-Mail
> 
> 
> This is repost of patch 6 and 7 split from from Boris Brezillon's X-X-X
> mode support series[1]
> 
> Background from cover letter for RFC[1]:
> m25p80 is just a simple SPI NOR controller driver (a wrapper around the
> SPI mem API). Not only it shouldn't be named after a specific SPI NOR
> chip, but it also doesn't deserve a specific driver IMO, especially if
> the end goal is to get rid of SPI NOR controller drivers found in
> drivers/mtd/spi-nor/ and replace them by SPI mem drivers (which would
> be placed in drivers/spi/). With this solution, we declare the SPI NOR
> driver as a spi_mem_driver, just like the SPI NAND layer is declared as
> a spi_mem driver (patch 1/2).
> This solution also allows us to check at a fined-grain level (thanks to
> the spi_mem_supports_op() function) which operations are supported and
> which ones are not, while the original m25p80 logic was basing this
> decision on the SPI_{RX,TX}_{DUAL,QUAD,OCTO} flags only (patch 2/2).
> 
> [1] https://patchwork.ozlabs.org/cover/982926/
> 
> Tested on TI' DRA7xx EVM with TI QSPI controller (a spi-mem driver) with
> DMA (s25fl256 and mx66l51235l) flash. I don't see any performance
> regression due to bounce buffer copy introduced by this series
> Also tested with cadence-quadspi (a spi-nor driver) driver
> 
> Boris Brezillon (2):
>   mtd: spi-nor: Move m25p80 code in spi-nor.c
>   mtd: spi-nor: Rework hwcaps selection for the spi-mem case
> 
> Vignesh Raghavendra (1):
>   mtd: spi-nor: always use bounce buffer for register read/writes
> 
>  drivers/mtd/devices/Kconfig   |  18 -
>  drivers/mtd/devices/Makefile  |   1 -
>  drivers/mtd/devices/m25p80.c  | 347 ---------------
>  drivers/mtd/spi-nor/Kconfig   |   2 +
>  drivers/mtd/spi-nor/spi-nor.c | 814 +++++++++++++++++++++++++++++++---
>  include/linux/mtd/spi-nor.h   |  24 +-
>  6 files changed, 777 insertions(+), 429 deletions(-)
>  delete mode 100644 drivers/mtd/devices/m25p80.c
> 

The patches are looking good. I'll be out of office starting today and will
return on Monday. I'll let the 0day bot run its tests and then I will do some
tests on a flash or two. I intend to apply your patches on Monday.

Thanks, Vignesh!
ta
______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
