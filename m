Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEAFE86BF
	for <lists+linux-mtd@lfdr.de>; Tue, 29 Oct 2019 12:25:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KRUwwRS75biQLwG9tKcE4uv1NwoFEqxW8TuzvsDOMPY=; b=iPYgWDeJpa3END
	ba2GpIc43ChdQ7oj4Twv3cU3dE3DQGWQvdZ0GId7+o5+cMO1sd2SugMbb0tlkSOx8Ab0MdZzkAlSN
	PBa6hQP3Mzo0DEX5c8DmXF+b0of86C2+dhG0SDfbjX0daYg7G2+zPlzzhBFBf4Rd3luELu9Nqrw7W
	3v1TqujcHvWPcq/Jz1bCNNWtS47jYVhKg8XqUliugDHZJSA10lxi7X7hg0BHUiucf2WzBuNOzioVC
	HQKXKBGVZasgibYyqoEKed0iCfl9ERmL3rh1nXcs3OL75pnSvvic45H0E0th4cTYwON2EorkBYIj4
	fsSy1d5uw40AAqCr80OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPPck-0002br-CX; Tue, 29 Oct 2019 11:25:18 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPPVU-0003KZ-5N
 for linux-mtd@lists.infradead.org; Tue, 29 Oct 2019 11:17:49 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Ir0aWu0bPsGqI/ntL52Z4QSml1kGts9XHolk6cKk0gtu88MrDB7rwhkZc7ljuwgl0ryOjMM4w4
 xu3wz1BTT+oyv3c/DS8x84NkhemwByzZWvEmEGW+pTDB6bed0VM/yTaERDssmnXkMQSqPMIBC5
 Ha7e8AhxsNSjvuuYNMbyxQf7wm8vphpN+8jbMHq9Qn0QDkDgUkSTc/idP3iHVfV5j+VgR+84c4
 lvCoAhlsIGM3MmO+mgrV9uFcP2m4f1N2oYpqdcnaQLEz9LnQ8XtYsovCZpqlBMqgJejYQaXQ8o
 vWI=
X-IronPort-AV: E=Sophos;i="5.68,243,1569308400"; d="scan'208";a="54794595"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 29 Oct 2019 04:17:25 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 29 Oct 2019 04:17:25 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 29 Oct 2019 04:17:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hy6aOX2mvdgo9/vyzREDmT1oS9kZ5kuv+9BmBFnlrvs26UuFCxk6xr4zJtCYT4rzFYbOiEsTvF9h1mxF5Ee3M8oHwdda311CZaoSTSwwQJom9yUyqRrmAzg80E3UZAg9ZcHnXbmx6lMZUErSL8DrSe+x6BbNKJggV7PinhIjuDUupue9UBox85+TFJRUZSt2MnwtQ+eRFVdPGF7d24KwRoOeRQZI2Yz81O4lUa/WzID7zNs9ilOEwErBuI5k/X9yA/ixnDxBOle9tlDXAbczx3ggMBQpPIQiqNFS2tb3UiltkbDPI53ViqYi1oQRTAuFzjIGey9YIgnL7N7DuJtfrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WUIkCysP8RN2CW0rbdpVenxhzbOkMv50ogI94zvlUPw=;
 b=ep33uTGJCOgMem/hA2hG0JpKPNaXzjH0sboVoK+cXoruvui7STGTdgHMtNEJI6f+0JLp7T7sERCaXx1aCOUmPXNgFA+oa0jUaRRQxMGd2+Bj1FEs6wuzU/UQqWHaTryPNCimRU1hxnwraKP9UbbpgFkhWeMXOYKerXjDyM6cD3jnZQnn1wPfsRlaRNukPIfdwBEQqhkeS9KYlAGPUYfr7Y35QEvOzDC9gDWbh6gny5zgLPqjnzBV3ZPe48BnCYytIuKMmEo5N+x9jf8SbIuGYV5NnispdcFoQpH792uexv6xCRm+0oUi0O+rdte5vKBdKeyCVMyvwrA0kqQZGVtbBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WUIkCysP8RN2CW0rbdpVenxhzbOkMv50ogI94zvlUPw=;
 b=bm/KPKV4BiGAEEYgda8TQZf5gVi2ipnLD50v1Wh3OLmIZxLtM3hPcQtX8FRXB6O5Awx9a+W/hepr1S1VC40w1959wonWMZ4rr0wtI0QDWL0Of7U6Gug119fS3fnfqOAjD8+9XNg3VpXS5Y1caVIXp1RyEiTxrOU1IsFxxR3qPpY=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3823.namprd11.prod.outlook.com (20.178.254.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Tue, 29 Oct 2019 11:17:24 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457%5]) with mapi id 15.20.2387.027; Tue, 29 Oct 2019
 11:17:24 +0000
From: <Tudor.Ambarus@microchip.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>,
 <boris.brezillon@collabora.com>
Subject: [PATCH v3 22/32] mtd: spi-nor: Fix errno on Quad Enable methods
Thread-Topic: [PATCH v3 22/32] mtd: spi-nor: Fix errno on Quad Enable methods
Thread-Index: AQHVjkpwgf80Qk/d80OBxtzGd1q11Q==
Date: Tue, 29 Oct 2019 11:17:24 +0000
Message-ID: <20191029111615.3706-23-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 82f6880b-489a-47a2-1c5d-08d75c6192ad
x-ms-traffictypediagnostic: MN2PR11MB3823:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3823B2FDACC938565A00BD14F0610@MN2PR11MB3823.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2000;
x-forefront-prvs: 0205EDCD76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(346002)(136003)(376002)(396003)(189003)(199004)(478600001)(8676002)(4326008)(8936002)(66066001)(14454004)(36756003)(6512007)(107886003)(86362001)(11346002)(2616005)(476003)(486006)(6436002)(1076003)(2201001)(71200400001)(71190400001)(446003)(81156014)(81166006)(6486002)(50226002)(99286004)(66946007)(386003)(316002)(52116002)(6506007)(102836004)(76176011)(26005)(2501003)(305945005)(186003)(6116002)(110136005)(25786009)(2906002)(256004)(54906003)(3846002)(64756008)(66446008)(66556008)(66476007)(5660300002)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3823;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: p37BXP5g7bhUXShKh2vzYz5e/R7Wmqxoo9ps05GFbc2OQdTmwdMl0Ds4LQphTg1Jn29UIbSypzJDW/t7OgJqFXTFvsVI8fiCh63RAwwJag3Aaf3tXxhl4pLYOQ3aYXTVnRw3O54iRPcYBc7LWGIrripCrVSrcnFpXBoyf4M9vyyziuxzrRuDW4OdspfH6G7REhXPQjm+YpG2ym3FiaYiQfT67wK+2aGNVDQoHINV2RJfDH6jn/c12XOnWUrA9LQR8KVwg3mhHRsEHqeUy2f+RRCje/N+xkbzRgC1oZ/zpqKvCLxn0vlqZs/4gHZTpJvNSvdAIMtqSaoFIjylei+Jf6CS49UD9ppmioZ5EYZRQmHswdgeZIvzVfacGttGRKHxcYyrPVNVjd9863LIbK71r5RytbzG/OTaBdoopGinlpmXRs8gYjhKBrhS87iUZMqy
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 82f6880b-489a-47a2-1c5d-08d75c6192ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 11:17:24.1164 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FSrB4V2eU+TRwyUnQyGJwuhV7gPBzi+NIU2PX4e+8oZzryEL4a+VaYXKMhNFEYsIdkx1ezGvxEuYFKiNRN0X1dRYissl/zDBSkzpmlYZZEM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3823
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_041748_302372_52161800 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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

When the Read-Modify-Write-Read-Back Quad Enable methods failed on
the Read-Back, they returned -EINVAL. Since this is an I/O error,
return -EIO.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 721e5307fabf..21a974b88c3b 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1964,7 +1964,7 @@ static int macronix_quad_enable(struct spi_nor *nor)
 
 	if (!(nor->bouncebuf[0] & SR_QUAD_EN_MX)) {
 		dev_err(nor->dev, "Macronix Quad bit not set\n");
-		return -EINVAL;
+		return -EIO;
 	}
 
 	return 0;
@@ -2042,7 +2042,7 @@ static int spansion_read_cr_quad_enable(struct spi_nor *nor)
 
 	if (!(sr_cr[1] & CR_QUAD_EN_SPAN)) {
 		dev_err(nor->dev, "Spansion Quad bit not set\n");
-		return -EINVAL;
+		return -EIO;
 	}
 
 	return 0;
@@ -2086,7 +2086,7 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
 
 	if (!(*sr2 & SR2_QUAD_EN_BIT7)) {
 		dev_err(nor->dev, "SR2 Quad bit not set\n");
-		return -EINVAL;
+		return -EIO;
 	}
 
 	return 0;
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
