Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 531C69CF2B
	for <lists+linux-mtd@lfdr.de>; Mon, 26 Aug 2019 14:11:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MRLTFHaGW8q0Kp0CNuxv22CR/VLJ06ZZ0lEzxLiHM3g=; b=Ap35snAR1vGhQB
	EqgtA2BY8kYYaiRy9wcL4YXy47UpCkNxem+d32j1Iit9Sk9Z5txs37c89ip1Fsrjr2tys6kEDOTcb
	BiaJH4+8yRJGbstXq7nL3HDbjAPhut2SCPGSmIoCYy46YhLq4pCqxJZ32jAtsIiDzr+HjzxI+u4z6
	P5Gx3EMZmdG50N6CkGkPub/cf8A1YaSLvA+/It52QFwal+kCIiST3Crq4lKx7MbngPhxMmQCAdn3w
	lcvcMPgQavkfwFNJB/4qUQAFdjq/8c3Hyh4BPFXnYf2B5RVqd5lOyNbAmom6VUM5DdMmsuic3+LCF
	/ZS1saISkirmMa6JyVUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Dpy-0005tb-DT; Mon, 26 Aug 2019 12:11:06 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Do3-0002gk-67
 for linux-mtd@lists.infradead.org; Mon, 26 Aug 2019 12:09:10 +0000
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
IronPort-SDR: 9AN7mdAyIVI+BLr/A5368/qRTb1/PC8sEOBnth8BDsDYAOxRoCj0BFc77ZgWsQDMGRsIcOKh/i
 1UXhutQvZ/Hk02ZR7bZBj/rcH9Jvv+0dM8g1F7xArgX5luAXyJ4CfyYKLIucIdAJrhABQLGkix
 n1VhWRiAZD2uIGdvMCwXBqq7T89a7T9VCKg3YXFrnpt+gE3cza0tlgcvLiUrvY2DCG4kiMPgaT
 ZfPf/CopUeZHnmqnx0/pwDgkzmZJDk1T7ZzVGURKv9hgHu3uPwS9TqkLvvMTuGtMRLk3q+yide
 6j8=
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="43686984"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Aug 2019 05:09:06 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 26 Aug 2019 05:09:05 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 26 Aug 2019 05:09:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hB1+dT+Ad32QCxxPOJ1NR5cVBp0XDeZ51+mM/ljh8qbIG9gldNW/9aXyovNAjh5C//t7Wel7TdRtADt9zPGSvuLJBAtMon2NVGWYOQbOybdkVu9V9DIKEeu0hsYrl9+EKMLfwXtNRVHXjKRf34ta0lsbwdPSS3zVmOWVdmqYwhfCNXo4prVi8K1AlLy0cjlLy7AW9zeMBZKGydbLGPX3bU+wFNs4aHlvpQwQ83DNFTWEclT4zibwYS1Z5WjvTEurrsFk9PpZLSJFvT/c4CAYn8uaHbmPqU8/frcBiDZmZMXjZ6EJ2+LeLU2h49BTYamL+RL5d99U7MKWg7BPKTr5Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wzKEj7C2oecdyIVgmS+q8nCE1Ab6V9iG0C1/KPjXWOM=;
 b=Wm7xBvNy9fy/grFY3uS/eCkNO8H3yBIbpRWnL9DNXzNXSTr0A+INKlrQohQlkYbsei1HpjpyT7UU1fne+l/CsTJ32Oh9EX9RrhTIjyd4VMsd1X7BPmSXx7zsTPXFJTorKoCiduIGzpRwNiTJHIAv3Z36v08sho7Cepj4M/Vc3qz8HoM5A/fbJa9oHRbiqcKc8brpic1jgGP5eSx4fsZJYuGL0ZDI1yxunWu9+esyZwyEuq2bUYy2nOC6TOc5kpC96dnLoeBdgiWwC7U0c75cLvjp98ntIxEcPSCzJT6wXci6IFYIX0wJQ01DIDB0reOrEcF3bGOysmWgw4M+k3parQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wzKEj7C2oecdyIVgmS+q8nCE1Ab6V9iG0C1/KPjXWOM=;
 b=qL+PSksgUkyFPX6/ead0wIuN6zETiyp1Gs+Kn3nLBTLM/wjGmDu/fqBA756jlHKdc9LOhN4hPYw4Kq4baBVTn4c4KZNfwjLcpxj6Gcc+LE5ApnHwqVUPffKn37nRsLGFPc95ujv2GbAaZApiakr/ai12VUXbv98uGeD2v5bScHs=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3678.namprd11.prod.outlook.com (20.178.252.94) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Mon, 26 Aug 2019 12:09:03 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5%7]) with mapi id 15.20.2199.021; Mon, 26 Aug 2019
 12:09:03 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>,
 <vigneshr@ti.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [RESEND PATCH v3 11/20] mtd: spi-nor: Add post_sfdp() hook to tweak
 flash config
Thread-Topic: [RESEND PATCH v3 11/20] mtd: spi-nor: Add post_sfdp() hook to
 tweak flash config
Thread-Index: AQHVXAcGVLYagwCSlEah3QOflpgycw==
Date: Mon, 26 Aug 2019 12:08:52 +0000
Message-ID: <20190826120821.16351-12-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 56c54d9c-bd66-4bfd-1e3d-08d72a1e28d3
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB3678; 
x-ms-traffictypediagnostic: MN2PR11MB3678:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3678E47CE8DA4BAE918E6FD3F0A10@MN2PR11MB3678.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01415BB535
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(346002)(366004)(396003)(376002)(199004)(189003)(486006)(2616005)(476003)(6666004)(107886003)(316002)(14454004)(386003)(6506007)(76176011)(99286004)(52116002)(54906003)(110136005)(478600001)(102836004)(4326008)(25786009)(36756003)(446003)(26005)(11346002)(50226002)(81156014)(66066001)(8676002)(53936002)(81166006)(8936002)(6512007)(6486002)(6436002)(3846002)(6116002)(186003)(86362001)(305945005)(2201001)(7736002)(2906002)(64756008)(66446008)(1076003)(71190400001)(5660300002)(71200400001)(256004)(14444005)(66946007)(66556008)(66476007)(2501003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3678;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: r2aopq3PFWxQPQGIySJrtXM987ZOsA+ZA5xZ5SMS+Hw/CtzwX0mI6Yipy+4kGHk++apI1PSU4C7su+wt42tKcKpkY5nh87wdqWC0YH2F7fJkqs2vLZi8fskPaPzXk8/883rYdqAgKXDOtBFSC8F0ogaPDlt8R2kjmS/sUX9M2Hh7w6PakDIcIBrRRkJ0WJ9INdxHNO2srARm8ck5rXryb95jrFovjqxw43aChRJpXPgYqgnmSIxgMGqRg8QiDHxZSLvx+JUTh5qAx/XAPePwiy3IX7v3LaqcLVCBfDsSWd5xKp/LQtq0PGTPf/XnpFG6q6YeqAsto8rgJzvlZLmp2/IY5Tvwuc0JSHU+/Z8jN60e4XFPlBXxfPn7l+Im1bgY7RTeRyIQM67kzzBUbPeaCKkKoLXPXC/F5dyPkGs9aWc=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 56c54d9c-bd66-4bfd-1e3d-08d72a1e28d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2019 12:08:52.0933 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p3CIlEY5nZJJrx4peh0VKdAGzPmfb0ZmPTWCcdtTFsE1DMVkzfj5KTNkJSnFh8u2DOtaEOvlhxoSScZ9CNXoF3Z2pkRMbLQQdYuDw//lPFU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3678
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_050907_418284_D290A888 
X-CRM114-Status: GOOD (  12.26  )
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
Cc: boris.brezillon@bootlin.com, Tudor.Ambarus@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Boris Brezillon <boris.brezillon@bootlin.com>

SFDP tables are sometimes wrong and we need a way to override the
config chosen by the SFDP parsing logic without discarding all of it.

Add a new hook called after the SFDP parsing has taken place to deal
with such problems.

Signed-off-by: Boris Brezillon <boris.brezillon@bootlin.com>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
v3: no changes, rebase on previous commits

 drivers/mtd/spi-nor/spi-nor.c | 33 ++++++++++++++++++++++++++++++++-
 1 file changed, 32 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 3f997797fa9d..b8caf5171ff5 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -158,6 +158,11 @@ struct sfdp_bfpt {
  *                flash parameters when information provided by the flash_info
  *                table is incomplete or wrong.
  * @post_bfpt: called after the BFPT table has been parsed
+ * @post_sfdp: called after SFDP has been parsed (is also called for SPI NORs
+ *             that do not support RDSFDP). Typically used to tweak various
+ *             parameters that could not be extracted by other means (i.e.
+ *             when information provided by the SFDP/flash_info tables are
+ *             incomplete or wrong).
  *
  * Those hooks can be used to tweak the SPI NOR configuration when the SFDP
  * table is broken or not available.
@@ -168,6 +173,7 @@ struct spi_nor_fixups {
 			 const struct sfdp_parameter_header *bfpt_header,
 			 const struct sfdp_bfpt *bfpt,
 			 struct spi_nor_flash_parameter *params);
+	void (*post_sfdp)(struct spi_nor *nor);
 };
 
 struct flash_info {
@@ -4299,6 +4305,22 @@ static void spi_nor_info_init_params(struct spi_nor *nor)
 }
 
 /**
+ * spi_nor_post_sfdp_fixups() - Updates the flash's parameters and settings
+ * after SFDP has been parsed (is also called for SPI NORs that do not
+ * support RDSFDP).
+ * @nor:	pointer to a 'struct spi_nor'
+ *
+ * Typically used to tweak various parameters that could not be extracted by
+ * other means (i.e. when information provided by the SFDP/flash_info tables
+ * are incomplete or wrong).
+ */
+static void spi_nor_post_sfdp_fixups(struct spi_nor *nor)
+{
+	if (nor->info->fixups && nor->info->fixups->post_sfdp)
+		nor->info->fixups->post_sfdp(nor);
+}
+
+/**
  * spi_nor_late_init_params() - Late initialization of default flash parameters.
  * @nor:	pointer to a 'struct spi_nor'
  *
@@ -4341,7 +4363,14 @@ static void spi_nor_late_init_params(struct spi_nor *nor)
  *    flash parameters and settings imediately after parsing the Basic Flash
  *    Parameter Table.
  *
- * 4/ Late default flash parameters initialization, used when the
+ * which can be overwritten by:
+ * 4/ Post SFDP flash parameters initialization. Used to tweak various
+ *    parameters that could not be extracted by other means (i.e. when
+ *    information provided by the SFDP/flash_info tables are incomplete or
+ *    wrong).
+ *		spi_nor_post_sfdp_fixups()
+ *
+ * 5/ Late default flash parameters initialization, used when the
  * ->default_init() hook or the SFDP parser do not set specific params.
  *		spi_nor_late_init_params()
  */
@@ -4355,6 +4384,8 @@ static void spi_nor_init_params(struct spi_nor *nor)
 	    !(nor->info->flags & SPI_NOR_SKIP_SFDP))
 		spi_nor_sfdp_init_params(nor);
 
+	spi_nor_post_sfdp_fixups(nor);
+
 	spi_nor_late_init_params(nor);
 }
 
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
