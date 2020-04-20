Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE9B1B13A3
	for <lists+linux-mtd@lfdr.de>; Mon, 20 Apr 2020 19:55:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p+IVqZj6nIx6gAuj1EnvtUQaKInspDiQXV/soauOZoU=; b=DpSpbHXvXyC9sz
	r4xIUlhisKe9sGMW3bbcm/63iR+vS6jUazUa4q9xOOYhbjXTc6uo0FPPOgJurKpYS/cGBeKUexoDJ
	dBnmthVohibK/g+94cDWRtcGKYpb7Y9tcEeJlLwi9SFWFvfPEhkhuJAG2K7EFLX9vFdnM7X8HsnWS
	W4kbVujT9kaWBYVUTbQZsgXeNNiXR3zd4c3GN6nMoVYfqKaMKWquyjkq3IGgtXktgRfFKzjgLYCo9
	6yU1x/3V6tlwXtsmbk/IWRP+K/xobJb6pNcWPOX4C216ybnaPxduS92FhRoYPucPwuGqAnAYVMiif
	D0GOxjC+PgxfL+rp2XmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQadl-0000hf-5Y; Mon, 20 Apr 2020 17:55:29 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQadY-0000h2-31
 for linux-mtd@lists.infradead.org; Mon, 20 Apr 2020 17:55:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587405315; x=1618941315;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=BnbA6eHdMIwBpWClWAgycBGmMKtOqMr5Kh3zFhNRYVg=;
 b=X3gqVO1GEar0g6xJhNmOr/3z4vBNR+pcgxNqZ5u+E88xQzGvqDlC0WrN
 2Z8c8B50VOlpArXdixclDMT5uKk4gelcqDTz1/s+cszA3No+fFxipz2+4
 hUWEcmcE6Q2pRD8JY+M1i7Ox1GUQKjl+qvm9lA6LIzz5wHMK8Gzp/2bW4
 slg/0p4iS6mTdr+ncanayZvv/tPnfVvel5CtthQTyAGgxYsdSF3L6BBUo
 BQg3qXhVd7btKXhB99SK2nsWDbvaFmPoJv05Osq1Zd6DC1a3yxYNMccxh
 dsktVs9xDSOE15aaqERPI5DwpGjedOQlM3yoVM2TuQHyKmvxOUitXMmC2 w==;
IronPort-SDR: jJmLwKriquyEu4xFFFr1xmLcRYozPSLI2tNkD21U8bZb4Q4LVo7HB39MdM4fOlX6fBhhe3ZjhW
 ZmeJuOGlMsy6fRl8bOOlm87nb0Yd8DES4hDaolnSvFbA4SOxBTovslJMN3pX8KN+kua6PJpQip
 gVdx+ghokYWqxycG3WjxXL9ChJL4tFLCnDAnSL1B9xaPrFx5mBeoacbMFZkQT0yjmtQZvNakng
 LVi8JlFOzE/Uun4sXeWa9dT6ECpbIJrvHBqJodvt8EKURb6R7LgNER6kK7+Ck/2/AZUWRJ3Hxv
 YfQ=
X-IronPort-AV: E=Sophos;i="5.72,407,1580799600"; d="scan'208";a="76594748"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Apr 2020 10:55:15 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 20 Apr 2020 10:54:46 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 20 Apr 2020 10:55:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mnKSv0xd7VPG1jrGduoZ+ZqT4etv/WFip4eCa8r/9A2n2hUSfqdVx26aOOAiYsF7TNodIL5rGNEccsCCuKLdX4ADYz8/fdLpi5He8Gv838wQFWrcuDVNhaDpP6SCLTm4/StyE7RVvveZKFT42kiDfF2aWA1S9vyvK+tkqiuihUiws681vIY8tj+C55TWZClQSr21xdZ2q4C3WKVHLJ1lpr/VyOOYAB+fOYIsDQn0NICmL53aqLZbG5Tui4y/E1Kgm1ehTc9bKCqO1GpyiAY5j5YCGKOVaPJgx2vdb61kNq/VFguxkMkSWydnCb/A9Gi3E1AjSbZNId5N3jAxpJ7lng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BnbA6eHdMIwBpWClWAgycBGmMKtOqMr5Kh3zFhNRYVg=;
 b=lgBZknG9GN9ykWJgUev4pCb/eRHVT9op3p6cmQDmAHtaFlKJQvg9+otgfAxuvLEac46nI051OF9+A5KMc+fzRTufJ6xt4deQsVjXWZGa6PhT9s+6NE5xnSQiieTgN963lBtvoRDQOf+rjYqYa/t8Eot63RPTTvj8Bn/KCe115fEfVealFsegtnZOfheKFuaBUPPErteYlH2VOP64OJPRtqGxP8+5UvDzTvYgxOMkYedAuHBYjUbTVeK+pw/wLdpt1cWqTIZXqOuVQjei4q7ETroj0eKBmWK1IbQQdN02qn1UI4RoVIXJfJ9ZVQbpksLymemPG0iZ6uGSb0jjxuej5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BnbA6eHdMIwBpWClWAgycBGmMKtOqMr5Kh3zFhNRYVg=;
 b=J+FEXOTvvf1sCVMkyAsZjvLoirkCIWIH/Iio8D+2uhDA5rDp6MD0vjMbyPBfSP89+SmU5sMqYNgOMVasDYTwQYrrAXf6HoNj6TzdVreHhygBAHAfaR0eyJleXy212M+RoC2qrt9D6EjEDGRFT0sMVws75aFfobCUWDvIP6SHWDc=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4193.namprd11.prod.outlook.com (2603:10b6:a03:1c8::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Mon, 20 Apr
 2020 17:55:13 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536%7]) with mapi id 15.20.2921.027; Mon, 20 Apr 2020
 17:55:13 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>
Subject: Re: [PATCH] mtd: spi-nor: Make spansion_set_4byte_addr_mode() private
Thread-Topic: [PATCH] mtd: spi-nor: Make spansion_set_4byte_addr_mode() private
Thread-Index: AQHWFztiKlfLjRbGuUCs6WnGY5Zt36iCSzYA
Date: Mon, 20 Apr 2020 17:55:13 +0000
Message-ID: <16862219.7xblB9aHGD@192.168.0.120>
References: <20200420174443.221527-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200420174443.221527-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Tudor.Ambarus@microchip.com; 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5290a846-7fed-4fa1-4d34-08d7e553f9d8
x-ms-traffictypediagnostic: BY5PR11MB4193:
x-microsoft-antispam-prvs: <BY5PR11MB4193514B20DBD4627CC3AE25F0D40@BY5PR11MB4193.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 03793408BA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(366004)(346002)(39860400002)(136003)(376002)(396003)(186003)(9686003)(6512007)(6506007)(4326008)(14286002)(26005)(53546011)(316002)(478600001)(71200400001)(66946007)(6486002)(66476007)(76116006)(91956017)(2906002)(66446008)(8936002)(8676002)(4744005)(6916009)(81156014)(5660300002)(86362001)(64756008)(66556008)(39026012);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: l8kV7TdGoW+cGG/IRBuuHiOLy0BFisQ3WE9DhzfbSZGqbLWZN8PuByou3R+X0+DCT1uipgPiYSRRsz1uswpgNM3lXZ/pWtIHGM/AkBzon2GSFIPlH887s6wgLUs9mFNsBXoGOzJHB6QFsQQp6UN5Nnxt+3zpFWTeIonLeHEUK9A1ByBbnvmlAZoWNkv/y1t7jbFYS47WBjTzPrdSJEKYuHzmLAu/GA5iw4MJ16cEkOA3/1uGLsoehxbYxnH5WgYX4BWW3d4mWakW/Uami2ZnVkEduEf/Y2CRO6aRbPvtfdcAyBl3vb1g8IkiSkx9JBfRyXP7Dia4rIRhHidQwGYmcXym5IavJGYWnDkHLjiaod2/KvVp4JwZ0D894ChT7NQxjOeanGaRU6xzZtQIA5dDJx9sZwoVlOwJI/UR//vuPXPjfPYoUS+C3CeDLAO85Red6x1+ElTPSlLoyjie9KjFXsMd5xSx0PYldhYFtsygmDWJwWkjYcym5jSDrdDvULkA
x-ms-exchange-antispam-messagedata: qBI27Le72Z1XdYI7sguVTIWwBpZZqxAPJT/TOsoRPw51t4yg//sU6Xs6+Bz6/SsOdVbRKboLXkD/ky7L9jy6ZyPdfGZJdPSHzDQwtSle7706LZRf6PZYEkun/vGb1xbPS80PLt4ZHvgpQuglg1dNRA==
x-ms-exchange-transport-forked: True
Content-ID: <B6244DB819229B4AAD806789EE80BEEB@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5290a846-7fed-4fa1-4d34-08d7e553f9d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2020 17:55:13.0394 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nEGbLhx8eJTmfM5c7+y9sMhn6Np2Dv/L1er6fYTd0vynWsjL0+iePWxjlE1nmIGDwIvDqx3TzSqh3ldDvwOpgzFhDxMNUJISWj4nR54U1kw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4193
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_105516_154470_CC4505FF 
X-CRM114-Status: UNSURE (   4.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Monday, April 20, 2020 8:44:47 PM EEST Tudor Ambarus - M18064 wrote:
> spansion_set_4byte_addr_mode() is used just by the spansion flashes,
> make the method private.

The subject should be reworded to "mtd: spi-nor: Move 
spansion_set_4byte_addr_mode() in spansion.c", because as of now this function 
is already private, but in the core.


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
