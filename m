Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B60FBEAACA
	for <lists+linux-mtd@lfdr.de>; Thu, 31 Oct 2019 07:58:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pWPW4DCxYVSN438wdeMvZTWPckzEaGXek4qfBuZ1b3o=; b=H+02xDg7n7A+3/
	/bPdAETTSKfO5gnaSc6A5fklvp6uFTfvnJiGJV+J952X7K2aH1BIiZOactut0uq5BJXE7tdZHiy/4
	l4Be0UpUVismVXBvTeMIZK8d51QnnBWa4jHG3XS8Sl09bGgRtKCx3agY2M0rJxRkizZIrHISDFFpR
	P++Lpp3/ife9ajvOaorPQMDYP1VgtP4HH1wAXOfeRpzVfCRGwjrhX9LlFyugzc4QiMisc21VYNLc2
	7FKdmukKvmgfard1+nks+enztsF9U+Q/5OM6irHiLDe6nFzNDl0FvEiEUl/oLpu4nmGXpPLXox1r0
	8o08/LNGLFNbzxgHgu1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ4P5-0006Q8-0d; Thu, 31 Oct 2019 06:57:55 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ4Ox-0006On-BA
 for linux-mtd@lists.infradead.org; Thu, 31 Oct 2019 06:57:48 +0000
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
IronPort-SDR: z1MMMfP0zXsHchObOUpt5bCl9aMNs1ERM0orhsmB4d46iH8CZm+Kteg2YUEMxnNKFbofuP2qfY
 Vzuzt82tESom2Ceqolaw4giHu886OEo+3jd3NT7NJCyLGSjzkxXUtneNhRpP7eRet5Iac530nd
 qDBki1d27wY8W/yVEtt0IoP0iFPAOr1KFPgNLy05YAns6bfwuRZyFn9ucoy5izk/MJHL9IvN8r
 t0vop5mOVteiRqIEC7oCVgZCNJ2wpmQnoy2fK8D7bUS8t3i5uETwM1kPZNRy5wVWO4xFnV0oEL
 KK4=
X-IronPort-AV: E=Sophos;i="5.68,250,1569308400"; d="scan'208";a="55099711"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 30 Oct 2019 23:57:35 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 30 Oct 2019 23:57:35 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 30 Oct 2019 23:57:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bga/UFWTVVK7Pv/GBkH3LxoPTHUkFYIT7hp4I3RjeCDR3cmcUOTRXLLEEDmD56t0bYEk8OGZaNwZT3rh9tRwJ1rE4PT1AYBFHk+5dW7tFDVVKAB6jF+bKtYEs99/TTrHkJgnjKgcD6ZRuPdRvDYeFo0oKoAxG+rtJ7Xwd9wEB735ShWxzxXnpZQl0P/S5Temt2tAga+MTf3d2IMgTIx0LEa8ey0ULmSdS0DCGtVP5zxMx+96wWx/P3Z18HZez5v6wdFmKwfToMp9la58vKTjzcf8iLNw1WYV6KK6fJMCb52bY61+8wyNJMOLHW/1f0IOUHGpYSI/9BwliDIif3fVbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cEfq6xiMnM2BenQGQqEXViaFIhugorfmHfTxDciUfEk=;
 b=m30mEsaD2Fot3Cpz07rOZz4zkUNScAGbbOloGxZiC7614gFBUheFW9Z4HYHALNdzoL4l7UanuunSvnEm4osyr3WzNPO457CLeytWqyfOCg+N0C6DVHl4oi6eZckceaMbog578BvqQ+u1VNOCtQ5T2R3cHO8JYPDkmA9vdFSnxzLatQYFwfSHbdQgohHL7SSpxN1w1FlsrR7atSjnd2zTILRbK6k8t3H8PSb+3z4RMPwGXuB9yO9ZkSrjmREdSWBYQl6kLKhu4mdYHI0UqCPc9RpLfGbIPFFQcpAuvG+3vVI2moCWGiq4TO4cRTO3oOc97Q5vZNhTYQWr5gbqV1RV0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cEfq6xiMnM2BenQGQqEXViaFIhugorfmHfTxDciUfEk=;
 b=seSAw14TAY7Q5uCC3RLpNrmbM/g+of0hErDrjf6EQFbJJ45wWyNQprTcJsFi2RnB4/Y/KNXpUjW9qc2J57ZJuVL2EPs0k+YlJhDaKu6z8Wqu50baU7m0JxKLzmDCmSeDMIYFpSIWwjk8oxbipIAUAjfFBVHzaNz8FRmTQ5cZWoE=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3758.namprd11.prod.outlook.com (20.178.253.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.24; Thu, 31 Oct 2019 06:57:29 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457%5]) with mapi id 15.20.2408.018; Thu, 31 Oct 2019
 06:57:29 +0000
From: <Tudor.Ambarus@microchip.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>,
 <boris.brezillon@collabora.com>
Subject: Re: [PATCH v3 15/32] mtd: spi-nor: Check for errors after each
 Register Operation
Thread-Topic: [PATCH v3 15/32] mtd: spi-nor: Check for errors after each
 Register Operation
Thread-Index: AQHVjkppKS3wm6HFREK56+6iD+phXKd0VEwA
Date: Thu, 31 Oct 2019 06:57:29 +0000
Message-ID: <91a9b400-df16-8b9d-6503-a67b9f23205a@microchip.com>
References: <20191029111615.3706-1-tudor.ambarus@microchip.com>
 <20191029111615.3706-16-tudor.ambarus@microchip.com>
In-Reply-To: <20191029111615.3706-16-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR07CA0256.eurprd07.prod.outlook.com
 (2603:10a6:803:b4::23) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [86.120.239.29]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 16adad27-0090-4f4c-e446-08d75dcf983d
x-ms-traffictypediagnostic: MN2PR11MB3758:
x-microsoft-antispam-prvs: <MN2PR11MB375871337D47BDACC2868804F0630@MN2PR11MB3758.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 02070414A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(396003)(346002)(366004)(39860400002)(189003)(199004)(66066001)(2906002)(386003)(31686004)(66446008)(36756003)(6486002)(71200400001)(8936002)(99286004)(6436002)(6512007)(4744005)(8676002)(305945005)(71190400001)(2201001)(7736002)(86362001)(31696002)(25786009)(81166006)(81156014)(66946007)(64756008)(14454004)(6246003)(66476007)(2501003)(256004)(478600001)(66556008)(53546011)(102836004)(76176011)(6116002)(26005)(316002)(54906003)(486006)(476003)(6506007)(5660300002)(3846002)(186003)(11346002)(446003)(2616005)(52116002)(110136005)(4326008)(229853002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3758;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KE7B8DTUMEnhnM5DxhgAT1xCfIudQfPW8b4rbm/9BGUyYr1nAoos/eJzQqrWaxhH1boliHl+b80x+KGlZ0yAiwBnFEN8WMo2nkk7R6H0C52vJTgOIELsDXfFMWeomFpFtBGp9sC6JNsnLxjCgYkZBgkfypEUyMmI8jMAvT+fgDNWnBCcnnmjSioALzQ+Bw4F0Kg7oWWqQkUjZbVWQTdIBk3454FzI9McMj4J0XDXZBUf20zprpARgHYU2rRf0RTXlt3paCPy5Gkicxx7Qx5/BV3GSK6BE/wE0OmciNCOms0eFWcXwCa+eOcyqSJaOeeQhXG/b+vAw/sqQuH0J05BlovJRKrjZKnDCCnBW/XAreET6mt5o8TFMW7SUwc89sn9wu/lJi9Ff9fOo+TLyBFXjA/YdGVgOBFolQSW4cPhYOMa/QlkH+YNpB2UNaZ8xTXN
x-ms-exchange-transport-forked: True
Content-ID: <BFFFAB3609821B4688F975E2D0CE49DD@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 16adad27-0090-4f4c-e446-08d75dcf983d
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2019 06:57:29.2949 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KLya4kW+8q/GJOrX9RuvOYHXZQbFbzLbrma/orHiftaecgmgP0yE7SrtYYuRBLiEqAGiMiiPKsPl7GvY55E5Pe3z9orYrCTVXok0TFCiJvU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3758
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_235747_389199_1E7A9F14 
X-CRM114-Status: UNSURE (   7.59  )
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



On 10/29/2019 01:17 PM, Tudor Ambarus - M18064 wrote:
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -595,11 +595,15 @@ static int st_micron_set_4byte(struct spi_nor *nor, bool enable)
>  {
>  	int ret;
>  
> -	spi_nor_write_enable(nor);
> +	ret == spi_nor_write_enable(nor);

there's a typo here, it should have been initialization. Will respin if other
comments will arise.
______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
