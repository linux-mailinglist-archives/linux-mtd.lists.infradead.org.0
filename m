Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDCB9CECF
	for <lists+linux-mtd@lfdr.de>; Mon, 26 Aug 2019 13:59:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s0vftubVtiibGLQsdwSFZSLNRR4+BAuAPbzURJdjbGQ=; b=I7jC2xBr1tDUYz
	CIw3WvgKcXMTvtdexgpGQ671mqRaFCFMN0fH/ToBcrPNPdDlcANX0guciTf3mdoX0HwhL9uWuNyMP
	0HTQ5T0HkzQsIvkTWRn+ctgmRj9igUOs+mUigKT82+FY4qbbNAoFRZbe2Nsog7qOvkVCdiKlLmhbP
	Xv8o0EAA5I1L5ACkuzcUGQYfStFASBUQ++maEfJH75JXy8njvCI4LP3JfgQdnnKrR2RxniZEJcS05
	Q3nUFElQRbQzWCcBLnoFSUriQaT01iGUoIWUcTJReTww2kz8KhKJPeBx8ixk/q6H0oW6xmz5ko8/Q
	GMa5rx05Tr3RisPZiIpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Deq-0003L3-KZ; Mon, 26 Aug 2019 11:59:36 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2De5-0002Y9-Ci
 for linux-mtd@lists.infradead.org; Mon, 26 Aug 2019 11:58:50 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: w/2E/wQg7qc2SHUqujpeGjyxa0g+TRdr9aNQwxlNj7aE3FlULPFowTtiQvhd44CoENYPJLjQMj
 w3lFlm4eZJNdby0ln391831WL8+uks2eoV4iIXLrN+ylmvdm7gMGuRq+hV0N8gS0Pq/j0PDUMD
 g/CLvXFhkDB/3oED7NDCNOdu++IwUk0qdGRE4SGm/QGHtPgrL9KAyrYGlPd9Ki+bwdn+oA2R8d
 dlpPJua6eCAkZKf6vWi7aVLbDcDxqe7WoiNpEFw1OAi7MpGofq8b4yKS58X/8TEgK8YWjyQTLG
 Anw=
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="46518699"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Aug 2019 04:58:48 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 26 Aug 2019 04:58:47 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 26 Aug 2019 04:58:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FwPnrLpAoaeuo0yBrq267W/NWBlF988CpyT7aooxdRsoV3d4pk/i/i7gxjcouaG20b5/RihlrqopJZtTWkJrlbCOBAh3rGfXZWhOEoa7cHVfn2/oqzZqnHBO2EdA0yGCYnJJ5xjpo4/VOpvCvoGACgt24Bp2QddaxHj50wFEJu+f8Agk0wTzjldXkxeank4FUcHzzcQyKEXlKTk01nxlFpwugaiywSCJU2ecb3Rl8lV1ee6RMj3ziO6LUy/6Di8LmshNOjoIc3ZXdd3YPdbokjScZRogFZ9V8Oq9iayRYBm19sky0PkysAAri1O1pMFcrQW871joO3kMLYh0gyH0tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8dvCftPXVjqfCZG1RlwZNZbXeH+NyMUjdEv6mgeOqrA=;
 b=Ueh1LoC8qLXcLzJOJg87N9vyXbP7UX5x/nYrxI/OLzfKQnH/rQ3cdZs8F9zoyu8Q6LhdQq+ATqPdw3u+IvCye9NOSFK/s4yofqe/yndx9JTO8LqaVnUk/2DzMHwzTvHyO3OZTeUwV662Eb/2Zvjjmh7GRocl0UNT0d2a9j2lWlyjG0+miUtvZjquHiMlFNsTTRV7qo5hOSq1CMk1jc/9fiOd8HysVb2f+fXrTKIKEQ1aCmlB+orHJoTmdk1/eogejzXTZOFKIqJY7uXDM8WIh0pgj6WGDXJqu1qbPt4GURdN14qRIDFfmEa7FuSH+B3Ms7aX8L+dgV9txIHorv9GfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8dvCftPXVjqfCZG1RlwZNZbXeH+NyMUjdEv6mgeOqrA=;
 b=meNhrOCvBSF03y2NFqM/grzI5wUFW6xebzjA4DTBEN2bhB40JmHuNgbhd3msBtL+C3QI7qER/YzbfnIv7ZAEAU5i3bARWOEg6Fn6XgkWBSOU84EBKL2EUihsgFKKEjOf+440MCLXp8YviC8sJJVmA+hBI+1mI+I4XTFOq3mfp5c=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4350.namprd11.prod.outlook.com (52.135.39.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Mon, 26 Aug 2019 11:58:47 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5%7]) with mapi id 15.20.2199.021; Mon, 26 Aug 2019
 11:58:47 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>,
 <vigneshr@ti.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 03/20] mtd: spi-nor: Drop quad_enable() from 'struct
 spi-nor'
Thread-Topic: [PATCH v3 03/20] mtd: spi-nor: Drop quad_enable() from 'struct
 spi-nor'
Thread-Index: AQHVXAWehOQWCw0hVUm0xshfEyaE7Q==
Date: Mon, 26 Aug 2019 11:58:47 +0000
Message-ID: <20190826115833.14913-4-tudor.ambarus@microchip.com>
References: <20190826115833.14913-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190826115833.14913-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR09CA0095.eurprd09.prod.outlook.com
 (2603:10a6:803:78::18) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f125d76b-4fe6-43eb-c0e0-08d72a1cc076
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB4350; 
x-ms-traffictypediagnostic: MN2PR11MB4350:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4350B16CFA055E9A917768D8F0A10@MN2PR11MB4350.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 01415BB535
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(396003)(376002)(366004)(39860400002)(189003)(199004)(386003)(66476007)(6506007)(66556008)(64756008)(81156014)(66446008)(66946007)(14444005)(256004)(8676002)(81166006)(71200400001)(71190400001)(25786009)(6512007)(1076003)(6436002)(8936002)(107886003)(53936002)(36756003)(6486002)(5660300002)(4326008)(50226002)(486006)(86362001)(66066001)(2616005)(476003)(305945005)(3846002)(186003)(76176011)(52116002)(99286004)(6116002)(478600001)(2501003)(7736002)(446003)(11346002)(14454004)(2906002)(110136005)(2201001)(316002)(26005)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4350;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: dI28UkGEMJwq2CXeWHny7Y9fF/TmOWiVIcUtDk0d9hjy1gbd7hB9w3DlXbS07UWB67z12gTP3YOUmjiVYTQgt9lsukduAq862KQ76bjampwKvzqdap6RknpYUilCPrq1IIz40KIgGjo+d8i3JEjB76vyLvG+EesrOjnzfHmb0ixM7XhKUChPxNgsgnrwkMNDqoW6T8i31tlHzPXepNE9QDuPMPcymFc3WCvMMePbbWR33eNhef3Kp1sF7VS2gWJ9FDSNTeq+CjK7G+ez9dBHlF66qWzwCJzva4usE4UDUXv3vqjVTNM1C/SY8u295/jZQhwjYUc7mGdudugoxtWUEUMulSpT+NxEysRZMUQy0xITnjSlvFdUyG/QvnCwtZH+yv5K9V3pgwSRptgy7uxIegfUyVrZnXcSyKkJi5lQOoY=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f125d76b-4fe6-43eb-c0e0-08d72a1cc076
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2019 11:58:47.4792 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /3pByJH70tKdyshqlXmI6l/6bz5OvmIVdngbff743DfEKoAQBEcmJ1ZHl3fMTlZdipxw3++m9jXFneXoXYKXz+UhBgI3n08aIqaBRJKsYH8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4350
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_045849_474317_0F62E70C 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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

All flash parameters and settings should reside inside
'struct spi_nor_flash_parameter'. Drop the local copy of
quad_enable() and use the one from 'struct spi_nor_flash_parameter'.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
v3: Collect R-b

 drivers/mtd/spi-nor/spi-nor.c | 40 +++++++++++++++++++++++-----------------
 include/linux/mtd/spi-nor.h   |  2 --
 2 files changed, 23 insertions(+), 19 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index e9b9cd70a999..effda372cb33 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -4403,7 +4403,6 @@ static int spi_nor_setup(struct spi_nor *nor,
 {
 	struct spi_nor_flash_parameter *params = &nor->params;
 	u32 ignored_mask, shared_mask;
-	bool enable_quad_io;
 	int err;
 
 	/*
@@ -4457,23 +4456,33 @@ static int spi_nor_setup(struct spi_nor *nor,
 		return err;
 	}
 
-	/* Enable Quad I/O if needed. */
-	enable_quad_io = (spi_nor_get_protocol_width(nor->read_proto) == 4 ||
-			  spi_nor_get_protocol_width(nor->write_proto) == 4);
-	if (enable_quad_io && params->quad_enable)
-		nor->quad_enable = params->quad_enable;
-	else
-		nor->quad_enable = NULL;
-
 	return 0;
 }
 
+/**
+ * spi_nor_quad_enable() - enable Quad I/O if needed.
+ * @nor:                pointer to a 'struct spi_nor'
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int spi_nor_quad_enable(struct spi_nor *nor)
+{
+	if (!nor->params.quad_enable)
+		return 0;
+
+	if (!(spi_nor_get_protocol_width(nor->read_proto) == 4 ||
+	      spi_nor_get_protocol_width(nor->write_proto) == 4))
+		return 0;
+
+	return nor->params.quad_enable(nor);
+}
+
 static int spi_nor_init(struct spi_nor *nor)
 {
 	int err;
 
 	if (nor->clear_sr_bp) {
-		if (nor->quad_enable == spansion_quad_enable)
+		if (nor->params.quad_enable == spansion_quad_enable)
 			nor->clear_sr_bp = spi_nor_spansion_clear_sr_bp;
 
 		err = nor->clear_sr_bp(nor);
@@ -4484,12 +4493,10 @@ static int spi_nor_init(struct spi_nor *nor)
 		}
 	}
 
-	if (nor->quad_enable) {
-		err = nor->quad_enable(nor);
-		if (err) {
-			dev_err(nor->dev, "quad mode not supported\n");
-			return err;
-		}
+	err = spi_nor_quad_enable(nor);
+	if (err) {
+		dev_err(nor->dev, "quad mode not supported\n");
+		return err;
 	}
 
 	if (nor->addr_width == 4 && !(nor->flags & SNOR_F_4B_OPCODES)) {
@@ -4706,7 +4713,6 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	 * - select op codes for (Fast) Read, Page Program and Sector Erase.
 	 * - set the number of dummy cycles (mode cycles + wait states).
 	 * - set the SPI protocols for register and memory accesses.
-	 * - set the Quad Enable bit if needed (required by SPI x-y-4 protos).
 	 */
 	ret = spi_nor_setup(nor, hwcaps);
 	if (ret)
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index 77ba692d9348..17787238f0e9 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -535,7 +535,6 @@ struct flash_info;
  * @flash_unlock:	[FLASH-SPECIFIC] unlock a region of the SPI NOR
  * @flash_is_locked:	[FLASH-SPECIFIC] check if a region of the SPI NOR is
  *			completely locked
- * @quad_enable:	[FLASH-SPECIFIC] enables SPI NOR quad mode
  * @clear_sr_bp:	[FLASH-SPECIFIC] clears the Block Protection Bits from
  *			the SPI NOR Status Register.
  * @params:		[FLASH-SPECIFIC] SPI-NOR flash parameters and settings.
@@ -579,7 +578,6 @@ struct spi_nor {
 	int (*flash_lock)(struct spi_nor *nor, loff_t ofs, uint64_t len);
 	int (*flash_unlock)(struct spi_nor *nor, loff_t ofs, uint64_t len);
 	int (*flash_is_locked)(struct spi_nor *nor, loff_t ofs, uint64_t len);
-	int (*quad_enable)(struct spi_nor *nor);
 	int (*clear_sr_bp)(struct spi_nor *nor);
 	struct spi_nor_flash_parameter params;
 
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
