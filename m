Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3533817297C
	for <lists+linux-mtd@lfdr.de>; Thu, 27 Feb 2020 21:34:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x3aK+S/5D7hhS+KMlE5v4unFy7ZbNJQpmQd6CklZyS8=; b=KqZpCENCvkbiJc
	S2fxUcbrg2h5qlWCqaO27XkBT8IcCZNBEVVy16+c34tyTb0ptynfPT6Qx9hUopj2CatyjATBUtVVQ
	us/T0Jb5uCBDdZnNro7H+kBK8QAKIwdR/ge1bEVo8GlpVm/ExzPjmjg6C0qm4EdliJk4McahJ1Cu2
	yzo830exH9AxVI3QfdJXr8HESHCWvMVv998+OVR4Q0GXRyRuh2CuDm8kiJAzXNsxXfU5wZ1z/oUic
	XWbMKmUSdkLqfG3+51z2ipKXj4RR/aYadaMia7Oc4a1HwhvtnB1vBhmIr1op/NTCqbKlcYvSwy0EN
	/EJ0qiwwRlMg+p1VtiXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Pri-0001Bn-0G; Thu, 27 Feb 2020 20:34:38 +0000
Received: from mail-bn8nam11on2066.outbound.protection.outlook.com
 ([40.107.236.66] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7PrW-0001BH-Sk
 for linux-mtd@lists.infradead.org; Thu, 27 Feb 2020 20:34:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R5tu59W0SsbqNIrDS4fSEg6blyZwMdQuYXQb8HoTHK1YgMpzS7JbIGvrt2fzcnzZSYNluQ6du1zYAEuY7L7io4A8wtGV9+9gu446dsrmc2LY4l4SKWuBTZdZACo7Pk6giXN2yby54k3F0vLpcRkoC2PdP/aTbxQA3L0T22+CZzJc354MyjudxTKJ8z1YfAFG20sV3kz3RyvWAk2O4sXwcn5Zjvp7Q/dtA69/YYg+JDd8yrY+xgqN87MUlzijIZBghjL2Oa5Pg0QxluX1sXBBIA7R1ooAeIf85SO7wVVCJ4EYa+pPm1qvsNrE5iEi/uZfSqajpvCZTHlh3Peskx9/QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3hmC9g055i6o0viEGz9Q5E99dahMOgcF/rAOyjEuXNI=;
 b=av9d1FU0D9uqiwO2Twi1p+VOX94+osGq2+wc8xuaKWSAtEUOoGPaLWOETOdVpHbS4yvJuo3wuuiMmRoK210stvkEw2ntL9hRLm+SB2zQoL3amfR2WtRFTeEgVrEGUeQfRqMYFSjwW1XVAZSQdZ23BirReUu0CnhB5e7hrprlox/4wvqN3UDiArcxAhcIChOP6D3587RRUHKtxDuCbe/dK9IaTMOhXKh3NJ3fM8igqV/IqB3m2QZrLcl4IsYyrF7oB4A/zHy6Tekq5zQYJnwxEe6DjdC/oPNwVS7ZZZIBdvZZAGOVSJGluIz419tSYWB12jtUXv7l2zIGnC/NBG3Hjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=micron.com; dmarc=pass action=none header.from=micron.com;
 dkim=pass header.d=micron.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=micron.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3hmC9g055i6o0viEGz9Q5E99dahMOgcF/rAOyjEuXNI=;
 b=2TeK+ccrGnCLGs+k9MWoS4uKXHpPeNPAGhBriYLWwmmmd3iS7Nyf5hMokKYIPi2E+V+AUYXIvUcctn8mjI/uMarTC/keyKE4VaKmpnCep2kzmL4r8IWsQwsFS+nI8UWa9ZhWRYKFANxrq6Gfzudq5RPkO5qNi+ANB9Z7pagyaYs=
Received: from MN2PR08MB6397.namprd08.prod.outlook.com (2603:10b6:208:1aa::10)
 by MN2PR08MB6336.namprd08.prod.outlook.com (2603:10b6:208:1ac::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.15; Thu, 27 Feb
 2020 20:34:21 +0000
Received: from MN2PR08MB6397.namprd08.prod.outlook.com
 ([fe80::884a:b0f5:3cf5:f4a4]) by MN2PR08MB6397.namprd08.prod.outlook.com
 ([fe80::884a:b0f5:3cf5:f4a4%4]) with mapi id 15.20.2750.021; Thu, 27 Feb 2020
 20:34:21 +0000
From: "Shivamurthy Shastri (sshivamurthy)" <sshivamurthy@micron.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: RE: [EXT] Re: [PATCH v4 3/5] mtd: spinand: micron: identify SPI NAND
 device with Continuous Read mode
Thread-Topic: [EXT] Re: [PATCH v4 3/5] mtd: spinand: micron: identify SPI NAND
 device with Continuous Read mode
Thread-Index: AQHV7ZjKPZJeMgTIREucfa74oE5zF6gvfO3g
Date: Thu, 27 Feb 2020 20:34:20 +0000
Message-ID: <MN2PR08MB63977337C84EE4537D0BF703B8EB0@MN2PR08MB6397.namprd08.prod.outlook.com>
References: <20200206202206.14770-1-sshivamurthy@micron.com>
 <20200206202206.14770-4-sshivamurthy@micron.com>
 <20200227190729.1c5e4fef@collabora.com>
In-Reply-To: <20200227190729.1c5e4fef@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-rorf: true
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcc3NoaXZhbXVydGh5XGFwcGRhdGFccm9hbWluZ1wwOWQ4NDliNi0zMmQzLTRhNDAtODVlZS02Yjg0YmEyOWUzNWJcbXNnc1xtc2ctODY0ODM5N2UtNTlhMC0xMWVhLWIxZTktOTgzYjhmNzQ1MjUxXGFtZS10ZXN0XDg2NDgzOTgwLTU5YTAtMTFlYS1iMWU5LTk4M2I4Zjc0NTI1MWJvZHkudHh0IiBzej0iMzU1NyIgdD0iMTMyMjczMDkyNTgwOTU1OTI0IiBoPSJYUE4xUitCVUp0bDFqeENHYlkwVHRlKzBCQVE9IiBpZD0iIiBibD0iMCIgYm89IjEiIGNpPSJjQUFBQUVSSFUxUlNSVUZOQ2dVQUFIQUFBQUFVVjZGSXJlM1ZBZjMwRU9EMjdwam8vZlFRNFBidW1PZ0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUJBQUFCQUFBQUFYbTFpZ0FBQUFBQUFBQUFBQUFBQUE9PSIvPjwvbWV0YT4=
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sshivamurthy@micron.com; 
x-originating-ip: [165.225.86.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f18a8b1c-66e8-4cac-056c-08d7bbc46ce6
x-ms-traffictypediagnostic: MN2PR08MB6336:|MN2PR08MB6336:|MN2PR08MB6336:
x-microsoft-antispam-prvs: <MN2PR08MB6336C5B3F03101C40708A193B8EB0@MN2PR08MB6336.namprd08.prod.outlook.com>
x-ms-exchange-transport-forked: True
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03264AEA72
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(136003)(39860400002)(346002)(396003)(189003)(199004)(316002)(86362001)(186003)(64756008)(76116006)(66446008)(66556008)(66476007)(71200400001)(66946007)(26005)(5660300002)(52536014)(7696005)(6506007)(33656002)(8936002)(8676002)(54906003)(55236004)(81156014)(81166006)(2906002)(55016002)(9686003)(6916009)(4326008)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR08MB6336;
 H:MN2PR08MB6397.namprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: micron.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 82y/rLVvMc9vGNUB2f0inKTXg+f2Y8JMZdzm78oD+F6q8sUpzDPbylY8kWm2/XtCtWkKA4LiKk7yOZHMkdOhUlNFXzO2k6RqRy0PYMtbX9g6GOV/qBIsDGLNLUWprGB1geYnF8mKp1VEL95EbbFk8ylJl+3JYr2MB+0cG5eJJl0cu89WRnYEFF0Ez+uWggnoqivhq11rVKw306atnPtM9Ia4Mu1ZUHqqqNcyvqS5U1bK0bzjY9yv3JthqDshvqlAU4vfs6iUD7RoHMSdRClaYdNUjBHd0jfOeww6e7YtJf+tiTxb6G8HhScvzDbdK2/SYako7pVIrIxpVH3YEavXI6fKXtbFy+0Itr91+OZ5hUQIFJ9APyyLFe78hSddeH13cntsZQsmI8CKG47NVK512MX5tChpRJFMATIB7FlN20OCeObQW155mO/o0Jby8fDs
x-ms-exchange-antispam-messagedata: wJriOy3zEDo7cbRUnXOXShNTmlbdkVKovuRtYJMLvd52yoYRrsI+81w/JR5j0F6RjjUorpiNgomrjpUiUpYEC+loCRt59WLdqV14mTLNSdmbOcj04r8cU0VOeYzX2qtIT+S5KJ6EpbfLMdstc9bX0A==
MIME-Version: 1.0
X-OriginatorOrg: micron.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f18a8b1c-66e8-4cac-056c-08d7bbc46ce6
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2020 20:34:20.9241 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f38a5ecd-2813-4862-b11b-ac1d563c806f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7bD0+q4CpVO2G/TShcDPG/pJ/s1tSwnjsmSsBb9YkkudeQsH9L4Zv6CTa1pv/Q89U1Ae16hZYrUPCu9fBxVYfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR08MB6336
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_123426_932166_519B9B95 
X-CRM114-Status: GOOD (  21.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.66 listed in list.dnswl.org]
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
> On Thu,  6 Feb 2020 21:22:04 +0100
> shiva.linuxworks@gmail.com wrote:
> 
> > From: Shivamurthy Shastri <sshivamurthy@micron.com>
> >
> > Add SPINAND_HAS_CR_FEAT_BIT flag to identify the SPI NAND device with
> > the Continuous Read mode.
> >
> > Some of the Micron SPI NAND devices have the "Continuous Read" feature
> > enabled by default, which does not fit the subsystem needs.
> >
> > In this mode, the READ CACHE command doesn't require the starting
> column
> > address. The device always output the data starting from the first
> > column of the cache register, and once the end of the cache register
> > reached, the data output continues through the next page. With the
> > continuous read mode, it is possible to read out the entire block using
> > a single READ command, and once the end of the block reached, the
> output
> > pins become High-Z state. However, during this mode the read command
> > doesn't output the OOB area.
> >
> > Hence, we disable the feature at probe time.
> >
> > Signed-off-by: Shivamurthy Shastri <sshivamurthy@micron.com>
> > ---
> >  drivers/mtd/nand/spi/micron.c | 16 ++++++++++++++++
> >  include/linux/mtd/spinand.h   |  1 +
> >  2 files changed, 17 insertions(+)
> >
> > diff --git a/drivers/mtd/nand/spi/micron.c
> b/drivers/mtd/nand/spi/micron.c
> > index 5fd1f921ef12..a8e947609cd9 100644
> > --- a/drivers/mtd/nand/spi/micron.c
> > +++ b/drivers/mtd/nand/spi/micron.c
> > @@ -18,6 +18,8 @@
> >  #define MICRON_STATUS_ECC_4TO6_BITFLIPS	(3 << 4)
> >  #define MICRON_STATUS_ECC_7TO8_BITFLIPS	(5 << 4)
> >
> > +#define MICRON_CFG_CONTI_READ		BIT(0)
> 
> Let's try to use consistent names. The feature bit is
> SPINAND_HAS_CR_FEAT_BIT, so maybe MICRON_CFG_CR. BTW, is this really
> a
> micron-specific bit?

I will change the name.
Yes, only Micron uses this BIT for Continuous Read feature.

> 
> > +
> >  static SPINAND_OP_VARIANTS(read_cache_variants,
> >  		SPINAND_PAGE_READ_FROM_CACHE_QUADIO_OP(0, 2,
> NULL, 0),
> >  		SPINAND_PAGE_READ_FROM_CACHE_X4_OP(0, 1, NULL, 0),
> > @@ -153,8 +155,22 @@ static int micron_spinand_detect(struct
> spinand_device *spinand)
> >  	return 1;
> >  }
> >
> > +static int micron_spinand_init(struct spinand_device *spinand)
> > +{
> > +	/*
> > +	 * M70A device series enable Continuous Read feature at Power-up,
> > +	 * which is not supported. Disable this bit to avoid any possible
> > +	 * failure.
> > +	 */
> > +	if (spinand->flags == SPINAND_HAS_CR_FEAT_BIT)
> 
> 	if (spinand->flags & SPINAND_HAS_CR_FEAT_BIT)

Okay.

> 
> > +		return spinand_upd_cfg(spinand,
> MICRON_CFG_CONTI_READ, 0);
> > +
> > +	return 0;
> > +}
> > +
> >  static const struct spinand_manufacturer_ops
> micron_spinand_manuf_ops = {
> >  	.detect = micron_spinand_detect,
> > +	.init = micron_spinand_init,
> >  };
> >
> >  const struct spinand_manufacturer micron_spinand_manufacturer = {
> > diff --git a/include/linux/mtd/spinand.h b/include/linux/mtd/spinand.h
> > index 4ea558bd3c46..333149b2855f 100644
> > --- a/include/linux/mtd/spinand.h
> > +++ b/include/linux/mtd/spinand.h
> > @@ -270,6 +270,7 @@ struct spinand_ecc_info {
> >  };
> >
> >  #define SPINAND_HAS_QE_BIT		BIT(0)
> > +#define SPINAND_HAS_CR_FEAT_BIT		BIT(1)
> >
> >  /**
> >   * struct spinand_info - Structure used to describe SPI NAND chips


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
