Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CB06CE1C
	for <lists+linux-mtd@lfdr.de>; Thu, 18 Jul 2019 14:32:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OYsATuVcS0zqXF1HL4TFWzv4LQrChlBunSMVUIrA3w8=; b=OcpyOcAIg+aOCW
	WJOYbwKOLpyyxHnf5ifIVou665R2g+T8yYUm45mu4vbd8zygryM2QmPdrGQZmzKB9Dicca+b5k2/5
	fU0UnkiooLh+GNIJrE9m4U5UFgQRgLLXf1qtaT5xMpNtqKdHqYQ62AkHHucy7jB+5w0P/PLK0GL+G
	HO8jlj5btUbf7vgUFVFcA/Zef0B++q4KYWYTRpQUjpeIa12yT/0oOoNjxKO8G/AEAbXwHvhaD6QmH
	prVMmtKg1tyd6s9jiLGIU2Ho6o7toMsuBP2WedpOYvdQoCQd5JJMFShfmtxMyAdGMyCTY1msv/AJN
	/xhsfSuaRPamWWPK+3ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho5aS-0008T4-5a; Thu, 18 Jul 2019 12:32:40 +0000
Received: from mail-eopbgr770072.outbound.protection.outlook.com
 ([40.107.77.72] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho5aF-0008SG-4E
 for linux-mtd@lists.infradead.org; Thu, 18 Jul 2019 12:32:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VnY6/hB9kNc+F95lJapJt2EsAqsF3nz7IB7k0XZB7Sbd04TPGci1/3vFabUqz3v+ht+iEDR1NNVUB14LAbFZUExBMI29ySEnccBLZbpC0zwJFC9XXnpJvi+URSdg1e6eHDq3OykxWrnF+hGDs8BtS3VJYyNgeQqQ/VSxsCuGJuGo4x1+czn5DmpGBFT2W5KJnzj3KbZJGEGfLW+qcy6Ot6PNf0ovzn0MiQHMSQmLeVQrX6FD/Mbu1zJH6fr8NMC0dFMNaBqB2nnlCgHckB390ZEwdtCPw/y+n/DsBOApI2cO12fe0CcrF+RXLQyl6xzpPLtMLNkt/jvgqj5+2N5FNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sQga/SRtFGOxY66+A212eCpypLZ9fxAxswMejjRTnJ4=;
 b=nOVVF+HwlKgUEncfOU58s0GwJtj+tNcDHHj0TO5UNpwKUtgZXMmLru4MyIHBSUHAJL48PdhDbxXTZEupmxzh3IwsPoHoFbkSgYpSNeGuWQlnX1yzXBggE6iv/xbYX84vWEntW7cwJqR0EW6BcpsQf3UxD9X2LLk6hwbiMDOtcQbbyuxGE+WuU5cY3pics7zXQEECrZx486CUSqzZGsUypOeft/nIG+HxVYtSz1S7GllA5zPXgc7mjBdO4Y/yjMOZPeFgGok5/Tz8E7bZRxjVFZ9ECSFOzyIEGA47z7+tx6k7nSwmV4low/DUI0Fg1jhF/27kcbqIjrgPLIHiNs87UA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=xilinx.com;dmarc=pass action=none
 header.from=xilinx.com;dkim=pass header.d=xilinx.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sQga/SRtFGOxY66+A212eCpypLZ9fxAxswMejjRTnJ4=;
 b=KioRWZlx7AtrbeHDKPLhm6YHWQqCiE8GZydgjgAH666NWY9RGdUyflII/o4K9wzBTOX+XwMN6lxA7rOWtHtUTeO7bbwJPwLTkUEoiBM5GLFxAR2bpb7+nahU9xCeH/0oKN5Xwx7p66Yb9n1stKjZG7aAAo1aUvCb8jI6hfjFFzw=
Received: from DM6PR02MB4779.namprd02.prod.outlook.com (20.176.109.16) by
 DM6PR02MB5961.namprd02.prod.outlook.com (20.179.69.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.12; Thu, 18 Jul 2019 12:32:23 +0000
Received: from DM6PR02MB4779.namprd02.prod.outlook.com
 ([fe80::546b:d87d:292d:2cf7]) by DM6PR02MB4779.namprd02.prod.outlook.com
 ([fe80::546b:d87d:292d:2cf7%7]) with mapi id 15.20.2094.013; Thu, 18 Jul 2019
 12:32:23 +0000
From: Naga Sureshkumar Relli <nagasure@xilinx.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: RE: [LINUX PATCH v18 1/2] mtd: rawnand: nand_micron: Do not over
 write driver's read_page()/write_page()
Thread-Topic: [LINUX PATCH v18 1/2] mtd: rawnand: nand_micron: Do not over
 write driver's read_page()/write_page()
Thread-Index: AQHVO5eo4+vjEMfVj0u12vHDQxXMaabM2dGAgAADsQCAAWJjoIAAMueAgAAHaACAAAvXAIABjK6w
Date: Thu, 18 Jul 2019 12:32:23 +0000
Message-ID: <DM6PR02MB4779D2DBBD94ACE5E4C2FD76AFC80@DM6PR02MB4779.namprd02.prod.outlook.com>
References: <20190716053051.11282-1-naga.sureshkumar.relli@xilinx.com>
 <20190716093137.3d8e8c1f@pc-375.home>	<20190716094450.122ba6e7@pc-375.home>
 <DM6PR02MB4779307E32670683AE9F60D6AFC90@DM6PR02MB4779.namprd02.prod.outlook.com>
 <20190717095525.6e2e9730@pc-375.home>	<20190717102156.68aa86f7@pc-375.home>
 <20190717110418.34453dd3@pc-375.home>
In-Reply-To: <20190717110418.34453dd3@pc-375.home>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=nagasure@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5132d486-a3a4-4588-9a1b-08d70b7bfbfd
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM6PR02MB5961; 
x-ms-traffictypediagnostic: DM6PR02MB5961:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DM6PR02MB5961AFF25547CC8679EB8A21AFC80@DM6PR02MB5961.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01026E1310
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(396003)(376002)(346002)(39850400004)(13464003)(189003)(199004)(3846002)(52536014)(66556008)(66446008)(66946007)(76116006)(64756008)(81156014)(81166006)(66476007)(26005)(2906002)(6116002)(71200400001)(71190400001)(102836004)(53546011)(7696005)(966005)(6506007)(186003)(5660300002)(229853002)(76176011)(6916009)(316002)(11346002)(74316002)(446003)(86362001)(7416002)(6246003)(7736002)(478600001)(476003)(486006)(33656002)(305945005)(53936002)(68736007)(4326008)(6436002)(9686003)(6306002)(55016002)(66066001)(256004)(14444005)(8936002)(14454004)(54906003)(99286004)(8676002)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB5961;
 H:DM6PR02MB4779.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: d8hLFJJbs64/Tx+ufHf37Q82Kely8983PMfrhOV30HpnOnqJp2Qix86KMl2KY3s/vr5G/VnS2/ddd1+W5kq1zoqWAHhPYmRkfbAr4n5bCYrjVheRFhD+Cen0E/fTU6AhxCcNFuIfoXEWg9PgZOGGjXYSlEVfg+fv+4UZ7Z43wG/vgjPZhooeieDdSC6J2Mt5W3ZeeV9tL5DKSqSdy3Xg0633FFQRroS0optXs/ygpVdzSTbH2arfmkCwbYagesbq7oHe2OGndHtIt+HM2J+5V2PuQPHuLfaW2F7j0LmO81ItuLrI6UB6Olu5O6ShEHRHmyWYqfI7+jRcUjRJWCDzD/hx/CDEtrQfqqgEBpNE6ErmDqqzO83gzhirUUpoy8czWXGu9FT0aCiagQ7bWc0I365DLjheYHiAOwVLRuN2Sxc=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5132d486-a3a4-4588-9a1b-08d70b7bfbfd
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2019 12:32:23.1799 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nagasure@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB5961
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_053227_177517_39244B9E 
X-CRM114-Status: GOOD (  38.35  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.72 listed in list.dnswl.org]
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
Cc: "nagasuresh12@gmail.com" <nagasuresh12@gmail.com>,
 "vigneshr@ti.com" <vigneshr@ti.com>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 "yamada.masahiro@socionext.com" <yamada.masahiro@socionext.com>,
 "richard@nod.at" <richard@nod.at>, Srikanth Vemula <svemula@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 Michal Simek <michals@xilinx.com>,
 "computersforpeace@gmail.com" <computersforpeace@gmail.com>,
 "dwmw2@infradead.org" <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Boris,

> -----Original Message-----
> From: Boris Brezillon <boris.brezillon@collabora.com>
> Sent: Wednesday, July 17, 2019 2:34 PM
> To: Naga Sureshkumar Relli <nagasure@xilinx.com>
> Cc: miquel.raynal@bootlin.com; bbrezillon@kernel.org; richard@nod.at;
> dwmw2@infradead.org; computersforpeace@gmail.com; marek.vasut@gmail.com;
> vigneshr@ti.com; yamada.masahiro@socionext.com; linux-mtd@lists.infradead.org; linux-
> kernel@vger.kernel.org; Michal Simek <michals@xilinx.com>; Srikanth Vemula
> <svemula@xilinx.com>; nagasuresh12@gmail.com
> Subject: Re: [LINUX PATCH v18 1/2] mtd: rawnand: nand_micron: Do not over write
> driver's read_page()/write_page()
> 
> On Wed, 17 Jul 2019 10:21:56 +0200
> Boris Brezillon <boris.brezillon@collabora.com> wrote:
> 
> > On Wed, 17 Jul 2019 09:55:25 +0200
> > Boris Brezillon <boris.brezillon@collabora.com> wrote:
> >
> > > On Wed, 17 Jul 2019 05:33:35 +0000
> > > Naga Sureshkumar Relli <nagasure@xilinx.com> wrote:
> > >
> > > > Hi Boris,
> > > >
> > > > > -----Original Message-----
> > > > > From: Boris Brezillon <boris.brezillon@collabora.com>
> > > > > Sent: Tuesday, July 16, 2019 1:15 PM
> > > > > To: Naga Sureshkumar Relli <nagasure@xilinx.com>
> > > > > Cc: miquel.raynal@bootlin.com; bbrezillon@kernel.org;
> > > > > richard@nod.at; dwmw2@infradead.org;
> > > > > computersforpeace@gmail.com; marek.vasut@gmail.com;
> > > > > vigneshr@ti.com; yamada.masahiro@socionext.com;
> > > > > linux-mtd@lists.infradead.org; linux- kernel@vger.kernel.org;
> > > > > Michal Simek <michals@xilinx.com>; Srikanth Vemula
> > > > > <svemula@xilinx.com>; nagasuresh12@gmail.com
> > > > > Subject: Re: [LINUX PATCH v18 1/2] mtd: rawnand: nand_micron: Do
> > > > > not over write driver's read_page()/write_page()
> > > > >
> > > > > On Tue, 16 Jul 2019 09:31:37 +0200 Boris Brezillon
> > > > > <boris.brezillon@collabora.com> wrote:
> > > > >
> > > > > > On Mon, 15 Jul 2019 23:30:51 -0600 Naga Sureshkumar Relli
> > > > > > <naga.sureshkumar.relli@xilinx.com> wrote:
> > > > > >
> > > > > > > Add check before assigning chip->ecc.read_page() and
> > > > > > > chip->ecc.write_page()
> > > > > > >
> > > > > > > Signed-off-by: Naga Sureshkumar Relli
> > > > > > > <naga.sureshkumar.relli@xilinx.com>
> > > > > > > ---
> > > > > > > Changes in v18
> > > > > > >  - None
> > > > > > > ---
> > > > > > >  drivers/mtd/nand/raw/nand_micron.c | 7 +++++--
> > > > > > >  1 file changed, 5 insertions(+), 2 deletions(-)
> > > > > > >
> > > > > > > diff --git a/drivers/mtd/nand/raw/nand_micron.c
> > > > > > > b/drivers/mtd/nand/raw/nand_micron.c
> > > > > > > index cbd4f09ac178..565f2696c747 100644
> > > > > > > --- a/drivers/mtd/nand/raw/nand_micron.c
> > > > > > > +++ b/drivers/mtd/nand/raw/nand_micron.c
> > > > > > > @@ -500,8 +500,11 @@ static int micron_nand_init(struct nand_chip *chip)
> > > > > > >  		chip->ecc.size = 512;
> > > > > > >  		chip->ecc.strength = chip->base.eccreq.strength;
> > > > > > >  		chip->ecc.algo = NAND_ECC_BCH;
> > > > > > > -		chip->ecc.read_page = micron_nand_read_page_on_die_ecc;
> > > > > > > -		chip->ecc.write_page = micron_nand_write_page_on_die_ecc;
> > > > > > > +		if (!chip->ecc.read_page)
> > > > > > > +			chip->ecc.read_page = micron_nand_read_page_on_die_ecc;
> > > > > > > +
> > > > > > > +		if (!chip->ecc.write_page)
> > > > > > > +			chip->ecc.write_page =
> > > > > > > +micron_nand_write_page_on_die_ecc;
> > > > > > >
> > > > > >
> > > > > > Seriously?! I told you this was inappropriate and you keep
> > > > > > sending this patch. So let's make it clear:
> > > > > >
> > > > > > Nacked-by: Boris Brezillon <boris.brezillon@collabora.com>
> > > > > >
> > > > > > Fix your controller driver instead of adding hacks to the Micron logic!
> > > > >
> > > > > Not even going to review the other patch: if you have to do
> > > > > that, that means the driver is broken. On a side note, this
> > > > > patch series is still not threaded as it should be and it's a v18 for a damn NAND
> controller driver! Sorry but you reached the limit of my patience. Please find
> > > > > someone to help you with that task.
> > > > My intention is not to resend this 1/2 again. Sorry for that.
> > > > We already had some discussion on [v17 1/2], https://lkml.org/lkml/2019/6/26/430
> > > > And there we didn't conclude that raw_read()/writes().
> > >
> > > Yes, looks like I never replied to that one, but I think my previous
> > > explanation were clear enough to not argue on that aspect any
> > > longer/
> > >
> > > > So I thought that, will send updated driver along with this patch, then will get more
> information about
> > > > The issue on the latest driver review.
> > >
> > > More on that topic. I don't think you ever tested on-die ECC on a
> > > Micron NAND, otherwise you would have noticed that your solution
> > > completely bypasses the on-die ECC logic (and this will clearly
> > > break existing on-die ECC users). See, that's what I'm complaining
> > > about, Looks like you don't really understand what you're doing.
> > >
> > > > There is nothing like keep on sending this patch, As you people
> > > > are experts in the driver review, if this patch is a hack, then we will definitely fix that in
> controller driver. I will find a way to do that.
> > > >
> > > > But in this flow of patch sending, if the work I did hurts you, then I am really sorry for
> that.
> > >
> > > I'm not offended, just tired going through the same driver over and
> > > over again, reporting things that are wrong/inappropriate to then
> > > realize you only addressed of a tiny portion of it in the following
> > > version. My last reviews were rather incomplete because of that, and
> > > now I'm giving up.
> > >
> > > > Will fix this issue in the controller driver and will send the updated one.
> > >
> > > How? You say you'll fix the issue but I'm not even sure you
> > > understand what the issue is? Clearly, the patch you've posted
> > > doesn't fix anything, it's just papering over the fact that your
> > > controller driver is not supporting raw accesses (or at least, not
> > > supporting it properly).
> > >
> > > Have you even looked at the datasheet you pointed to in patch 2 [1]?
> > > Just went through it, and found a field that's supposed to control
> > > the ECC engine activation: ecc_memcfg.ecc_mode. I don't see anything
> > > changing that field in your code, so I guess raw accesses are actually
> > > not really happening with the ECC engine disabled...
> >
> > Looks like I was wrong about that part, you seem to call
> > pl353_smc_set_ecc_mode(), just not in the right place (this should be
> > done in the read/write_page_raw()).
> 
> I'm wrong again. ECC should be in BYPASS mode by default and you should enable it when
> entering pl353_nand_{read,write}_page() and disable it (put it back to BYPASS mode) when
> leaving those functions. This way, you don't even have to implement your own raw accessors
> and can use
> nand_{read,write}_page_raw() instead.
Yes, ECC should be in BYPASS mode, and we are already doing that in pl353_ecc_init(),
I will move that to page read/writes.

The PL353 driver is not configuring properly the third row address cycle, i.e. when chip->options is set
With NAND_ROW_ADDR_3, which says third row address cycle is needed.
In the drivers ->exec_op() method, it is just setting three row address cycles but not writing
The row address properly during NAND_OP_ADDR_INSTR.
I fixed that and now as you said, without pl353_nand_read_page_raw() and pl353_nand_write_page_raw()
The on-die page read/writes are working.

I have tested ubifs and I see no issues with that.

Thanks,
Naga Sureshkumar Relli



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
