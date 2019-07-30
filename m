Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CEB7B0C6
	for <lists+linux-mtd@lfdr.de>; Tue, 30 Jul 2019 19:46:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UU/pxf2mTpjyblM9cOOOrkwyhzBB0Xk/6SfRL5ws3w=; b=KvGnoGGPZFHrh1
	2bPlWTMfZkT0EGC/DWhkFbFdDqRRCs3+3hKoBJvrhnPSvHt0Xr+KfmPBiXAaV+uCm/dBts48mCSJ/
	chEQr1nZ2cNwNNrS/hKWxWX9nzHQK7oGCNkj3vXYN+HXnGYEOaAVXb4ONwXrLIF0yYP991dAL0dpo
	Q5LQkhXRyJb80FnFpqPW1c87ZyuOJ2hJm04fa9WccUF8Re3E0Jcv4gADn5Kqau4Y4VzIyU8lRkhkE
	HocWz6ZhdvkPoRwNR9wita9JvLxoS2YV+KhTntsqNDZgy8/13qRL4X3+raEyDId549u57Gl3UTaP4
	tjPYd1t5CA2TqYmhxeIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsWCI-0006gm-0l; Tue, 30 Jul 2019 17:46:02 +0000
Received: from mail-eopbgr740103.outbound.protection.outlook.com
 ([40.107.74.103] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsWAd-0003rC-VR
 for linux-mtd@lists.infradead.org; Tue, 30 Jul 2019 17:44:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F1+kkZjZL3XExNekGJglFZU2SfWUrzVVZCIaFGHHIrpHz/vuzqQQyn90xyU4JaDkW7tct7xbwELvnq1637t0tzuEQH48i6WAGCTsngjaDyKBA9jMDrYET8+ducgn26/bseo6BC//bDmg8ELhrCe7zfpR4AaTY1W8jX5wLuCn6uAeiELMEAryF5NAHpIAxJn8RBTaI5duRVxg9NwljdHGDFJCbWMgbfr5pIf69JixoBRuq8pjfEZeBQ3FJc4WdHVCpZvD1eE3HN1cBg4Dd3HyblZwVyr0tbB+c2TWY68AO/m5mx/irTDkySFvQtEM+DrrhLYlBv7cPDir2NUA2FQ4EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SG+mgJGml+VLKAIGTjphO5Z0KAYO/Qs0X5QNpvriwvI=;
 b=PW+c7GD9/648W5Epk7EfzgmpjTr53M6gSImrXKV7O2YsnLruO2occ0ZI5/LnnnEZjcAFDDtnZae5RTip5aaGUJNgPdew/z5Dwa5endNdeDpJjJGcQtC2ShFjGA58Jp37M8hTWH73/7z4COamUiTbe6U1hvbo4RZtcCuPburUPzuSixmKo51G2O1L7PqZn0RPiwdnEk8CB9lZMSWvu0ZgmPYtkhz88CHiVQN1yajNu7OayUE7FDPv/oLTKORkcVrcpcVh9ntII9Pc0N8nrjpbMwiYwfqL+djYFzLMR/ftKBMvett0pMxwXLQL2GbB8cCdaVftRWlUbzqy2yxY+XeU2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wavecomp.com;dmarc=pass action=none
 header.from=mips.com;dkim=pass header.d=mips.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wavecomp.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SG+mgJGml+VLKAIGTjphO5Z0KAYO/Qs0X5QNpvriwvI=;
 b=qhEQJY1lSlez3T7mcAVDK3p27GBrL4fLfsXRKY4/AcuqUFA4kzctiL99ETC9E1KfwTvpo95CE2qLvRHly+ZKKvViD7uEikkiohmoY5oxfnG4qmEJIP60kxraaUGsBwbax8qxQ0hsyWfnfheljYsOEhzmtEsUzqOYOEGj6pehrZU=
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com (10.172.60.12) by
 MWHPR2201MB1023.namprd22.prod.outlook.com (10.174.167.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.14; Tue, 30 Jul 2019 17:44:17 +0000
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::105a:1595:b6ef:cbdf]) by MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::105a:1595:b6ef:cbdf%4]) with mapi id 15.20.2115.005; Tue, 30 Jul 2019
 17:44:17 +0000
From: Paul Burton <paul.burton@mips.com>
To: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH 11/11] MIPS: jz4740: Drop dead code
Thread-Topic: [PATCH 11/11] MIPS: jz4740: Drop dead code
Thread-Index: AQHVRv5prUMgGonT8UmT7v+ptlQ2uA==
Date: Tue, 30 Jul 2019 17:44:17 +0000
Message-ID: <MWHPR2201MB1277B22F5752232A50F9DF8DC1DC0@MWHPR2201MB1277.namprd22.prod.outlook.com>
References: <20190725220215.460-12-paul@crapouillou.net>
In-Reply-To: <20190725220215.460-12-paul@crapouillou.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BY5PR13CA0036.namprd13.prod.outlook.com
 (2603:10b6:a03:180::49) To MWHPR2201MB1277.namprd22.prod.outlook.com
 (2603:10b6:301:18::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pburton@wavecomp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [12.94.197.246]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d19d8d58-31f1-49bf-c0b8-08d715158b5a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR2201MB1023; 
x-ms-traffictypediagnostic: MWHPR2201MB1023:
x-microsoft-antispam-prvs: <MWHPR2201MB10237A12B4BC9DD36D749F00C1DC0@MWHPR2201MB1023.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 0114FF88F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(366004)(136003)(376002)(39850400004)(396003)(189003)(199004)(6116002)(53936002)(66556008)(52536014)(8936002)(74316002)(71190400001)(6246003)(76176011)(71200400001)(446003)(81156014)(81166006)(476003)(64756008)(6436002)(14454004)(66946007)(66446008)(26005)(33656002)(256004)(7736002)(305945005)(52116002)(186003)(386003)(7696005)(55016002)(6506007)(486006)(66476007)(99286004)(102836004)(2906002)(229853002)(44832011)(11346002)(66066001)(7416002)(316002)(5660300002)(9686003)(4744005)(6916009)(8676002)(478600001)(42882007)(68736007)(25786009)(54906003)(4326008)(3846002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR2201MB1023;
 H:MWHPR2201MB1277.namprd22.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: CfE/YTEaiPc2vw5PCYZ7HIZ6xGjGjl8CCpXtF95Q975bD9E1o4gATxtLXzKx3a13ylRszvkGrcKwXqXVJo2cGWgA6hs3oP+CSHCouISXmx4FcqKzWq9MeD2QbiJgWUca+XVhs83dWl+hZYXyXyoUzH2sJQf3AvJpM3rPn04aaBJpTAWxvU2ZFLwX9fQKN19kdpJdnSBi9aKBQLE6+6emPsA2kKfJNm9Jv3gaNx5c7zWOQtW4G6C8PG6mMy43oM2K8o3VfTC6NCekkzJd1kXJmOxoFK1l2MCoXDbFDG9s2t8Q0prGSeiiOep4tYAgE23vcCU4aXbynqO/sIln5RSb6t7743rWNseNVrXkUCRTNk3ZkQ9R0wmsQb0PfrdkUcTL2QGkb1AAtzDwAMSEvXta/TKbm+7i0iya5AtNrbZVMJ0=
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d19d8d58-31f1-49bf-c0b8-08d715158b5a
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2019 17:44:17.5553 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pburton@wavecomp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR2201MB1023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_104420_048237_9857491F 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.103 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Paul Burton <pburton@wavecomp.com>,
 "linux-fbdev@vger.kernel.org" <linux-fbdev@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, James Hogan <jhogan@kernel.org>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Sebastian Reichel <sre@kernel.org>, Paul Cercueil <paul@crapouillou.net>,
 "od@zcrc.me" <od@zcrc.me>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Lee Jones <lee.jones@linaro.org>,
 Artur Rojek <contact@artur-rojek.eu>, Richard Weinberger <richard@nod.at>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Mark Brown <broonie@kernel.org>,
 "linux-hwmon@vger.kernel.org" <linux-hwmon@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello,

Paul Cercueil wrote:
> Remove all the source files that are not used anywhere anymore.
> 
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> Tested-by: Artur Rojek <contact@artur-rojek.eu>

Applied to mips-next.

Thanks,
    Paul

[ This message was auto-generated; if you believe anything is incorrect
  then please email paul.burton@mips.com to report it. ]

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
