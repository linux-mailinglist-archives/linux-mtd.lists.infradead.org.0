Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD82C9CC60
	for <lists+linux-mtd@lfdr.de>; Mon, 26 Aug 2019 11:15:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Pg2StfzGHu6dEp70Jt1zvwKtYW8wJ8X4GRbkHe7pcg=; b=VlgV0OFNH4yO8J
	o5rFz2umrnADjDmmNmdVYaa5y2H2b78lqFpr/uBgxGZofK5ri3gCTX2xL18BuaV3hRB/KKNZFiWt1
	3MEzL7S8J9UBHDWC+/WAdUdvEJEktEl2ntaDdeknmwrRB4Tps72+RJ4jySyL/dEN7NNnw5EYCiQNo
	4DL51TcnTBB8U8E4NRW1tAMZ9WPuBkZ3swRmPAYdX+4voQ/y87vSRDMNHC4LI+BL9DRXyVNMI7Nu5
	+e5bgbgqqbmD8XgCMtDPAxw9+TBjJ2kSHl7XF90vQG5OD6/aNrELqTySoHV5muCBr530hMRf0DO+d
	/nLxNd2xPjtD+W94IRJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2B63-0003Q8-Lf; Mon, 26 Aug 2019 09:15:31 +0000
Received: from mail-eopbgr60063.outbound.protection.outlook.com ([40.107.6.63]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2B5t-0003Pl-3Z
 for linux-mtd@lists.infradead.org; Mon, 26 Aug 2019 09:15:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WTgjhUhsNVr7OJwU0Si5uZIQQxFWrmYVlJaZCXtB+EbonpmiIB7qokgcxoa5FW0nR07EKlU73vzDYS+fgYVDaf2Qp21+RuCarIpAd/sJIK0YIlS2qzTab59Ev6CbuAwL9hZGKYUAL7ktg8+Q+GD0yzhwbsYMnBaHIBo6juHZBTnXaQ+OAX7JhXkf2UYLXhllpVmdbEDWUhJgE/GsY4BuBsvkPrECEY0+NJzQizq6jJMS2e71IhA5x4j4XuQpqHoss4oZj9IJuWQFhc1e+jz0Z/zuq4XZf9YqQVh15UsHGYpCVpsL52unt4Ue1jhw8IMZUjvuHOso0RPBMSG+lah7Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nJMWLQpMdsOWvsQb0wBOF0K/W+6d1kI6CSGWcnB0n/k=;
 b=kfp7p4eQjJ481zIjf/ZXuwriBpeIyLfr+bz46QCmA+WsTnkOLcMk2FhBvwVU3vps3OI7k+uUi0U3QOzn+7ZSjom5DfYROYqIZLgtS1GKp4cwIm+YOy5ClQGne6GI5PyVQyKyupyXR6bbb/Jr0vu55tmtY9PsE1qyGzJlMdLkEpJPIn1Q0ur1BloNnLeUU/+IvSYhy+dyRAmukGhJSc68WfRFW4yCXz1xfO6YpRiFg6nFdFGssk4kt5hdGQrhkyfKYSup+nkIXwAtjldW4i8t4UUGgiX8FBtmQ1EOvCVMvX+1qCRF41RWi8CIIQPHQRkyqa+PeSLwHcUmLFuFIRZ5xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nJMWLQpMdsOWvsQb0wBOF0K/W+6d1kI6CSGWcnB0n/k=;
 b=e4WBQ2kvBBmdu8H7t673snvXzwU3zg5DGPLLTYiY/ikcgPq7Pm3Bvt5C7knneAzOoglq8QnKt4Urp+NntIu2Hd2gdb1hA8cOU+/qHWKcEqXonZQJFGuv2JK8vkpj0B1Skr9Q8A1q0ZY57sreZ8UiibNWxUaCqK7vxhy8XOO71ek=
Received: from DB7PR04MB4011.eurprd04.prod.outlook.com (52.134.110.11) by
 DB7PR04MB5243.eurprd04.prod.outlook.com (20.176.233.223) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Mon, 26 Aug 2019 09:15:15 +0000
Received: from DB7PR04MB4011.eurprd04.prod.outlook.com
 ([fe80::5d74:d199:a2bb:448]) by DB7PR04MB4011.eurprd04.prod.outlook.com
 ([fe80::5d74:d199:a2bb:448%3]) with mapi id 15.20.2178.022; Mon, 26 Aug 2019
 09:15:15 +0000
From: Ashish Kumar <ashish.kumar@nxp.com>
To: Ashish Kumar <ashish.kumar@nxp.com>, "tudor.ambarus@microchip.com"
 <tudor.ambarus@microchip.com>, "marek.vasut@gmail.com"
 <marek.vasut@gmail.com>, "dwmw2@infradead.org" <dwmw2@infradead.org>,
 "computersforpeace@gmail.com" <computersforpeace@gmail.com>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>, "richard@nod.at"
 <richard@nod.at>, "vigneshr@ti.com" <vigneshr@ti.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
Subject: RE: [Patch v3] drivers: mtd: spi-nor: Add flash property for
 mt25qu512a and mt35xu02g
Thread-Topic: [Patch v3] drivers: mtd: spi-nor: Add flash property for
 mt25qu512a and mt35xu02g
Thread-Index: AQHVUcNFGTl4okY6Y0qzj8r47WNYKacNOHkQ
Date: Mon, 26 Aug 2019 09:15:15 +0000
Message-ID: <DB7PR04MB40112046D17A999C1793CD0495A10@DB7PR04MB4011.eurprd04.prod.outlook.com>
References: <1565692705-27749-1-git-send-email-Ashish.Kumar@nxp.com>
In-Reply-To: <1565692705-27749-1-git-send-email-Ashish.Kumar@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ashish.kumar@nxp.com; 
x-originating-ip: [92.120.0.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 56878908-200a-4563-5c81-08d72a05e855
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB5243; 
x-ms-traffictypediagnostic: DB7PR04MB5243:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB5243C6490925C665A9EC02F595A10@DB7PR04MB5243.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01415BB535
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(346002)(376002)(136003)(39860400002)(13464003)(189003)(199004)(5660300002)(305945005)(6506007)(6116002)(3846002)(53546011)(102836004)(52536014)(74316002)(33656002)(25786009)(44832011)(476003)(14454004)(71190400001)(486006)(6246003)(71200400001)(53936002)(4326008)(478600001)(11346002)(446003)(9686003)(55016002)(6436002)(86362001)(2201001)(2501003)(2906002)(26005)(7736002)(256004)(14444005)(8676002)(81156014)(81166006)(229853002)(8936002)(7696005)(186003)(316002)(66946007)(64756008)(66556008)(66446008)(110136005)(66476007)(99286004)(66066001)(54906003)(76176011)(76116006)(138113003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5243;
 H:DB7PR04MB4011.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KvcS+SK9fBsGUkA03GqQ4kttRrktdYlYztF+pRAzX6Zkp2QvRIe4OW6ilKSibnNqJlLGlc/PPgeeV9MppK5uEWeVIYZ1G9X6GtYgTcGLjfoFSjM+g4uZ2CjE4YwBGPpeqQy5YzqoV+1LpRPr1I12J8EzMhn1/2C/GxYdZTDOpkckM0h/ImpUmNeehmJigcWVXlf2mQhB5vog0Z8FtRrQARGTTwvHq6u38reCxTrxSqS8O3uwucoQLPCbTkskl76X3UQ1Tij4CAgW3gILQUNrMTaSEkOEWUIfpsy5EanK+UWoH7uT7QiIplmEKUlgLMsV6+wcumsgpdq34XkbshnTQewR3nQc8CM9bx/OZrnJ5IPCCOlTHZCt8Z68HILGEUm54kNrS5rDVcwQsmpmKJIl8iLO9qygjquCsOyBpXZ0tR4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56878908-200a-4563-5c81-08d72a05e855
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2019 09:15:15.6236 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R9grCI5sOA7WgQk1dGVps6/SfobpnhQ6572Ssb3HAUx15okBkagokhnv0Se7fFQjRdwKNrUJoEWNQ+oDXkGutQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5243
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_021521_153421_5C540280 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.63 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kuldeep Singh <kuldeep.singh@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Ashish Kumar <Ashish.Kumar@nxp.com>
> Sent: Tuesday, August 13, 2019 4:08 PM
> To: tudor.ambarus@microchip.com; marek.vasut@gmail.com;
> dwmw2@infradead.org; computersforpeace@gmail.com;
> miquel.raynal@bootlin.com; richard@nod.at; vigneshr@ti.com; linux-
> mtd@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org; Ashish Kumar <ashish.kumar@nxp.com>;
> Kuldeep Singh <kuldeep.singh@nxp.com>; Ashish Kumar
> <ashish.kumar@nxp.com>
> Subject: [Patch v3] drivers: mtd: spi-nor: Add flash property for mt25qu512a
> and mt35xu02g
Hi Vignesh, Tudor Ambarus,
 
Could you please update, if there are any further comments on this patch.

Regards
Ashish 
> 
> mt25qu512a is rebranded after its spinoff from STM, so it is different only in
> term of operating frequency, initial JEDEC id is same as that of n25q512a. In
> order to avoid any confussion with respect to name new entry is added.
> This flash is tested for Single I/O and QUAD I/O mode on LS1046FRWY.
> 
> mt35xu02g is Octal flash supporting Single I/O and QCTAL I/O and it has been
> tested on LS1028ARDB
> 
> Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
> Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
> ---
> v3:
> -Reword commits msg
> -rebase to top of mtd-linux spi-nor/next
> v2:
> Incorporate review comments from Vignesh
> 
>  drivers/mtd/spi-nor/spi-nor.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 03cc788..97d3de8 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -1988,6 +1988,12 @@ static const struct flash_info spi_nor_ids[] = {
>  	{ "n25q128a13",  INFO(0x20ba18, 0, 64 * 1024,  256, SECT_4K |
> SPI_NOR_QUAD_READ) },
>  	{ "n25q256a",    INFO(0x20ba19, 0, 64 * 1024,  512, SECT_4K |
> SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
>  	{ "n25q256ax1",  INFO(0x20bb19, 0, 64 * 1024,  512, SECT_4K |
> SPI_NOR_QUAD_READ) },
> +
> +	/* Micron */
> +	{ "mt25qu512a", INFO6(0x20bb20, 0x104400, 64 * 1024, 1024,
> SECT_4K |
> +				USE_FSR | SPI_NOR_DUAL_READ |
> +				SPI_NOR_QUAD_READ |
> SPI_NOR_4B_OPCODES) },
> +
>  	{ "n25q512a",    INFO(0x20bb20, 0, 64 * 1024, 1024, SECT_4K |
> USE_FSR | SPI_NOR_QUAD_READ) },
>  	{ "n25q512ax3",  INFO(0x20ba20, 0, 64 * 1024, 1024, SECT_4K |
> USE_FSR | SPI_NOR_QUAD_READ) },
>  	{ "n25q00",      INFO(0x20ba21, 0, 64 * 1024, 2048, SECT_4K | USE_FSR
> | SPI_NOR_QUAD_READ | NO_CHIP_ERASE) },
> @@ -2003,6 +2009,9 @@ static const struct flash_info spi_nor_ids[] = {
>  			SECT_4K | USE_FSR | SPI_NOR_OCTAL_READ |
>  			SPI_NOR_4B_OPCODES)
>  	},
> +	{ "mt35xu02g",  INFO(0x2c5b1c, 0, 128 * 1024, 2048,
> +			SECT_4K | USE_FSR | SPI_NOR_OCTAL_READ |
> +			SPI_NOR_4B_OPCODES) },
> 
>  	/* PMC */
>  	{ "pm25lv512",   INFO(0,        0, 32 * 1024,    2, SECT_4K_PMC) },
> --
> 2.7.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
