Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07222129F9D
	for <lists+linux-mtd@lfdr.de>; Tue, 24 Dec 2019 10:05:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JNSF23leFq7pPNKXVxSLccMQdBVbE1TsrmfqwgTtAIc=; b=lWudDF7VnLfxth
	NSqfAHbmPwmCwONmDSl0ioS2G2+JPRn5qf/QYO+UjgLLZgpsK0k1GvfUFBE/Gihm1SiU9nFbDGeU2
	hz0clKissj4NpKlUM+aAC33LzzCPdZHsTDDGUTIQlDhR29JcafjzsoFO1NAItUYVe5T5OSs95ciFk
	8PR0usrfsm53TVPRu1wnMCnHzZHiFoe4+m6SvwwmfC9YDdo5oIuM4xRbMtTf3Y9Ml1RoBYYUm9lCO
	1+1hkWpE1llTYfHn6U9wv/41gl7bwyOp8NsZZ2pf2WYOIPnBq0kYpKXAPeA5PhKiNpE0zwQidWbI4
	OfUQULMfPg+42Mut2GoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijg7y-0002aQ-I0; Tue, 24 Dec 2019 09:05:18 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijg7k-0002Di-PN
 for linux-mtd@lists.infradead.org; Tue, 24 Dec 2019 09:05:06 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
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
IronPort-SDR: 46+EoLpnS0ze1u7lJ9aVYKPL/33Ud1U1O1Ax64bD+wlue1s0wglcqAQCD5R2QioxLFwlqy4HYJ
 5lNfjj6itT9nyhLhukbl/UbKh74vt1o/OPH6U7J1v+SAENxr6j7msLq0oxReRvGEiBXv3/4uWL
 cQRLxGC/o/6MCWwi3BLgkboI7jEmEAf+7BtUd2yfzPgg7p8U6DDeSpRCpc51bIM81Bn1jS1Hxt
 5Q6xv+Fgn1IBtOSc56TQ4y3a8VK/j8YZzU9U4Ck1WGR3DBjnr8JwVZD/2xAqyJsjTEjuCtp8wU
 S/4=
X-IronPort-AV: E=Sophos;i="5.69,351,1571727600"; d="scan'208";a="58831388"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Dec 2019 02:05:03 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 24 Dec 2019 02:05:03 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 24 Dec 2019 02:05:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RoJavX/rbGyyYzcp6ArKoScNcyHsloaRGZRD9o6peAlkco5aZeeIZ2b1SXT5ONawt4SQlC/OFBqeOTd72xDZLYGrppey+Zy/VBTEXAZoMAE/qHiuV2iJl2t66r2Zq8eny6+OLJXEsk+sGoEKmxRLaFmF8zhre/fZKfidnpSXnHa/XZhLxKcOCjD80aV8+a/kmOP92vkroKt6TflWZajkMHgGIkX5Jygr9/XRNrqir0vIm3Z0TF6YxIfZAxpRV/Y+eoDvg8FZ0u4lOPaSnoMi/lI8Q5wsnMpfxHkUjAhGzKH1saDLcTlFVyogs5nLA7ahbxTj8Ow1zI561wuf4KpNUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eC/8JxNHlf5YMMv5Qdvb/Ju+gTC/mR5CIS3F1DgTjmw=;
 b=azaoAR9NWz7iXJFffL+EBLbbzkF6CNiHpUI4m/hxDdPsPV+P/XdLWG0AwMVZdVBSWLvDXqr+MnMFSa7S7kIuihKvKJ2skcDl40j/4Bc3bH+63Puht3WoKwiYfXERt0VISY+HkJKgX9j9IlgC+2DhaWjXmQgmzxPTvU0DfSPA3JFcsJtGQgfxQWc04s5CjSDnkhiPorFsExQ46yIV3TpYHs3dyL7YpW0Wp02dbvLBYBAZQO56HTd1u/3NUkEcs+honi0DwJuK8QDjKmckjM8D9xSdD2T+4H/WmyadR7n4tWUV2/lscPVI4ztYUaN0SDEGTZEQKLLTQskZyopoZakQDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eC/8JxNHlf5YMMv5Qdvb/Ju+gTC/mR5CIS3F1DgTjmw=;
 b=m5pQkqHfWAu3jOtZ0THw70CjjTYHqW9Og1hUc+tOVjYivfgQZ6K/Xx5K7/W7EDK7mYZUSoN4mDGFVkMSevnkL6rRCIRnnAG507IeKXd/StfHL/ZN8Q/6UVSOCS0KCOXeVD8fZQFdZ8/GqTcWqgO6eg/j0ZX1Ou/mPVJe7uDG/UY=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3631.namprd11.prod.outlook.com (20.178.251.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.13; Tue, 24 Dec 2019 09:05:01 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::71cc:a5d4:8e1a:198b]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::71cc:a5d4:8e1a:198b%7]) with mapi id 15.20.2559.017; Tue, 24 Dec 2019
 09:05:01 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>
Subject: Re: [PATCH 0/3] mtd: spi-nor: Update mt25q/n25q entries
Thread-Topic: [PATCH 0/3] mtd: spi-nor: Update mt25q/n25q entries
Thread-Index: AQHVqzmVtv9sx+38aUycB51V8ngQ5qfJG/6A
Date: Tue, 24 Dec 2019 09:05:01 +0000
Message-ID: <a64202b8-f425-a6b7-582b-802f2d16599a@microchip.com>
References: <20191205065935.5727-1-vigneshr@ti.com>
In-Reply-To: <20191205065935.5727-1-vigneshr@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [86.122.210.80]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5a18cc48-9f6f-492c-353a-08d788505c07
x-ms-traffictypediagnostic: MN2PR11MB3631:
x-microsoft-antispam-prvs: <MN2PR11MB3631B0A170A3FFA4C7181AA5F0290@MN2PR11MB3631.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-forefront-prvs: 0261CCEEDF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(366004)(376002)(346002)(136003)(199004)(189003)(36756003)(71200400001)(26005)(6486002)(66946007)(66476007)(66556008)(6916009)(64756008)(66446008)(186003)(91956017)(76116006)(31686004)(316002)(54906003)(2906002)(5660300002)(478600001)(4744005)(4326008)(53546011)(6506007)(2616005)(86362001)(81156014)(81166006)(8936002)(8676002)(6512007)(31696002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3631;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TG6lK7xjV/BtjC7Oesale6A5grGyOWU/UwMPyEsjbe9eAL+MtaxH6optIx4PD8yyjSQNZ19GdYLS3vNIJ/IxFZj0fV18jH1c/oM451HyCfzP0enU/s94PNV29d2oAh8hoyx/rJnQHezYXZEvt2e+J6Ym3AwDRZA/tEeMPR0zhWUMch9IjXWnjOHI2dXK9zo5ankDOZ22uX6MwEc88Ui6BAFaEh+zV3lZsWbwbn6pez1W3dqkYLk3glVRN7hcmsBFVzjNwMofvfkzs0fp8UwS6bx6BUy0cNUDctya3lMTPv0Na+PlWbiiIH3fTp3LVDJMxfdtZj/J0CED3aYbrIEsNsSaecEVirdvInrmv0KA+lUuS2dtY6M0xPe8z+roFS9cj32c8wrsDRPUzBpgeQv5IyrDuVo/yrVBOpxBrKqLPJlhJawRoL5FV2lk+Ly5AW2F
x-ms-exchange-transport-forked: True
Content-ID: <2E879612C79C9E43BB3EDC431C3F70CB@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a18cc48-9f6f-492c-353a-08d788505c07
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Dec 2019 09:05:01.6843 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eeZIBLhEh6v5MhkEw7Sxgg7lG3WqMcKOpYTNmox21PCoH/SiUuIzuvMu0wSl2NkwC/qNXUZGlaCYY6GlL8+enHwwrsRxY+HbaWlgLZMtYxA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3631
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_010504_878051_8CA15E01 
X-CRM114-Status: UNSURE (   9.06  )
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
Cc: richard@nod.at, john.garry@huawei.com, Ashish.Kumar@nxp.com,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 12/5/19 8:59 AM, Vignesh Raghavendra wrote:
> First patch splits n25q512a and mt25qu512a into two as they are
> different devices. Second patch adds support for more mt25q devices and
> last patch adds USE_FSR flag for n25q entries where missing.
> 
> Tested with mt25qu512a flash
> 
> Vignesh Raghavendra (3):
>   mtd: spi-nor: Split mt25qu512a (n25q512a) entry into two
>   mtd: spi-nor: Add entries for mt25q variants
>   mtd: spi-nor: Add USE_FSR flag for n25q* entries
> 
>  drivers/mtd/spi-nor/spi-nor.c | 31 +++++++++++++++++++++++--------
>  1 file changed, 23 insertions(+), 8 deletions(-)

All applied, thanks.
ta
______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
