Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FAA17BCB3
	for <lists+linux-mtd@lfdr.de>; Wed, 31 Jul 2019 11:12:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=23ImHJ8tfU4eSozqx4Q2vZpOvtFD1Wkx3S7vuJAAmzw=; b=EGKYzinio59NPZ
	tcKeb0Y351CAaNsLhjqQbhDG0iJaOKIRnrCl8CmTsztaCT6GILSnnk09lH9x/RM5zVneWvxdvAdvG
	N67HCRBd/aH06xzAug5X7587KM6ts3kML1GDR66ScgyvBGBr7sqQVZvBfVZxcmm0y8N96nvkVFHfx
	YQqs7/ETAo4opxaIO34Y1aVl6JB1aJ8Q4+INRpuysgW4VEnEG0hbi4gbTQ9y0vJyDaXfrq+feE3Jd
	Wjo8z5TdwAWi/zY6F7qP1CIMV5oGwUbQBpQm9Pa9V/HJvV2LbjPFC2b9QUYP0aZCQNwC6bz3adBI0
	7IS99vmb56rnknR2pYSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hskf8-0004QS-QX; Wed, 31 Jul 2019 09:12:47 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hskej-0003wY-KA
 for linux-mtd@lists.infradead.org; Wed, 31 Jul 2019 09:12:23 +0000
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
IronPort-SDR: c+lnhLMbdLj76S8e0GzQcR1cd8cc8qddTQIXo30HzhtSFNeIMWSWtLGaNg8UwC+3WtVj7XVk1T
 GSclZ5yNAngROEeg8JP6s8BqM5GNWHC/4zPepCmvU04OgqVsOgzjjdmOYzekAe9k8ITM7xarMp
 j3nDuevxyIsUD615SRSo2NJqvd3wtcBX9q2IhU4FH2O1HRcJCPx+DAX6z1iIesFvzum+Toieb7
 lKRIBJwSg/oVLVKLsPG+3KTC5A9Uyl59exSBHM1ysCoxLWeFpgVRzfiTkTA2GZiHothsRSzqU/
 MbY=
X-IronPort-AV: E=Sophos;i="5.64,329,1559545200"; d="scan'208";a="41824407"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 31 Jul 2019 02:12:21 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 31 Jul 2019 02:12:10 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 31 Jul 2019 02:12:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mb4b2q5I5PaHTgR/1JnNLEpHcMfGjJ6uaYZSI77oGp/nG7oczmzIDM166d3AT09cZAukZnl9HBWGDhaQ4liQMQ/65jsUC08VoWyngLqYjtoJFlHmslsUydANi3mhYm9MvZQkmynGwkmpFa3e0WFloTDoa8ixeL1mNgmc4KEFwvdL1xtvasEAGT4d00nN/Hwl+t+DJY8I5cgLG7Ll8QmYeeuSA7EuK4s9oDKdzIaIvWPd9qN7O4lbuaZhdIO1CVS4ASM3zBvsjUuWBriIWh2/clcPDPusU8+/wUdDXtAMyZWS7CF9UISq50wkBuXMYAEVpQSPQsUrfRpm653Dk2Hnkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2cbhfzN6sFL/a+vSk+BFw1atN6TIeYzNqMdw+uI+SZA=;
 b=YjvVzCDEQ+lGICB5dvXwQESU6I0I01Cp3pp0UcFuThxBAraKq/iOZozi/hVwEgEVuDADAMxSB79ZF3w41JtCosSo02gx3mmnnotq5YBunu/j+BZOkuMOZ+EvqZdOQY7CVsPLWjCHsqmmeATHuNHml9taFP1y5VeAiunXvWu5r3NLuGk4HoaV55j1zag8e8Hyfmo8EW4dnV37ONUBm5bDBS1NE84p+z/YiYwUDY6mqTcDKDToXzdsblwbWL6vkIdobSRs+7s+zxq7HAX5XYc+YsXZyfF3n7vJn7qwfY2khLgKZbNOMLu4NR+SnEbF1eOAr6MWOzv4VNVjpmqAB4oxdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2cbhfzN6sFL/a+vSk+BFw1atN6TIeYzNqMdw+uI+SZA=;
 b=zI+tMzvBcw1aKd7Xv/uMoFMS5MsPQFOxoHgbI/etJDgDAs19eJupu4Js6E578UlJHbHraIgt6SR5LjbEkl7/nozrAQYnU1+VxPPNN9mnYNMgOz9YBW1+VUP/rGIXzeK5WIAfFn4hWmLurgfU+fmLGhBkVvHFli7X3DQGfvPgRG4=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4414.namprd11.prod.outlook.com (52.135.36.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Wed, 31 Jul 2019 09:12:10 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::61d1:6408:89a2:8de5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::61d1:6408:89a2:8de5%2]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 09:12:10 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>, <vigneshr@ti.com>
Subject: [PATCH 2/6] mtd: spi-nor: Add spansion_post_sfdp_fixups()
Thread-Topic: [PATCH 2/6] mtd: spi-nor: Add spansion_post_sfdp_fixups()
Thread-Index: AQHVR4AIVmwq4cVSO06zdYjm0Oz0Gg==
Date: Wed, 31 Jul 2019 09:12:10 +0000
Message-ID: <20190731091145.27374-3-tudor.ambarus@microchip.com>
References: <20190731091145.27374-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190731091145.27374-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR08CA0130.eurprd08.prod.outlook.com
 (2603:10a6:800:d4::32) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 44a35977-62a9-4212-1c5a-08d715972b08
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB4414; 
x-ms-traffictypediagnostic: MN2PR11MB4414:
x-microsoft-antispam-prvs: <MN2PR11MB4414B5E8F1D73FD3414454E1F0DF0@MN2PR11MB4414.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(396003)(39860400002)(376002)(346002)(199004)(189003)(14454004)(26005)(81166006)(6116002)(50226002)(76176011)(5660300002)(66066001)(2501003)(6512007)(25786009)(486006)(102836004)(107886003)(2201001)(110136005)(305945005)(3846002)(7736002)(68736007)(53936002)(6486002)(478600001)(86362001)(71200400001)(71190400001)(186003)(476003)(256004)(8936002)(6436002)(7416002)(386003)(52116002)(54906003)(316002)(66946007)(81156014)(11346002)(2616005)(2906002)(64756008)(4326008)(446003)(99286004)(36756003)(66556008)(8676002)(66476007)(66446008)(1076003)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4414;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: goMPajPWxJdlPn0k4FmEIEzG6Ta0BhXEs2kxIIbwyrBpCM/BozlJwBwLX/nGh8uKJBlFwdyrd8MIclOn9Lmuoh62djruayZrsMUutsMj/Fq3RyMxvgdyz0fbBxmSOIJ2q2CtpMPUkhXtTTSqY8FMCO5bB8ZWMRM7ScVFkLu3YZB0eIBUKCRjieA5I7ALk8IeDtHoiP15xXzGF0UDVmbxveSG+GPskgc1DjNKMyPK4FL8gd4DJdqFHS4G6echHw7rXq8y7XDmdqqYIgO6frRoQQ1HkhCG1MNs6u82Bgp5cNAI8LRdjPftRAH24MQnQ4EK/iSljwzvxCdzUxQg9QbRa61wvsxlbmwO3q8oBUjc05+CdrzrIN5JUHy1OkWkqJv9tCyjvwH+rw6M/U5I0KHrUBsjYO934lZi4tumEI65PI0=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 44a35977-62a9-4212-1c5a-08d715972b08
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 09:12:10.3712 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tudor.ambarus@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4414
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_021221_821320_4D1638EA 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
Cc: Tudor.Ambarus@microchip.com, richard@nod.at, linux-kernel@vger.kernel.org,
 boris.brezillon@bootlin.com, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com, computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Boris Brezillon <boris.brezillon@bootlin.com>

Add a spansion_post_sfdp_fixups() function to fix the erase opcode,
erase sector size and set the SNOR_F_4B_OPCODES flag.
This way, all spansion related quirks are placed in the
spansion_post_sfdp_fixups() function.

Signed-off-by: Boris Brezillon <boris.brezillon@bootlin.com>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 44 +++++++++++++++++++++++++++++--------------
 1 file changed, 30 insertions(+), 14 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 2c2d13060427..30f9d524e72f 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -737,18 +737,6 @@ static u8 spi_nor_convert_3to4_erase(u8 opcode)
 
 static void spi_nor_set_4byte_opcodes(struct spi_nor *nor)
 {
-	/* Do some manufacturer fixups first */
-	switch (JEDEC_MFR(nor->info)) {
-	case SNOR_MFR_SPANSION:
-		/* No small sector erase for 4-byte command set */
-		nor->erase_opcode = SPINOR_OP_SE;
-		nor->mtd.erasesize = nor->info->sector_size;
-		break;
-
-	default:
-		break;
-	}
-
 	nor->read_opcode = spi_nor_convert_3to4_read(nor->read_opcode);
 	nor->program_opcode = spi_nor_convert_3to4_program(nor->program_opcode);
 	nor->erase_opcode = spi_nor_convert_3to4_erase(nor->erase_opcode);
@@ -4451,9 +4439,38 @@ static void spi_nor_default_init_params(struct spi_nor *nor,
 	spi_nor_init_uniform_erase_map(map, erase_mask, params->size);
 }
 
+static void spansion_post_sfdp_fixups(struct spi_nor *nor)
+{
+	struct mtd_info *mtd = &nor->mtd;
+
+	if (mtd->size <= SZ_16M)
+		return;
+
+	nor->flags |= SNOR_F_4B_OPCODES;
+	/* No small sector erase for 4-byte command set */
+	nor->erase_opcode = SPINOR_OP_SE;
+	nor->mtd.erasesize = nor->info->sector_size;
+}
+
+static void
+spi_nor_manufacturer_post_sfdp_fixups(struct spi_nor *nor,
+				      struct spi_nor_flash_parameter *params)
+{
+	switch (JEDEC_MFR(nor->info)) {
+	case SNOR_MFR_SPANSION:
+		spansion_post_sfdp_fixups(nor);
+		break;
+
+	default:
+		break;
+	}
+}
+
 static void spi_nor_post_sfdp_fixups(struct spi_nor *nor,
 				     struct spi_nor_flash_parameter *params)
 {
+	spi_nor_manufacturer_post_sfdp_fixups(nor, params);
+
 	if (nor->info->fixups && nor->info->fixups->post_sfdp)
 		return nor->info->fixups->post_sfdp(nor, params);
 }
@@ -4934,8 +4951,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 		nor->addr_width = 3;
 	}
 
-	if (info->flags & SPI_NOR_4B_OPCODES ||
-	    (JEDEC_MFR(info) == SNOR_MFR_SPANSION && mtd->size > SZ_16M))
+	if (info->flags & SPI_NOR_4B_OPCODES)
 		nor->flags |= SNOR_F_4B_OPCODES;
 
 	if (nor->addr_width == 4 && nor->flags & SNOR_F_4B_OPCODES &&
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
