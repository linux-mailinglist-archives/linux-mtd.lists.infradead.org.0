Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9E19B433
	for <lists+linux-mtd@lfdr.de>; Fri, 23 Aug 2019 18:05:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0kZDBscYFxXxCFR/NV0QgM4naen0/EvPDX3nTcpTJo4=; b=DNW7N4EtuF0wgs
	HAC9If4rIHKA9hBVZ6cB5nhqvalESUVz2q9rh/WsOvjMQCYyVNWYsvg7ZuRWpo1PgcaHJW/5es0SX
	jjbJrL7YRAdj4fU5TeZyaO89nxqaqIQGZr9CTC0irQmUMaxLAdumTL1+Mlj190EibGL/IF97G8S9I
	kifhgF1H0HRXUF3Unomyqg1qZFDg3tfeHKAzYoiLPsSkHf7XfIF2tgl9No91nGwVpciE7uf5kqxFu
	2sZq3iTVBQB9uOntSoESM5rbtLX+nyiSqbvwLJhFM+Aw3hsy18uFIIU0PvZP7LF796a3fdDo2nqPk
	4MhfNPVZ4Tfn0+D00aNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1C41-00089o-L2; Fri, 23 Aug 2019 16:05:21 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1C3l-0007T5-EY
 for linux-mtd@lists.infradead.org; Fri, 23 Aug 2019 16:05:07 +0000
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
IronPort-SDR: ibNVg2khVNjo6hA0fo5ZtAW+7kSMF33TQx3LBjALCsVxbKkoB/DH6Lo+/QXGnzu99ujK9mubeo
 oJSQQfGTwURy1PlrbiZN91GWTD9LZtDZL5yTmqnDiIMzgvMlxoO7BaFD2V+PVpjXwTXQtbrSCR
 SagRMjZZkw1LWYSZWbEEE3RGXQ2Yzd1An0U3b4dl1nS+88sy5B2WEVLgSE5HQDADkG5PmV+Zm5
 zaPDcoNt2ST+r3vSGhYBTXBhqXWG4rJIjIqlg9QF+4DgjtS1kz8qGJkjmpIbiR6qEFAokeKiHq
 +I0=
X-IronPort-AV: E=Sophos;i="5.64,421,1559545200"; d="scan'208";a="45399005"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Aug 2019 09:05:04 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 23 Aug 2019 09:05:03 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 23 Aug 2019 09:05:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b+8Zj7XT9Goo02B8OH4CmwjjK+ZumAgV/pn1KECKyQOper0ltl1dPFVkyLHTj82mx3bxkp9NioFNve/hp51Vt2rzSq9Aizb8NraC6BVn9C6OYk5H9+AnaJSvQ6b+9OWvhtJUCmvTugy5fcX3ZSVHLoc417SXD2GMQ+C8y5DlOtspKY7zGLUbLg2XDmOM71T0YFL+RFgGlPB+88V9Fy9TvirJQuL2FNXlBoXx4bWirTJ4NI3e6w2RxCwUtaKOpFu5sZFbfSV2VESbB4GuMLCJjcph0dk8PEMy4LM5p1Yex8m4AmPe2psmB1G9BoreQaBxu6VuKqhxUMB5vpyGGTnnkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u6oRKR+q9lLehKqvJF8hpwh3WMWYL0QzBDoLCOkRLZc=;
 b=jixpqnCY7sG/GuWlpWrdb26TrKoTdf1UQMkud6RrL2b9pRfXHPDIZpjpoTEyVSFrsDT15N4rAhdwHQ96HBvyv+C5cwMHVuSs+RG2r+a39ZiHBwfIWiq8gGVj4MXesLk/lamA/KVqCaPa/RRsQ5+qd2tYPKhTiVeoopTR6Z+80l+t+cRgRAjyaVvOXp40r4Oh0HE2NXseUp9JxXNcC7xdVIUDWxQxUQfv5AyCAS4gtgYRPpBXAI5dpH7FpRigXfYd3SxT7QMj3bWxTI/PDwmTXP6QuLypSXCOsTKgreBJO4v9PvMSc+7OODhILKnlwX9krDhIRW8NguI2RqTM3Bp2fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u6oRKR+q9lLehKqvJF8hpwh3WMWYL0QzBDoLCOkRLZc=;
 b=NvYBOccqAuiKXOdFF2RtTNRTTie3rs0Aw26aMAkdgBS1B2KDuzXXJfXLdhjZWbEdws90+8BkcwLS+KE5AhYfXNxIMQu1FVC6FTRPKEIejJyWDcl739U6p5P5EYQQ0rrv5qvotvk/LyTA70MUpQDo/6JSXZ3kw/YYcdMjvLG1bXM=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3789.namprd11.prod.outlook.com (20.178.252.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.19; Fri, 23 Aug 2019 16:05:03 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5%7]) with mapi id 15.20.2178.020; Fri, 23 Aug 2019
 16:05:03 +0000
From: <Tudor.Ambarus@microchip.com>
To: <marek.vasut@gmail.com>, <vigneshr@ti.com>,
 <boris.brezillon@collabora.com>, <miquel.raynal@bootlin.com>,
 <richard@nod.at>, <linux-mtd@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/2] mtd: spi-nor: add Global Block Unlock support
Thread-Topic: [PATCH 1/2] mtd: spi-nor: add Global Block Unlock support
Thread-Index: AQHVWcyFIb+mcSPc+kKq5BXhRwTz3g==
Date: Fri, 23 Aug 2019 16:05:03 +0000
Message-ID: <20190823160452.14905-2-tudor.ambarus@microchip.com>
References: <20190823160452.14905-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190823160452.14905-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P195CA0077.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:802:59::30) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ec636d94-eb61-4fe3-7d8d-08d727e3a824
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB3789; 
x-ms-traffictypediagnostic: MN2PR11MB3789:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3789850E9A278A9BCE2A1666F0A40@MN2PR11MB3789.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0138CD935C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(346002)(396003)(136003)(39860400002)(199004)(189003)(52116002)(110136005)(66066001)(316002)(2906002)(8676002)(81166006)(76176011)(81156014)(5660300002)(25786009)(102836004)(2501003)(6436002)(6512007)(14454004)(50226002)(8936002)(6506007)(386003)(478600001)(99286004)(4326008)(36756003)(486006)(66446008)(64756008)(66556008)(11346002)(446003)(107886003)(186003)(305945005)(66476007)(26005)(66946007)(53936002)(6486002)(7736002)(3846002)(86362001)(6116002)(2201001)(2616005)(476003)(71200400001)(1076003)(256004)(14444005)(71190400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3789;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RErv9Eq3MLgyr0vKzXxZ9hpjCiKMa9iDHRo9fo7GO4F91c5Sfh4g3O/6PJpbd1gdGgQF0MQlMSTWxUH32kGqpGhp1WUHE/hAThhp9ssW608+XjZNfIFh6XLtVUiTuZO2RrZ9EEH4Fjxy0RiFIsGSEQB3X21NqVXqvwCBNQbrZ7G3rd5DY/bPd9P8ZLanCan3PnemzZeNzVTO72QZCXjPDUhQiBYuXmeIhFQYpkVYu1whNl8aVBp8MGy8ZzyXBiXhAgc3pXb14aitxXUxa3LBY9Mq8o/CfQfvol92nlV5ySaRE8JhhjWEGmed8s3K/cqezmKJKycG/RHNDxE6IzMujflQaCKmjqKG2B2EChj4x4leuURaO49981EpqjXFI8tvkrGuX54Qe8RlJJ8dC0TYgLP74LBEsl84XLsZn6oc3Oo=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ec636d94-eb61-4fe3-7d8d-08d727e3a824
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2019 16:05:03.0336 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bFQaxrCJRnFCbx8t3FzjLU3vaPY49aLPghpRFtsnGZNRr9sgQO6H3D3ya9eDBNh6JheCOlARsPDF3BwYr4PrBCBTYuitxe3GwIiDks7ITuU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3789
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_090505_528526_477C6151 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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
 drivers/mtd/spi-nor/spi-nor.c | 47 ++++++++++++++++++++++++++++++++++++++++++-
 include/linux/mtd/spi-nor.h   |  1 +
 2 files changed, 47 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index f5c1c71caf1b..08ae45fdc44a 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -186,7 +186,7 @@ struct flash_info {
 	u16		page_size;
 	u16		addr_width;
 
-	u16		flags;
+	u32		flags;
 #define SECT_4K			BIT(0)	/* SPINOR_OP_BE_4K works uniformly */
 #define SPI_NOR_NO_ERASE	BIT(1)	/* No erase command needed */
 #define SST_WRITE		BIT(2)	/* use SST byte programming */
@@ -215,6 +215,7 @@ struct flash_info {
 #define SPI_NOR_SKIP_SFDP	BIT(13)	/* Skip parsing of SFDP tables */
 #define USE_CLSR		BIT(14)	/* use CLSR command */
 #define SPI_NOR_OCTAL_READ	BIT(15)	/* Flash supports Octal Read */
+#define UNLOCK_GLOBAL_BLOCK	BIT(16)	/* Unlock global block protection */
 
 	/* Part specific fixup hooks. */
 	const struct spi_nor_fixups *fixups;
@@ -2025,6 +2026,41 @@ static int spi_nor_spansion_clear_sr_bp(struct spi_nor *nor)
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
@@ -4506,6 +4542,15 @@ static int spi_nor_disable_block_protection(struct spi_nor *nor)
 		nor->params.disable_block_protection =
 			spi_nor_spansion_clear_sr_bp;
 
+	/*
+	 * If the flash supports the Global Block-Protection Unlock command,
+	 * use it for faster throughput: a single command cycle that unlocks
+	 * the entire memory array.
+	 */
+	if (nor->info->flags & UNLOCK_GLOBAL_BLOCK)
+		nor->params.disable_block_protection =
+			spi_nor_unlock_global_block_protection;
+
 	return nor->params.disable_block_protection(nor);
 }
 
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index a3a765c21edc..8c07b06ad0e8 100644
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
