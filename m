Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5C2ECE6A
	for <lists+linux-mtd@lfdr.de>; Sat,  2 Nov 2019 12:24:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ko/NALlGjNiYpCJIWYWSsor4ubb+xfZ9tTMVbw1uWTc=; b=S9gfvq+ghEKfAu
	fnn1+iTVMA9bcmXYnCLcG42LgYW1qrAusdtRjnjz8aGVlP+GVt3DokimwdNVOjyvjEuRSoJSqSSkk
	WlhD7QVsPk1qplCgSiJK1Zk4DMI+cUQID9GID5ys1khYQUD29h2ylmfnTpv8DKcv/N6imSxUvUqKu
	hRci55KnK4gE9+0b6WwiEW7oO55wDGqYdatKGetEi2am5DqNlr5sirYbiuJdzaF196KXs+wEAyJSt
	KAx1DyF4GkGqBEYrcTYeAokRrXAetS/rWPXYeeOKu0ivd5JBSAzMfyvDtJl3bBvMDtXnChWRsei2Q
	Li+cnfRAkNc8Ww6/LBrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQrWc-0003FN-36; Sat, 02 Nov 2019 11:24:58 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQrVD-00026F-KA
 for linux-mtd@lists.infradead.org; Sat, 02 Nov 2019 11:23:33 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: iJg1fkdgZ1f/IO4g54ddtrrqsBypyw7yEk7ytuHYCRPyWx/u90YvajxzjW+7UqRQxvk+FPADKE
 YvbnS+YxoRVb2/LiFxwHzVgPLKWRM6stk7hY9brzaa36pVrhhRX6LnxjNcCazPNy6VYaFoyz1m
 VaDI9iTik6FWAxFt093+6FksNfyZr/z1oyJDd+OE1j8sodXBx7TNODkTo9wTo4+BeFBFUPVn9o
 IGk1dvclFdY35qrYg+psEQR4bhgmJst4IeKoNqRQGQx7IUOKBsIGf417BvSis1hvMR3FPW3v1I
 ZWI=
X-IronPort-AV: E=Sophos;i="5.68,259,1569308400"; d="scan'208";a="53900849"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Nov 2019 04:23:31 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 2 Nov 2019 04:23:30 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Sat, 2 Nov 2019 04:23:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XVBr+sqAy1MMo3XeBM7dgUs6yynWJ3yv/nT+h4B9XghwNDSeQyxHU/DdbwGmwgaZNso07/RfJeDp9hzwzapc2232+ZGHFt44v0HD3lLgy1h8xsZo1srFn+QjT7330p7MEEpdb50E38P9Noc44u23FEG28wIPHArDhpdc++5qcQS1JgxAqabb8TTppTEIsOcVIS5Awvvgu9cAEC79pL3owepGoNBaF26fyh/pkVjXKsiKzZslcFHk3yFW5fr27n9xGy7WaBQVD6O3ksV3p2Wwxe8TFkQx4P+cp3z/ZCcHOujUXnKvUtLDZYMiqeDpOwrLo3SxEsa02rgDwAS2Th3TOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7gWQnAjJ7sWtNc5xDe7RHSZRkW+5rsqrGnbNfYFuHWg=;
 b=VwoG6oxR4LcENqpfsTww38zrg0/qhSiT3u0rfg3Qv5PP9btoX6odBkYv0jnwQ7Irys0zL2x6Kia8K3WCBRdWYUvb/FkJSOAjhMMJXcolUrVDZsRzhQz9mJY/TXyDMRVwkQAB6mjTfi8WPR9RZ5vDmbQUNkIjjwLRDjyf560Y/HihI8ZqeItBpQgqQg2wTJrDAZOcFkbt/sp8/0wV5YXl5vpkh11Ik/pgkhuo3ASLP1eMzhjYECPLRj0cMOG0wu48CrBZHOrMOxov3xNm1JGbYXI9LytSRyyimrvu55aNaZXvFr66cEooYKipLyMMb249zKjo2PH5O70ENZ9jIs0D4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7gWQnAjJ7sWtNc5xDe7RHSZRkW+5rsqrGnbNfYFuHWg=;
 b=JcbcKMXtGgLJ27kVR8RC4mbhoXlSOZCHmz0qxh0wNeI694ErybNplH3RP4ntGvGD/TrbV5lxkfLAeiiLZUxIdsRUMZRWrgnEwqHNhQk0xDomx3qd3iSYqV71MQ9VjFN8HhMu/xmnBTEmtW+dMKGPKASkViy7lKGhZBAP82Rt+PI=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3711.namprd11.prod.outlook.com (20.178.254.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Sat, 2 Nov 2019 11:23:28 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457%5]) with mapi id 15.20.2408.018; Sat, 2 Nov 2019
 11:23:28 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <vigneshr@ti.com>
Subject: [PATCH v4 03/20] mtd: spi-nor: Check for errors after each Register
 Operation
Thread-Topic: [PATCH v4 03/20] mtd: spi-nor: Check for errors after each
 Register Operation
Thread-Index: AQHVkW/zzztfMFx5dk6cR4KWQTA7vg==
Date: Sat, 2 Nov 2019 11:23:28 +0000
Message-ID: <20191102112316.20715-4-tudor.ambarus@microchip.com>
References: <20191102112316.20715-1-tudor.ambarus@microchip.com>
In-Reply-To: <20191102112316.20715-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR07CA0143.eurprd07.prod.outlook.com
 (2603:10a6:802:16::30) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [86.120.239.29]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 019422f8-7a8b-4f8a-806b-08d75f8715c1
x-ms-traffictypediagnostic: MN2PR11MB3711:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB371128F141A188E5F18B0821F07D0@MN2PR11MB3711.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-forefront-prvs: 0209425D0A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(346002)(376002)(396003)(39850400004)(189003)(199004)(64756008)(386003)(316002)(446003)(4326008)(5660300002)(81166006)(6506007)(2616005)(76176011)(81156014)(11346002)(110136005)(476003)(25786009)(54906003)(8936002)(86362001)(486006)(14454004)(8676002)(102836004)(26005)(66476007)(50226002)(2906002)(6116002)(1076003)(2501003)(7736002)(3846002)(99286004)(71200400001)(36756003)(71190400001)(66556008)(256004)(305945005)(6486002)(6436002)(66946007)(66066001)(6512007)(66446008)(478600001)(186003)(52116002)(14444005)(107886003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3711;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kOtha3/84p9ucIeca+8m5TFrGvGeJYrWzWSrswhZGNAqhod3VezodNZayVe5qyJ+7KkPMi+5wMmfgmH6ssC0TfI39WDPi5dAu/duQqvXsshYU7W53VCBj8m4qxpEMtg6OSouboPURkO0iI6OgI0lXFPrFYU2jeV5GVwTvvTB+Wx8e3B2QviLNXfHdeyrt44DYRWA6Dxqkpx669PtPfWqI7jg9pRW0EVI7kD+He8I3ZE7OEHWoy3HrUaG3BRcuf/nT6jTsJ46oAEKuArZiSIs+a4oiJ0Z3+eanuxxyuliHmu7t0IH3WyqSJKB5M3PmWTKsnV7YyBE0/l3b9h0H7oWcwXjarP4SXQAr91yiM6JIWiVGRX4i0KH34OczSD8p/MzbEaE7M04/Y6ff5kwa7xE62f1+z24DoPsrhuv/K39zplxCICM2Gats4nuSCIqmSyE
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 019422f8-7a8b-4f8a-806b-08d75f8715c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2019 11:23:28.8789 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AumR4FLEbdKDNY/HOW6kJPFaaIZB5NY9CtTRHgp0NfnViSRy5feAzGC/52VQgXkYTpMQnA5VGQH9fVRqyOspV1Xsf1VtHAYGN1aEKIJ9cLA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3711
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_042331_772511_E70FA142 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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
Cc: richard@nod.at, Tudor.Ambarus@microchip.com, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

Check for the return vales of each Register Operation.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 81 ++++++++++++++++++++++++++++++++-----------
 1 file changed, 60 insertions(+), 21 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 0cb3122e74ad..5debb0f7ca13 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -595,11 +595,15 @@ static int st_micron_set_4byte(struct spi_nor *nor, bool enable)
 {
 	int ret;
 
-	spi_nor_write_enable(nor);
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
+
 	ret = macronix_set_4byte(nor, enable);
-	spi_nor_write_disable(nor);
+	if (ret)
+		return ret;
 
-	return ret;
+	return spi_nor_write_disable(nor);
 }
 
 static int spansion_set_4byte(struct spi_nor *nor, bool enable)
@@ -665,11 +669,15 @@ static int winbond_set_4byte(struct spi_nor *nor, bool enable)
 	 * Register to be set to 1, so all 3-byte-address reads come from the
 	 * second 16M. We must clear the register to enable normal behavior.
 	 */
-	spi_nor_write_enable(nor);
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
+
 	ret = spi_nor_write_ear(nor, 0);
-	spi_nor_write_disable(nor);
+	if (ret)
+		return ret;
 
-	return ret;
+	return spi_nor_write_disable(nor);
 }
 
 static int spi_nor_xread_sr(struct spi_nor *nor, u8 *sr)
@@ -859,7 +867,9 @@ static int spi_nor_write_sr_cr(struct spi_nor *nor, const u8 *sr_cr)
 {
 	int ret;
 
-	spi_nor_write_enable(nor);
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
 
 	if (nor->spimem) {
 		struct spi_mem_op op =
@@ -889,7 +899,10 @@ static int spi_nor_write_sr_and_check(struct spi_nor *nor, u8 status_new,
 {
 	int ret;
 
-	spi_nor_write_enable(nor);
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
+
 	ret = spi_nor_write_sr(nor, status_new);
 	if (ret)
 		return ret;
@@ -1397,7 +1410,9 @@ static int spi_nor_erase_multi_sectors(struct spi_nor *nor, u64 addr, u32 len)
 	list_for_each_entry_safe(cmd, next, &erase_list, list) {
 		nor->erase_opcode = cmd->opcode;
 		while (cmd->count) {
-			spi_nor_write_enable(nor);
+			ret = spi_nor_write_enable(nor);
+			if (ret)
+				goto destroy_erase_cmd_list;
 
 			ret = spi_nor_erase_sector(nor, addr);
 			if (ret)
@@ -1452,7 +1467,9 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
 	if (len == mtd->size && !(nor->flags & SNOR_F_NO_OP_CHIP_ERASE)) {
 		unsigned long timeout;
 
-		spi_nor_write_enable(nor);
+		ret = spi_nor_write_enable(nor);
+		if (ret)
+			goto erase_err;
 
 		ret = spi_nor_erase_chip(nor);
 		if (ret)
@@ -1479,7 +1496,9 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
 	/* "sector"-at-a-time erase */
 	} else if (spi_nor_has_uniform_erase(nor)) {
 		while (len) {
-			spi_nor_write_enable(nor);
+			ret = spi_nor_write_enable(nor);
+			if (ret)
+				goto erase_err;
 
 			ret = spi_nor_erase_sector(nor, addr);
 			if (ret)
@@ -1500,7 +1519,7 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
 			goto erase_err;
 	}
 
-	spi_nor_write_disable(nor);
+	ret = spi_nor_write_disable(nor);
 
 erase_err:
 	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_ERASE);
@@ -1849,9 +1868,13 @@ static int macronix_quad_enable(struct spi_nor *nor)
 	if (nor->bouncebuf[0] & SR_QUAD_EN_MX)
 		return 0;
 
-	spi_nor_write_enable(nor);
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
 
-	spi_nor_write_sr(nor, nor->bouncebuf[0] | SR_QUAD_EN_MX);
+	ret = spi_nor_write_sr(nor, nor->bouncebuf[0] | SR_QUAD_EN_MX);
+	if (ret)
+		return ret;
 
 	ret = spi_nor_wait_till_ready(nor);
 	if (ret)
@@ -2022,7 +2045,9 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
 	/* Update the Quad Enable bit. */
 	*sr2 |= SR2_QUAD_EN_BIT7;
 
-	spi_nor_write_enable(nor);
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
 
 	ret = spi_nor_write_sr2(nor, sr2);
 	if (ret)
@@ -2063,7 +2088,9 @@ static int spi_nor_clear_sr_bp(struct spi_nor *nor)
 	if (ret)
 		return ret;
 
-	spi_nor_write_enable(nor);
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
 
 	ret = spi_nor_write_sr(nor, nor->bouncebuf[0] & ~mask);
 	if (ret)
@@ -2680,7 +2707,9 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
 	if (ret)
 		return ret;
 
-	spi_nor_write_enable(nor);
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		goto sst_write_err;
 
 	nor->sst_write_second = false;
 
@@ -2718,14 +2747,19 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
 	}
 	nor->sst_write_second = false;
 
-	spi_nor_write_disable(nor);
+	ret = spi_nor_write_disable(nor);
+	if (ret)
+		goto sst_write_err;
+
 	ret = spi_nor_wait_till_ready(nor);
 	if (ret)
 		goto sst_write_err;
 
 	/* Write out trailing byte if it exists. */
 	if (actual != len) {
-		spi_nor_write_enable(nor);
+		ret = spi_nor_write_enable(nor);
+		if (ret)
+			goto sst_write_err;
 
 		nor->program_opcode = SPINOR_OP_BP;
 		ret = spi_nor_write_data(nor, to, 1, buf + actual);
@@ -2735,8 +2769,10 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
 		ret = spi_nor_wait_till_ready(nor);
 		if (ret)
 			goto sst_write_err;
-		spi_nor_write_disable(nor);
+
 		actual += 1;
+
+		ret = spi_nor_write_disable(nor);
 	}
 sst_write_err:
 	*retlen += actual;
@@ -2787,7 +2823,10 @@ static int spi_nor_write(struct mtd_info *mtd, loff_t to, size_t len,
 
 		addr = spi_nor_convert_addr(nor, addr);
 
-		spi_nor_write_enable(nor);
+		ret = spi_nor_write_enable(nor);
+		if (ret)
+			goto write_err;
+
 		ret = spi_nor_write_data(nor, addr, page_remain, buf + i);
 		if (ret < 0)
 			goto write_err;
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
