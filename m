Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C09409C360
	for <lists+linux-mtd@lfdr.de>; Sun, 25 Aug 2019 15:10:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LKJ3aEHVPTaHTe9eWdEPqRRPhzjItl37SLO9Gp+S6Yg=; b=qRRZsLD3X7fzeg
	Dydmav8WnQTcXsnDX/6DRuwS6HE77EpGHoxUyJQvfMkUD+0Kljwc2vfDeJwvTqpuXG+HtQRjvNHpf
	QktqNGPB8xUveT1L5Qlain5orDNjxkK0c8AtUxGncirlAnBo1m4PcaebLzDOLn9MGsoBOgF717aFA
	+cCpUwwB6u1JrFV4EE3BAsGxQiRxpuQJzMtWc4qqAcX5Qscjk/zr0xosFknRvy4KcJdfI01vQduEp
	U2fmP0s8EFe0SyDo9mqDPRfMFlCuQmZuIQSpqv2QsVpzroFvM8t+IqUzgFj406ZUCJGTQrclP8+dk
	hEeGgzjgfzytLejiQOhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1sHy-0007RP-Kd; Sun, 25 Aug 2019 13:10:34 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1sHk-0007QQ-MF
 for linux-mtd@lists.infradead.org; Sun, 25 Aug 2019 13:10:26 +0000
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
IronPort-SDR: 6yl9zsfhT4IFynydMFZngy5R9sopGTeN0iifpnw1o2D2qoZyow1qHrFObZ9X3UlmXqYGjyPnyH
 gk6nGDy1AGCIZ25duOYQq59dUE48/d9jWADyAZper6eTXfVa1iXPnTn1mR38TnwBHU7PeAhaj6
 h3CJtU43QuHcGHC/wMZwDJi2gYLBn556j+OU6u5GQytGzQR22wxkkTKwbc62q/zoKsS81vjAEC
 5a10WYm8cXDZonUNRkpbOhdp1Ia2y+CMdsWp+njgUXAUUMWQytKkHlM5t8/vCqSW/Li3i3Xhsp
 WbY=
X-IronPort-AV: E=Sophos;i="5.64,429,1559545200"; d="scan'208";a="46445521"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Aug 2019 06:10:19 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 25 Aug 2019 06:10:19 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Sun, 25 Aug 2019 06:10:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e1IH/toUuam9+iAyhW3mO10T7VCpxD20AaSS47HhYrdydGftPhYsM5uvcBPwM399kbescJnsYhv87StRb/Oqo7+U+78HNKUisNMSk9ABBdgo6VDJOH7RHIlzKHC22/kMMx9rt0Dz/CBTBCm727Pv0B6qTjY9eF/KrPX28DfEDY6L/mkpohmNrhlgbfqSUcqEqOkeAIBqZcsNtAONTzxHASnsfUpPxZfTrwWcbcsp92g6RG74RMkdNuUwXRWNGGApK/Sr/h/MFDJswEnQGZHux+Tm57N64RqN/ZyBBHlM3uG3KGegQWptTw1gP8eiJf1mWv44xDuwgxesLnBErVxrOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kDjLDV+9DT5kqEwwk6Rb05RPhEKFR3xTSer4MVRbcZg=;
 b=Nb306AtbQqle8SfHY5pDFW88zV1mXyglfwXfgIZ/aULPqUc5IQ+nhxhixkbCQJgb7EYQ7bCzKgcND4zb1Ov7AUzYSJGa0h3etyInnKZwMaQ9/p2PDJzjVCjHCtPLEhUQVhKuKuSG0KTVGw4dbz5OMiVZFhrQ8i78Fw5gGmD+yfOOi75bl3pDaf8pZVcM03BMj159+8HMQy5jhW36tNsJOmowYWf4Gh3oABF8Zxn32Z9dcJoH9G+LT4x/zpGwkYXPvBVHnqEnFHObOh9y1waHikSKyGabE4+GFgz5NTnjAJZ5H9QK4/CA/kHFmFqN4BuhrQiamYvG4keW/pD1X5tSkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kDjLDV+9DT5kqEwwk6Rb05RPhEKFR3xTSer4MVRbcZg=;
 b=W4EoU6E1S4Zt6CRov/2KSpdkWnLXQD2tj2h1QTaXFFpYgUcCUhBkIhDYamLiukYoz3OqK0mIcqYRwkG03K1D5oti6ruEYHPluviSVf+uNRZmr2vNnxMMi3qU2tKXU5C3DPqaXKizwDUZl2ugQQbFHrlxSSqdqaihG3Ba5LRtHvE=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3630.namprd11.prod.outlook.com (20.178.253.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Sun, 25 Aug 2019 13:10:18 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5%7]) with mapi id 15.20.2199.021; Sun, 25 Aug 2019
 13:10:18 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2 6/7] mtd: spi-nor: Rework the SPI NOR lock/unlock logic
Thread-Topic: [PATCH v2 6/7] mtd: spi-nor: Rework the SPI NOR lock/unlock logic
Thread-Index: AQHVWnOQaAxxvWwKPEiv+nDPOfoC1KcLy68AgAAMQYA=
Date: Sun, 25 Aug 2019 13:10:18 +0000
Message-ID: <a479c908-8d6b-f11c-aa3d-732d1cd5ca33@microchip.com>
References: <20190824120027.14452-1-tudor.ambarus@microchip.com>
 <20190824120027.14452-7-tudor.ambarus@microchip.com>
 <20190825142618.70938b43@collabora.com>
In-Reply-To: <20190825142618.70938b43@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR08CA0092.eurprd08.prod.outlook.com
 (2603:10a6:800:d3::18) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [86.127.53.184]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 80c0922c-cfeb-4183-db2c-08d7295d9392
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB3630; 
x-ms-traffictypediagnostic: MN2PR11MB3630:
x-microsoft-antispam-prvs: <MN2PR11MB36300D2832B3CBC4FAE97D17F0A60@MN2PR11MB3630.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-forefront-prvs: 01401330D1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(136003)(366004)(346002)(39850400004)(199004)(189003)(53936002)(305945005)(8936002)(25786009)(102836004)(31686004)(6246003)(71200400001)(71190400001)(4326008)(6512007)(6506007)(386003)(53546011)(446003)(256004)(8676002)(81156014)(229853002)(5660300002)(6486002)(6436002)(81166006)(66446008)(64756008)(7736002)(31696002)(66556008)(66066001)(36756003)(486006)(54906003)(66476007)(66946007)(99286004)(478600001)(186003)(14454004)(76176011)(6916009)(11346002)(476003)(86362001)(2616005)(2906002)(52116002)(26005)(558084003)(6116002)(3846002)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3630;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Q9uCeutClqcgILuGyx5iK219sQ5zUIJhtHw4BAkPb6E+ztl/cxRo05tVcuwH8SEKvH7RT2kiIIcYs8Zi9U1nT874s/zTYTRm2E2NQa9vcJxCVASHJpWgC9jA7+pTGyoelrcJaV7vZiRCBa03FDc4GcPma+fsV5uGvEzoD7zNjVzAlCT6VKlsH/6a1BbZ/LAkq7R7i1SOWQl5wI+nNpy0YAZq70iaS0YMrskNPtIc7u4yjzJY2VFbp6vnZ030FcZHtush3bZixugyrQOIXJh0ITgKeLBV2vhkqPZ+bo/KQPnGgzNybzeZDLGwHrruBfOm0/aRNtdyzuuw531S9E73tJVNgvXRrhYMwV4NGF+keOZttEhhSbqHWFmas2sQ8Oud3BCO3XU0KqwrO5CNxt9G/dfTFyv0BbF8DeJ+E6JhH28=
x-ms-exchange-transport-forked: True
Content-ID: <C0E37867903B10419E7F0CB85AF0EAAC@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 80c0922c-cfeb-4183-db2c-08d7295d9392
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2019 13:10:18.2216 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KKAo6Mba2WV4Eji59ZVZEkb18jmgxXKesGX84EFNnXwRdBCZ7DPxILSuAkO8B/gz4+/c0tCkA4e5iGORTffsvwsaFHlaLrU/NuTHHav6gZs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3630
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_061025_031331_6AD4C380 
X-CRM114-Status: UNSURE (   5.35  )
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
Cc: vigneshr@ti.com, boris.brezillon@bootlin.com, richard@nod.at,
 linux-kernel@vger.kernel.org, marek.vasut@gmail.com,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 08/25/2019 03:26 PM, Boris Brezillon wrote:
>>  	int (*disable_block_protection)(struct spi_nor *nor);
> Should we move this ->disable_block_protection() hook to
> spi_nor_locking_ops? 
> 

yes, will do. thanks!
______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
