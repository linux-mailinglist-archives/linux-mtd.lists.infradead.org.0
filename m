Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 341814F598
	for <lists+linux-mtd@lfdr.de>; Sat, 22 Jun 2019 14:05:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HK0TSkFYMRbTN/2VLDBTCkB6SwWOE8xdQE87hkLxQ0o=; b=d/DrAMd+sT2GvW
	6K8ACO9XR5L86l7Z/5y6pnnppEFy0GxY79CMEB2adre+r8roouTSo06bCVxKVPu+QE2T0X6z+PFff
	LklalFreLXc8ouiF+GAgvJQDaAJLpps9RjRFtT9I+8VIql7Vtg29HtC7twa0VwpeG6c5knuTez4Un
	jywA0taMfCRNoBAb0lYLAf88ZLIpVKqKhXLTUIc/yvF305GIhndzqcVRqDjT8tNra9SEiDAvhKSn/
	1cubSmSYiKK/IbSikdhzUQbvFYhgpItdkvF6FcHzHE0utUUtmJdV96J6TaWOpkOINz2uQfrEGRYSq
	RKEz9hPd/vd+at2jvENg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heelq-0003Kg-Nd; Sat, 22 Jun 2019 12:05:26 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heela-0002vq-6A
 for linux-mtd@lists.infradead.org; Sat, 22 Jun 2019 12:05:12 +0000
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
X-IronPort-AV: E=Sophos;i="5.63,404,1557212400"; d="scan'208";a="36923223"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 22 Jun 2019 05:05:09 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 22 Jun 2019 05:05:06 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Sat, 22 Jun 2019 05:05:03 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xwpEukNpBUgwuk6b4/8t4J7Z9vidNXP0mKcLjWt0p3s=;
 b=oJV1Hvf+ft0TFK8JYhPO7PkEFhSL4RIKAUZkhFQR56FQXw5RKnILbwaPDFF+KHVqz9kq0O+Qm0WYsTTmEhCySvy2vFmXFnflFNpF+tKcaRnWZ5OrIy1UWlLMOOiFQGyAXOS+F9mRKwXtqRsP0Kf/behgDV2BrAuRpKUKlH7iCzk=
Received: from BN6PR11MB1842.namprd11.prod.outlook.com (10.175.98.146) by
 BN6PR11MB1683.namprd11.prod.outlook.com (10.173.27.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Sat, 22 Jun 2019 12:05:02 +0000
Received: from BN6PR11MB1842.namprd11.prod.outlook.com
 ([fe80::e581:f807:acdc:cb36]) by BN6PR11MB1842.namprd11.prod.outlook.com
 ([fe80::e581:f807:acdc:cb36%9]) with mapi id 15.20.1987.017; Sat, 22 Jun 2019
 12:05:02 +0000
From: <Tudor.Ambarus@microchip.com>
To: <geert+renesas@glider.be>, <marek.vasut@gmail.com>, <trivial@kernel.org>
Subject: Re: [PATCH trivial] mtd: spi-nor: Spelling s/Writ/Write/
Thread-Topic: [PATCH trivial] mtd: spi-nor: Spelling s/Writ/Write/
Thread-Index: AQHVHSQzA/2vTv3S6Ui6+xkhVmuhlaanqyCA
Date: Sat, 22 Jun 2019 12:05:01 +0000
Message-ID: <893ae99a-954c-cf80-3ec9-0d7360261ec7@microchip.com>
References: <20190607112848.14313-1-geert+renesas@glider.be>
In-Reply-To: <20190607112848.14313-1-geert+renesas@glider.be>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VE1PR03CA0009.eurprd03.prod.outlook.com
 (2603:10a6:802:a0::21) To BN6PR11MB1842.namprd11.prod.outlook.com
 (2603:10b6:404:101::18)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [86.127.138.199]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 92960cf7-401a-4fb5-1d51-08d6f709da7a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR11MB1683; 
x-ms-traffictypediagnostic: BN6PR11MB1683:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BN6PR11MB16831737EAB02F565BC19F4AF0E60@BN6PR11MB1683.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:989;
x-forefront-prvs: 0076F48C8A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(396003)(136003)(39860400002)(366004)(346002)(376002)(199004)(189003)(76176011)(316002)(66446008)(81156014)(99286004)(81166006)(31686004)(256004)(14444005)(229853002)(5660300002)(4326008)(25786009)(52116002)(8676002)(110136005)(36756003)(54906003)(14454004)(6512007)(446003)(72206003)(102836004)(476003)(11346002)(2616005)(966005)(6246003)(6306002)(7736002)(68736007)(186003)(86362001)(71190400001)(71200400001)(53936002)(558084003)(6486002)(66946007)(26005)(66066001)(6436002)(31696002)(386003)(6506007)(53546011)(6116002)(73956011)(66476007)(8936002)(305945005)(64756008)(66556008)(3846002)(486006)(2906002)(478600001)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1683;
 H:BN6PR11MB1842.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5kNa5XOj47oSbKJAKnrGSVXOwiFSSxUkY4Gg721HwN5zmq0CUEiZWw5M6l6MT9UAMhBZZbDmU9xnhzbnybYfJqDninx8dBNWRTWQvXx4hoUybFsP4py2CLJ3GbLenKtZCMxt5K55zL1eaLPIOrLwctmby58d2FRCk5flM3XPAV6N0YXjbCn91m7ViYVID7QYhZHl69ayb35C7G3lA9W7iswfGf203uQIY0tblf42E5DRMN3vgXxTw8fN7TnW7Mkz16klJgtanC0G+ddof6ktbmXeuNztERcG0aoGN4zd8sDSrbi2tmOkVsMUtoztx5E4VwtOsHkBy/ncTGjBaFm0OyZywj/WXAiN7ICc6xdzdkQocHAKmwUbAjsmnxy9diCFFb7MdcVjdIwf0v9vc1G1ieoqX099egLTXdPIMaGycdk=
Content-ID: <F7B105BC8B825B48BF5C763B5810DB60@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 92960cf7-401a-4fb5-1d51-08d6f709da7a
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2019 12:05:02.0223 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tudor.ambarus@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1683
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_050510_377677_855CD798 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 06/07/2019 02:28 PM, Geert Uytterhoeven wrote:
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git,
spi-nor/next branch.

Thanks,
ta
______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
