Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE02D140BD9
	for <lists+linux-mtd@lfdr.de>; Fri, 17 Jan 2020 14:58:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iLF5WFvpyLZ/do+zaRnowxVs6tJE9CdKc+05aYENUW0=; b=HhfPmKnjaoel6m
	Br1vbWjB1s33s0fJc+k0V9Ug1P48l/kipc6MnZCd23GfCxLU+eOoNxLO7DX1j/6H009kYi6hPDmGn
	7M3vxg6b5C+pS5bd06wfkq+ygGpxlwU2+B/qvfSWGcUYNJTLxqR26tRe5Go4AXrLk/WH2cmvmzkD3
	ArlR8GRdxnlSKwCURCu33sNs9qzzoBuwBs4IOrQkKDemWCBOxdHQ+4u13kzcslXo9hEfgRvkorf3v
	mmYgpN9Vu2Rwqz8mdWExJhZIdljJVA5nPWHgDkhzdX4tgDoaod5k6Vvhc3nJSICdxu7l4iyK4AMpp
	1wyVgtACYKAadvAwPxYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isS8u-0006Yk-0s; Fri, 17 Jan 2020 13:58:32 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isS8h-0006Xn-Ux
 for linux-mtd@lists.infradead.org; Fri, 17 Jan 2020 13:58:24 +0000
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
IronPort-SDR: e8tKbCMlWVYTEcavVOfVq1yoPcY9YFkJ3Gn8bp7j13OvQlidZYeSP7n0dtA4e9TPQVoPzIut17
 mlOCkI77PwkJ2lHOAuZH6SPD2thIayPOv1tjbBlYqe+EwXtVlThVguv4T387JZVy8j6k4mlbf3
 rw+FR+dgZYveUxWsLprHqypg2nYLQ/zHGDrKEZohNXQafe297uhk48QbhovaIsOeXoovDVQfNd
 4AttbrDCjUFIZQG+Y3lcQENJPuPrgpdA8viFs2kRWdsX+lTWoONRc5QT58HdROhMMkvNzGAqGC
 xkE=
X-IronPort-AV: E=Sophos;i="5.70,330,1574146800"; d="scan'208";a="62277406"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Jan 2020 06:58:19 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 17 Jan 2020 06:58:19 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 17 Jan 2020 06:58:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kdX0nttNUUpcpmuFiLYbisXtO2TrXFcwNa4H9xXhf99rYY45CAFkrIA47CujOcuBZmD9riksrKWb6Q4wKTVlv2hdAskcEnlflxQF92XCj9L6ocFdlQzua22fUndJWzlWIcYDhgkPx9oHhi5l9CnmNZVkMh3/wxUE4fTlkPAEMfm1ZbvDyUsLe9JA9OIy5gK46Y67G+ySt3la9niG/NLKb1mPUJ5QU+LPfWYtUfAc4Psa1pGx3OdKEGs0eZ0ny3AsvIHPw6d1/TMbEzoYkD8xftK6EzszFuNRDrNDC4KxJ0zjVuHMa0LmTZanoiM4BvZKSg4uQFCb29lm9CLm1HMIEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SACVl3Jq1F7iPz1B31oYhYnKrTiyp0TYSBlmJvf6s1w=;
 b=RIqLlt025GBA3UOuOkRiVf2Po413DmJq0EY/3rNAkjIFhqV8sktuMhzVRrFoPUUt4TCBAKYJEMuPlPyMtn+1b7cfpJIvvYr8prgPbHrUDch42iJI93q0tbBKIS5Gyj75rCbdWdEx/7XJCduGLvc2maEDI820GLDR/Y56s60LuIEX+QWEon65L+08Ak4Cl7lZILrIOk09unHC+m66C4+IRk7j6dahpLzeSFO2fiGR/ZHVHjQPqczmKHm11GoPuRAB0LZtw5iUOJ9kPAKaHWvn71IR0oCZDvy4+MmuV0k3NPqYYGz3Y7ckYihuucq1Lvd0SsOjTZyq8IBtE2dVDxuWZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SACVl3Jq1F7iPz1B31oYhYnKrTiyp0TYSBlmJvf6s1w=;
 b=jioDHtHnx/zk4h8Tgieczbx/v7YgscvMSf6AWjSimmcMi5IOzZ4Rj32O3UA3GQIleS3a84hJwteg9JFZ4K+no0MuZzu5y928oUIVB3aNisV8oSera06Rxe7eMEIO1VBozHsobK3yxdrXSxYD+UeeX8rypd0WVU2AfRnSRlqZMYA=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4125.namprd11.prod.outlook.com (10.255.181.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.23; Fri, 17 Jan 2020 13:58:18 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2644.023; Fri, 17 Jan 2020
 13:58:18 +0000
From: <Tudor.Ambarus@microchip.com>
To: <michael@walle.cc>, <miquel.raynal@bootlin.com>
Subject: Re: [PATCH] mtd: spi-nor: Fix quad enable for Spansion like flashes
Thread-Topic: [PATCH] mtd: spi-nor: Fix quad enable for Spansion like flashes
Thread-Index: AQHVzT4rES9Lbc+DOUOdDHVrL3ZyDA==
Date: Fri, 17 Jan 2020 13:58:17 +0000
Message-ID: <10921232.Gg879t6dUZ@localhost.localdomain>
References: <20200116093700.28308-1-michael@walle.cc>
In-Reply-To: <20200116093700.28308-1-michael@walle.cc>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 119f889d-b07e-4764-6229-08d79b554e27
x-ms-traffictypediagnostic: MN2PR11MB4125:
x-microsoft-antispam-prvs: <MN2PR11MB41258C3091EF7604AD5DC74AF0310@MN2PR11MB4125.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:386;
x-forefront-prvs: 0285201563
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(366004)(346002)(39860400002)(396003)(199004)(189003)(71200400001)(26005)(110136005)(316002)(186003)(54906003)(6506007)(53546011)(478600001)(2906002)(66946007)(9686003)(6512007)(6486002)(8936002)(64756008)(66476007)(66556008)(66446008)(4326008)(81166006)(81156014)(8676002)(5660300002)(86362001)(91956017)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4125;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mRgu615S0BNEXYSYw2nSG20kjstbAOdoL5BYg/Ql1NKOPX4ntrsnzz6H7RsOnwhPRmjzJvOVLqD4KC7Qu0gjkbGKkq8y85RNJN8pe8yv/HrPNg1Q3BLqrVi8La1zowDi+JOfRpJX2wm4AxrWRMB1xx4Iebs4xldG4FXS31GwDn3xp+tiyxS3IPaZab8ce+2+AQgB+gfRrMUbs7B25e5kLs2uvFiDhCwBGcmGYRFVSOrNBRlnO69jMgnqP3l4ZHB406L63rGz/GWVIAgJmzQEbxkK7TvcBoEvQPk6JFR5lHdNR2OtE+tPY7UVyk/U9A/DJFHd4Ok6QtvAQFPYFVnV+0e4Q80O9vSc+d34U8st1dZxlw1nXljp1g9Bf/xPwT+psNjG+mMx69HrMejMOv0QgrvhPaq2Ozl/0svQXLCkPhA+eX85++x8o6Hg74gcdYV+
x-ms-exchange-transport-forked: True
Content-ID: <15886F65C86451439820E63BB02DA4C0@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 119f889d-b07e-4764-6229-08d79b554e27
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2020 13:58:18.0094 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fMAf1QTf+zH0jeDW9wq4CAl5gQ8JyEgCPjQhmZLRkrzXWYFgpSPQ/shisgUqbMgZxIbJc6dBwAC5hId/uQIvfvMpYdAhYKfjSFw91c49knc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_055820_050125_A360108A 
X-CRM114-Status: GOOD (  10.76  )
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
Cc: richard@nod.at, linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 vigneshr@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Miquel,

Please queue this to mtd/fixes.

Thanks,
ta

On Thursday, January 16, 2020 11:37:00 AM EET Michael Walle wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the
> content is safe
> 
> The commit 7b678c69c0ca ("mtd: spi-nor: Merge spansion Quad Enable
> methods") forgot to actually set the QE bit in some cases. Thus this
> breaks quad mode accesses to flashes which support readback of the
> status register-2. Fix it.
> 
> Fixes: 7b678c69c0ca ("mtd: spi-nor: Merge spansion Quad Enable methods")
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index addb6319fcbb..ea0429448207 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -2140,6 +2140,8 @@ static int spi_nor_sr2_bit1_quad_enable(struct spi_nor
> *nor) if (nor->bouncebuf[0] & SR2_QUAD_EN_BIT1)
>                 return 0;
> 
> +       nor->bouncebuf[0] |= SR2_QUAD_EN_BIT1;
> +
>         return spi_nor_write_16bit_cr_and_check(nor, nor->bouncebuf[0]);
>  }
> 
> --
> 2.20.1




______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
