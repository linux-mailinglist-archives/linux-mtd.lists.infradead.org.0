Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0395172960
	for <lists+linux-mtd@lfdr.de>; Thu, 27 Feb 2020 21:17:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tPMMqNEcccnEixFooUAVZM+KvaISKgLRy0OcE9g6qos=; b=mEkCZKt4oPkeKc
	VESnGZCk02HmhVJFoU48L7g1D9G5dQgURZf+G1d0E2xpcu2LfLA7nyhCcD5GqEwdWWD/C/cfDReTM
	yiLy9ZKZXTadiYBGoGaI4WN6gFZ8VxON4nWXUWPi/wWitiy9/qdKmYn53KWBH7Qn5kye150epDUkR
	mCXOsPXYNEYDXFlseMkovWaAGz6R3BgaYUVY2a+s48zsbNFUbtU+oM/pmZheJmAgMSPQdfMWLA//n
	ncuYykTu/QmhsF1+hEmq5YaiXyCPdjyF7NsWio6c6WYBMtNS827J8w9IDg2kvOFd7UnecUxRcWtpT
	2W2zrWhaMwa8xLK9JqtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Pb9-00043f-OM; Thu, 27 Feb 2020 20:17:31 +0000
Received: from mail-dm6nam10on2060a.outbound.protection.outlook.com
 ([2a01:111:f400:7e88::60a]
 helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7PaX-0003bL-9c
 for linux-mtd@lists.infradead.org; Thu, 27 Feb 2020 20:16:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gpQcOQsOjjC+oa/3/7jtnltcHlPKw7sNoRwHgVkpjXwRB6jirbcMDk9daM1l/gTHJFWoUKGEKud+pgWLmNEI+LdHLRTgvz6yVb1DxueVk5ZKDGvhE7HjXO7e45LKOZ7e/3zJE8/X2FmsZsR4/G5Q34DoOBLc2drRMa9xgIAZ0W7/ULdU9tFwzm3NLCVXMVRzNikPxqXwtLb9cysfbAhAHerIxmULd1KS595bBdWcYlFSzY1KqgPX1fmaozlpMCGmQR5mtcobBTgkNUFv8MSUcExJZ/3in15XdaUNqOK0d/9bcTaPHZcXUvjMzgNEHNuK9gZbS0zA8TwLEptdyvN/vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kBP9zm7lLONjee7NIGCPtwLqw0gJhQqkv8X4FGG7V80=;
 b=b64HIHskcX6pvnmqo/s+M1QGeMMPzsqE7BZ77bjk5O7fnWd2dQGXvjT+efy5ahx9v3nUpVEAsxDvdCmsUuzLYIqna8gHbjrzC1XStr3S9kBxkmCbzKzYBXxXuMsnrMRjMWDf8zQ0pljXuUsEcdcseMzkW8q0/Xh83YQwu+9+ZzRf7lrVBoL7BMIhStGkxlYid8YJLVXyPO6JDY2AxjJIcRgoWWzNfMxN1gD2cmTIvThcEbdtooRjeor1GuETgd9/O6OEybdR4z+/6YCuWKozuDbd858MGjSPbvHfImnmsL+4j3jOlINln3ZEbHszOf3kjFMSuaTVBIL/9F9bUYaXbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=micron.com; dmarc=pass action=none header.from=micron.com;
 dkim=pass header.d=micron.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=micron.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kBP9zm7lLONjee7NIGCPtwLqw0gJhQqkv8X4FGG7V80=;
 b=IgS3vcOeJTbaup5V2UnKJ0kMMEUAKjSph1Fsl3bYqn8LS/PKoxhgfXBNOOg1c0srt7OrpiCKRBPLo+Ikq+xg5XVDZ54CtnXY5EzysLM2X5hR9L0yL+jhBllOeXEfe1Aq2ZC4p9H/wSSiCRrzyyJPbjCbWQ4jSQ02QbQ3ekHd9ag=
Received: from MN2PR08MB6397.namprd08.prod.outlook.com (2603:10b6:208:1aa::10)
 by MN2PR08MB5936.namprd08.prod.outlook.com (2603:10b6:208:11a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.22; Thu, 27 Feb
 2020 20:16:47 +0000
Received: from MN2PR08MB6397.namprd08.prod.outlook.com
 ([fe80::884a:b0f5:3cf5:f4a4]) by MN2PR08MB6397.namprd08.prod.outlook.com
 ([fe80::884a:b0f5:3cf5:f4a4%4]) with mapi id 15.20.2750.021; Thu, 27 Feb 2020
 20:16:46 +0000
From: "Shivamurthy Shastri (sshivamurthy)" <sshivamurthy@micron.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: RE: [EXT] Re: [PATCH v4 2/5] mtd: spinand: micron: Add new Micron SPI
 NAND devices
Thread-Topic: [EXT] Re: [PATCH v4 2/5] mtd: spinand: micron: Add new Micron
 SPI NAND devices
Thread-Index: AQHV7Zrt8nxb4M5o4EyJweDi+Kt0uqgveTTw
Date: Thu, 27 Feb 2020 20:16:46 +0000
Message-ID: <MN2PR08MB6397477172BAC14986175E6DB8EB0@MN2PR08MB6397.namprd08.prod.outlook.com>
References: <20200206202206.14770-1-sshivamurthy@micron.com>
 <20200206202206.14770-3-sshivamurthy@micron.com>
 <20200227192247.52f84723@collabora.com>
In-Reply-To: <20200227192247.52f84723@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-rorf: true
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcc3NoaXZhbXVydGh5XGFwcGRhdGFccm9hbWluZ1wwOWQ4NDliNi0zMmQzLTRhNDAtODVlZS02Yjg0YmEyOWUzNWJcbXNnc1xtc2ctMTE4NDhiMjgtNTk5ZS0xMWVhLWIxZTktOTgzYjhmNzQ1MjUxXGFtZS10ZXN0XDExODQ4YjJhLTU5OWUtMTFlYS1iMWU5LTk4M2I4Zjc0NTI1MWJvZHkudHh0IiBzej0iMjc2MSIgdD0iMTMyMjczMDgyMDMyMDEwMjYxIiBoPSJvSnhZQUp5R3p0bFFkNldhS042bFV5NXhkS0E9IiBpZD0iIiBibD0iMCIgYm89IjEiIGNpPSJjQUFBQUVSSFUxUlNSVUZOQ2dVQUFIQUFBQUFWTk4zVHF1M1ZBY2g4OGVubWhFTnp5SHp4NmVhRVEzTUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUJBQUFCQUFBQUFYbTFpZ0FBQUFBQUFBQUFBQUFBQUE9PSIvPjwvbWV0YT4=
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sshivamurthy@micron.com; 
x-originating-ip: [165.225.86.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 777269e7-1919-4e74-8535-08d7bbc1f88b
x-ms-traffictypediagnostic: MN2PR08MB5936:|MN2PR08MB5936:|MN2PR08MB5936:
x-microsoft-antispam-prvs: <MN2PR08MB5936F739856FC8E179D46224B8EB0@MN2PR08MB5936.namprd08.prod.outlook.com>
x-ms-exchange-transport-forked: True
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 03264AEA72
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(376002)(366004)(396003)(199004)(189003)(5660300002)(8936002)(55236004)(2906002)(6506007)(478600001)(26005)(86362001)(54906003)(316002)(52536014)(186003)(6916009)(81166006)(4326008)(64756008)(66446008)(55016002)(66476007)(76116006)(81156014)(71200400001)(7696005)(33656002)(8676002)(9686003)(66946007)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR08MB5936;
 H:MN2PR08MB6397.namprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: micron.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZvLhMScK1l62v+HmqMxJ7Cn+9q0TvPeC/JmzSKXmEWPJ71gq2EfKFEO3i0pNJR3br4R0h3/3Fje3OXssxdr8KR+6/qXgVAZ2z45jkcnb1KrtMzS3ncGb74eEegB3f43IQnrgjh1CrAr0iDevPqTaJrcHgbDiWGFn3/B/iilQpKAJBY+qvmjThP9pfUbtJXqF9JnHgZU1ze/eS3J6esXMaBI+N5VN1IITO5I6tW6BwKtjeQ/jyfqCS91QuMYz8yRLMA0RyCj/K2F10zcug/0xilKqP4cw84CII8opX61jqN0rKpvT3zEH2IvpuSdN5uRWskGZdRL3e7giYx02JQc+vC4nP/azHPtdIczzJCmgXa8qwMliFjickZes8GTr1DQZr4uYpexpwuDGdnziiGvTq2cyf8vGwT3hPAfMZqIWTbud8iNlmUjb2UCn7CL3hucb
x-ms-exchange-antispam-messagedata: aaoP10DjPs5wGVGImf7sNSfMAq15R/HZ38pOvDigjiUxCQI1GXdsta7F5u6vbAhZyQ062LQolSu7axjyag1SPQjf4dQZLBOrI5tifDtsfJD5iRQzk+DEIRbya0BOBUh5bbic6ON8FmaS4mRttGHa/A==
MIME-Version: 1.0
X-OriginatorOrg: micron.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 777269e7-1919-4e74-8535-08d7bbc1f88b
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2020 20:16:46.7626 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f38a5ecd-2813-4862-b11b-ac1d563c806f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 566LSgObpshVDZ54KUfcIBdsxTaa0D14hxMyIFlB0/8bGVpE1sKl4PckQvlq5JR21RiXS4J1bJs+CXN9YMT7FQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR08MB5936
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_121653_628800_AD792CC5 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 "shiva.linuxworks@gmail.com" <shiva.linuxworks@gmail.com>,
 Richard Weinberger <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Boris,

Thanks for the review.

> 
> On Thu,  6 Feb 2020 21:22:03 +0100
> shiva.linuxworks@gmail.com wrote:
> 
> > From: Shivamurthy Shastri <sshivamurthy@micron.com>
> >
> > Add device table for M79A and M78A series Micron SPI NAND devices.
> >
> > Signed-off-by: Shivamurthy Shastri <sshivamurthy@micron.com>
> > ---
> >  drivers/mtd/nand/spi/micron.c | 31
> +++++++++++++++++++++++++++++++
> >  1 file changed, 31 insertions(+)
> >
> > diff --git a/drivers/mtd/nand/spi/micron.c
> b/drivers/mtd/nand/spi/micron.c
> > index c028d0d7e236..5fd1f921ef12 100644
> > --- a/drivers/mtd/nand/spi/micron.c
> > +++ b/drivers/mtd/nand/spi/micron.c
> > @@ -91,6 +91,7 @@ static int micron_8_ecc_get_status(struct
> spinand_device *spinand,
> >  }
> >
> >  static const struct spinand_info micron_spinand_table[] = {
> > +	/* M79A 2Gb 3.3V */
> 
> Should be added in a separate patch.

Okay, I will create separate patch for each device.

> 
> >  	SPINAND_INFO("MT29F2G01ABAGD", 0x24,
> >  		     NAND_MEMORG(1, 2048, 128, 64, 2048, 40, 2, 1, 1),
> >  		     NAND_ECCREQ(8, 512),
> > @@ -100,6 +101,36 @@ static const struct spinand_info
> micron_spinand_table[] = {
> >  		     0,
> >  		     SPINAND_ECCINFO(&micron_8_ooblayout,
> >  				     micron_8_ecc_get_status)),
> > +	/* M79A 2Gb 1.8V */
> > +	SPINAND_INFO("MT29F2G01ABBGD", 0x25,
> > +		     NAND_MEMORG(1, 2048, 128, 64, 2048, 40, 2, 1, 1),
> > +		     NAND_ECCREQ(8, 512),
> > +		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
> > +					      &write_cache_variants,
> > +					      &update_cache_variants),
> > +		     0,
> > +		     SPINAND_ECCINFO(&micron_8_ooblayout,
> > +				     micron_8_ecc_get_status)),
> > +	/* M78A 1Gb 3.3V */
> > +	SPINAND_INFO("MT29F1G01ABAFD", 0x14,
> > +		     NAND_MEMORG(1, 2048, 128, 64, 1024, 20, 1, 1, 1),
> > +		     NAND_ECCREQ(8, 512),
> > +		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
> > +					      &write_cache_variants,
> > +					      &update_cache_variants),
> > +		     0,
> > +		     SPINAND_ECCINFO(&micron_8_ooblayout,
> > +				     micron_8_ecc_get_status)),
> > +	/* M78A 1Gb 1.8V */
> > +	SPINAND_INFO("MT29F1G01ABAFD", 0x15,
> > +		     NAND_MEMORG(1, 2048, 128, 64, 1024, 20, 1, 1, 1),
> > +		     NAND_ECCREQ(8, 512),
> > +		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
> > +					      &write_cache_variants,
> > +					      &update_cache_variants),
> > +		     0,
> > +		     SPINAND_ECCINFO(&micron_8_ooblayout,
> > +				     micron_8_ecc_get_status)),
> >  };
> >
> >  static int micron_spinand_detect(struct spinand_device *spinand)


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
