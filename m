Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C45669BDA8
	for <lists+linux-mtd@lfdr.de>; Sat, 24 Aug 2019 14:27:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PCPR5BdrJFQjj3jL49I73zxilzKx+EsY7OrjjXdWle0=; b=FXllHgLsld0v9H
	HI+9FfTqksxQDilxMgrYBZUCREe6wXb86Hxld2cJ0wI1tiun0mE0PzoxphCcbdB9CDbhz822F0YiH
	4xcUlEg3m8EebeHsZopPKWA5wU9rLMhrdnY23EFFkVFGWobq9mZakKHTNTadGxOVo+Ee00Y4F2bIv
	2pQ9yWigIHxOCz9U9b2HxTXYz3x9bsBBicu2uDJcpHhxdHNrIrabDblaM8Ps1dwvfrSV9sxmdYZnw
	VqH3JyyAjvojnudSPYv3gY2Y1E+YJ9hiHoPfKe3vWEMuqafW1Nrh1vz3sfO5lkdO3H10ZXi1Kz3rW
	xAvJ98nVnWSc1oO8CMow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1V8m-0004ta-4J; Sat, 24 Aug 2019 12:27:32 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1V8V-0004hE-Dj
 for linux-mtd@lists.infradead.org; Sat, 24 Aug 2019 12:27:16 +0000
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
IronPort-SDR: Dg1WOZYr+rZv4fuZq7E2Sz8hYjq2k0EBut6lOkVOeIljrkICYhbytzyrjEsSyuHjcrG3vEaP8K
 W30EKCqxp9g+7vXGvDi2t1VWaYKwzDdup0uVTuCiyNH64VvJiRUcxCXwQu1L6J0Cscmavvki/q
 f/AKR2mDEJh187vhayq3TruL1A3TRvF5M3F+tfkjxmZoOV0ElKG6HsFEurgJMQaSvMAokugV1+
 kIgjIxE4xAogg9CdyXNnCVo+qhh2PcmxNqqtz0UzKj5AnwSH7LS17qoIQswK0neolwGMV5Y5fN
 SRI=
X-IronPort-AV: E=Sophos;i="5.64,425,1559545200"; d="scan'208";a="44864839"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Aug 2019 05:27:15 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 24 Aug 2019 05:27:14 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Sat, 24 Aug 2019 05:27:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UYOo/kJdL50PEKDDCD7ngkYx3mdmNG2jWQTAEGwlLm7T7TqAU3NTWtJcJZRPOJs1PhyJg2xorz7AvyfVSSzvKALQHGowB6jYrVE3Z9qVLV0L+DxGkceNX/nVSsAliJ92/07rFaYNedbPa75jVWGTJvLjgsqFozN24m689HB2abyxRsKzxfa5+9Or9geyJ4bSxmayMa/VOWRrBUAIcD+HKbI1JsIyscOsawdcy/1/hh/rD4BB/NZ4qcPmNAyRYwSPzzkzDOcx4rfuQvxGJFhVDJO50X0YoPPN3K+nOPW5eRzW+fG4jolMAsM+pFItcCakWtrRdiLPLfZC1L5kV4zMDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/uywpy+3RW28nC/OMSt1ItOvew47wP4CO7a8BONJg5Y=;
 b=SNpL0zfcpHUmgMW+bcYFoU2AXbeWraql89cK+bm8o5+Wtx8vIwvAa8vAZX3jewV/P0evRR67+gVbgDbUsnFB9zVBfEgWiLhXGhT0Nn0hupyhk10B3Cl8GFIAyuXgOpc1bTuzE8+Y9Gv9CwS2787JlfwTmeJlnQDUVH0/mX54Oh0O5n0UqacjIh8x0ZS+shHEIQIFlga6AV+5R2egI+bEN1UbSpDRb223Qy7vmOYQ9XsUs1UK0LXAV1pfhXd6jjlL9qADJYeNp6661jYipI4EZCeHm90thyHutFuBICsPZ0udd9epNdc2gy84g2ZBkyfbe/RfFUFQ7RFFWoEMiOBBxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/uywpy+3RW28nC/OMSt1ItOvew47wP4CO7a8BONJg5Y=;
 b=M+yzxgthTpWtSEbhjanvpER6RgQyAK9aH2mPDyaN7A7VV3kj0YcCy39agPDqSB6S7m5mwwZHTnxV+gQ1HSLRxKMDwY4WfOaCsZ4DD3RnSqkQV8K0afxx32ahV/Nj2h/L85B+sbX44EQr9UtWDLRHtB2Oq5Gub4ySctuzNMCk/Kk=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3854.namprd11.prod.outlook.com (20.178.252.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Sat, 24 Aug 2019 12:27:12 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5%7]) with mapi id 15.20.2178.020; Sat, 24 Aug 2019
 12:27:12 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>,
 <vigneshr@ti.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 1/2] mtd: spi-nor: add Global Block Unlock support
Thread-Topic: [PATCH v2 1/2] mtd: spi-nor: add Global Block Unlock support
Thread-Index: AQHVWndBGiXUgYKWckGGG7tH1Lap/Q==
Date: Sat, 24 Aug 2019 12:27:12 +0000
Message-ID: <20190824122700.23558-2-tudor.ambarus@microchip.com>
References: <20190824122700.23558-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190824122700.23558-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR04CA0129.eurprd04.prod.outlook.com
 (2603:10a6:803:f0::27) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [86.127.53.184]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 630f97a2-3f71-40db-3405-08d7288e63e7
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR11MB3854; 
x-ms-traffictypediagnostic: MN2PR11MB3854:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB38541B62FB316A809868D19AF0A70@MN2PR11MB3854.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0139052FDB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(136003)(366004)(39860400002)(396003)(199004)(189003)(256004)(66946007)(81156014)(81166006)(186003)(2201001)(64756008)(66446008)(66556008)(26005)(478600001)(486006)(50226002)(2616005)(6512007)(386003)(102836004)(8676002)(86362001)(2501003)(6506007)(1076003)(14454004)(316002)(476003)(11346002)(6116002)(66476007)(99286004)(110136005)(6486002)(305945005)(6436002)(7736002)(71200400001)(76176011)(2906002)(8936002)(446003)(25786009)(53936002)(66066001)(107886003)(3846002)(71190400001)(4326008)(5660300002)(52116002)(36756003)(14444005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3854;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: sLTEy/smCUftu1iXeh3sQpocqmkD0cVZ5hEguX26tcUZv+YgUlKUFgzKE6oyJ087VM3vZd7m5SayEcA/8+tsiUU3/Md/FQnmUVu++M+/Z6Qn5NkgWIeJjdpiBPXCWCxyXw+AyrnUSWWpfz3bqPWtM6ssb/lUPHwlPl2IurFr31UgyNtKY3f9aJJwwiNsQ+iInGtcFWEfJfKLx747+yQ4S+V98zCjWjHosEoCCQ1tFoVHKYIMHCFa8wpwqdMRJcUir908hs9VnsvnQPuNlWQq+8yvk9uiostgtTMBpbTMbbOZgoOh1oPkQlpEikb9x3NKdhHdjGdfxgAp/Tst8aTxhZeZZgUjKkmqm8Ojgn4zH70ODWZut/ePPP4FapR8Oyzjoe0EwS647CtEre89ureOqRDbjhNbtXTr8XqSA44ap1I=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 630f97a2-3f71-40db-3405-08d7288e63e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2019 12:27:12.4667 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E3/YDXOVshUOpMnvSsLXGrFK+bO0pa7gVnFy/H8GxPx7j2XcmHKk5A0YHei6jav1iJTQHahivuOtN4P0GCvW1oR24qnP9Kf5UT9MfMIDI7M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3854
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_052715_574771_09C18D3C 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Tudor.Ambarus@microchip.com
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
v2: the check for UNLOCK_GLOBAL_BLOCK should be done the first
thing in spi_nor_disable_block_protection(). We use it for a faster
throughput, a single command cycle that unlocks the entire memory
array. Fix it.

 drivers/mtd/spi-nor/spi-nor.c | 46 ++++++++++++++++++++++++++++++++++++++++++-
 include/linux/mtd/spi-nor.h   |  1 +
 2 files changed, 46 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 1896d36a7d11..c0ba6fe62461 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -196,7 +196,7 @@ struct flash_info {
 	u16		page_size;
 	u16		addr_width;
 
-	u16		flags;
+	u32		flags;
 #define SECT_4K			BIT(0)	/* SPINOR_OP_BE_4K works uniformly */
 #define SPI_NOR_NO_ERASE	BIT(1)	/* No erase command needed */
 #define SST_WRITE		BIT(2)	/* use SST byte programming */
@@ -233,6 +233,7 @@ struct flash_info {
 #define SPI_NOR_SKIP_SFDP	BIT(13)	/* Skip parsing of SFDP tables */
 #define USE_CLSR		BIT(14)	/* use CLSR command */
 #define SPI_NOR_OCTAL_READ	BIT(15)	/* Flash supports Octal Read */
+#define UNLOCK_GLOBAL_BLOCK	BIT(16)	/* Unlock global block protection */
 
 	/* Part specific fixup hooks. */
 	const struct spi_nor_fixups *fixups;
@@ -2031,6 +2032,41 @@ static int spi_nor_spansion_clear_sr_bp(struct spi_nor *nor)
 	return spi_nor_clear_sr_bp(nor);
 }
 
+/**
+ * spi_nor_unlock_global_block_protection() - Unlock the Global Block Protection
+ * @nor:        pointer to a 'struct spi_nor'
+ *
+ * The Global Block-Protection Unlock command offers a single command cycle
+ * that unlocks the entire memory array.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int spi_nor_unlock_global_block_protection(struct spi_nor *nor)
+{
+	int ret;
+
+	write_enable(nor);
+
+	if (nor->spimem) {
+		struct spi_mem_op op =
+			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_ULBPR, 1),
+				   SPI_MEM_OP_NO_ADDR,
+				   SPI_MEM_OP_NO_DUMMY,
+				   SPI_MEM_OP_NO_DATA);
+
+		ret = spi_mem_exec_op(nor->spimem, &op);
+	} else {
+		ret = nor->write_reg(nor, SPINOR_OP_ULBPR, NULL, 0);
+	}
+
+	if (ret < 0) {
+		dev_err(nor->dev, "error %d on ULBPR\n", ret);
+		return ret;
+	}
+
+	return spi_nor_wait_till_ready(nor);
+}
+
 /* Used when the "_ext_id" is two bytes at most */
 #define INFO(_jedec_id, _ext_id, _sector_size, _n_sectors, _flags)	\
 		.id = {							\
@@ -4697,6 +4733,14 @@ static int spi_nor_quad_enable(struct spi_nor *nor)
  */
 static int spi_nor_disable_block_protection(struct spi_nor *nor)
 {
+	/*
+	 * If the flash supports the Global Block-Protection Unlock command,
+	 * use it for faster throughput: a single command cycle that unlocks
+	 * the entire memory array.
+	 */
+	if (nor->info->flags & UNLOCK_GLOBAL_BLOCK)
+		return spi_nor_unlock_global_block_protection(nor);
+
 	if (!nor->params.disable_block_protection)
 		return 0;
 
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index 4752d08e9a3e..31b99a7743fc 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -66,6 +66,7 @@
 #define SPINOR_OP_CLFSR		0x50	/* Clear flag status register */
 #define SPINOR_OP_RDEAR		0xc8	/* Read Extended Address Register */
 #define SPINOR_OP_WREAR		0xc5	/* Write Extended Address Register */
+#define SPINOR_OP_ULBPR		0x98	/* Global Block Unlock Protection */
 
 /* 4-byte address opcodes - used on Spansion and some Macronix flashes. */
 #define SPINOR_OP_READ_4B	0x13	/* Read data bytes (low frequency) */
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
