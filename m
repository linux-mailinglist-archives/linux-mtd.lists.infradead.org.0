Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7C7E86BD
	for <lists+linux-mtd@lfdr.de>; Tue, 29 Oct 2019 12:25:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8wCRPL+veDDlvb78N6jmWk92qyfRfcit/nOwgw3UaOQ=; b=hflYspAnvjOrx7
	HkvDNefzO+YZM9SSNwDXOQx8eq++Qi97kkd3tRBwcl73n2hIz/q2Vl9s9M5LKv/2Y1YNla3HAmYH3
	uwvslYX/XJlzaEqonl99xB+C48OScU6nKmmcKNB6I8Uonte+qgWhuAK0g28snyKs+/2xolyeMOv7Q
	nh2t52uoouWQkf1fLQqbcvPsq6wzP64St1YFtque/XJklvGrzVIhOgnoxSETVcxB5s+uaTl3etRNr
	b16PuZibL9t8P6PKMdGg2zMPReN3CMESyAvcGzrIqycqeDZ7t3Wtusr6ozHDFIkhwvw9TeLDXcOqb
	UO+/n8tBZO2sCx7QaGiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPPcL-0002LE-Io; Tue, 29 Oct 2019 11:24:53 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPPVT-0003LP-5J
 for linux-mtd@lists.infradead.org; Tue, 29 Oct 2019 11:17:48 +0000
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
IronPort-SDR: yC2qnlR7HAhq1ck88Q8HVDAub5WBHiuZhMbAww6Mn2fSBSLPUS6LxvjF2kqUM3n+E99N20QdQq
 lW7dyHj1SUXCvF/slDP1R3GCqYnchEVSb5BM8WGOfLkDkbkh58xnLQM2Xw7mmkLmCL5IkO5Or2
 GUC+LW0qc78AvW6uJ6Q8cwmhsAdRnmK+yPVHUeUnMn0+c5ZM+Q4yCc04dVBRHLjUPiHGPJSX2l
 3etWhNno9Wff8Q3KackPMqks9RgQt5CSUPO0TGAEUzr3D7JFT399YroQk52ieVblbfO31Dv99g
 kSk=
X-IronPort-AV: E=Sophos;i="5.68,243,1569308400"; d="scan'208";a="53292162"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 29 Oct 2019 04:17:47 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 29 Oct 2019 04:17:33 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 29 Oct 2019 04:17:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hJoPcEbgtl/1jaoA82MRMA5otSmraL07YKnqgL2DetoNU3ykpiKvWX03KM3KgERw6Fp5uTym2E5qkrcqPxdGWf45rfjFGwKDOVsbijypleeJ9FceBH6VADc76147f5PaoZlkdnQMaszuFpJ4sf5H9NgRv4sIz046+wVOiYSs7SGtZlk3D+n9RlhVm0Wly9goAYkR95PDCU2dua/qHSinbkR3T1B+UBt18/Vx5FU6TthC9gYt5XJmxGTss2vCHW/nGI9LVrhTwR4bfngaMXtom2hV5ep4K1436fSFleYAxbY4dVBplOJnijSg0/0lXGSPbaRtqDi+tewhFzplw66HuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dbkxin11NQr3UDreJPR2nfDV4TXXS9nQ6US790mMMRE=;
 b=Esn1mD/5dL/r020s1Wm4pmWnbtXB71SG/eDmhdWnk5kpvRYM1owZalBo8Ot1qAVodYl3yiqkQYG9uGlp5ggWdCK789s3T/T1GErfnIodXARLuDhcNkbKv/bbDBUaUd6/Xy6l33KEoo8rKKdoNEKK92hUS+4k2whXniuhge0TdZExdl2ELOK9Mhuvi0ljuSeiRYTD/CewrzyoIuN22xSHa78NIo834BzB+o2vLUtx3YnUjuAOM4yQvRjZMPsTBgckyxlvWs53mDJE4bOsV3Dc7fPPsZkwG7og99IGR40W3C+YFZ1MsG5AvN1yu2HaucuxicKxR+RtKpBDIilVmYx9wQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dbkxin11NQr3UDreJPR2nfDV4TXXS9nQ6US790mMMRE=;
 b=oP0ccVAshEiKGaqYA72jFdTA0z+A4GeUud5UQR+Y67p6Qr1lyVOVltfZVqJRgNAu0U6j6XDGnh0pP4aPtDTg1TcoPQOvF2JF1wj58D/cg4vLmQkH5xjUMl2+1qzSI5qBcarFU+I89fc5q43XXVj+fT1hFcNqQaYccYRFWq4Tcpc=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3712.namprd11.prod.outlook.com (20.178.253.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Tue, 29 Oct 2019 11:17:32 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457%5]) with mapi id 15.20.2387.027; Tue, 29 Oct 2019
 11:17:32 +0000
From: <Tudor.Ambarus@microchip.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>,
 <boris.brezillon@collabora.com>
Subject: [PATCH v3 27/32] mtd: spi-nor: Extend the QE Read Back test to both
 SR1 and SR2
Thread-Topic: [PATCH v3 27/32] mtd: spi-nor: Extend the QE Read Back test to
 both SR1 and SR2
Thread-Index: AQHVjkp1Z9fauPXm60Chr6Rr+/URxw==
Date: Tue, 29 Oct 2019 11:17:32 +0000
Message-ID: <20191029111615.3706-28-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 78264a18-a137-4361-7d12-08d75c619794
x-ms-traffictypediagnostic: MN2PR11MB3712:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB37129B8A6A12D35CF55C2471F0610@MN2PR11MB3712.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1303;
x-forefront-prvs: 0205EDCD76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(396003)(136003)(376002)(39860400002)(189003)(199004)(107886003)(6512007)(316002)(110136005)(4326008)(2201001)(305945005)(6436002)(54906003)(7736002)(2906002)(66946007)(66476007)(66556008)(64756008)(66446008)(6116002)(3846002)(6486002)(5660300002)(36756003)(86362001)(11346002)(446003)(8936002)(81156014)(81166006)(50226002)(2616005)(186003)(476003)(256004)(478600001)(8676002)(25786009)(14454004)(486006)(66066001)(2501003)(26005)(99286004)(386003)(76176011)(52116002)(1076003)(102836004)(14444005)(71200400001)(71190400001)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3712;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gJ6BwcoRR5Mu21WeSjBVXMkKY+QJYeyrDPEexEUXgFrv8KgPfpxCOqQz0gyVOn65mY53dPSxzUe4rpmp6KraLgLKviT4vehVCcc6SNb4eQQ5b5MmwSmSpzYrRF+846f5TRSOewc0cVPIkZ9TdNl7KqcqVOag4lj0YBLmCP7v3qArRmZ6lI2EWch7t22DbJcr00TqGN7AMerpYCRFPLKJRUHaGh2sm9gWPgCu5RMiVD9NBrHViTO/J9Rhi5ho3tzX1Z276CmyZC+7Efi2ZfrzqmlkO9lve/jC1K0+Onhp/ZUZ9jaQlldaH/HwJFONBUayQxBja2m4yMXkIvuH+Wg2SqoJHLBb8XizszuYMQtnmHaD/IieBq9SuWXIAYO6Epohb8m0BOrJEI9FNa3jGyv/aIYnsqAjQK98yYfv1w64R/i3L22Xt5v01hQyXnMcgBxO
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 78264a18-a137-4361-7d12-08d75c619794
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 11:17:32.2537 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: znu8F2Z5lHsMrE4SunH/Tsgk1sXM1zUs7OtLr0QBUkgNbb43F+bjyc+KsZQoFu3xZBbNZ/glE7VSGCUfJbTN8exW6dRAzqkE2dnJESKfBB8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3712
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_041747_275781_FF03C654 
X-CRM114-Status: GOOD (  10.02  )
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

In case of 16-bit Write Status Register, check that both SR1 and
SR2 were written correctly.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 29 ++++++++++++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 55a12a1d710e..eecbd161df25 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -2067,6 +2067,7 @@ static int spansion_no_read_cr_quad_enable(struct spi_nor *nor)
 {
 	u8 *sr_cr = nor->bouncebuf;
 	int ret;
+	u8 sr_written;
 
 	/* Keep the current value of the Status Register. */
 	ret = spi_nor_read_sr(nor, &sr_cr[0]);
@@ -2075,7 +2076,22 @@ static int spansion_no_read_cr_quad_enable(struct spi_nor *nor)
 
 	sr_cr[1] = CR_QUAD_EN_SPAN;
 
-	return spi_nor_write_sr(nor, sr_cr, 2);
+	ret = spi_nor_write_sr(nor, sr_cr, 2);
+	if (ret)
+		return ret;
+
+	sr_written = sr_cr[0];
+
+	ret = spi_nor_read_sr(nor, &sr_cr[0]);
+	if (ret)
+		return ret;
+
+	if (sr_cr[0] != sr_written) {
+		dev_err(nor->dev, "SR1: Read back test failed\n");
+		return -EIO;
+	}
+
+	return 0;
 }
 
 /**
@@ -2116,6 +2132,17 @@ static int spansion_read_cr_quad_enable(struct spi_nor *nor)
 	if (ret)
 		return ret;
 
+	sr_written = sr_cr[0];
+
+	ret = spi_nor_read_sr(nor, &sr_cr[0]);
+	if (ret)
+		return ret;
+
+	if (sr_written != sr_cr[0]) {
+		dev_err(nor->dev, "SR1: Read back test failed\n");
+		return -EIO;
+	}
+
 	sr_written = sr_cr[1];
 
 	/* Read back and check it. */
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
