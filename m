Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A707D49E
	for <lists+linux-mtd@lfdr.de>; Thu,  1 Aug 2019 06:47:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bTorKVLICbSaO95XVbB/iOM5wT7LjQ2X6cKIXrKTcxM=; b=TYisoDwID0DbMe
	MKw09Qofs9slNBdh97VBiuKrhBKOpVKI5wE02BCs87UVfGIPhj7mfld/1L6i8nf5LxSvRvkoLlbNC
	UIU7JaBtRv1uolwOx6pU5evas8q1XkQWmYavuDUyP54uZx3SWVM4L8vAZuXLng6vIcdSPAU+pHW2c
	2wy04elJCsUTDDKxkdW/MtVSzKNuoUJOQRCyR/cjwYF+fr8o0Pvz/zb0N+9K6oe7b998/fnnSLMIa
	MV1wJ4y1+dNZx9pL4luacIqZWChNa9B6uvYTYvMQ6Qwmxfm+nAhk8HKq8NaX9lP9vDeBPlBlBsD9k
	rNwaTRkDjtHSB4iROfbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht2zr-0003t3-9X; Thu, 01 Aug 2019 04:47:23 +0000
Received: from mail-eopbgr780051.outbound.protection.outlook.com
 ([40.107.78.51] helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht2zk-0003sg-Jy
 for linux-mtd@lists.infradead.org; Thu, 01 Aug 2019 04:47:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aMuRDy2hBLAo+ofi1/Uxzwj+2Y9ldpxZFPf+JPNRvN2lxHNqMOQFY7jJuLMYhcvLuIUT261TY7bZQEywNh1MXzX5Ag7rVt3FK8Gc2vVONBQJBgkob4+e7NCw4tnNI/TpPrSucyNxB06kBLAv8ThM6Qth0rTvgO2wxLy8zhr1yRgvWueGWCy47gBdEYQOiGYK+EaMyVACfIJhhg1IDYVFvGN4BQG6BHWnJEa8o8MRPaYq2Wa+VRWsfuCds9cWNCuVI3nMXOnzwCBn+wyeeu4Rlge7oWc7hOREQllJ85KWCjFduyRx/T8yeWXctQxKPAsp6yopF9eZ9KcbSU6mfxPgGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MxKCiTbq4j+Vc1KBIMgWsXKYB0NIwhbDnocE3z+B2H8=;
 b=NWq+GI0mKGB7Mzm9edn/CpmGFoNpTNb8iaQB3Xa2/S3WjtwKTh1Uu4hIFLuCe/9RD9CFgYhNyx3CGZAdoEnr/yPOek2HlqG4BgQhHAzyG6EBiPKOzZZJkJG54aNziVjar51c6KeS/yq4W1cZxv6Me55HILxZb4mbgTpMk4MqWSp4pGTUT7CB+Tu+N3yAqgRPkuv4ev++m4uhOZeeK33dU9LDVbuAklRqbW2KFlFnKxzdGMMLt6dAn00XJ8J0dpPv/L146vxF+NGctfqSomnMERj+EtrMhUwgKnaNgdEFbOE1iZqQys4N3GA7MbQ58bFGD4C7UXT6Z1hQwQdG/4KjJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=xilinx.com;dmarc=pass action=none
 header.from=xilinx.com;dkim=pass header.d=xilinx.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MxKCiTbq4j+Vc1KBIMgWsXKYB0NIwhbDnocE3z+B2H8=;
 b=rAOUxsw1Tip4jPQiLZ/Dw1li2KvNflfbqQ9fxxLyt3Gp7inJIWLlNExV7iEJZT0JT9SBHqEa5dY4ENrBGiRoAeAUbXJbFMZx/W8k04y/z/veOzX2OkVCmS/nG6bZY/MRRNAQ+oZfMUyM4RsTIHhg0ll3kIlhtcpWtzNvpRq3emo=
Received: from MN2PR02MB5727.namprd02.prod.outlook.com (20.179.85.153) by
 MN2PR02MB7102.namprd02.prod.outlook.com (20.180.27.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.15; Thu, 1 Aug 2019 04:47:13 +0000
Received: from MN2PR02MB5727.namprd02.prod.outlook.com
 ([fe80::3873:a3ea:1f66:fc89]) by MN2PR02MB5727.namprd02.prod.outlook.com
 ([fe80::3873:a3ea:1f66:fc89%7]) with mapi id 15.20.2115.005; Thu, 1 Aug 2019
 04:47:13 +0000
From: Naga Sureshkumar Relli <nagasure@xilinx.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: RE: [PATCH 5/6] mtd: spi-nor: Add s3an_post_sfdp_fixups()
Thread-Topic: [PATCH 5/6] mtd: spi-nor: Add s3an_post_sfdp_fixups()
Thread-Index: AQHVR4AuPtwOhxyzBUKoXu06OueqLabkpU9AgAAFXgCAAQ6NsA==
Date: Thu, 1 Aug 2019 04:47:12 +0000
Message-ID: <MN2PR02MB5727F1EB06E3363E8978BEB6AFDE0@MN2PR02MB5727.namprd02.prod.outlook.com>
References: <20190731091145.27374-1-tudor.ambarus@microchip.com>
 <20190731091145.27374-6-tudor.ambarus@microchip.com>
 <MN2PR02MB5727FF8617B1A2FC89739601AFDF0@MN2PR02MB5727.namprd02.prod.outlook.com>
 <20190731143822.79fa7c82@collabora.com>
In-Reply-To: <20190731143822.79fa7c82@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=nagasure@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 256e44c3-e3e6-40b0-ef49-08d7163b5209
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR02MB7102; 
x-ms-traffictypediagnostic: MN2PR02MB7102:
x-microsoft-antispam-prvs: <MN2PR02MB71027DA95B4D488D3B2F97CCAFDE0@MN2PR02MB7102.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01165471DB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(366004)(396003)(346002)(39860400002)(13464003)(51914003)(189003)(199004)(26005)(33656002)(66066001)(6246003)(52536014)(54906003)(316002)(6436002)(229853002)(8676002)(71190400001)(71200400001)(186003)(53936002)(102836004)(81156014)(4744005)(6916009)(7696005)(305945005)(99286004)(256004)(8936002)(7736002)(81166006)(5660300002)(76176011)(6116002)(3846002)(476003)(66946007)(14444005)(2906002)(446003)(9686003)(55016002)(4326008)(74316002)(14454004)(11346002)(478600001)(7416002)(68736007)(53546011)(6506007)(486006)(25786009)(86362001)(64756008)(66556008)(76116006)(66476007)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB7102;
 H:MN2PR02MB5727.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: b6RO5zC6C2ycFOoTydBNWmRgBuykmuEJ7copsyKaoB4QsqCVKr2L0dByL7CBMonChSaK4Zuo5PWl5YjxHlmLwid5lRCINw9qOML0VK9tYiXDg2wpY1N+RNVJosLvSdNtTond2N51tiNaC7e2mGnDGBd9CRtH0PTUIcKmQe5oYrLLz0geClXWTUA+/Scl4JaxRxAZgruYZ+fwOenRMGK0/ZPPbul33vxn3KxW1JdcDM1gxyNyHoDtvM+/YeFWeNO3iPu9LgORHNbOroqeBP653dd0sBQUlA9BGA4M0qjjaK/9o879+BbuOmHoHXfrlHkU+ukv6/Bgs+6Gl3gmoB9HZDCYnOdjJaBRzQRS65P58i8THRMWur0pA/U7Iav9isX3A8ZNGQ7WheZzf6SWsq1kCUU78V4sBaF700CzsAzxFAM=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 256e44c3-e3e6-40b0-ef49-08d7163b5209
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2019 04:47:13.0079 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nagasure@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB7102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_214716_659897_29EEEC1D 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.78.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "vigneshr@ti.com" <vigneshr@ti.com>,
 "Tudor.Ambarus@microchip.com" <Tudor.Ambarus@microchip.com>,
 "richard@nod.at" <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 "computersforpeace@gmail.com" <computersforpeace@gmail.com>,
 "dwmw2@infradead.org" <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Boris Brezillon <boris.brezillon@collabora.com>
> Sent: Wednesday, July 31, 2019 6:08 PM
> To: Naga Sureshkumar Relli <nagasure@xilinx.com>
> Cc: Tudor.Ambarus@microchip.com; marek.vasut@gmail.com; vigneshr@ti.com;
> richard@nod.at; linux-kernel@vger.kernel.org; linux-mtd@lists.infradead.org;
> miquel.raynal@bootlin.com; computersforpeace@gmail.com; dwmw2@infradead.org
> Subject: Re: [PATCH 5/6] mtd: spi-nor: Add s3an_post_sfdp_fixups()
> 
> On Wed, 31 Jul 2019 12:31:19 +0000
> Naga Sureshkumar Relli <nagasure@xilinx.com> wrote:
> 
> > Hi Tudor,
> >
> > Thanks for the updates. With these kind of updates, we can add Vendor
> > specific Code easily, like Xilinx Dual parallel and stacked modes.
> > In these configurations we need to tweak the nor parameters like page_size, sectors etc.
> > So with the help of these patches. we can easily update these parameters.
> 
> Absolutely not. This is just a solution to recover from broken SFDP tables.
Ok.

Thanks,
Naga Sureshkumar Relli

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
