Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA11ECE0C
	for <lists+linux-mtd@lfdr.de>; Sat,  2 Nov 2019 11:39:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8hb/qOhkgq2moQFiZTNFJA2JDNczymXcvnrHDBfqEHU=; b=gYdOjKG4Z7H3og
	CRW05OEtqtwdOAaxkFgWJ7xFNuVbTusIA+X4GrfZaW/TvmTS79kQVb299k2jY7b8cHRwHk0nHn7Qr
	R/DWbGaUBPgI11ct+HTQFxnMOkYBxnsbXFM41mtSf9bwmnKwM5KQtzy2Pp6pz3XsOaz1VYPc0GP5t
	xsFb1poWYUYSNSRdOpLTzISNsdoVqVUw8cfhyYSD5zyYM1UZ7t0ddddl+VnmxeNw/AoZGPXebbpIl
	kG9CrXx9Ubwrt2P0QwJ+OI8mrYNFGD+WvBj4OMDHPj9cDvHSRqGZ6tBVoAAO+ehGbOdSRIwrpLAwR
	JnyRH67ZgooTaFp5jIPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQqoL-0002sN-7f; Sat, 02 Nov 2019 10:39:13 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQqoA-0002s0-Nz
 for linux-mtd@lists.infradead.org; Sat, 02 Nov 2019 10:39:04 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Ssh24FIJQBFzdlW6CAkXKtoELrWiA3jJ8/iZom0Bk5Vdc30G409sBt/c5n9q9puvN1dbdPARBQ
 xF0fe1AiCpCFl8TxWnw/c78V2u57YVwxOGAbxOYbZSEeuk3Cc+gF3Ob4INImbxQbSCT/XxrHil
 Yosv9wnUMU6KksXL8WbKylgixUKz1QgpHHa6VW4Y2wmsXg9l8tgmfzK9ADhq69Td38D51I2VEV
 8dd8N5FIovGsbPGoPzHMM7tdaZ/2DpYCCmVriYlrdFD3DUeHC7HK7PDwHEuocl1pgsOauSGv05
 hiE=
X-IronPort-AV: E=Sophos;i="5.68,259,1569308400"; d="scan'208";a="52613952"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Nov 2019 03:39:00 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 2 Nov 2019 03:38:48 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Sat, 2 Nov 2019 03:38:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mSsMAd1GqurS68yysuMbt5oQjCcN5y1byXsC8MftRVYUYJWfjJVxqLFklFqlGrQUnNIw7PPkurL//xr9u1ZdOQGBkP1v215APoJXU2t/VZWQFytr5gSqvTITeRlDS6oQrULXPKSHOHcL+RYW3CquuFgTKJgIOC4FrdCXh4DZ1H8UqGdeitCSmDGNsxYhQyrxNydY+mWtRwqGvyxMjpDjj2yG2h4ybopP4o0jqSMSxNxBZtHCGjELMVAwDOXWAqW6YUotiDoCI3fDBnIMfLjGYl4rOILScYNBOAiYpBiIpCT8T9yJm6P7ooHp2jzqDIcU9mN/fOcMhL6ZAZ9bqhnBOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XbGkRyGjbYXPKfXRdOunw9XuzPsCyCJARXuDLHsRtp8=;
 b=bBwouR5DKm7YXW2ps+Vyxkcfn5JsoJvSUml2QQ3aNe2slXHjdziVdwVbrrSpq2pYPmliEhKq7Fl2F7QDxGYGcOyTKXEHWjo7AuxCZHnkY5D89CjakpG+j5JscuWO2ZKZE3cjfqWPdEjcAjkob1Z53rKAQUF9I7G8OgmMbqyPEtRHem4DqO9BTE9V95Pb3jLGT3c7GfKEmrcKSj/GRhBqteDvd6WiU/lAstd6+a11Hee2+aYCQ1r2dtxIiuL1GZGz6brgT5/P9+cQMc8zmcVMNAbsOiSiALbJJBP46ophiCGVuOLqP6B7EayJVnUeAQuV2PJ08yFqdM3z/iBJc7XMBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XbGkRyGjbYXPKfXRdOunw9XuzPsCyCJARXuDLHsRtp8=;
 b=vqBbUHSIsSuXP/o18l+flUcS4orKStPmJPKClfnfts7/F0XQu8whDeoP+v36/nGmIoUCzfFa0j5Wmq8rSZvo8jQG7SVkaH6uFWqSQuTszImQGwEd/RUVpyx+zS7RXtKXyFF5nvMzHERAqEl48Gpb3/rngGvxhzAoIevy2S4cX/k=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4223.namprd11.prod.outlook.com (52.135.37.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.25; Sat, 2 Nov 2019 10:38:47 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457%5]) with mapi id 15.20.2408.018; Sat, 2 Nov 2019
 10:38:47 +0000
From: <Tudor.Ambarus@microchip.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>,
 <boris.brezillon@collabora.com>
Subject: Re: [PATCH v3 06/32] mtd: spi-nor: Use dev_err() instead of pr_err()
Thread-Topic: [PATCH v3 06/32] mtd: spi-nor: Use dev_err() instead of pr_err()
Thread-Index: AQHVjkpgCy35jqUUmESko8ut5mvNkad3tsaA
Date: Sat, 2 Nov 2019 10:38:46 +0000
Message-ID: <49af617a-1231-0776-14b6-a39cefb7b80f@microchip.com>
References: <20191029111615.3706-1-tudor.ambarus@microchip.com>
 <20191029111615.3706-7-tudor.ambarus@microchip.com>
In-Reply-To: <20191029111615.3706-7-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR06CA0157.eurprd06.prod.outlook.com
 (2603:10a6:803:c8::14) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [86.120.239.29]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: afb3e8ed-f57e-4073-6154-08d75f80d739
x-ms-traffictypediagnostic: MN2PR11MB4223:
x-microsoft-antispam-prvs: <MN2PR11MB4223BF0FA4A892285A9F9069F07D0@MN2PR11MB4223.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 0209425D0A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(366004)(376002)(396003)(346002)(199004)(189003)(8676002)(6436002)(5660300002)(52116002)(36756003)(81166006)(4744005)(81156014)(486006)(71200400001)(256004)(7736002)(229853002)(71190400001)(25786009)(476003)(99286004)(6486002)(2616005)(54906003)(31686004)(478600001)(3846002)(6116002)(2501003)(11346002)(305945005)(2906002)(26005)(446003)(14454004)(186003)(64756008)(4326008)(6246003)(66066001)(6512007)(31696002)(110136005)(53546011)(6506007)(76176011)(66446008)(86362001)(8936002)(386003)(2201001)(66946007)(66476007)(66556008)(102836004)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4223;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VAaBX2R4uPiUOxaMIOjpvMAHHRXBzVOM35xN2o8HVJw1wEK5qeiw+9n/9/61WNfD+XRfeWiIn0LhWw9s76B/Pm8TWoU8YIFJIONbhkJlQsQrrFEX+Ss+09XivsEMoGVE6N+s2OT4IVCYn4jQe0OXZfj0Xmzq2Q6ewBIRGwMD28ydGOmfVBKfvpshuCqm7iEa6UirUNSu+HxYSWVQzTAZhBok5hOcOs2uffWDnGMJSAUiyt4dPkjNRyqQfD4/OrHOJgK2+kzq0cEwMI8l4X/2WAB/4ke139/vXJbYFsE4EDNk3h1DwjVT7XABbu4MrdTJ07WqZJePo1eHpKIdp8W3czVrmfRfSL4v+mPod6ZzHvzLWj8cqw/Mge2BT5kWlBz2xbyob1Si+iKKjuWGOOh0qCSUu+ac2K5qK5V9rJebMtX+S4/lwpyKepd/qyDXIl3x
x-ms-exchange-transport-forked: True
Content-ID: <177F054E8319AD4A9109A7E3A63D9AA6@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: afb3e8ed-f57e-4073-6154-08d75f80d739
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2019 10:38:46.9857 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lcQFJXwVArXvo4TRA6ojDUvhj76BPu2x8XueEUPSJOP5tojRmtnvuLzbWXCkVNWNv15i9fANXiSR2tocXKmg6zZmKdSkGF4t1yI8mZm1zAY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4223
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_033902_820871_F86BD3A3 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 10/29/2019 01:16 PM, Tudor Ambarus - M18064 wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> Print identifying information about struct device.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Changed subject to "mtd: spi-nor: Print device info in case of error" and
applied to spi-nor/next. Thanks.
______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
