Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EE7E86B4
	for <lists+linux-mtd@lfdr.de>; Tue, 29 Oct 2019 12:22:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f4VYjwAS3hJr6+kxiYPWR+cg6STvq06ghZ+boDyrEFc=; b=gN1j5W8uxBixP6
	efsYjrbM3wRZEg5Fo5Yjo02BSInilljmeZiXu/CO0SbZhL/SSGqQYAGL/w9BnklzA1I9q+ba86qHv
	pphcCZEh5/DEjoKgaH8QSmiY7SCI2jdw2LbfKbytwjF/QAIXzwtBhhu2lL9vM8nS6dT5bwAp9RKu4
	CERWSe4C54nUddHUOGszNQMpVTRS3Gc44cX9up5UEFuDOxTbKPo1qMC8801oE2FzS28zNDkazpCU1
	vImHuPRB3p0ShnxGrStDRGdD1QoR/KLvrctLtsOB3vhplVILHNLfNG3doQn4v9ghRx5AFUSP637C2
	n3zxuBQCEGp0MOz5NLhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPPaE-0000Li-Nn; Tue, 29 Oct 2019 11:22:42 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPPV3-0002oU-D4
 for linux-mtd@lists.infradead.org; Tue, 29 Oct 2019 11:17:23 +0000
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
IronPort-SDR: 6Iu3bsmk1RRyQSDKVNbxz5qGDRDlEuDM3oCLkY5JIlaxeFHzTY2DK3s3bmTcTA7vTfJeZMvlNv
 Jwiq2zWZCZj4c/76LkV6OiLk4IBtLcyN0YBooOqIpc1v/rYpXcbRR613Dzr2lmkSNxyU3k/gLC
 v5HiHmHyPomMduW1pM3qEwuCV9cKiSrxE/4zPNOx5miqJJae5kfgCqnG/dwYW0XbL7vfWWjZ4m
 eR8dAxegcL9ZbVbUxvmZ1gHsVQ8M07DYm7+qPGYp/nUvRzCc+ILYfkk5CtQo+e4uZNbgx53Fxj
 lNs=
X-IronPort-AV: E=Sophos;i="5.68,243,1569308400"; d="scan'208";a="53292085"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 29 Oct 2019 04:17:20 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 29 Oct 2019 04:17:16 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 29 Oct 2019 04:17:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K2kcoUhLXo9nrRorwI1p5KJDKBSCGpIKFg8q+rzFMO5nL3hsRHGn3BVuR0PKiplHw91hFzZC19fKE2xhh8us6Q/RSfucj/TDQNnNUFxYWsiXCAiphosLqLGAAYHrZUsyRC8BFhYLk0NrjoV2lwgAhFtZ99LGKyMStwrCKNR1rXWkc7WYwTvVophuWuYSboGy7SwdmUn5OqltUkX98tUbDU6TJidoDZnHLm+LDQlvM4h1NBfCqr5Ou4hFGAwSTiUFBIUmEhlfDuyG46N2wH+6QDON+6HQq0V0zR7WPTQP1TvZbpCRs6UZvt/LuxEgU7wa23bKovAOzXEmTSXGGeu3Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SMjdnuOig21T9IzCdO20HhCmpyKpcmOWjdwuPzSPxo0=;
 b=V9gv9o4eU4loQ/9Xcqit6IpbKMezpIPNrFpBOvPXG+B+8I9pkcdMKItey45wq0LweeltE1i5+1wZ84w8XvpMjNqqtsRU9O1NVaT4B6NZ9glOrByf4t/d5PBx61+FUgqQG/wV9xGuljv8Idv+XfP3yv4C43r2c0pvSbkuctz33DaL3aJkcv/Yl0vX13MzBRRzY+WYWIMWyLveteYVj2ILxl4mGSN/ghzlBUqAphr0jGcDucVOyzCxjafCVTsz2gTLQcIXiuHvQOanAZ70DA2ncDGIgltKpABHVBysERHBexYLvbi3aZ1Oh6qQ0r5UvymtX1IcXjJzQB2mTKvD5b1Wtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SMjdnuOig21T9IzCdO20HhCmpyKpcmOWjdwuPzSPxo0=;
 b=WUXo0aViFjldng3zR7pjEoL3BxsHsigPhRLUxd1Z6QpR8wgsevpat6fvwVz2svpb/XQ+VIwTQHDKpaTabdVHGUjZHPuVCBiihJzfl1HUnguBP6Ydr+mCyCYhKu5Gllf0UNrEVMSxwa/ibAQ6BFcNZ1Anpq3XZEt56l7O/L25few=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3712.namprd11.prod.outlook.com (20.178.253.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Tue, 29 Oct 2019 11:17:14 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457%5]) with mapi id 15.20.2387.027; Tue, 29 Oct 2019
 11:17:14 +0000
From: <Tudor.Ambarus@microchip.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>,
 <boris.brezillon@collabora.com>
Subject: [PATCH v3 16/32] mtd: spi-nor: Rename label as it is no longer generic
Thread-Topic: [PATCH v3 16/32] mtd: spi-nor: Rename label as it is no longer
 generic
Thread-Index: AQHVjkpqMD2RUk5Y5U+2Bm7i3YhTrQ==
Date: Tue, 29 Oct 2019 11:17:13 +0000
Message-ID: <20191029111615.3706-17-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: f0857d9d-b070-4367-dc5e-08d75c618cb1
x-ms-traffictypediagnostic: MN2PR11MB3712:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3712E58319E59792442FC070F0610@MN2PR11MB3712.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 0205EDCD76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(396003)(136003)(376002)(39860400002)(189003)(199004)(107886003)(6512007)(316002)(110136005)(4326008)(2201001)(305945005)(6436002)(54906003)(7736002)(2906002)(66946007)(66476007)(66556008)(64756008)(66446008)(6116002)(3846002)(6486002)(5660300002)(36756003)(86362001)(11346002)(446003)(8936002)(81156014)(81166006)(50226002)(2616005)(186003)(476003)(256004)(478600001)(8676002)(25786009)(14454004)(486006)(66066001)(2501003)(26005)(99286004)(386003)(76176011)(52116002)(1076003)(102836004)(71200400001)(71190400001)(6506007)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3712;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5YPVM7xF2OaziEFJT447pdZxbuXTvS8hCCU0uI4CO6whyNJc5lkceTyN/O107gvjD6qcyh8usyIZqOZ0b07htmu5BwNWD4j76mPMq8beW2+acuGCEc+Wrw3g+l+6vJYhPhItsQI7mHjPF1CprVaBZQdHNSxIhNi2K4NkrLoCJrbTOcp1clek32EDEE279kaw1ZwBjS2dH7swcpaud1zGucUqW+HEdB/2Qt8GlK0IV3CJYiHNLEyL4x6n+vtI05xsNAYlHZB67IyWB6K1NpYQXthV9WJbqIEB6oKl0Um8rmCzCf8UbA6XDD9dyGVytF0A8cBSOHkppJr3mu4Eji4V/SEOtdOBbXH5UXAXEjj+rHpyOd6nYcE/ZlZmBuwN9Fn82xe1m60RrARxyflTqNoGwPKf3kbIxz06jM56LTTtA+vWCJAGkxPnQq21Lfc4JzCQ
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f0857d9d-b070-4367-dc5e-08d75c618cb1
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 11:17:13.9883 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9vA/4glEoeHUS8kzoZ6lxt5UZZPqFVRnlLaZzirA/Y4nvp4jqvVDSG1XJPbWzgodweD4vml/EyQIzfAo4YBivbHX1L3Bw7BD0NFOSPAZWDI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3712
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_041721_491197_AD7609D1 
X-CRM114-Status: GOOD (  10.51  )
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

Rename 'sst_write_err' label to 'out' as it is no longer generic for
all the errors in the sst_write() method, and may introduce confusion.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 21f01fdcfa16..ed7c233a7208 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -2705,7 +2705,7 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
 
 	ret = spi_nor_write_enable(nor);
 	if (ret)
-		goto sst_write_err;
+		goto out;
 
 	nor->sst_write_second = false;
 
@@ -2716,11 +2716,11 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
 		/* write one byte. */
 		ret = spi_nor_write_data(nor, to, 1, buf);
 		if (ret < 0)
-			goto sst_write_err;
+			goto out;
 		WARN(ret != 1, "While writing 1 byte written %i bytes\n", ret);
 		ret = spi_nor_wait_till_ready(nor);
 		if (ret)
-			goto sst_write_err;
+			goto out;
 
 		to++;
 		actual++;
@@ -2733,11 +2733,11 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
 		/* write two bytes. */
 		ret = spi_nor_write_data(nor, to, 2, buf + actual);
 		if (ret < 0)
-			goto sst_write_err;
+			goto out;
 		WARN(ret != 2, "While writing 2 bytes written %i bytes\n", ret);
 		ret = spi_nor_wait_till_ready(nor);
 		if (ret)
-			goto sst_write_err;
+			goto out;
 		to += 2;
 		nor->sst_write_second = true;
 	}
@@ -2745,32 +2745,32 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
 
 	ret = spi_nor_write_disable(nor);
 	if (ret)
-		goto sst_write_err;
+		goto out;
 
 	ret = spi_nor_wait_till_ready(nor);
 	if (ret)
-		goto sst_write_err;
+		goto out;
 
 	/* Write out trailing byte if it exists. */
 	if (actual != len) {
 		ret = spi_nor_write_enable(nor);
 		if (ret)
-			goto sst_write_err;
+			goto out;
 
 		nor->program_opcode = SPINOR_OP_BP;
 		ret = spi_nor_write_data(nor, to, 1, buf + actual);
 		if (ret < 0)
-			goto sst_write_err;
+			goto out;
 		WARN(ret != 1, "While writing 1 byte written %i bytes\n", ret);
 		ret = spi_nor_wait_till_ready(nor);
 		if (ret)
-			goto sst_write_err;
+			goto out;
 
 		actual += 1;
 
 		ret = spi_nor_write_disable(nor);
 	}
-sst_write_err:
+out:
 	*retlen += actual;
 	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_WRITE);
 	return ret;
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
