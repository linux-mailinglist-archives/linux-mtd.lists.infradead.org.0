Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4513163E85
	for <lists+linux-mtd@lfdr.de>; Wed, 19 Feb 2020 09:07:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S6wsv+BK5GLXPHgOcnhsolY0TohHYW2foT6xFo2Xz9U=; b=HmlHjBq9GVcrhz
	0c6/AwqaKbo0Sd72CJ4vIvnneFVS+kXBj/BlZFMsyRpBXweE0+SWc2Qd36v21ZfxQ3Ym04WOoLyfu
	pRplo/G4UApA39nbvVyadYHUMKOlrU71O1X+qQNtxvdCnfuFkq7m39TDWEYn5bLuZDsWJWFMlRO63
	+arffHi/Zu3VohrUJJehBQp2s8GuVM++CGHK9d89J7YWQ173kFu1DzMPqullk8xFRwGAnbtMrLFiy
	gcUMRZ544nniozI5iQcEgTQTu1m5Dga1CcFjXqG5KEGByK9HD3rSWzKDhgTjF6/oXG0wzwtBDjdmg
	qR3mSddzqhdF1jQD46fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4KOB-000245-4a; Wed, 19 Feb 2020 08:07:23 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4KND-0001Sj-1D
 for linux-mtd@lists.infradead.org; Wed, 19 Feb 2020 08:06:29 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: FG0giC8yO/zxEicxGN5bdtY8IGoFWrSm2JPVl7hEQyj551DemTPRlX8nejnWvwuqI8Y+XNE7eG
 oP/b91TJPfUEP/zdy7hPU2Xg5BNDh3VU+PwSytngA2BSRwKtfiv8xAMpNtvvBQNDkmyA+VLZRn
 GgXmE5z8YF4yQ6Uei3X+607u20PiOytLBkJt3i5lfjT+lkqb6UwtJuCXcGfm9MKBIpkloDXun3
 RIOOvKjIkeahHMOX/VKtKYip88ytMI3j5247e6FAtg/gp6ToT4IR2IpAv5A6VWF9eRNZvD793i
 NmQ=
X-IronPort-AV: E=Sophos;i="5.70,459,1574146800"; d="scan'208";a="67180599"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Feb 2020 01:06:10 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 19 Feb 2020 01:06:04 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 19 Feb 2020 01:06:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ezIQtEvznOLYayLb99itK8K7+KUoP2FQWr853Rwu6SD4sHquhRO1FGHGle/wYMg1raZbliMxLLUrKnXElIxU/Bmz/Y9za9Mll0+kqHmOs/yXUqYuqo/jyaur00jBuAT6m/fWwHWrp60y3zFGm51ye0qULaKTsb+F7nFVW2Zg0ybkoyu5iH8unjFDgb/rah8OwLVPFu0xGkEh4NSFoS4EQUXJ3z2OF0z0c1gb6HuzXAEBfuWoW1SO+/MGxZfgjSWjsziVjbHP8cBv6q9EIkN43g18QIY8mAE+Gb/qg8JJ7fmAunByetb4tC0GladSqmqSAwWkcMGWismcQtz3aBCYgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8czYuADdaQQwt8BtN1lJ+OPd5Aa27YGlhC2kjdKBQOc=;
 b=IbYDxy6MbLTpQe6hSQp3ZHeZbvJwpoQOqJMBZ8mjwIxbHotsdMK1z2+3IKCMZce5CaysDUn/pzvZ59TddFH4MZMBYZAnZa5aNdt4HJiKL4N1ezlW+ndmNSNouefHlfP1l46MNtSr/MBE0WYYkHfbc4/zZCBq2Kmk+N/ylDX8Eg7A0Is1ZfbVHTI5yLrGX2nZYhwo+3DKMSAgswPl47/YsHV0rmqMGfPxoeoO5DzE8UNKBjP6nyzMCD2k866y+aFHJ1MatuCVmtyzTbkiHsahBjC09i3eLTuvlMcItHdj0skuhcjPnXTyH5t160HfGCTNyPmuMJBq+nU/VuKWlqipmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8czYuADdaQQwt8BtN1lJ+OPd5Aa27YGlhC2kjdKBQOc=;
 b=PbL2cZCnJ3RAZuqVw9iYXj8f0BxcLf743/JDsYcjAIkLrhEjYnqlj5kbFyKdgochfXOX6nGNO1NK/E3Bm0fy5sA8mypXbq8nKCUkX5tyHptdf4BTBEErBDdHBgk1wIGGRWIJIWryfvrHSn47znjqWPlMXdjNUvzwSXteLMZP67w=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4175.namprd11.prod.outlook.com (10.255.181.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.17; Wed, 19 Feb 2020 08:06:08 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 08:06:08 +0000
From: <Tudor.Ambarus@microchip.com>
To: <j.neuschaefer@gmx.net>
Subject: Re: [PATCH] mtd: spi-nor: Simplify loop in spi_nor_read_id()
Thread-Topic: [PATCH] mtd: spi-nor: Simplify loop in spi_nor_read_id()
Thread-Index: AQHV5vtxJe3NG8eq40Gy2BJBFopNWA==
Date: Wed, 19 Feb 2020 08:06:08 +0000
Message-ID: <5604429.rq6fcmI4QA@localhost.localdomain>
References: <20200218151034.24744-1-j.neuschaefer@gmx.net>
In-Reply-To: <20200218151034.24744-1-j.neuschaefer@gmx.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 607fd1e8-6fff-48cc-c38e-08d7b51293be
x-ms-traffictypediagnostic: MN2PR11MB4175:
x-microsoft-antispam-prvs: <MN2PR11MB4175CCC07719B0958759A272F0100@MN2PR11MB4175.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0318501FAE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(376002)(396003)(366004)(136003)(199004)(189003)(2906002)(8936002)(5660300002)(71200400001)(6916009)(316002)(54906003)(26005)(6512007)(9686003)(53546011)(86362001)(81156014)(81166006)(6506007)(8676002)(478600001)(91956017)(66946007)(186003)(76116006)(64756008)(66556008)(6486002)(66476007)(4326008)(66446008)(39026012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4175;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: e2uoiHUXVIgunodQM/QMKWn47G6qQ8kqDTiGkYZYqtyvlD5C+BPQGfHqVVPdUqZ7VmAfoZjF3APLtQQb2U8FvzRopUrEks889LugIxNxS4VijMeC7y88Y4RcEeoJrtpSNI5lzpFs2L2cowF2ML64tXokN28cgjcpaNZUolc5kR64Ivx4A4MP5i9X9qMVMyc+D4s5fwjF8CuUrfDgiv3C+P7bJ0RHACXHMKUsxVHmq+uKLZrQNDnSETOlMMc74dlZTXYuK8AnYXqcEHvl/5lQriQw9tVx7gUWMwQkku+joB67UaqalfFNS4BQvl5xE0Y7DaFlKZ3cto2+4NUdqbvmQvahuSApOZNCKird8rLxhqzRv67allItScVUiSbIe7C3NZ3ybZUaFH6J/1Sxo/1ANowPiF27ZkKcSpnztnLwN//Nvf16h/9TA+B+c1r21epRuB290MwHhQLay6tcdWxKuvjf+oRQz4qTKpJtx6G7gmIlRmQxydpR6xharOm3P3X8
x-ms-exchange-antispam-messagedata: Oes7xXBpK4y8kIaYa8BoPTWjS6OSSLYWHxlRUg9CBidnFpSjhT+89nrSIoIqujITeaJ55f493A4wQxIMtIk7TrOt4fJRpPI+9BSeHEcX1XL485JUkWt8bpY4x7mD3vGWi0kiAutb7wWRc3OTCyld2Q==
x-ms-exchange-transport-forked: True
Content-ID: <483678ED2FE2CC458C339AA72BBE6CF6@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 607fd1e8-6fff-48cc-c38e-08d7b51293be
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2020 08:06:08.8096 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5Yu2dMYTB5nj/qBviLlnM5XehZrjxB7nzGYmwPtW8BUGMtf9m6FLQ76HX6hKNvX8ujs6wIsraBXO/6GKe9NN0AcJmmq5ZnSyza3k23kbVhQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4175
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_000624_509849_1D7512D1 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: richard@nod.at, linux-mtd@lists.infradead.org, vigneshr@ti.com,
 linux-kernel@vger.kernel.org, miquel.raynal@bootlin.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi, Jonathan,

On Tuesday, February 18, 2020 5:10:34 PM EET Jonathan Neusch=E4fer wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the
> content is safe
> =

> - Don't use `tmp` for two purposes (return value, loop counter)
> - Name the loop counter `i`, as is convention
> - Return the pointer variable that the if conditions leading up to the
>   return statement already operate on, rather than a different
>   expression that evaluates to the same pointer
> =

> Signed-off-by: Jonathan Neusch=E4fer <j.neuschaefer@gmx.net>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 4fc632ec18fe..c491572d5267 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -2711,7 +2711,7 @@ static const struct flash_info spi_nor_ids[] =3D {
> =

>  static const struct flash_info *spi_nor_read_id(struct spi_nor *nor)
>  {
> -       int                     tmp;
> +       int                     tmp, i;

while cleaning this function, would you rename tmp with ret?

>         u8                      *id =3D nor->bouncebuf;

and please drop this tab between u8 and *id

>         const struct flash_info *info;

Also, IMO, the definition of variables should be done with the focus of =

avoiding stack padding. With this in mind, I would first define the pointer=
s =

and then the ints and smaller types. But there are others than prefer defin=
ing =

the variables in a tree/reverse-tree way, depending of the length of the li=
ne. =

There's no agreement on this, either way if fine, do as you prefer.

> =

> @@ -2732,11 +2732,11 @@ static const struct flash_info
> *spi_nor_read_id(struct spi_nor *nor) return ERR_PTR(tmp);
>         }
> =

> -       for (tmp =3D 0; tmp < ARRAY_SIZE(spi_nor_ids) - 1; tmp++) {
> -               info =3D &spi_nor_ids[tmp];
> +       for (i =3D 0; i < ARRAY_SIZE(spi_nor_ids) - 1; i++) {
> +               info =3D &spi_nor_ids[i];
>                 if (info->id_len) {
>                         if (!memcmp(info->id, id, info->id_len))
> -                               return &spi_nor_ids[tmp];
> +                               return info;

Looks good,

Cheers,
ta


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
