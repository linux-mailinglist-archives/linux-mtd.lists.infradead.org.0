Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9DC567EF
	for <lists+linux-mtd@lfdr.de>; Wed, 26 Jun 2019 13:51:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=spCP0gB9WfkDI6z2OMSNmYYROfBP9iK5yi1A5p7rbnY=; b=Ixg86uYDIMHHPu
	avGryZqoHaqq4sW41MTN55Z7rnAqsWjpayGyL4a1IijZYTuC6pFdImkPpnjWRM5NSjDO0g3IUN/E1
	x/24Vbg4F+lqoglya1lN9wI7aeYEhF+GOWhW3ijXMAW0N0W4aojTUoxYG/BDnYrS53+g0wsNdVcGC
	B7+NRWIuWBN/Dq/8FY/l5uwDsr1gT74touDOrUW9B49kNZcDXsdyBoLk1NGc8ikLnz16+AbgzVKT/
	OZNL8LafRS+BZbNRUPHNNeL7bdc3xwqKClkq9jLJlIa8QjnQJvIPL4zgGU1rK/s5/q1x0rJQ2b5AB
	yiDHUf0HvUB1JTuWvDRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg6Sj-00044d-G0; Wed, 26 Jun 2019 11:51:41 +0000
Received: from mail-sn1nam04on061e.outbound.protection.outlook.com
 ([2a01:111:f400:fe4c::61e]
 helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg6SL-00043j-66
 for linux-mtd@lists.infradead.org; Wed, 26 Jun 2019 11:51:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3MG2vg5mjGpzjv+RMGLlYqUWvE19CepvhBrmIsR8IHk=;
 b=sydjuiQvddEW6oK0oJTarDQpm9W5Ypev2pUCqy6xH9hB2ipNSR5jDv5YEMfRe3/CFbOOLnYSFDU8l8Qq00QOWVUoacISwSuLeAjKPqdzfkMIniQdUthMSfwTn3P638ZAHcDiaP7IV3H8p8v+PYbziqS0J74U1j7AexyhPuZ5aAc=
Received: from DM6PR02MB4779.namprd02.prod.outlook.com (20.176.109.16) by
 DM6PR02MB5836.namprd02.prod.outlook.com (20.179.55.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Wed, 26 Jun 2019 11:51:12 +0000
Received: from DM6PR02MB4779.namprd02.prod.outlook.com
 ([fe80::936:90c8:a385:1513]) by DM6PR02MB4779.namprd02.prod.outlook.com
 ([fe80::936:90c8:a385:1513%4]) with mapi id 15.20.2008.017; Wed, 26 Jun 2019
 11:51:12 +0000
From: Naga Sureshkumar Relli <nagasure@xilinx.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: RE: [LINUX PATCH v17 1/2] mtd: rawnand: nand_micron: Do not over
 write driver's read_page()/write_page()
Thread-Topic: [LINUX PATCH v17 1/2] mtd: rawnand: nand_micron: Do not over
 write driver's read_page()/write_page()
Thread-Index: AQHVKxEOKM99KajnN0G2IiFegkrxG6atgBaAgABKdoCAAAOHgIAABNvw
Date: Wed, 26 Jun 2019 11:51:12 +0000
Message-ID: <DM6PR02MB4779D347620E88BDB943DEB4AFE20@DM6PR02MB4779.namprd02.prod.outlook.com>
References: <20190625044630.31717-1-naga.sureshkumar.relli@xilinx.com>
 <20190626084807.3f06e718@collabora.com>
 <DM6PR02MB47796E3306C166A91E0BAE91AFE20@DM6PR02MB4779.namprd02.prod.outlook.com>
 <20190626132715.6128d8b1@collabora.com>
In-Reply-To: <20190626132715.6128d8b1@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=nagasure@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d9f27aba-db74-4e36-80ae-08d6fa2c9639
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM6PR02MB5836; 
x-ms-traffictypediagnostic: DM6PR02MB5836:
x-microsoft-antispam-prvs: <DM6PR02MB5836D1E1FAAA67F049E12961AFE20@DM6PR02MB5836.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00808B16F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(39860400002)(396003)(346002)(366004)(136003)(199004)(13464003)(189003)(5660300002)(68736007)(71200400001)(71190400001)(81166006)(81156014)(6246003)(8676002)(54906003)(3846002)(6116002)(229853002)(6916009)(6436002)(7736002)(305945005)(86362001)(53936002)(74316002)(55016002)(486006)(25786009)(8936002)(14454004)(9686003)(478600001)(476003)(6506007)(102836004)(53546011)(66946007)(73956011)(64756008)(66446008)(66476007)(66556008)(7696005)(4326008)(66066001)(2906002)(99286004)(446003)(11346002)(26005)(256004)(316002)(14444005)(76116006)(76176011)(7416002)(186003)(52536014)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB5836;
 H:DM6PR02MB4779.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: t0EguLMoWA3Zfdp+AM0RQtWOz6insG7rklakzmKa+1u9+0MpNjz75m6s+mbVOgYTxZvtDmbBW2qlgNAWd4YSpItkpOpFqCAV6STQmvAriouW2FUk1nfRaAT0wAO62PEBREYThR9oW4VvKAb5e7NPN7KIaOSeQfPjpPu7j4QHvNbpUMxJD9mOQL1192attkNwdCntpBs5O831h5Gmmaih9d8ezMvnGXXVUc2n8Dv2UN7T//9QvQqqmfOrddHGYspK/9lQQTLGbUXdzAHRhPxAqOjgxzprqcT65aLls0WOwrk/j0bHMciifrDxYwAW3J2RJJrG+8gJxnEELve7bpkGwWIOehwTp5ucnxT3w9CWtIj9o7zIFcEaCshuFo/fxv8W8b5KkM1NbuuIFJhInlIhqTlOhK+HCtXQ4Jq0qqQI73c=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9f27aba-db74-4e36-80ae-08d6fa2c9639
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2019 11:51:12.3350 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nagasure@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB5836
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_045117_963315_78049E16 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "vigneshr@ti.com" <vigneshr@ti.com>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 "helmut.grohne@intenta.de" <helmut.grohne@intenta.de>,
 "richard@nod.at" <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 "yamada.masahiro@socionext.com" <yamada.masahiro@socionext.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 "computersforpeace@gmail.com" <computersforpeace@gmail.com>,
 "dwmw2@infradead.org" <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Boris,

> -----Original Message-----
> From: Boris Brezillon <boris.brezillon@collabora.com>
> Sent: Wednesday, June 26, 2019 4:57 PM
> To: Naga Sureshkumar Relli <nagasure@xilinx.com>
> Cc: miquel.raynal@bootlin.com; helmut.grohne@intenta.de; richard@nod.at;
> dwmw2@infradead.org; computersforpeace@gmail.com; marek.vasut@gmail.com;
> vigneshr@ti.com; bbrezillon@kernel.org; yamada.masahiro@socionext.com; linux-
> mtd@lists.infradead.org; linux-kernel@vger.kernel.org
> Subject: Re: [LINUX PATCH v17 1/2] mtd: rawnand: nand_micron: Do not over write
> driver's read_page()/write_page()
> 
> On Wed, 26 Jun 2019 11:22:33 +0000
> Naga Sureshkumar Relli <nagasure@xilinx.com> wrote:
> 
> > Hi Boris,
> >
> > > -----Original Message-----
> > > From: Boris Brezillon <boris.brezillon@collabora.com>
> > > Sent: Wednesday, June 26, 2019 12:18 PM
> > > To: Naga Sureshkumar Relli <nagasure@xilinx.com>
> > > Cc: miquel.raynal@bootlin.com; helmut.grohne@intenta.de;
> > > richard@nod.at; dwmw2@infradead.org; computersforpeace@gmail.com;
> > > marek.vasut@gmail.com; vigneshr@ti.com; bbrezillon@kernel.org;
> > > yamada.masahiro@socionext.com; linux- mtd@lists.infradead.org;
> > > linux-kernel@vger.kernel.org
> > > Subject: Re: [LINUX PATCH v17 1/2] mtd: rawnand: nand_micron: Do not
> > > over write driver's read_page()/write_page()
> > >
> > > On Mon, 24 Jun 2019 22:46:29 -0600
> > > Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com> wrote:
> > >
> > > > Add check before assigning chip->ecc.read_page() and
> > > > chip->ecc.write_page()
> > > >
> > > > Signed-off-by: Naga Sureshkumar Relli
> > > > <naga.sureshkumar.relli@xilinx.com>
> > > > ---
> > > >  drivers/mtd/nand/raw/nand_micron.c | 7 +++++--
> > > >  1 file changed, 5 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/mtd/nand/raw/nand_micron.c
> > > > b/drivers/mtd/nand/raw/nand_micron.c
> > > > index cbd4f09ac178..565f2696c747 100644
> > > > --- a/drivers/mtd/nand/raw/nand_micron.c
> > > > +++ b/drivers/mtd/nand/raw/nand_micron.c
> > > > @@ -500,8 +500,11 @@ static int micron_nand_init(struct nand_chip *chip)
> > > >  		chip->ecc.size = 512;
> > > >  		chip->ecc.strength = chip->base.eccreq.strength;
> > > >  		chip->ecc.algo = NAND_ECC_BCH;
> > > > -		chip->ecc.read_page = micron_nand_read_page_on_die_ecc;
> > > > -		chip->ecc.write_page = micron_nand_write_page_on_die_ecc;
> > > > +		if (!chip->ecc.read_page)
> > > > +			chip->ecc.read_page = micron_nand_read_page_on_die_ecc;
> > > > +
> > > > +		if (!chip->ecc.write_page)
> > > > +			chip->ecc.write_page = micron_nand_write_page_on_die_ecc;
> > >
> > > That's wrong, if you don't want on-die ECC to be used, simply don't
> > > set nand-ecc-mode to "on- die".
> > Ok. But if we want to use on-die ECC then you mean to say it is mandatory to use
> micron_nand_read/write_page_on_die_ecc()?
> 
> Absolutely, and if it doesn't work that means you driver does not
> implement raw accesses correctly, which means it's still buggy...
I agree. But let's say, if there is a limitation with the controller. Then it is must to have this check right?
I mean, for pl353 controller, we must clear the CS during the data phase, hence we are splitting the 
Transfer in the pl353_read/write_page_raw().
+	pl353_nand_read_data_op(chip, buf, mtd->writesize, false);
+	p = chip->oob_poi;
+	pl353_nand_read_data_op(chip, p,
+				(mtd->oobsize -
+				PL353_NAND_LAST_TRANSFER_LENGTH), false);
+	p += (mtd->oobsize - PL353_NAND_LAST_TRANSFER_LENGTH);
+	xnfc->dataphase_addrflags |= PL353_NAND_CLEAR_CS;
+	pl353_nand_read_data_op(chip, p, PL353_NAND_LAST_TRANSFER_LENGTH,
+				false);
As the above sequence is needed even for raw access, PL353 is unable to use the on_die_page reads.

Thanks,
Naga Sureshkumar Relli

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
