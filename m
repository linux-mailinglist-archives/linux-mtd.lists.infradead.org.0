Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D42AF3839C
	for <lists+linux-mtd@lfdr.de>; Fri,  7 Jun 2019 06:56:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OqR1Ryd/QRHHC+OpMXskd4wqGTRKXncIphed5SneYWE=; b=YQVLa1jrQ8WKvF
	40h5FD1GLII9GHhe43DOH5oJBjryDkZqemeQ/TMYUnb1IVUSN3F3xIp3TifS/vyBdTCOoyZZKUJ3V
	g9ya0XDodOsFFrlZtlmslV69SFpjVPfM/EHu7dpWMoI1VTZEVa+laQ64IkmtYAV+Us2cjo3HrPwd0
	TfHY0d5nT5eyjP/qmHMCJOGS9zO2A3yd9nhEz7ekEe1OgiQ8O3yfBEfk2nkZor6u44Pp07c0psXAJ
	9JhyCFb8f1PzMaT65db0Ejoa+9y6JrjxTyd8ZdA9619xS68iWw9cu+Jj3HIVtgP8i1div6tuPBzWo
	JrP2egPUDHOndoS5DGdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ6vP-0006ve-MZ; Fri, 07 Jun 2019 04:56:23 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ6vE-0006vE-Hi
 for linux-mtd@lists.infradead.org; Fri, 07 Jun 2019 04:56:14 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,562,1557212400"; d="scan'208";a="34772639"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Jun 2019 21:56:11 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.87.151) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 6 Jun 2019 21:56:11 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 6 Jun 2019 21:56:11 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lZJLcH2VNlGkM1eFt5oMdI9jA8AqUkn5mkL3cMIPyaA=;
 b=GNhe11gTof7iNuIDCe1Ie3GqCW5pVBjqKnbhHaJaYvuXoYu1/3/P8APgeKHYXJuC4N1w/d0ETLLAoobYYXQzyGhCMRRVnSy/bmqlKdG7E+tWGwPnb03q8TXFdtEAkQdcFi5HLMsO2DJ9X6dgs00jfwaekFIpcLCcfRRwg2rZMPE=
Received: from BN6PR11MB1842.namprd11.prod.outlook.com (10.175.98.146) by
 BN6PR11MB1905.namprd11.prod.outlook.com (10.175.97.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Fri, 7 Jun 2019 04:56:09 +0000
Received: from BN6PR11MB1842.namprd11.prod.outlook.com
 ([fe80::e581:f807:acdc:cb36]) by BN6PR11MB1842.namprd11.prod.outlook.com
 ([fe80::e581:f807:acdc:cb36%9]) with mapi id 15.20.1943.018; Fri, 7 Jun 2019
 04:56:09 +0000
From: <Tudor.Ambarus@microchip.com>
To: <andrew.smirnov@gmail.com>, <linux-mtd@lists.infradead.org>
Subject: Re: [PATCH] mtd: spi-nor: Add Micron MT25QL02 support
Thread-Topic: [PATCH] mtd: spi-nor: Add Micron MT25QL02 support
Thread-Index: AQHVCT1AryBIuSX1Ske0wWoAPj0/naaPyB8A
Date: Fri, 7 Jun 2019 04:56:08 +0000
Message-ID: <588d41aa-2abe-89c5-afbf-cfb932282728@microchip.com>
References: <20190513033326.20352-1-andrew.smirnov@gmail.com>
In-Reply-To: <20190513033326.20352-1-andrew.smirnov@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR07CA0238.eurprd07.prod.outlook.com
 (2603:10a6:802:58::41) To BN6PR11MB1842.namprd11.prod.outlook.com
 (2603:10b6:404:101::18)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [86.120.241.49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e3e5cacf-979f-43f4-65e6-08d6eb047467
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR11MB1905; 
x-ms-traffictypediagnostic: BN6PR11MB1905:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BN6PR11MB19057D61D99E9516677AF1E8F0100@BN6PR11MB1905.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0061C35778
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(366004)(376002)(396003)(136003)(199004)(189003)(66946007)(71190400001)(66556008)(8676002)(6116002)(486006)(316002)(53546011)(446003)(6246003)(102836004)(99286004)(6436002)(52116002)(36756003)(6512007)(2906002)(54906003)(110136005)(3846002)(6306002)(6486002)(476003)(5660300002)(2616005)(11346002)(186003)(4326008)(81166006)(386003)(71200400001)(305945005)(73956011)(6506007)(4744005)(86362001)(66476007)(76176011)(229853002)(7736002)(31696002)(68736007)(53936002)(31686004)(8936002)(81156014)(66066001)(478600001)(256004)(64756008)(25786009)(14444005)(966005)(2501003)(66446008)(72206003)(14454004)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1905;
 H:BN6PR11MB1842.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: OUwK1YdhWjXrcGK/S+2tbZhqhFqw+ON6fzyD+bzCIqZl6KAcKIQESE9y3eGqpGfiISW6vSNZxAtLvcwSUcZ6mmi2r1NkZRC28GdWwzidxlDxhJNvjAxFbtLwtK/hsHOLjnRQ5J+dqUynoimhfPuXeEQZdrbn7SLZaKLazjWzjZ+pvpT0uKancE5wdL2WBMg4OqicZzYO4zbs7XzC1T0xjbFksarHEyt20CVIuOq91BAeKy9Uxah1pp2aoNmQ4vtdUAzmANRWNg3YIc84LKs8j5quM+5/d+9DIEvj3bq3w4FZht7fhsjGK+wtmUQcWFra9zWku7qnIVeVFBRTNsG9dFL3lm96RZWY0Dx3YzwLAxztYEExMA8haLZ1HjVag5f35F6y/k5T88xhcgsY2EWxXekoLUqsW/aM8Gu7balS0eE=
Content-ID: <58AFC802EC25FA479498B3939CDD3ECE@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e3e5cacf-979f-43f4-65e6-08d6eb047467
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2019 04:56:08.8717 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tudor.ambarus@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1905
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_215612_694276_6F10D6FB 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: marek.vasut@gmail.com, cory.tusar@pid1solutions.com,
 linux-kernel@vger.kernel.org, cphealy@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 05/13/2019 06:33 AM, Andrey Smirnov wrote:
> External E-Mail
> 
> 
> Add an entry for Micron MT25QL02 which is a 3V variant of already
> supported MT25QU02.
> 
> Testing was done on a ZII VF610 Dev Board (rev. B).
> 
> Signed-off-by: Cory Tusar <cory.tusar@pid1solutions.com>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Marek Vasut <marek.vasut@gmail.com>
> Cc: Tudor Ambarus <tudor.ambarus@microchip.com>
> Cc: linux-mtd@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
> 
> Previous verion of the patch: https://lore.kernel.org/patchwork/patch/577372/
> 
>  drivers/mtd/spi-nor/spi-nor.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Ordered entry alphabetically, wrapped the entry to 80 chars limit and applied to
https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git, spi-nor/next branch.

Thanks,
ta
______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
