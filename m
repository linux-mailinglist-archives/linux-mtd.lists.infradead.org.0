Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AD8ECE08
	for <lists+linux-mtd@lfdr.de>; Sat,  2 Nov 2019 11:36:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dpm2gkSt27RpGk1tivu3xG/qM4SyLE2DXA34BFqPW58=; b=udtntp0+Z+fbTe
	gtYjnPwKi8TaISz9Oe8+e+4/oSpNWiy58gRjvzWL2QY0rxR8l1hojNa962SdgjvRHLggBw1a5ecqC
	L2jpNhxRPAWsplcEbGvSkpN5NhhVGgXhleUvBGJ8m/wgBuzMBD9YU4oAsBASQMAasE89btsP3iP7T
	SwmmXFVaHzc401UkmWc43Y1vs5zqo5j5t+XSLLEutYNurLgt+MS4UxVRh7LzcZ4QYZerHzbfBS/d/
	14PePBQOPjQU4oHPtsL+saIZbcy/idVyaiNHgPhKJJM2Zc7XKT+FdzjSGB5s7rb97U/sFoUESUm7J
	/m+5n/bEtKskbysdpSPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQqlm-00028e-Ut; Sat, 02 Nov 2019 10:36:34 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQqlZ-000287-Vk
 for linux-mtd@lists.infradead.org; Sat, 02 Nov 2019 10:36:23 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: tZxXQt+l0u7IbMOeYG2MLqkAsY459XZ4xXkMpuIP1AFHU0ZgSZF/4CW68tdNNJLfbSQjrDZbQW
 u5LcwSqndSBVrT2+7xTiFU+ltKLi8icccDRULEwzNZzRvk+ka/jKBlr82N54zhrjY1fn0Lm7l9
 VA6dsNgbNbPMjcP2IrdwncTiRq03jLaCvCMD587pRy2Z8iRxoXg9MMAmc0xo00squkXi5tTa6n
 HBbncq0fPVR+6FkgCQAkdNV34qThNs+QAC6D5bPtcaIaoqCPNDdaq7jI+rIMESZIIXrQG60MEY
 coQ=
X-IronPort-AV: E=Sophos;i="5.68,259,1569308400"; d="scan'208";a="55427370"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Nov 2019 03:36:21 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 2 Nov 2019 03:36:10 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Sat, 2 Nov 2019 03:36:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HlJaPylm4oFn+nOsmxsw2JgpheYF68Fm+ckkG2+1Bd6DlW2sivvgxQc72xsmvJBQGJBavlGAqMiwP5Eo7RJRZvFpFeKeb9nT8xcDuVC2Rn2CMJ1Z1hYhoSB3zeziQp19KEl9um9Qx6uzXKXWI8uiBZnztTN/spB0vGEVYfUOasEYn3tE97KYCuHF1seUqXy7aicgP1zYQOuiLAIfzuifKyOv/8Qui3m1Rq3uWw7gGB/ESQzOhJphm9GsTYp0xkaMTiEdjjAigZMdXFc1UQhMlWAGV/m0my6XuoDHTn0jsGywsal6iM6dWa6b18iVWvHUJV9HOVEmf1RhKlZzwtmXKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CKZhokmQFRAniK+k/URmwhSgyyU5KJ5+uQsq1lTQRCY=;
 b=AryqsSd4DIWd3GNBdBTr631cgdRe84366ZuySWcaIeVZPtpb0WlqBBB2cvpUC9i7gcqPGJpAdEeK1yEC/H1eIvFBvCwATP/prfXa7yfZk7LKxi6LjJIU5YYZFocViG9nZlltIrYChd0YGq9jrNc9cICVChlzIwzfBMi6mOdWAyLZdT+f+2c/zHzn2CM2I11PaDeoucsveJO2yTQPRXVo4TcklvBJucM2zz9lzWoNb1nGuTMBTdc3/lbBmcHBlIHOxH5K1rw/dmWgZNx/ykQYvYFzViWZiJxft6QbB7CLN/7QJg/NMPm3zlv2F/vsN+FgOOWW+/QoIf9ImOUHWzF4Tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CKZhokmQFRAniK+k/URmwhSgyyU5KJ5+uQsq1lTQRCY=;
 b=prkKHqYxeGAigEphrweOxzB8UpTIlY/sXmWKgbSNW/foMaiyK465/LGyu5IdwepUEhd2gpyY8gkf24jHahXpIBx7LqnQAnoNQfb0p0fQ8FTs5CmXP+3RDOvjQOEvNJWHm+S3L7r8ZYw2SQUWVMz8w61PpPbzDFWQSjVvaDlE3uY=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4223.namprd11.prod.outlook.com (52.135.37.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.25; Sat, 2 Nov 2019 10:36:09 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457%5]) with mapi id 15.20.2408.018; Sat, 2 Nov 2019
 10:36:09 +0000
From: <Tudor.Ambarus@microchip.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>,
 <boris.brezillon@collabora.com>
Subject: Re: [PATCH v3 04/32] mtd: spi-nor: Stop compare with negative in Reg
 Ops methods
Thread-Topic: [PATCH v3 04/32] mtd: spi-nor: Stop compare with negative in Reg
 Ops methods
Thread-Index: AQHVjkpe3Aj10gNnVU2+wx1petwKoad3tgQA
Date: Sat, 2 Nov 2019 10:36:09 +0000
Message-ID: <aefca32f-dfb3-c99c-a796-0d18483b5cb1@microchip.com>
References: <20191029111615.3706-1-tudor.ambarus@microchip.com>
 <20191029111615.3706-5-tudor.ambarus@microchip.com>
In-Reply-To: <20191029111615.3706-5-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P18901CA0013.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:801::23) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [86.120.239.29]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5f060f79-b117-4806-e771-08d75f80791e
x-ms-traffictypediagnostic: MN2PR11MB4223:
x-microsoft-antispam-prvs: <MN2PR11MB4223FBFDDB8EFD3525F68325F07D0@MN2PR11MB4223.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1201;
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
x-microsoft-antispam-message-info: Fh1mAWW3PGNDPgJU6llBZc1zVceg2G+nxPk9Bo25ZTDqw1uFRpcbjQld5L46FF/OPwxMpPacBvST2oHNfHbKQG0roJuTUMmC9xIrJo5xuqU8RwB7biKYZNp2e5+F08KtiZxHRFXKeei7dMBzUrDzdjPFYmJe2od1NxzAMqMX36C2NB/QKxElryce/ahHxa0RWlJCOMhIMQITdCLT/wojVN2quGfIA+gshYw0QKVk/ucM4RD9BIjI2F1yurnZcNel8td2u68keaLzfkk9kXG7YRvK4jgesJSxEmYEmXqYqA5Fz0YBkuMyP4m9fnNAbuAWaRbh6MF0ZpEoX1J3FoG7zdhZD2ph4k4dAItyWPlE8aOMEMTCrGVcOt8FwCBoskNndBF+B9x2prt4Jb6yRBKVOMLN/yMbSFr2WA+jzE14Vuq2D6HjvtiBbnGYbRc1ES6/
x-ms-exchange-transport-forked: True
Content-ID: <5AEA356FA25B244CB100E6BABB2B85C1@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f060f79-b117-4806-e771-08d75f80791e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2019 10:36:09.0624 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q+VfBKmFGRj0tIhDmcCnVzjjftNeJQppxgLvkbu3wBtzEnMT7g2FL5Ol4d9ppbD+atqJTuweQi/3OUY4lNCpepQuoPCuU27aUd2Z5s2r3yE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4223
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_033622_069687_60A69B32 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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
> spi_mem_exec_op()
> nor->controller_ops->write_reg()
> nor->controller_ops->read_reg()
> spi_nor_wait_till_ready()
> Return 0 on success, -errno otherwise.
> 
> Stop compare with negative and compare with zero in all the register
> operations methods.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 23 +++++++++++++----------
>  1 file changed, 13 insertions(+), 10 deletions(-)

Applied to spi-nor/next. Thanks.
______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
