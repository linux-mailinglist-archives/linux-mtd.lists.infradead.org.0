Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 237A66B890
	for <lists+linux-mtd@lfdr.de>; Wed, 17 Jul 2019 10:49:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eA3kA8pG7oag63fRZ+TDHmseKEX6AlrDyLwazegqUTY=; b=sYfHakpxn0CtlU
	SwpfK8jhhE+K3bWUren6T+KxOgcMDU3zRSODoiZstrFbGKwOFlXisrQQrdeZL6B4aF78sKd8CNdlx
	GLd108ZWENo2yHV1HbtPBE/xd9P1jMYnU7RYkcw7jrdC49yNAPHSxA1zPYlZGlBTOt1gO9VJ7UGGF
	BuJQQhOzCGx0aSnvN93dVj2tk6w78k+JyRYnEYhGwmVxnD+WaZ8x8dm6fzqVoe0e8okoNP5bOoYZZ
	XJjNdaIpnilqt8UI+qu/CISxTG70R66/9U318nuJENEOX3CNSEDnQJB2NBRlQJEYcIB4kiwHTqmsB
	vcujg59wENMKcAfGBQBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnfd0-0006kD-GP; Wed, 17 Jul 2019 08:49:34 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnfbj-00052N-62
 for linux-mtd@lists.infradead.org; Wed, 17 Jul 2019 08:48:17 +0000
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
IronPort-SDR: a2uXCPweg0St7evJ7wOb2DkKQC/c7QDdCr1AladgDT4KVRaK/u9J6H4ddyBYGC7AsEc631n7l+
 YvjXJpj3cyh6hz1JGQtsD9eytnCl5iBm8DmjhaS3p3Y+w9lF6skf57tiSFdov9r7LldcunGOqe
 GxfLIbxZuwqx3wIsSU+CLxoGbEYMrlDYFxvhSUlPWLKPfTzVFq+tyaEH5NaFb1h2Gj5+RHPHEh
 j/gKl0zILCmRH30r635Bzp0FFJewL4VTyHhtFf/gTawiRZLS+fNtBCpwys8EOxt2xHOOmOE+8w
 7r8=
X-IronPort-AV: E=Sophos;i="5.64,273,1559545200"; d="scan'208";a="41583079"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Jul 2019 01:48:13 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 17 Jul 2019 01:48:13 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 17 Jul 2019 01:48:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b/6c34Sg+mjuuxmbq3XAptMFVf1lEHRy4dvixtwjZATGF7a+KZD3YN/lnqyjYTa3M2kagVbrSm5JXOxwiqONtfJRkeFoZ8ULUAORmF+0QZQKOy4v6d63O/d47QI6+mx/PczvO0gRDgZC+TxIfGtLw1Quob9+HpbMX54aOyqnjjQvzhnbl5oie02nc8pY75vKEjYRF+H2qjkaYQkqR0ciV0RYk5TSBIxJIGctHq8/StXvoVChhXbxO59z9ByTJqlMVheYCcxBniLbZ8qtcgHNjWswiZPzdTcdMEW7zx1CnrLRgxfKqyM1t2NIDWVq4PTpITY8JwS5YNk19uP8V1nXjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=crZyCNc3WLHXJwyzBAOIha+riRt5BtIHZgtjBu6WjXM=;
 b=RG1lT0v/cqrajMx3zbH4hwZ+LXX4uH7k2OJ+0eaLQPE6p2XbxDlkyyC/vAW8tbnvDTwBndbGXevu2RtpcIZoaryrapFZ3TXRkpqKUHIVUOApB/LjvPzkDI1w8hmlVQLrGczk2SENDKhCJYtO9CiZ97EXpipVItzzrk4ByTJ+6NUEYt5rYBN7I5eHgbQ/b64z33CI5RcmKLPy0O7DT0a56bMVkc66jMOhEufw3PC1kMt45jQ9uY+4HRgzw7G2uVgBI/ioxkUNX7L/q0HCaIi8BkhdF3zp7dLYs2OPqOTobprk1ya6vYhHu4ngoAK5QqF3mEfzysFJcyoDq4DKNh3L7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=crZyCNc3WLHXJwyzBAOIha+riRt5BtIHZgtjBu6WjXM=;
 b=wh+FnQu7MzlSkNhYp0yqRIVPUXF6hYk+HRojHldNaczchFybGT0bscAc3AGqBlf/KJdsmynfz95WIapi4RTbxcaZ2OwIAAJyFQsNfQW0dBVNjwpUkQjexLf5Jlthhlz9EUx1aBRpWZxC0wua/bRRFvYVvK2S4jBlWGvC5cxAN4Q=
Received: from BN6PR11MB1842.namprd11.prod.outlook.com (10.175.98.146) by
 BN6SPR00MB254.namprd11.prod.outlook.com (10.173.236.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Wed, 17 Jul 2019 08:48:11 +0000
Received: from BN6PR11MB1842.namprd11.prod.outlook.com
 ([fe80::6515:912a:d113:5102]) by BN6PR11MB1842.namprd11.prod.outlook.com
 ([fe80::6515:912a:d113:5102%12]) with mapi id 15.20.2073.012; Wed, 17 Jul
 2019 08:48:11 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <marek.vasut@gmail.com>
Subject: [PATCH 3/5] mtd: spi-nor: add Global Block Unlock support
Thread-Topic: [PATCH 3/5] mtd: spi-nor: add Global Block Unlock support
Thread-Index: AQHVPHxdqQl/GMdi9ECDdSKG+lyMoQ==
Date: Wed, 17 Jul 2019 08:48:11 +0000
Message-ID: <20190717084745.19322-4-tudor.ambarus@microchip.com>
References: <20190717084745.19322-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190717084745.19322-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P195CA0085.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:802:59::38) To BN6PR11MB1842.namprd11.prod.outlook.com
 (2603:10b6:404:101::18)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 31001b2b-fce1-46e0-3107-08d70a937f8a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BN6SPR00MB254; 
x-ms-traffictypediagnostic: BN6SPR00MB254:
x-microsoft-antispam-prvs: <BN6SPR00MB254456C89677112A213A48DF0C90@BN6SPR00MB254.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01018CB5B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(39860400002)(376002)(366004)(346002)(189003)(199004)(66066001)(102836004)(186003)(4326008)(99286004)(52116002)(76176011)(2616005)(486006)(386003)(6436002)(446003)(256004)(26005)(476003)(86362001)(53936002)(107886003)(6506007)(6486002)(66446008)(11346002)(14454004)(14444005)(6512007)(71190400001)(64756008)(71200400001)(25786009)(81156014)(110136005)(2501003)(478600001)(305945005)(7736002)(54906003)(1076003)(2906002)(5660300002)(36756003)(66476007)(81166006)(66556008)(6116002)(8676002)(50226002)(8936002)(316002)(3846002)(66946007)(68736007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6SPR00MB254;
 H:BN6PR11MB1842.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gaQ4s6r/SShibbUv6VUa9Y2fqTf/FABee5w3LGIRxyFitUbcC1A11ethHeKjbDH/mSFeSP5EdbCQxTP0UsteCm/FR0Mma+r6l+eEqz7WWmHy6AC8zbj35qQDYhjrpk1fJCQqYX8K+ickfLNQybo3fIgjnlZznzB3PplCsqIjlfcR/naXhjHDdzj+BbPUTE7FkOo440tjkaK86myUwNqHvowgjkpRGsfKQWzK6IM8Qsmq61l3/dCtG5jzIdt5AwGENyNEFX/whPorc/cIeqYo/9ZPBCH9C8N9mjvWsKEsDIyO6lzM3cP+7m7sazamnEwehGZrwoDbBmSP+fB01MXw+rbXZpaqRtqH/sqtt1i6mn2ZKvWaV/yKWKE0qaeAn9ZzIXLwSCKOXMYBdgOVlMVIHbv2/rM9rrUQy7845vPiNJc=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 31001b2b-fce1-46e0-3107-08d70a937f8a
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2019 08:48:11.4326 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tudor.ambarus@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6SPR00MB254
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_014815_338166_37724135 
X-CRM114-Status: GOOD (  12.30  )
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
Cc: Tudor.Ambarus@microchip.com, richard@nod.at, linux-kernel@vger.kernel.org,
 Nicolas.Ferre@microchip.com, boris.brezillon@collabora.com,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

To avoid inadvertent writes during power-up, some flashes are
write-protected by default after a power-on reset cycle.
A Global Block-Protection Unlock command offers a single
command cycle that unlocks the entire memory array. This is
identical with what other nor flashes are doing by clearing
the block protection bits from the status register: disable
the write protection after a power-on reset cycle.

We can't determine this purely by manufacturer type and it's not
autodetectable by anything like SFDP, so make a new flag for it:
UNLOCK_GLOBAL_BLOCK.

Note that the Global Block Unlock command has different names
depending on the manufacturer, but always the same command value:
0x98. Macronix's MX25U12835F names it Gang Block Unlock,
Winbound's W25Q128FV names it Global Block Unlock and
Microchip's SST26VF064B names it Global Block Protection Unlock.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 21 ++++++++++++++++++++-
 include/linux/mtd/spi-nor.h   |  1 +
 2 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index e9e441f91b68..767e2e6eb1b8 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -250,7 +250,7 @@ struct flash_info {
 	u16		page_size;
 	u16		addr_width;
 
-	u16		flags;
+	u32		flags;
 #define SECT_4K			BIT(0)	/* SPINOR_OP_BE_4K works uniformly */
 #define SPI_NOR_NO_ERASE	BIT(1)	/* No erase command needed */
 #define SST_WRITE		BIT(2)	/* use SST byte programming */
@@ -279,6 +279,7 @@ struct flash_info {
 #define SPI_NOR_SKIP_SFDP	BIT(13)	/* Skip parsing of SFDP tables */
 #define USE_CLSR		BIT(14)	/* use CLSR command */
 #define SPI_NOR_OCTAL_READ	BIT(15)	/* Flash supports Octal Read */
+#define UNLOCK_GLOBAL_BLOCK	BIT(16) /* Unlock global block protection */
 
 	/* Part specific fixup hooks. */
 	const struct spi_nor_fixups *fixups;
@@ -1725,6 +1726,20 @@ static int spi_nor_spansion_clear_sr_bp(struct spi_nor *nor)
 	return spi_nor_clear_sr_bp(nor);
 }
 
+static int spi_nor_unlock_global_block_protection(struct spi_nor *nor)
+{
+	int ret;
+
+	write_enable(nor);
+
+	ret = nor->write_reg(nor, SPINOR_OP_ULBPR, NULL, 0);
+	if (ret < 0) {
+		dev_err(nor->dev, "error %d on ULBPR\n", ret);
+		return ret;
+	}
+	return spi_nor_wait_till_ready(nor);
+}
+
 /* Used when the "_ext_id" is two bytes at most */
 #define INFO(_jedec_id, _ext_id, _sector_size, _n_sectors, _flags)	\
 		.id = {							\
@@ -4053,6 +4068,10 @@ static int spi_nor_init(struct spi_nor *nor)
 				spi_nor_spansion_clear_sr_bp;
 	}
 
+	if (nor->info->flags & UNLOCK_GLOBAL_BLOCK)
+		nor->disable_write_protection =
+			spi_nor_unlock_global_block_protection;
+
 	if (nor->disable_write_protection) {
 		err = nor->disable_write_protection(nor);
 		if (err) {
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index 6c3273760700..84d279fd287e 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -65,6 +65,7 @@
 #define SPINOR_OP_CLFSR		0x50	/* Clear flag status register */
 #define SPINOR_OP_RDEAR		0xc8	/* Read Extended Address Register */
 #define SPINOR_OP_WREAR		0xc5	/* Write Extended Address Register */
+#define SPINOR_OP_ULBPR		0x98    /* Global Block Unlock Protection */
 
 /* 4-byte address opcodes - used on Spansion and some Macronix flashes. */
 #define SPINOR_OP_READ_4B	0x13	/* Read data bytes (low frequency) */
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
