Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D796E168414
	for <lists+linux-mtd@lfdr.de>; Fri, 21 Feb 2020 17:51:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O2eC+2krBpnRM5k2Fk1w1p43SQ/fmwz5/qNE2hTSrYw=; b=VGTStNWY6+1770
	UNlKja+zTKFEbqxxQ9yomkan5Irb300Xa/gm/9rQjhzFAqUVNEEcZbFd21nec+0a1hNlBR+N8DRIP
	uCYEFpqH3JSVGIU4+afTeRWyj+81BrJb/uXB/qekH4hByfzkwvqghFFKUEoDAnpX89r28jPI9BhWw
	86ajj6cBkRPciqRzVl4yOeU1olXp1F3c6rR3nJhyiylS+I+ZpKojbKaJrD9PZoKfq/eL9r3sPTJW8
	KetxTJLMVkbj1nZ9A6caAxDciGCaDR4o6P7siPl6xAaDgesFKlVkrfESgEKVOoCWGqcpqLN9F/ObF
	U2K1AKFOvLP/eZOa77mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5BW1-0007yg-AH; Fri, 21 Feb 2020 16:51:01 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5BVl-0007xl-SP
 for linux-mtd@lists.infradead.org; Fri, 21 Feb 2020 16:50:51 +0000
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
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: ZgylSdofNOLT9+O4nfnBTGzh0lZchl5ubcHV52U58IzxtLMNJsTayTufomEBLhTaRa/bokeNjq
 ruugRvoZoVLKC30CQakJW3yegClkP2gyArDRzQOnc0oG5nemIpc4trB8J8ITffJmNooGRbse4E
 xjCuLAAqp+UiUjxj0YXDSIRd4yL280/3QH0kPsJrjthBD9db9XoYxNqKxV+3mysnXjIDUdNkCI
 IGOAUsXIWdm6vMiph9LS2ztMMfPkPx2KPg8SqFaHL/KpqdabjC1nYRVv7aLifxXvaqF+7ln35q
 4W4=
X-IronPort-AV: E=Sophos;i="5.70,469,1574146800"; 
   d="scan'208";a="3191470"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Feb 2020 09:50:42 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 21 Feb 2020 09:50:48 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 21 Feb 2020 09:50:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JEVxvwHotmyBGfA31k8W2UvLuVX8gP0p2Wc2l8o9uommrYVzNyasRPGKjNJyHE8ieNHFeUkt9J5IlnV445m/DPHZXCYxNrAiBIm3HSyFt2wRXDCE2w/0RlYvVb/B0kPNr8KS92g75Xj+KduwScSe3RMKp+5XZc7qtyP9yJgrnvUKzW3IVcWMbDkY6uH2GeN3Y2FUNEy7gfBAr4ggZg5/LFMHlOpAcBpT4HAfC6B1IAR02V2pGJN9vW6MHyqInQ4ppKBd+q/F366nNo55nt6v7F1nT4Ty5A/BF87GnsYwIERu/J6Z8DF4jghkpvs9jNzZiOZNwiD8aqgp+QCwHVuqPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BXvR0+R1Fgz9I1FSa0Uv+yxiqDvk4llef+cF3BYLDm8=;
 b=e6zibaIvlmXrxYVqn82ebnL54uRYh/efQeT3a27Mc/02QB/NK3X/n+K9MHXlUQxrdFvVN7WRRY48/3gc28eZXbSxpnoa4YEpGoaIQKD+UyIXhn96JZPJokm7a1BjVSVGKIUwoeYihByQu2QMu/jNOp4chn2OImJndZrTi+FbtWEQ+E1Qnq77puPr4CfUVKZY2CM8h5yWVhWsYyNayBwKccwoKXiEPjao4+EF1MsaXpsIf3c9xUs6rP/hmE4g2vrwD36ZXQMnynTqKwPmp8JpngXrz4KBrn7rIrQbPEjEhrw9wXcNKk5DYFKOXDISbhXl6XpfX8ewiF1CDnKvdjH9oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BXvR0+R1Fgz9I1FSa0Uv+yxiqDvk4llef+cF3BYLDm8=;
 b=PQsRUZsTfA2lhCmsUfQWuaiFikwOWO4XM156AWPGN9F7O+IYH8NwROv7r2NB6lVKrZbOv8Zyii5ehRyjQvGKjGyjhJHVkGuBwfEjHdlrqAk+HtJ2ReOE6691Gw0u0QnYyaJHc56qcwXLtRQ7MFyoXfG80V14ADapuYhV4YVVHsE=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4695.namprd11.prod.outlook.com (20.180.244.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.31; Fri, 21 Feb 2020 16:50:37 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2729.033; Fri, 21 Feb 2020
 16:50:37 +0000
From: <Tudor.Ambarus@microchip.com>
To: <j.neuschaefer@gmx.net>
Subject: Re: [PATCH] mtd: spi-nor: Simplify loop in spi_nor_read_id()
Thread-Topic: [PATCH] mtd: spi-nor: Simplify loop in spi_nor_read_id()
Thread-Index: AQHV5vtxJe3NG8eq40Gy2BJBFopNWA==
Date: Fri, 21 Feb 2020 16:50:37 +0000
Message-ID: <5932130.I5bQ6OmJFL@localhost.localdomain>
References: <20200218151034.24744-1-j.neuschaefer@gmx.net>
 <5604429.rq6fcmI4QA@localhost.localdomain> <20200221162248.GG2031@latitude>
In-Reply-To: <20200221162248.GG2031@latitude>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8313fd13-48a0-4d49-f487-08d7b6ee2d49
x-ms-traffictypediagnostic: MN2PR11MB4695:
x-microsoft-antispam-prvs: <MN2PR11MB46955395A431CC9820FA8BD4F0120@MN2PR11MB4695.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0320B28BE1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(376002)(396003)(366004)(39860400002)(189003)(199004)(86362001)(5660300002)(8676002)(71200400001)(4326008)(6486002)(76116006)(54906003)(6506007)(53546011)(81166006)(81156014)(8936002)(26005)(91956017)(6916009)(316002)(9686003)(66946007)(66446008)(66476007)(6512007)(2906002)(66556008)(64756008)(478600001)(186003)(39026012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4695;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: y4+7YeYCxh9mouHFr7NjBDXcU5/4Qb6aYY+iEtQd9Grhdvg/r7yAw8DBI0xasqEgSrZkNslDSGelHF9ltHyPUologOWpFEf9JUP2mtX7f+a1sTVO8Z23F1z23MPX01Yz40ncv1nIL8ZQcaW07BiPKNzufYBFe4MmfwzE4NzQxuLU4nrhORSntwNFD64SJwx2blT+RDKuRjnVRta1uUrjyxbyETsqV2ehSfmVZGqkwe2MTUnufu1JUax1Xn/ieXbLQsaNPiDahxUJD0ioZb7iHIiJgtlRanaEYPvoPCINL+TRpo3ib3/yw65EfO+TLltom/NluxWlHp0KQSzuNSXNm0UnUVtqvuwB5x/JlcE92E9Nz2qlffXrlrmirEKnfsbEMjHfoW/1ujil9NuWUFuk5VduO9QR14W8p/YhyZmM8rR/8sQNdj9sbsNXDxlymH33haOEDwiW+x2/QEKDpwXX0Fa7OaD+Rg4O6xIh5MUsJERwhDQnAQ5dpwtH4hVisg2j
x-ms-exchange-antispam-messagedata: kw5U3+nF/+tluOGYIrEiiJ55gt5yUvHD+Fn9FQ06aHGRWVAz/0S7NaEvYfs/d4i9XNzmLDYKOh8OAEp7YjhONiPSSNd3A2/6N5xfK/AcqLgRKxEZBS9gG/J9zztDOBE/cGCf7+o2VMbclhUu4McLhQ==
x-ms-exchange-transport-forked: True
Content-ID: <EA35E1958B267142BD45C4E4E47D201F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8313fd13-48a0-4d49-f487-08d7b6ee2d49
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2020 16:50:37.4167 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2K3yOFXU8EAT23Qbjs/dqqLm2DfbphDmqvxto3uyIYG1TDu700OUWN3hmmotscF4a+UHXy+PeJVM0PqAQcBFu3OgVLiGx9zq+e0cCbnVG8w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4695
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_085048_043578_56EEF3CE 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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
Cc: richard@nod.at, linux-mtd@lists.infradead.org, vigneshr@ti.com,
 linux-kernel@vger.kernel.org, miquel.raynal@bootlin.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Friday, February 21, 2020 6:22:48 PM EET Jonathan Neusch=E4fer wrote:
> On Wed, Feb 19, 2020 at 08:06:08AM +0000, Tudor.Ambarus@microchip.com wro=
te:
> [...]
> =

> > >  static const struct flash_info *spi_nor_read_id(struct spi_nor *nor)
> > >  {
> > > =

> > > -       int                     tmp;
> > > +       int                     tmp, i;
> > =

> > while cleaning this function, would you rename tmp with ret?
> =

> Good idea, I'll do that in v2.
> =

> > >         u8                      *id =3D nor->bouncebuf;
> > =

> > and please drop this tab between u8 and *id
> =

> The same with the other variables in this functions? They have tabs
> between the type and the pointer star / name as well.

yes, please.

> =

> > >         const struct flash_info *info;

how about getting rid of this local variable? Use in the function something =

like:

                if (spi_nor_ids[i].id_len &&
                    !memcmp(spi_nor_ids[i].id, id, spi_nor_ids[i].id_len)
                    return &spi_nor_ids[i];

> > =

> > Also, IMO, the definition of variables should be done with the focus of
> > avoiding stack padding. With this in mind, I would first define the
> > pointers and then the ints and smaller types. But there are others than
> > prefer defining the variables in a tree/reverse-tree way, depending of
> > the length of the line. There's no agreement on this, either way if fin=
e,
> > do as you prefer.
> I have no preference here. I think I'll keep it as is for now.
> =


Ok. Cheers,
ta




______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
