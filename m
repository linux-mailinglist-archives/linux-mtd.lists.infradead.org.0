Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7E4143CB4
	for <lists+linux-mtd@lfdr.de>; Tue, 21 Jan 2020 13:24:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Vwmkxhrnj90nxQRG8oT2hwGPd6+d8/JK+jpywnPKcs=; b=UmTx7NZtOHflax
	leewCJmx3VRJb9wc/vSAR/qct50Qir2Dqf3S8apPZ8WdS6nCUCzi9g0rbFbXLuRBUYhCRpNz8XMA4
	wWYbJsUB94xDS0LYwnvNUSNyG47GzXMpdeqdR1mKcd194fn/KuZEm684cKTUAWjQd4qTTm6AKHDFe
	70hZOko5XynUXdd/+PfbIhPY5u7x0kf4mxKgbBykes1zAuGlpvo9xOTRNGTxXGYBJ5OFAdH07zdqY
	uUkDGeZ8MVzKahyS1c/FnS8qCmutOeTjriryvq/IZeILezSRz2auW508k4X+c139I7K28uu7eTcOm
	Tr1l1/1BBnJnvgNHpqHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itsZb-0005aD-GL; Tue, 21 Jan 2020 12:23:59 +0000
Received: from mail-eopbgr760043.outbound.protection.outlook.com
 ([40.107.76.43] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itsZJ-0005W9-Dw
 for linux-mtd@lists.infradead.org; Tue, 21 Jan 2020 12:23:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Okr6diLciiViAlUsz1INr6EUQEFw8UHduQ0bbnNIw2CvMpKSYXHsg//VGGGPtmEtdXCn7XU/trfVjDm1PocunylBEovoYmQuH5JWSCk+M2vnNMNblrpzw81ikUoi5+7Cm/r7SqtFDkQCnHTn9RstlkRWUGFTfk1UT6Kk0vxrrHmfC1kzAm6Ad8zz98F9aOraczSnHOFFzMSVonfhrFC8X8WJZyhT//ccPjREBuhojmaLQoTwCbe80daCAgCpxRi9luJRDjC2lE4Ykih3JrXtpn0js1ewLwCioHNqzxbhKN8UF9tRDdwft+nOlZN4kqPRh/WAoEcmQWlwuDYClPGh5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9oU35mTCdNTOL10n8uybHqrKu8q/zfmZ/47ax2KfLS8=;
 b=SAX/Rig3dDEVyREhL5ANJuMSeWWl0kzHSUImm5uFjN/1KKWPW4hEg7E35JHUzhTn+ajSoARO1ebGoL0g6Ne+vMcsef7JculvIry1KoMDqP8QVCGr6svpBCOY0gCiQKAHJfL1sCP6Hel1s9UbV7SVP29glyNGaX79DuangsQ42to+OoiG2T2CierDn/WTI5wdfG7ynDt3kK44zvH+snrOBBsr2gUYkyZKwOJz7cC4Xq5k7todOShFVl5H4I7hUhNy17+6syqViRjisp0qWQ9Rpzyhp9eT03E7wLMfu8MqHZHDQo0j9GmKwnIZOwC2Fr3drEUuXnsHl2xZvJVeEvkPOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=micron.com; dmarc=pass action=none header.from=micron.com;
 dkim=pass header.d=micron.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=micron.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9oU35mTCdNTOL10n8uybHqrKu8q/zfmZ/47ax2KfLS8=;
 b=LYry3UUwOqjbMVz0K/irovTLfLvA4NJ/8EHV5UBVYeBZNbSrCQQQTIDNy9Fwk1NS7VhMzn91YHIA9SkwBkvnpVQTVdSLIaL6Q5QmBrFNr/deBKZSwF5XyDS+IOCwD9d+vmmJvONRWkr8ljc0MmFfVGjVa3TaV2u/9zSlVrEIE14=
Received: from MN2PR08MB6397.namprd08.prod.outlook.com (52.132.170.74) by
 MN2PR08MB6222.namprd08.prod.outlook.com (52.132.168.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18; Tue, 21 Jan 2020 12:23:36 +0000
Received: from MN2PR08MB6397.namprd08.prod.outlook.com
 ([fe80::61af:ed8:e19b:cb6a]) by MN2PR08MB6397.namprd08.prod.outlook.com
 ([fe80::61af:ed8:e19b:cb6a%3]) with mapi id 15.20.2644.027; Tue, 21 Jan 2020
 12:23:36 +0000
From: "Shivamurthy Shastri (sshivamurthy)" <sshivamurthy@micron.com>
To: 'Miquel Raynal' <miquel.raynal@bootlin.com>
Subject: RE: [EXT] Re: [PATCH 4/4] mtd: spinand: Add new Micron SPI NAND
 devices with multiple dies
Thread-Topic: [EXT] Re: [PATCH 4/4] mtd: spinand: Add new Micron SPI NAND
 devices with multiple dies
Thread-Index: AQHVz3uD0S2x3c20oUubGZLLAN6hxafzjs2g
Date: Tue, 21 Jan 2020 12:23:36 +0000
Message-ID: <MN2PR08MB6397E9900A3638E873434B9DB80D0@MN2PR08MB6397.namprd08.prod.outlook.com>
References: <20200119145432.10405-1-sshivamurthy@micron.com>
 <20200119145432.10405-5-sshivamurthy@micron.com>
 <20200120112219.36bae01e@xps13>
In-Reply-To: <20200120112219.36bae01e@xps13>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-rorf: true
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcc3NoaXZhbXVydGh5XGFwcGRhdGFccm9hbWluZ1wwOWQ4NDliNi0zMmQzLTRhNDAtODVlZS02Yjg0YmEyOWUzNWJcbXNnc1xtc2ctZDY5OGNhMTMtM2M0OC0xMWVhLWIxZTMtOTgzYjhmNzQ1MjUxXGFtZS10ZXN0XGQ2OThjYTE1LTNjNDgtMTFlYS1iMWUzLTk4M2I4Zjc0NTI1MWJvZHkudHh0IiBzej0iNDcwNCIgdD0iMTMyMjQwODMwMTM0MDQwNzc5IiBoPSJESGhJcUViS3NEZlYxS2tvVXV6d3JQV21QYlU9IiBpZD0iIiBibD0iMCIgYm89IjEiLz48L21ldGE+
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sshivamurthy@micron.com; 
x-originating-ip: [165.225.80.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 37d41d47-e6e2-4ec7-5f19-08d79e6cbd47
x-ms-traffictypediagnostic: MN2PR08MB6222:|MN2PR08MB6222:|MN2PR08MB6222:
x-microsoft-antispam-prvs: <MN2PR08MB6222398EAE4FCECD98B67BF1B80D0@MN2PR08MB6222.namprd08.prod.outlook.com>
x-ms-exchange-transport-forked: True
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0289B6431E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(136003)(366004)(39860400002)(199004)(189003)(81166006)(9686003)(26005)(8676002)(55016002)(4326008)(186003)(5660300002)(6506007)(71200400001)(316002)(8936002)(478600001)(81156014)(33656002)(55236004)(52536014)(54906003)(66574012)(66446008)(2906002)(64756008)(66556008)(66946007)(76116006)(66476007)(86362001)(7696005)(6916009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR08MB6222;
 H:MN2PR08MB6397.namprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: micron.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MkKG0N0m3voi0/aEYVSTTdiPzIKwVUxveWnZVKMpQkWYr2ec660f5nFEvDZX1dUzTOM6j8499gX6BngRoww7y5XvMSKWPgxjf3XZRqytRA8UvMoTp7epZQWhHZeipiYZQ1Ns4gOj8B0MnbUWzbq9bodku7duIx910eJPdfPfq5qXgatHr87Rp019b6Fpvi48hWnTZDQM55fYat1Y3zlNlC/2MpR3ygP6tYo3imxNgFhiO2mAgVXUdPLQdWNkHi2wZthSFiLUYVMK1WrAMc8BX/ZnfRGIPD6wDv+8EikzKRhQe/Tcmm8ygkQXi0a/2cJ7+jFBOom9wHJBc2RTwxxwmoBNCNKGCJZPUA22lfA3lFcsHPyF+E0fUSqksfFF+OEvQeaIqHm8aSmZ23OfF/ElGZ1UmU3glaZ7XfFMeZ80/5p3Ka3qSYnNGw6qVpx89Jls
MIME-Version: 1.0
X-OriginatorOrg: micron.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37d41d47-e6e2-4ec7-5f19-08d79e6cbd47
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2020 12:23:36.3182 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f38a5ecd-2813-4862-b11b-ac1d563c806f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KTb1oCjVlR29OVnEHoYYtZqXLg6TJPfWkFVoaU4F+2fvhSHU2DYxz7W+j+skWryAKss9isLLKoz+Vuh+TTQt5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR08MB6222
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_042341_481501_35EA0FAF 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.43 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 "shiva.linuxworks@gmail.com" <shiva.linuxworks@gmail.com>,
 Richard Weinberger <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Miquel,

> =

> Hi Shiva,
> =

> shiva.linuxworks@gmail.com wrote on Sun, 19 Jan 2020 15:54:32 +0100:
> =

> > From: Shivamurthy Shastri <sshivamurthy@micron.com>
> >
> > Add device table for new Micron SPI NAND devices, which have multiple
> > dies. While at it, add support to select the die.
> =

> Same comment as in 3/4.

I will correct the comment.

> =

> >
> > Signed-off-by: Shivamurthy Shastri <sshivamurthy@micron.com>
> > ---
> >  drivers/mtd/nand/spi/micron.c | 50
> +++++++++++++++++++++++++++++++++++
> >  1 file changed, 50 insertions(+)
> >
> > diff --git a/drivers/mtd/nand/spi/micron.c
> b/drivers/mtd/nand/spi/micron.c
> > index 45fc37c58f8a..03b486843210 100644
> > --- a/drivers/mtd/nand/spi/micron.c
> > +++ b/drivers/mtd/nand/spi/micron.c
> > @@ -18,6 +18,8 @@
> >  #define MICRON_STATUS_ECC_4TO6_BITFLIPS	(3 << 4)
> >  #define MICRON_STATUS_ECC_7TO8_BITFLIPS	(5 << 4)
> >
> > +#define MICRON_DIE_SELECTION_BIT	6
> > +
> >  static SPINAND_OP_VARIANTS(read_cache_variants,
> >  		SPINAND_PAGE_READ_FROM_CACHE_QUADIO_OP(0, 2,
> NULL, 0),
> >  		SPINAND_PAGE_READ_FROM_CACHE_X4_OP(0, 1, NULL, 0),
> > @@ -64,6 +66,21 @@ static const struct mtd_ooblayout_ops
> micron_8_ooblayout =3D {
> >  	.free =3D micron_8_ooblayout_free,
> >  };
> >
> > +static int micron_select_target(struct spinand_device *spinand,
> > +				unsigned int target)
> > +{
> > +	struct spi_mem_op op =3D SPINAND_SET_FEATURE_OP(0xd0,
> > +						      spinand->scratchbuf);
> > +
> > +	/*
> > +	 * As per datasheet, die selection is done by the 6th bit of Die
> > +	 * Select Register (Address 0xD0).
> > +	 */
> =

> I would put this comment close to the macro definition.

Sure, I will do it.

> =

> > +	*spinand->scratchbuf =3D target << MICRON_DIE_SELECTION_BIT;
> =

> Either target is or or 1 and you can use the BIT macro, or you suppose
> it can go higher and the _BIT suffix does not fit. _SHIFT would work
> and creating a macro directly would be even better.
> =


I will create macro directly and send the code in next version.

> > +
> > +	return spi_mem_exec_op(spinand->spimem, &op);
> > +}
> > +
> =

> Where is this function used?

IIUC your question, the function is used below in device table.
The line is something like, =


SPINAND_SELECT_TARGET(micron_select_target))

for all the devices with multiple dies.

> =

> >  static int micron_8_ecc_get_status(struct spinand_device *spinand,
> >  				   u8 status)
> >  {
> > @@ -131,6 +148,17 @@ static const struct spinand_info
> micron_spinand_table[] =3D {
> >  		     0,
> >  		     SPINAND_ECCINFO(&micron_8_ooblayout,
> >  				     micron_8_ecc_get_status)),
> > +	/* M79A 4Gb 3.3V */
> > +	SPINAND_INFO("MT29F4G01ADAGD", 0x36,
> > +		     NAND_MEMORG(1, 2048, 128, 64, 2048, 80, 2, 1, 2),
> > +		     NAND_ECCREQ(8, 512),
> > +		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
> > +					      &write_cache_variants,
> > +					      &update_cache_variants),
> > +		     0,
> > +		     SPINAND_ECCINFO(&micron_8_ooblayout,
> > +				     micron_8_ecc_get_status),
> > +		     SPINAND_SELECT_TARGET(micron_select_target)),
> >  	/* M70A 4Gb 3.3V */
> >  	SPINAND_INFO("MT29F4G01ABAFD", 0x34,
> >  		     NAND_MEMORG(1, 4096, 256, 64, 2048, 40, 1, 1, 1),
> > @@ -151,6 +179,28 @@ static const struct spinand_info
> micron_spinand_table[] =3D {
> >  		     0,
> >  		     SPINAND_ECCINFO(&micron_8_ooblayout,
> >  				     micron_8_ecc_get_status)),
> > +	/* M70A 8Gb 3.3V */
> > +	SPINAND_INFO("MT29F8G01ADAFD", 0x46,
> > +		     NAND_MEMORG(1, 4096, 256, 64, 2048, 40, 1, 1, 2),
> > +		     NAND_ECCREQ(8, 512),
> > +		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
> > +					      &write_cache_variants,
> > +					      &update_cache_variants),
> > +		     0,
> > +		     SPINAND_ECCINFO(&micron_8_ooblayout,
> > +				     micron_8_ecc_get_status),
> > +		     SPINAND_SELECT_TARGET(micron_select_target)),
> > +	/* M70A 8Gb 1.8V */
> > +	SPINAND_INFO("MT29F8G01ADBFD", 0x47,
> > +		     NAND_MEMORG(1, 4096, 256, 64, 2048, 40, 1, 1, 2),
> > +		     NAND_ECCREQ(8, 512),
> > +		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
> > +					      &write_cache_variants,
> > +					      &update_cache_variants),
> > +		     0,
> > +		     SPINAND_ECCINFO(&micron_8_ooblayout,
> > +				     micron_8_ecc_get_status),
> > +		     SPINAND_SELECT_TARGET(micron_select_target)),
> >  };
> >
> >  static int micron_spinand_detect(struct spinand_device *spinand)
> =

> =

> =

> =

> Thanks,
> Miqu=E8l

Thanks,
Shiva

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
