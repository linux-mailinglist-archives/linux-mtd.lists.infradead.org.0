Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD67A1695
	for <lists+linux-mtd@lfdr.de>; Thu, 29 Aug 2019 12:48:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OKaQqbZe6S+iXfLAbzvdQYxJ39/eesK7zK2RLQiTBfY=; b=RUP4gjM/tlZ54C
	87jzzy2/VVVNnozPjPipGDYMVoi1p/kjdAZoMcEJRvhXf1fmfCe8b8hlv4GaYTUcyESRcyG8PHYw2
	fjI6ReIZBfFuHzF0XYcfSSxrU8wycOejv/LlzbUHVT/qwZQv+Kxrlm0PWCB+kScUYejVreDHDayKP
	BsU74uLUMVqiJ8r84+G2zO9gllULRUxKlHyqbeDWQBnuhfODHMbO45Cwlz+E5b3UbdEC1L9lXtoB4
	L8E6evMgoqYB1+eYi9IWIrhSyRshaT34siNcEK/ZM3nwdZAEuDG0uwn3FecVpLWEaEejlq5FjlXxw
	f+XcQHa1jEg5/XvRU8aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Hya-0006y4-S4; Thu, 29 Aug 2019 10:48:25 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3HyP-0006xi-Mz
 for linux-mtd@lists.infradead.org; Thu, 29 Aug 2019 10:48:15 +0000
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
IronPort-SDR: iVGy/hPuWOAdnKIJiB0R4cw0FkNyRWV6K58ThpQ137GeUhL0qiGNLIhJy2oRxfcbypZJMQpI25
 JDWgrJI4Q6Bl42BsKzv/o8DeTL1G3yyWpAU5DjubQ1TLLrbWzhAUODUu+LNutG28fU12gVbgYh
 JzugU7sfpYDuwAUQHtPVK2SUs+E9IbcfYgt9nks6PMbr13wwB+EiB4CJZhD1F2mar+8BXx4YLZ
 udAvSH2Wcnmn3CbkATRrRwgugfyT10/sm/bQNGXD/abBOT4GWUrLObiy8w85as6IlfkE5EIPoI
 /kY=
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; d="scan'208";a="45451806"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 29 Aug 2019 03:48:12 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 29 Aug 2019 03:47:50 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 29 Aug 2019 03:47:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EmSFa3V7l0F8BPWt9cNIvTOjZs7MYliYdhKkqE1dw9z96/qEj+Pvsn6a7ef/DGjeq+ezCrM4ymAveJqSOGvt/Fx2laNOpXtFLHF7X2dtSObAyc7ONg0dz9/A9mh/NJWPFmP2ZOaUOs+atOvAQJe1yi7Qg4uRLPmMSx7VAXVlKLgf/Hwp7m1cIOEpUZXnRkDMS49aV7TFajTMMCZgKMZFVPfqVIRpRnSyLv18jeVdVoJNREoEE1C41Gcc3S1/DLU4hTVkmaoORI6Q0m7CABAEc5bqwH0NdvsfVHBL6Bs8AuR7n4Fgg7T0Z9g9BNnJ4UwJtuwz0icgtQbR8oynIOjGNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4Pym7Ns0t4KOSsnx17wGp3MR1YK8sT+UFldDB4Da3TI=;
 b=kkpRIR3LPg3c113742kT2eyhAjU+XyVePntQ5wmyMTPYXTyNfMDovmKwoR860djwV2fEQ+a+HB4u9MiGElCDykqV0cs+s06tktFMKKdzxAK4TGzMGoqhMm9qlnvCXXJwofv/riCKLcmWzdVCHDwmbMPb3YiSfOfl1PTlXVCAtnPMDCAz9ExSVOtVNUZI7RADrVhtzqCNjJx0t1/1PjIt0KTuSh8y4gYyuWTk0HokuonGu0BfESPHau7XhkBSRZRWbb2Zn2i/cua4J8s4xf+glW/hww8pDQdizIk2B9uDVzDB0IfLl7tTmxgzo2/si8S3HJC9cVTsXnngAkKnH7+Ttw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4Pym7Ns0t4KOSsnx17wGp3MR1YK8sT+UFldDB4Da3TI=;
 b=uzS6nlkLiq3ZHn/VcDmkyVKgCE8FNwRk6Y6P5CIV3S/raWOW1J6GxIgb+m0WD79Pu2AwjQfGZ7v8TP/eBCQSdE4l2LBX8H8ontSBuou440BYTOpldzkOV4SK4mzoxAbcB+UEXB0scB6yTE4aaPdhqK9WbeVPtdkygC00+lHZpTE=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4223.namprd11.prod.outlook.com (52.135.37.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Thu, 29 Aug 2019 10:47:52 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5%7]) with mapi id 15.20.2199.021; Thu, 29 Aug 2019
 10:47:52 +0000
From: <Tudor.Ambarus@microchip.com>
To: <zhuohao@chromium.org>, <linux-mtd@lists.infradead.org>
Subject: Re: [PATCH v8 2/2] mtd: spi-nor: enable the debugfs for the partname
 and partid
Thread-Topic: [PATCH v8 2/2] mtd: spi-nor: enable the debugfs for the partname
 and partid
Thread-Index: AQHVL14Ak8o85zKoIkCzjNpU7IhbEqcST6OA
Date: Thu, 29 Aug 2019 10:47:52 +0000
Message-ID: <3b209c11-e5db-5006-5dd3-574c9bc42bfe@microchip.com>
References: <20190630160711.178679-1-zhuohao@chromium.org>
 <20190630160711.178679-2-zhuohao@chromium.org>
In-Reply-To: <20190630160711.178679-2-zhuohao@chromium.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR03CA0052.eurprd03.prod.outlook.com
 (2603:10a6:803:50::23) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4fcdbae1-b107-47b7-3e41-08d72c6e5782
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB4223; 
x-ms-traffictypediagnostic: MN2PR11MB4223:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MN2PR11MB422316A8719CFA2182845A28F0A20@MN2PR11MB4223.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0144B30E41
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(136003)(39860400002)(376002)(366004)(396003)(199004)(189003)(6306002)(52116002)(81156014)(14454004)(6512007)(81166006)(8676002)(305945005)(478600001)(7736002)(36756003)(86362001)(31696002)(316002)(2906002)(3846002)(6116002)(110136005)(6486002)(966005)(6436002)(66066001)(54906003)(99286004)(4326008)(26005)(11346002)(386003)(476003)(6506007)(2501003)(2616005)(25786009)(446003)(76176011)(6246003)(14444005)(256004)(71190400001)(102836004)(71200400001)(486006)(53546011)(7416002)(31686004)(66446008)(66946007)(229853002)(5660300002)(66476007)(66556008)(8936002)(53936002)(186003)(64756008)(4744005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4223;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: V8qMILuwhwe/m7ShVaW+E3cyWOIxePTQQ5gZh6IpKc9ykXg7Ms8V3yQHFY8H1h3MjQwzLEFRokngiHpsDSoX3OJjN4T2CmMxMuh+POWxk8dxravTjRmImrEtIFop2k5uzJbj60eiqJIi/D3ewycntXHTyjfFRoD63euvpCw1EzqcGH5mF/ipt5xKv9XHlBPhF7HwUYs4ZHOZp4w7v801Yh6d5YeVfqeih5xj0oc4Qv7k4ZwbILIeY8ZBcA4YMA9ELTXcwy0sCJC6VhGpveHThi4023DS58DElIo3qFXdbFNr7MiV6HLyadJkzxGXueYHDOkZgE+5xpgG3HYvHXNkcUfgKi+Tzyjx/HrgbRA5292sxQuM29j4Go+5Gf+C3umOrwoNe/AW/5vvEBChR6c0wLeZs5GRaIDlrDam8HfNt64=
x-ms-exchange-transport-forked: True
Content-ID: <5BC25096BFC2B34BA815A9F29AD01A99@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fcdbae1-b107-47b7-3e41-08d72c6e5782
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2019 10:47:52.4661 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +aMKjgPZS2a80QLAQH4Qsr8rnUL4AhRtNiG7mdpeEGegw4XpZK01fAvGszHjc+Kp/pjYR+eDFp5p4XO9YZb1cxneICdYuLALXeXgy/pZA8c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4223
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_034813_903948_2BB4367D 
X-CRM114-Status: GOOD (  11.07  )
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
Cc: drinkcat@chromium.org, bbrezillon@kernel.org, richard@nod.at,
 briannorris@chromium.org, marek.vasut@gmail.com, boris.brezillon@collabora.com,
 computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 06/30/2019 07:07 PM, Zhuohao Lee wrote:
> External E-Mail
> 
> 
> This patch adds spi_nor_debugfs_init() for the debugfs initialization.
> With this patch, we can read the partname and partid through the
> debugfs.
> 
> The output of new debugfs nodes on my device are:
> cat /sys/kernel/debug/mtd/mtd0/partid
> spi-nor:ef6017
> cat /sys/kernel/debug/mtd/mtd0/partname
> w25q64dw
> 
> Signed-off-by: Zhuohao Lee <zhuohao@chromium.org>
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 

Rebased, fixed checkpatch warnings and checks, moved the call to
spi_nor_debugfs_init() immediately after spi_nor_get_flash_info() and
applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git,
spi-nor/next branch.

Thanks,
ta
______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
