Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C719CF38
	for <lists+linux-mtd@lfdr.de>; Mon, 26 Aug 2019 14:12:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=misNTWYJpc6DBRyYQJENc1zQSpf+FxryyIymqeUTWRw=; b=Gn5Oyh20vqf4wv
	qhdA0VU8iYO4VtGBW0lNwWy9niXC9N4+dWGTeFQ7tWyoOZsVV9xbI79kxlmb59//T2K4+ZldtLvq5
	R9KySUXC9yfWpmEIfvMc/BEl7qrr3wWkwcI65pOvCho5QJjLkP5Z6Vd4FtnAkAAdcbGaqVg3iFVOF
	nuTnz2u1cgdW4C5NANhKjpE9PBn775Sd4BrK1MbmNdgH1nK9+yCvm93NJa/K4SIX+u6H9hHfP8EwS
	21ioGz+Zx0ve9J89DAmwb342Tp0FV8WZN6lGwSkhANl0whkwjlcyCYa+xQH5Th94fo+7UFUjQYoZO
	agBzdkW3PIto8CGd5iKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2DrN-0007ac-9g; Mon, 26 Aug 2019 12:12:33 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Do7-0002m9-Me
 for linux-mtd@lists.infradead.org; Mon, 26 Aug 2019 12:09:18 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: +cWE3UK4kxADAkXwkfd3ldxdvBkWTYAefW9na6aoou0f4hTJF5hISjnrpJRzoJq5J9Xi3/HYrq
 q22jd8vUUvViPKfrCRkiSsrRa1ykR0RairRw7Vln0ROAya/YavyeH69FQaM4ICvvZto6Y7WTe+
 drXn/zuMZ7AH8S8/lXOyIWvgWz8ssFiy5oQu0/6J1YwZfZHmNOgJVLDApZ+BrtKuxv9pFI0iUA
 LDltls/0IIk1mCS0rQbbnwVP8pc9tr2f2fyLMsN3eMtD4Qw201exzz5xibaE1gWPOkN7McprPb
 WrQ=
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="43686997"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Aug 2019 05:09:08 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 26 Aug 2019 05:09:07 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 26 Aug 2019 05:09:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZllERcqDEEmYKjnRku+J+s8VoMfLkfPe1i5ubYCMor1XeajPypkkoJb8vPO0rraL3KCPjyxpGJ6bJ2mtGrJr9GLX3q/V5HjOUfVGBKr3zNQa6sIVZE14JP9/U1F7X4QjBjSmQQi3aAb6ng8a48MCxDWTwfOF6QkavEmMrFOKOr1ko4y7BzjW2XMhddSxYsx6tUSt3P8eGTGCEuDiqChq91TKv8CYs+yrsCT7qMAivXNtg7WhZ/8GAOGtWopELXV8mSWnHNsvynv/fkFvkyewcW+N836m4NpihK24vZfApDIiswg6P0FonbCnWAuY/vzKu4KflCoKy/zp9m8a4ut4Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+yK9dRxC9iY3j+O2ONywA5bmxln9Fx0o7B7YIQAhH6g=;
 b=BFXi6nuLhNaZySALgV13ptd+uqi6TSP2KvvTkTHbRK4kBNnzPk7pdLgTSoPmdGyv/nWP1cKGHqgGPwh+WTuLNrdTvOFGVDcohzDm9X7NzMeK4TmKLKDOreHOyTnnV0ieqM72hLbipqOnAQOJvAlczTyuK6geqAe8MQGBnllNmYphjRciDNi3YKPrYD4wQHW8ESw49EfPdoodMP6v3IEclZcWFKODPPy5P2CoMk5Wn1XfwBwcskCeBazgI/VEqxD5GK+6Z3EiFUBFL7EXWtwoACvHNN8CEMdlcGj2zS5b3Aa7HBB/TyR2u4QMBD/8IpYHigTJb20DJZqm/PLwBg/9Qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+yK9dRxC9iY3j+O2ONywA5bmxln9Fx0o7B7YIQAhH6g=;
 b=DQDQOjyN/BOTOMswJAlzHB+Id5aRD8H8QI0VJ5FfmeC8Sl6+jSQ+WoPNTWQvWFqkAoLnBZkVVnXRFVdXHgAXECPFIDIy9XsrNr/KrprdkP9y8CXAo4JC0HkqfuRtBnT30+AYrKfj2H2GwPJP+qdd+3C4Frb/aNL57Jy4AEsy3GE=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3678.namprd11.prod.outlook.com (20.178.252.94) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Mon, 26 Aug 2019 12:09:06 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5%7]) with mapi id 15.20.2199.021; Mon, 26 Aug 2019
 12:09:06 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>,
 <vigneshr@ti.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [RESEND PATCH v3 15/20] mtd: spi-nor: Add s3an_post_sfdp_fixups()
Thread-Topic: [RESEND PATCH v3 15/20] mtd: spi-nor: Add s3an_post_sfdp_fixups()
Thread-Index: AQHVXAcLGug0TlbN8kamSzLVrzO6ow==
Date: Mon, 26 Aug 2019 12:09:00 +0000
Message-ID: <20190826120821.16351-16-tudor.ambarus@microchip.com>
References: <20190826120821.16351-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190826120821.16351-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR09CA0046.eurprd09.prod.outlook.com
 (2603:10a6:802:28::14) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c7e0b2f3-6486-42fb-336c-08d72a1e2d9f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB3678; 
x-ms-traffictypediagnostic: MN2PR11MB3678:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3678A0E4E465C8EA58E2DCF6F0A10@MN2PR11MB3678.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 01415BB535
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(366004)(346002)(39860400002)(136003)(189003)(199004)(186003)(86362001)(305945005)(2906002)(7736002)(2201001)(6486002)(6436002)(6116002)(3846002)(66556008)(66946007)(66476007)(2501003)(66446008)(64756008)(5660300002)(71190400001)(14444005)(256004)(71200400001)(1076003)(6506007)(386003)(14454004)(107886003)(316002)(99286004)(76176011)(110136005)(52116002)(6666004)(2616005)(476003)(486006)(53936002)(66066001)(8676002)(8936002)(81166006)(6512007)(4326008)(25786009)(36756003)(478600001)(81156014)(102836004)(50226002)(446003)(11346002)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3678;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RXC6BUH0PS89gCigq/42s5pMGWHujVUrypQA2rOWFeUZxbNgitlkPgxWqoEmp2JJNpQsyWNkHrzil6QuBhBsOSyD3dQMdnuLJ+RKApVFjXIvvDR17pCMyOYT7Ole6u7dPRnx8CYOOM5YVj5EpYu3VzqvgmAhXQ9VTBnKdb/t6Va/ldxwSowLXSvS7ankdHdrVPrdl/y0VY1Rz6TZONV757o+qdn9zRLvgcMSLRV/8F8xw23FIGxzLbJ54ne57DLTJA17WQhlT0/enWQ9Hxap6NAkn9MgP/pPmU/8ZA+HiputxrNAocbdXeCMPFfIWmS9Bs5byE5vQ7mTuxG14uLdT/B5a57J845Wd7MsSS+YowMoW9JUT1InJc4oSFFH62FL7QZNW0ziw0xs0wu+xyMfOJ32jc7NkSYE+ljGbvT9F60=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c7e0b2f3-6486-42fb-336c-08d72a1e2d9f
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2019 12:09:00.0897 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ra4WiIgyXE0fuTtc3GD/4b1Viy851cgyALWbSuJzhOoIjdp6nLIArOsgz/D1LqaiW8Ixm0sFuP5u4Emk8qKHIp8rMSu11uGeD41gCwGlmQU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3678
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_050911_841072_968494BF 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Tudor.Ambarus@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

s3an_nor_scan() was overriding the opcode selection done in
spi_nor_default_setup(). Set nor->setup() method in order to
avoid the unnecessary call to spi_nor_default_setup().

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
v3: no changes, rebase on previous commits

 drivers/mtd/spi-nor/spi-nor.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 2aca56e07341..edf1c8badac9 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -2718,7 +2718,8 @@ static int spi_nor_check(struct spi_nor *nor)
 	return 0;
 }
 
-static int s3an_nor_scan(struct spi_nor *nor)
+static int s3an_nor_setup(struct spi_nor *nor,
+			  const struct spi_nor_hwcaps *hwcaps)
 {
 	int ret;
 
@@ -4530,6 +4531,11 @@ static void spansion_post_sfdp_fixups(struct spi_nor *nor)
 	nor->mtd.erasesize = nor->info->sector_size;
 }
 
+static void s3an_post_sfdp_fixups(struct spi_nor *nor)
+{
+	nor->params.setup = s3an_nor_setup;
+}
+
 /**
  * spi_nor_post_sfdp_fixups() - Updates the flash's parameters and settings
  * after SFDP has been parsed (is also called for SPI NORs that do not
@@ -4551,6 +4557,9 @@ static void spi_nor_post_sfdp_fixups(struct spi_nor *nor)
 		break;
 	}
 
+	if (nor->info->flags & SPI_S3AN)
+		s3an_post_sfdp_fixups(nor);
+
 	if (nor->info->fixups && nor->info->fixups->post_sfdp)
 		nor->info->fixups->post_sfdp(nor);
 }
@@ -4899,12 +4908,6 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 		return -EINVAL;
 	}
 
-	if (info->flags & SPI_S3AN) {
-		ret = s3an_nor_scan(nor);
-		if (ret)
-			return ret;
-	}
-
 	/* Send all the required SPI flash commands to initialize device */
 	ret = spi_nor_init(nor);
 	if (ret)
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
