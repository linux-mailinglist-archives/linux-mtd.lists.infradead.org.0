Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3346E9DE56
	for <lists+linux-mtd@lfdr.de>; Tue, 27 Aug 2019 09:02:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4sjKhcRrnN5kH9cOBJp6tByFEaaQVhaBIi3RAbVj3ms=; b=mqMR4Zua/N24U2
	dkdHFZli5ImA19EDIwi2LfUYv3gXyw7LuDplKjs15ZusZXU7S2NzhYpPicyxIMMCabAWqzyApfUwb
	mB0gKF0pLwYCkmrgaiRQREhUDmTUdwRid0wrW02mubRIXJW/9vmB6aXDpbQrgxfsqxlQqKiwym2FO
	Sar3SziI+Pu797dMqv8KVkmkiTj3qcFGFKGw5i+W/89iSrOhVfeMvr7uullqTzzPx77bF0NZKZoqr
	eL3pa6myHksv6nz6yU7NtGyLz9vL79aJqIhe2c1uUg07EJaLySBUTRr11eYlnQnSldxx9eTvsT6sL
	VfMTmVH5oXugoFqw/pUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2VUP-0006Fs-4w; Tue, 27 Aug 2019 07:02:01 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2VTr-0006BO-6f
 for linux-mtd@lists.infradead.org; Tue, 27 Aug 2019 07:01:29 +0000
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
IronPort-SDR: CoUl2YsqhnZ+bKqT5y50wMX+3jbSv5PCSuLb6wwKAMbJk0STnQsfrV8Hu3gFV4K9tTKgliHCtv
 YjvGuu3vpIQtjSiSwf4whJ/3G+ZtePegX7KqmTGGbvFPRTyfAhioqw8mB6exnVIfep9LCSpfAO
 2pk0KQaK475TrKWJE8jHOzresGCKfTz/0NfPp1EDpJK8BXmWm3kHiuwdxBH2E4nqy8xdW3s8QT
 U3cHR3Qfnef3NYkhKbK8754UaMLfpXQm9PTbtq3n01R393QpYctpQCGGAaF2Bbx0qaxanvB7XF
 ERw=
X-IronPort-AV: E=Sophos;i="5.64,436,1559545200"; d="scan'208";a="46635894"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 Aug 2019 00:01:25 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 27 Aug 2019 00:01:24 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 27 Aug 2019 00:01:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OjJUtuWv5s6otDLRnjSnNmywamW6PmWliaxLOQSW2qsHC5NfgvLTgUdN5xRzea3sH8bV+96i+mPC+RPMfYeTNwrrvUeuHwAkmnYVRaK+13Xx+mK/TD/AYMHf80iFrkSXOxkPSahBB4WhDzZujKD3TG73U4J6xObm5escQOypkxsUylBcPP7yGJpdSGb9e5sUxhI5GP8KnXQZ7Lx+aPxKWH5KORmALZnUoSmT0HAy2hqcWdya6NJlJbpFlW7wuI57CCLad58KqP8yZMhdyxPuYdgoEY9J7fh8nUFp5YV2ShmlbK9SkFRe9IPvNtO4fwhOkrV92t4K03Giv5o3sdppKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+GrkCp5+FQ7R6Q5sa7xHUnpngqHXF6IVB8ek4lfOsCw=;
 b=G3Citt2UW1QMF9hwjC8uYU5gM/7NZC0sGqR5/PRuYqIDCt1q2jj9q4EbPGWLKgVnj8CquC8KIQKA4oH2mX6t66jHC0e2fGKHJKc0ybLoQWI5TE173BB66OOK+yhxDb+BFw4679bknpSF76Wp4gM7tiHa/iepaKClTonYj1XvOeUa6qf7ia76U6o0Xbhs9LzwgK52SeZaE2is08oV8FaXUGJkYsraXMT+/sDXCkXRhkvCskIS53ca9fa/KjE4PvV/kueLXI2pSL128cc+GcbwA5yXGoCVLvWFbvCwxXBq+dRiuL4ZYs6meX76L/ZI55s3TxxVUTPUgyFngjmMMOO7PQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+GrkCp5+FQ7R6Q5sa7xHUnpngqHXF6IVB8ek4lfOsCw=;
 b=lb3ti/AyA4FNWAeG4POq/eMjrDoJvG36A/hGbQ86nBuww0UoPjXJfihwfrxlBJCQ+t4l3jzLRV4y3FTV9jI1pyy+haf2hIfowyXgqovtN6uAbVkR2142yGXvUAgxgeomVnFbk/g/oB/81r/Q5UZM7vS6wVsUkX24mhSHTeNSJl4=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4269.namprd11.prod.outlook.com (52.135.38.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.20; Tue, 27 Aug 2019 07:01:21 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5%7]) with mapi id 15.20.2199.021; Tue, 27 Aug 2019
 07:01:21 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [RESEND PATCH v3 08/20] mtd: spi-nor: Split spi_nor_init_params()
Thread-Topic: [RESEND PATCH v3 08/20] mtd: spi-nor: Split spi_nor_init_params()
Thread-Index: AQHVXAcDwaG7sE2Oh0OnT95bpkTmoacOgUYAgAARG4A=
Date: Tue, 27 Aug 2019 07:01:21 +0000
Message-ID: <8130623f-c0cd-bcf1-5dba-0a31a367c90b@microchip.com>
References: <20190826120821.16351-1-tudor.ambarus@microchip.com>
 <20190826120821.16351-9-tudor.ambarus@microchip.com>
 <db529e35-801c-efb2-1f05-922fbcb98aef@ti.com>
In-Reply-To: <db529e35-801c-efb2-1f05-922fbcb98aef@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P190CA0019.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:802:2b::32) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 624f08d7-80fa-4f27-64d7-08d72abc5e00
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB4269; 
x-ms-traffictypediagnostic: MN2PR11MB4269:
x-microsoft-antispam-prvs: <MN2PR11MB4269584B6613C9C44FD1005AF0A00@MN2PR11MB4269.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:350;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(396003)(376002)(39860400002)(346002)(199004)(189003)(8936002)(66066001)(186003)(305945005)(102836004)(110136005)(26005)(99286004)(7736002)(36756003)(52116002)(2616005)(81166006)(229853002)(386003)(3846002)(53546011)(8676002)(2501003)(256004)(81156014)(486006)(66446008)(64756008)(66556008)(66476007)(66946007)(5660300002)(6436002)(6246003)(6116002)(76176011)(476003)(2906002)(71190400001)(14444005)(11346002)(86362001)(31696002)(31686004)(25786009)(478600001)(6486002)(2201001)(6512007)(14454004)(71200400001)(6506007)(558084003)(446003)(316002)(53936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4269;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Rm61Z47U8Xxfo/GxWO1d0vI/wAMjyyB6eCYHKfDZYTnWX81YPhGAX3dXsFb5KvIhpG1dnio7ZlRdLSlewVZ7TDH5gA/E67phL3aFAP8fyZ3zoq5cXGuEas6GlMFLBxI/On8rozlqZ0rNZnjC0ZjakyjsJ8KlG9WKHF3vTTTOnn5cwPmvquKCFnRIBkXlsZF8Q+C4ykpwKWqYcPHdcGfrki1GwawguCb0WFiSbVtXCJi/cMFiQ6fvIIqXV1aburNjsiB+U8Kh7Zwn/BzDIT74agCdUqoxxImiGcnfm50wlx2fvuRkt4RCOHO7TztdKlUWGrJDHGSpeOEKp8H4MK1SDrEZR3xpBGzQk/6CGodLdg4etdSg3VwsHOULsZw0WExUELcRamYpkqD4JSregbZSYgxvs2jaMJYQ69xiUcXAB/8=
x-ms-exchange-transport-forked: True
Content-ID: <ADDB29CFF4B5F244B00E887033FB1842@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 624f08d7-80fa-4f27-64d7-08d72abc5e00
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 07:01:21.7605 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XCwRRN6TLHLy4jsWrNOQr0DXrVvUCxhPn3TUgzceg0CHxnAzfQWMe9n3DNZ3pME7RZKvn26IHPN2s+s6OELiPC1YUu+SknsbSz9S4QFEKeU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4269
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_000127_484278_8E1A0274 
X-CRM114-Status: UNSURE (   5.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 08/27/2019 09:00 AM, Vignesh Raghavendra wrote:
>> + *    Please not that there is a ->post_bfpt() fixup hook that can overwrite the
> s/not/note
> 
>> + *    flash parameters and settings imediately after parsing the Basic Flash
> s/imediately/immediately
> 

will update, thanks!
______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
