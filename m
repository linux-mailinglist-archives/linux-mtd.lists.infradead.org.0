Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C155E86BC
	for <lists+linux-mtd@lfdr.de>; Tue, 29 Oct 2019 12:24:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5NH5y6f9RbB9f0mLum+x/u6G4NZ11EvfZN8rvMYVpsM=; b=RjMaq/eHB6fE4N
	Ft83Rfjo5KaAV7qtvSd/cDCiQtOl2XJucXWvRdsY2vY3xDdmsL2Qch3y6i2TLcpKzTeMRUfPSAI/A
	iYP6aEZYfb48t76nWIqG7DisN1MCpaZkYDr5wBZSs1Gtm4KoVSMZU0AHrXSMh2tC2BnWVMQwzRtQ/
	TgpOq6k43cP4c7Je5JsSRMg87pKNhhyoS2CaPWo4JDiLN4Y1uUWKVkNYHzXceApVISfQnzzcBLdv0
	e3xIQTHmKn8IkrqzVFlAPaGDjycfwJsa4o9cJqbb83GjErWFhl96W9X0VMUOMe42d/1t+dFu41Vnx
	AysGOMZh0xMggBloo10A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPPc4-00026k-AP; Tue, 29 Oct 2019 11:24:36 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPPVU-0003NF-DJ
 for linux-mtd@lists.infradead.org; Tue, 29 Oct 2019 11:17:50 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: lkpmhJ9/5XzCYalZS3JKUv7jtb9t6eHjBf9vidbyeIo7V0fSV19soD9vRA645cquGmHT7MV900
 1zIyPUDjch5Z9/tZnaU5dYy7hFNRXs7tQdVtGJBa9507qRzCLUalFDJR+bItCXYRywzLJhAc5Q
 xUh2ukWFhpaFcaBUPLBwvu/TEBcu14SpE8hfkZHZoK9Wf6Bz9kI3Wry14tcd5jYAVuU1oSUord
 PgdfQAZbGnta0EePrXp6fVzjKD4+oaOfzu+i1IhmydexGCZLIkkd9G1a/RFUq17vCC9HDk3xEs
 lXs=
X-IronPort-AV: E=Sophos;i="5.68,243,1569308400"; d="scan'208";a="53292172"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 29 Oct 2019 04:17:48 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 29 Oct 2019 04:17:35 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 29 Oct 2019 04:17:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VhKoMdAcHmCvUTbvxa6Mb1IXPZOvf9T9rA20zI270ftdrYeduCgAQdh6kVL/QaXslswW0vzEKN8lJSqRnz1MoI+LfO6bp6kBAxuFagMyXjCxn7XQ5jm0az43U5Krht0f9xHY1OBw/cCIKhXa+S4lFuOVuiIVu5M5QGOteR4LNuYr4y3PnokFlTz+G6gRRH4rDeL9L6SYyV9m/5hnlq+djbZZC6kJFXrtTmbpzk15Ib9wVtJYNoqZaEEgr7CEoKVYX/u3OIejR6fTFvg93fkGVJSvzCPes5g2aLZuGNu6bNoPmS9iemfaGTHkZFe0XF2c1BoD5eMgw9N6ZI4i3rqszg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NwXLhxL3WyVVhmnZPAoGLAXg2e4utuPFyWNpXqa+g/I=;
 b=feaZGVEreBaoDpRvGKJnEiZFJqa79+4W8GG3shV8y9sgp/bAqDG4f4bYESYcLar0b62mB0MNqqTIIV5dcXVgzk0dfNcajNdBtdcF3WMT18g15CRsf2rKMA6Znj6cNIJ45DqT07UKRNnsNoYRIiG1FFME0RjKJgc20/cCn1KnU0r8Gp4628/CP3V50b3AbiNJ9Nk24ctrrNgvmYKj6VUXNmxdpYOeG10rJf2BE2uQWCFWXcx6j2Puhb7NOIdS99WgOk9eLB0DuSx3fW4jzUjk+ft5hYIJzrhlK7D1Hz/t3oEReq2vFPkcieMexIUdJr+VESwkr2HapWaji6Q74zPVcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NwXLhxL3WyVVhmnZPAoGLAXg2e4utuPFyWNpXqa+g/I=;
 b=sMzg35jF+/smNEtiyQ5q0STuCxJY65+qqKaMRvnrlWv7iy3dxNSvf8Jgui4/439mDOrhRpeno35EoIrTcs1xGsUJOYywLJAPntyGM5Inzk/76MZGLlE+DIjyIz3tIwneCBA2yQ8AH30/HvG9XvsVYmbNgqdgtLDnNvetNtLNqEQ=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3712.namprd11.prod.outlook.com (20.178.253.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Tue, 29 Oct 2019 11:17:34 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457%5]) with mapi id 15.20.2387.027; Tue, 29 Oct 2019
 11:17:34 +0000
From: <Tudor.Ambarus@microchip.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>,
 <boris.brezillon@collabora.com>
Subject: [PATCH v3 28/32] mtd: spi-nor: Rename CR_QUAD_EN_SPAN to
 SR2_QUAD_EN_BIT1
Thread-Topic: [PATCH v3 28/32] mtd: spi-nor: Rename CR_QUAD_EN_SPAN to
 SR2_QUAD_EN_BIT1
Thread-Index: AQHVjkp26pJ1MWTLYUy7Qtu7L2cePw==
Date: Tue, 29 Oct 2019 11:17:33 +0000
Message-ID: <20191029111615.3706-29-tudor.ambarus@microchip.com>
References: <20191029111615.3706-1-tudor.ambarus@microchip.com>
In-Reply-To: <20191029111615.3706-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0376.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a3::28) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [83.166.207.93]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1795e557-28ab-462d-ca68-08d75c619891
x-ms-traffictypediagnostic: MN2PR11MB3712:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3712CD7F0F93753844296E5EF0610@MN2PR11MB3712.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0205EDCD76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(396003)(136003)(376002)(39860400002)(189003)(199004)(107886003)(6512007)(316002)(110136005)(4326008)(2201001)(305945005)(6436002)(54906003)(7736002)(2906002)(66946007)(66476007)(66556008)(64756008)(66446008)(6116002)(3846002)(6486002)(5660300002)(36756003)(86362001)(11346002)(446003)(8936002)(81156014)(81166006)(50226002)(2616005)(186003)(476003)(256004)(478600001)(8676002)(25786009)(14454004)(486006)(66066001)(2501003)(26005)(99286004)(386003)(76176011)(52116002)(1076003)(102836004)(71200400001)(71190400001)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3712;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: F0invncgQH89jCx1k6JRnl02PGIozopkE5pbPzqAasgvv3vJBEx7VjYon+KyaKNbnPQncmFR3c+NFoGl1YH1ChM9PJrNiEvHUvao0kTNdY4Aglhnrztcv55Ozh2Q4+aCB4LOzUFMYUjESHDihk3iuY4hTsu7q45FENjCVPhXOma744RRelIkadsRt4tuFsr4uMEv+CO2iDdvreHpriNKCLksGKbjnm+YUWTQhVeXcMswZ/3ERNsm/o0BQoWmi4xPKMlIDgD5+D0i4KCg9FCQ87YyMbGQvtM8jT+3Pp9aFE1QWiwzn8JETw+9gbjdqbmhxpSlJegRCJaNvv00B63NnfTWQ+uu99CNYPNPsIg82TvTQqnXiBMtC2UJecLQFOgxb5Ev4jZYGtXdGLsDhEQFVBLpMSOUVXcmScnu5y03SO46Vqx4c669XMgvc7TQ4CH3
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1795e557-28ab-462d-ca68-08d75c619891
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 11:17:33.9517 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LAW1WKrbHR9DnZKYydWT0wbUHNmqr4mZq9JRt+4bNFzc6DRVRUkL8c8cjq1xaHlIiAdWP1+lAoh6iSwKzUVyjmfvHV4XElabOgOGW6BH4ac=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3712
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_041748_657665_24BF8F8F 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 Tudor.Ambarus@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

JEDEC Basic Flash Parameter Table, 15th DWORD, bits 22:20,
refers to this bit as "bit 1 of the status register 2".
Rename the macro accordingly.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 10 +++++-----
 include/linux/mtd/spi-nor.h   |  4 +---
 2 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index eecbd161df25..1f7ccd80b8ed 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1026,7 +1026,7 @@ static int spi_nor_write_16bit_sr_and_check(struct spi_nor *nor, u8 sr1)
 		 * Write Status (01h) command is available just for the cases
 		 * in which the QE bit is described in SR2 at BIT(1).
 		 */
-		sr_cr[1] = CR_QUAD_EN_SPAN;
+		sr_cr[1] = SR2_QUAD_EN_BIT1;
 	} else {
 		sr_cr[1] = 0;
 	}
@@ -2074,7 +2074,7 @@ static int spansion_no_read_cr_quad_enable(struct spi_nor *nor)
 	if (ret)
 		return ret;
 
-	sr_cr[1] = CR_QUAD_EN_SPAN;
+	sr_cr[1] = SR2_QUAD_EN_BIT1;
 
 	ret = spi_nor_write_sr(nor, sr_cr, 2);
 	if (ret)
@@ -2118,10 +2118,10 @@ static int spansion_read_cr_quad_enable(struct spi_nor *nor)
 	if (ret)
 		return ret;
 
-	if (sr_cr[1] & CR_QUAD_EN_SPAN)
+	if (sr_cr[1] & SR2_QUAD_EN_BIT1)
 		return 0;
 
-	sr_cr[1] |= CR_QUAD_EN_SPAN;
+	sr_cr[1] |= SR2_QUAD_EN_BIT1;
 
 	/* Keep the current value of the Status Register. */
 	ret = spi_nor_read_sr(nor, &sr_cr[0]);
@@ -2256,7 +2256,7 @@ static int spi_nor_spansion_clear_sr_bp(struct spi_nor *nor)
 	 * When the configuration register Quad Enable bit is one, only the
 	 * Write Status (01h) command with two data bytes may be used.
 	 */
-	if (sr_cr[1] & CR_QUAD_EN_SPAN) {
+	if (sr_cr[1] & SR2_QUAD_EN_BIT1) {
 		ret = spi_nor_read_sr(nor, &sr_cr[0]);
 		if (ret)
 			return ret;
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index d6ec55cc6d97..f626e0e52909 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -144,10 +144,8 @@
 #define FSR_P_ERR		BIT(4)	/* Program operation status */
 #define FSR_PT_ERR		BIT(1)	/* Protection error bit */
 
-/* Configuration Register bits. */
-#define CR_QUAD_EN_SPAN		BIT(1)	/* Spansion Quad I/O */
-
 /* Status Register 2 bits. */
+#define SR2_QUAD_EN_BIT1	BIT(1)
 #define SR2_QUAD_EN_BIT7	BIT(7)
 
 /* Supported SPI protocols */
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
