Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A28140BD1
	for <lists+linux-mtd@lfdr.de>; Fri, 17 Jan 2020 14:57:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aC5OxtzfqMxBBERwRQ3LpAa70kMblVG8gl4RFcRn/do=; b=l7fyIETDSkPA0a
	/Iae0V6g5W/X4l97lMw2y14o3sgZwDTyzoFqaLMLBcWQI3Xgfa/wtE7KNzN8lP5n74PH7utze4ifm
	KQCB9yuaA/EeItmaf5hZzC5o3WOhaI0OfA6xyoOVGV8zV+Ad8jOJBPM4nNbvYtDKqmlcc5l35ECS0
	DN1uJwvG2/jL25DwxCxV1CrMqxsUqI6Z4uwnqqDuLeOpFvQWjp8bbguOm2S24sB4VCwpWgepTkhzE
	ToMEQU30DLvfNk8SEurc/vfJV+V7X+sTFWPPf5tuvbhE4XC/quQVfHQjqqHPvwnDD8V4Rjcj2IGDL
	z5n9bY/t3sZISe4VAwdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isS7z-0006II-S0; Fri, 17 Jan 2020 13:57:35 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isS7l-0006HH-KZ
 for linux-mtd@lists.infradead.org; Fri, 17 Jan 2020 13:57:25 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
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
IronPort-SDR: 7Jd4np2x5iyJ1VTskUuV1In+XiK39WY2mB+lfr7gRUT/3Fdq0P42brvB8bRDFG96OwhIHW7qqu
 Wk6iFI+8DA17PRNoT/s7+sxUW2+PrGFJec9qqdfJcQxlXyWcItEHCgJfhsn8M1tfwPJrtaGap2
 1IzRQmfwE9yU+oLj09pf/u6mLTPLILrnhll49/VtqVKISvV1JcdzUj+S5LiuRurFe3o+4Eho0s
 QNM5aApHeG1LPHmTEpjczzO0hJRyeq2gSI2IhbL0pKXsw8ySic0MrJGiqjAq8VABBS+TexOBs2
 e4I=
X-IronPort-AV: E=Sophos;i="5.70,330,1574146800"; d="scan'208";a="62277244"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Jan 2020 06:57:14 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 17 Jan 2020 06:57:08 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 17 Jan 2020 06:57:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bp9g7+XvCnYHvZRCHHd1qopTPI3OC/pKQwuU2NqUD+eOnl7QPCEXLi8f8PoiAYGhVHiPscwKUiBGlji+zYYjH3YUDZPXOxsNvC3gF3zntNJQvJTwalKg8/miStGdbYMivcYoa+J+sH+Aw/eF/8OjDT65EceWZZBn4i1FaiSLPatEKeuC3JSHqOLRitTO+6ic7pXaPrl6Wf8OuxdR8dNa6lSsZTJYjk2N+JKR37K/kVkCIYiz8yMHAcRPZQc4oynNovQGUqNyJgBdK+Th4FgrSSX86pZPxx4ZP9M2nnVhrHdcVWaM0ilsfZWOoI/8g4u3vP+en6SZfMZb1yWqIL0vZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jbOM6vT24cGNFBXttd4pxXe6dCi83XMCvd8Az9/YEeM=;
 b=lNTAFGzB9aj/8BOV4A8jpLDbLFXg0yMKff5dIMOo8eI5IYRuJGElYPFDeo9vQde8YF2FFmk2VGkxy0GcjGq+b11G0wb7wu/9Iyo8L11bzpyCuQUZePJF/Oz7iiomVOU198XxFKonz4Hics93AifideuNFoo88SKq5foqrtm18Rzy3g8BgcjJvZIuTcBNvnrw+dAGXwglzV2iudY6P4v/xM1T3AIRCt7tFJHjPqrC/WD0f8EhuSk8BSe/dR7Ud5uXz1pNpNapauOJhzbwzc4JDsmDOyiEMuwrRP+ibwGOjpKP/p50gupX11IDd7EA1I9ClLSd7TSRJ2W2XZHWbda4dA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jbOM6vT24cGNFBXttd4pxXe6dCi83XMCvd8Az9/YEeM=;
 b=bE4/kovbD+n8xksYeLcs9Q+q7bpuQ9/ATLnQNOWl/dG2Wks9R1G6n9+SuEhAG0wQ7OEAn4d+mF6vTPGCl5HgLKZ4McxACRkJ4aiw6dh5ulAuxouVRzYfcMsJf6qtIGkmm9m+I+sdl4N3ZkU/K3uyBApS6A+5XTrSBe2/XkxJ31Y=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4125.namprd11.prod.outlook.com (10.255.181.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.23; Fri, 17 Jan 2020 13:57:04 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2644.023; Fri, 17 Jan 2020
 13:57:04 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <miquel.raynal@bootlin.com>
Subject: Re: [PATCH] mtd: spi-nor: Fix selection of 4-byte addressing opcodes
 on Spansion
Thread-Topic: [PATCH] mtd: spi-nor: Fix selection of 4-byte addressing opcodes
 on Spansion
Thread-Index: AQHVzT3/7b4WTBnS4UypfxmdSedmUg==
Date: Fri, 17 Jan 2020 13:57:04 +0000
Message-ID: <4519613.SuZX2zaz4Z@localhost.localdomain>
References: <20200108051343.1939-1-vigneshr@ti.com>
In-Reply-To: <20200108051343.1939-1-vigneshr@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 392e096c-ee0e-4af7-4f5e-08d79b55224c
x-ms-traffictypediagnostic: MN2PR11MB4125:
x-microsoft-antispam-prvs: <MN2PR11MB41257E823C205389F1E2FBF3F0310@MN2PR11MB4125.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 0285201563
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(396003)(366004)(136003)(376002)(189003)(199004)(6486002)(6512007)(66556008)(8936002)(64756008)(66446008)(66476007)(9686003)(76116006)(91956017)(81166006)(81156014)(8676002)(4326008)(86362001)(5660300002)(66946007)(110136005)(316002)(54906003)(186003)(26005)(71200400001)(478600001)(2906002)(53546011)(6506007)(39026012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4125;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R1fE+NknBWapWXqDQFAWDxrPvwj/n+wP4XUiGmqrhI8k97LQykU+Z0mqkiu6t9ngLYMRx4lL+YhXxk7zhjNgHPR78NbGpYom8AtAa8Ed5/Cz7dCsA69s/LB2yDRj6XS4Mue/kUCidxPucY6x3cUu/TDXxdAHUf/OMj9eD12OsYIwNI0B6uaD0i8GpnQ2gjK+9Cvz9uSUGU04Y+tzQHfotbVizFs2YIanixut5T3CRouil9G0HG42j6wukd6x9Kpo1EtOvFN7fjE7esIQAmR/6bJgmYlgRAbG2d2hSjz95uV4zEjlAVZmxabnzvG26p0bO9BLLuAZCbZKd0XDA8OklQ1luGcVgH9pjPy5nVsRM7DUMIzCQcKLKFmhWiCajUc0yqVzgpz1PBzIg9N2OzToF/t4eW9yAsL7uHv4+FizvsX9dO7mcQmg2myV+XV2Vj5nF3TwJF8HFFw1RhmiDXMo1OYizV/bjOwmBSc5tFgEPFh7p5B5QiqwNl+lw+QJNI6E
x-ms-exchange-transport-forked: True
Content-ID: <82E4067AD1AF244AB8F64A46585AB2FB@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 392e096c-ee0e-4af7-4f5e-08d79b55224c
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2020 13:57:04.3667 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JIyF0Jlzx1L0iRnLWnpHs4TKvq/ZbHiiWz640XsgXAZkgxdHVX4acqIKH9+d0Lcqc6o9Ps2lPhnWIyTdTfT8VN/9UqDp8ervtDq94EBGfGs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_055721_708198_FE7A7520 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
Cc: richard@nod.at, linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Miquel,

Please queue this to mtd/fixes.

Thanks,
ta

On Wednesday, January 8, 2020 7:13:43 AM EET Vignesh Raghavendra wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the
> content is safe
> 
> mtd->size is still unassigned when running spansion_post_sfdp_fixups()
> hook, therefore use nor->params.size to determine the size of flash device.
> 
> This makes sure that 4-byte addressing opcodes are used on Spansion
> flashes that are larger than 16MiB and don't have SFDP 4BAIT table
> populated.
> 
> Fixes: 92094ebc385e ("mtd: spi-nor: Add spansion_post_sfdp_fixups()")
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 1082b6bb1393..cd47f07deff3 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -4783,9 +4783,7 @@ static void spi_nor_info_init_params(struct spi_nor
> *nor)
> 
>  static void spansion_post_sfdp_fixups(struct spi_nor *nor)
>  {
> -       struct mtd_info *mtd = &nor->mtd;
> -
> -       if (mtd->size <= SZ_16M)
> +       if (nor->params.size <= SZ_16M)
>                 return;
> 
>         nor->flags |= SNOR_F_4B_OPCODES;
> --
> 2.24.1




______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
