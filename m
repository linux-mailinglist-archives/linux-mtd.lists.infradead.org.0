Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F18AF940
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Sep 2019 11:42:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D5wJwkZezUs0u1k8eBD9yJXwg8bUKg6wuP196eZ6e94=; b=NxoukVMeFLr+kS
	vJFs9/DFLIdlKke/yIkzcgeacIqzTd3N0/o3rg7qipHI/tMhcLZ6rY2aAfioqWGHPSkt8wjMRLCAv
	kQU1qojm6cX1lnMHm142NhztCST5W75V7SovV7c3CjHaVRLV6hLMjirt/ZgxQTQezOlrWf3gs2oOW
	ygUxRIZ1k+5YoyBQXn3a2k5+sak0oE3fZSBZVF2jZPes7EvdtoJq3pIOq4jM2///22hmHkrQuKTW1
	CKj+imT3NIvPV2fjipSlP8gkBYmzfyU1kVjfftC/VgZtNSf/3iYcWC/NlzqvEX2aFfmkZMsM8AeKA
	dXCDxrhiNZFQ503shjdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7z9C-0002kN-PB; Wed, 11 Sep 2019 09:42:46 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7z7W-0001Zt-IE; Wed, 11 Sep 2019 09:41:06 +0000
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
IronPort-SDR: KzLreJsipyEeAgFpac5JSjBNki3aipydpzN+Xdml986vD35maY/uPwWariIG/GZbTPdvL4IxVu
 2KmiCJ+wStQBLubFjh+oj32jTL1vbVrCl3tgXiT6TFTx4ZtnFkXrnCNT3KbLTek+mdkPx9LzGv
 YbVYCfLSRxaSmJmVF/wXpXNpTcaXwkAIgxjf95RCUXIgfGqZuYG+rUFBjJnHszIdSsmjZ1QgU+
 XJxoDZ1IxePd20jewQb6y+ATwNFjXSEpBGAWsI6qwyYVWMPiL1LKhl2QNsFwxZLwKkdllCG9jM
 2vw=
X-IronPort-AV: E=Sophos;i="5.64,493,1559545200"; d="scan'208";a="48492485"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Sep 2019 02:40:59 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Sep 2019 02:40:59 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 11 Sep 2019 02:40:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oZf7NLLaCr595tuBFBJXIS2goVX7GAPvGX/q3p17neljtXAg9UOmx/DKH2Xa4tr2xAdYBjnmIF3LwzyIM/fUI8Gf3K/5U4M6ZHYIWmhfpTDvhBQX1/HbzG+jEyhGLh3KRvnpiUZE1Kd4N+Vz20ahgZ7l5U9JsYd32andDen9J0hkwmyU0NTXpSO2ArQHvsh1y2wxW6WVETazT95/+SpVibALeSD5Q4+l2aOmIuKa7H2dnKFBbPocXxDBD4Z+ByadkZndEwz0p/hLy5kEyG4Jptqc8r84wkXHYfTiJcvc6GtCm+I36KbOcvOLb4ubv4b6i80TQ4XKq/6kZN8rhsUI2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dq/AE5GvUX6mLzOSqX35JltDB2qnGGZZn3LyNpecPjA=;
 b=G/Ufs6c/jrmPdK1rUQTM8w4UD2IwzH2M5bBA8CNazfaIyb3tirewryKqYjtWOG2eykHdVDMLOdiODuZmssvDU+8D22RlfgNwt8/xFpQbpu/mKdn1pBfSmTiL8FyDiC2pJeMzZPxR+U+Hx/do5h/H2D0JQ1evROR62Y7XAIkVFj+jb2r+bHlLgnLmwBkPw0Cn2YstDXgHSlVvzsfZZPdMxm1mciJiUUcNzziSYIDzCbXvkgxTGg6EepdMcFtLrP0UZZatVSHT6nVlpPGzuEyTFB5qvoON744UfriufvOFPoUC7BKMj/yTILA0CAchw3qVZJvPiBin33fQWlTk5tp6QQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dq/AE5GvUX6mLzOSqX35JltDB2qnGGZZn3LyNpecPjA=;
 b=ZqfNMzpWkQWy5oWTzx0A37yU/291NgW4q9VZKs81FhdHT9PHH0YA148ERFIcztpPerms/gamIF62pPGr7qlsSOpBmCifBxC8ZaxAJoaqLL4q7csQaI8pHaAu4VasquxynYi6f1tRSOXrhE1f5ZaY4q4bg8nvSRReQfBV8+Sb6so=
Received: from BY5PR11MB4435.namprd11.prod.outlook.com (10.255.89.94) by
 BY5PR11MB4401.namprd11.prod.outlook.com (52.132.253.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.14; Wed, 11 Sep 2019 09:40:57 +0000
Received: from BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::4049:4ab3:1825:469b]) by BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::4049:4ab3:1825:469b%3]) with mapi id 15.20.2241.018; Wed, 11 Sep 2019
 09:40:57 +0000
From: <Tudor.Ambarus@microchip.com>
To: <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <vigneshr@ti.com>, <joel@jms.id.au>, <andrew@aj.id.au>,
 <matthias.bgg@gmail.com>, <vz@mleia.com>, <boris.brezillon@collabora.com>,
 <linux-mtd@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 04/13] mtd: spi-nor: Rename nor->params to nor->flash
Thread-Topic: [PATCH 04/13] mtd: spi-nor: Rename nor->params to nor->flash
Thread-Index: AQHVaIUD00KVGx5yl0+QV0fmMjVcaA==
Date: Wed, 11 Sep 2019 09:40:56 +0000
Message-ID: <20190911094031.17615-5-tudor.ambarus@microchip.com>
References: <20190911094031.17615-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190911094031.17615-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR09CA0118.eurprd09.prod.outlook.com
 (2603:10a6:803:78::41) To BY5PR11MB4435.namprd11.prod.outlook.com
 (2603:10b6:a03:1ce::30)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 41eb65df-7842-4d68-1cff-08d7369c254b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BY5PR11MB4401; 
x-ms-traffictypediagnostic: BY5PR11MB4401:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4401D5242642E72EF7D823B3F0B10@BY5PR11MB4401.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(39860400002)(376002)(136003)(366004)(189003)(199004)(52314003)(1076003)(53936002)(6512007)(102836004)(478600001)(14444005)(256004)(53946003)(36756003)(26005)(25786009)(4326008)(5660300002)(30864003)(186003)(2616005)(476003)(11346002)(446003)(486006)(107886003)(2201001)(305945005)(3846002)(66066001)(71190400001)(14454004)(50226002)(76176011)(110136005)(66946007)(71200400001)(7736002)(66446008)(64756008)(316002)(66556008)(66476007)(99286004)(8676002)(52116002)(8936002)(6116002)(81166006)(7416002)(2501003)(6436002)(386003)(81156014)(6486002)(6506007)(2906002)(86362001)(921003)(1121003)(569006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4401;
 H:BY5PR11MB4435.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 068TEgDpoabaguHSNGOt4AZdJWQB6RqXH6ciFVNKRnTpB6/1uQBdy+DvIZpTNpDelp/KJ5IiQ3WN++cfI4430DXbIRJn61yGeF3wgqPyOK4HA6Uibfsr2e2KH9UKNsksFfvJlJmomKZIfp0rwdX1xD1bYPawXSWfgl5IBMMhdYr8u1JMKK92hxZowOMvAW6jboxfs6KFjbg/MZu1xXiNEkXqMPnqhgxCia8OHOadvVIZkURp1H8eJr7Hlxa7ZfQSwT0TLo40ou2s1l7FK9ae7+mdB22qv64WxMFcfsfdvZ1+CasOvBGr1Q58Noh71ZE4d1TeijkZl1sfA4rtXgDx8E8EDKxMGlF2S+z8yLRFVEnafCVVmFRq3vg7eQj2l3cNDnDo7b3/9dObvgMl6a3qtg6ysMTdFj+6m1jZYWOIUnU=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 41eb65df-7842-4d68-1cff-08d7369c254b
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 09:40:56.8220 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7w1dL5xVYJx4AVNx7yuu46Z2yAth1yYfc6GcLz1Xn06n4MrFz6Wwz0U5JSbOsZEHM3JZQu6Pb1ezldz6A//aLzpiLgXM6ImeoC+7+AIjWpc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_024102_702953_15A70AA1 
X-CRM114-Status: GOOD (  14.42  )
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

Rename nor->params to nor->flash for a clearer separation
between the controller and flash operations.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 286 +++++++++++++++++++++---------------------
 include/linux/mtd/spi-nor.h   |  12 +-
 2 files changed, 149 insertions(+), 149 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 2115886f4db3..bf9bd0b8c3e5 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -172,7 +172,7 @@ struct spi_nor_fixups {
 	int (*post_bfpt)(struct spi_nor *nor,
 			 const struct sfdp_parameter_header *bfpt_header,
 			 const struct sfdp_bfpt *bfpt,
-			 struct spi_nor_flash_parameter *params);
+			 struct spi_nor_flash_parameter *flash);
 	void (*post_sfdp)(struct spi_nor *nor);
 };
 
@@ -608,7 +608,7 @@ static void spi_nor_set_4byte_opcodes(struct spi_nor *nor)
 	nor->erase_opcode = spi_nor_convert_3to4_erase(nor->erase_opcode);
 
 	if (!spi_nor_has_uniform_erase(nor)) {
-		struct spi_nor_erase_map *map = &nor->params.erase_map;
+		struct spi_nor_erase_map *map = &nor->flash.erase_map;
 		struct spi_nor_erase_type *erase;
 		int i;
 
@@ -928,10 +928,10 @@ static u32 s3an_convert_addr(struct spi_nor *nor, u32 addr)
 
 static u32 spi_nor_convert_addr(struct spi_nor *nor, loff_t addr)
 {
-	if (!nor->params.convert_addr)
+	if (!nor->flash.convert_addr)
 		return addr;
 
-	return nor->params.convert_addr(nor, addr);
+	return nor->flash.convert_addr(nor, addr);
 }
 
 /*
@@ -1141,7 +1141,7 @@ static int spi_nor_init_erase_cmd_list(struct spi_nor *nor,
 				       struct list_head *erase_list,
 				       u64 addr, u32 len)
 {
-	const struct spi_nor_erase_map *map = &nor->params.erase_map;
+	const struct spi_nor_erase_map *map = &nor->flash.erase_map;
 	const struct spi_nor_erase_type *erase, *prev_erase = NULL;
 	struct spi_nor_erase_region *region;
 	struct spi_nor_erase_command *cmd = NULL;
@@ -1629,7 +1629,7 @@ static int spi_nor_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 	if (ret)
 		return ret;
 
-	ret = nor->params.locking_ops->lock(nor, ofs, len);
+	ret = nor->flash.locking_ops->lock(nor, ofs, len);
 
 	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_UNLOCK);
 	return ret;
@@ -1644,7 +1644,7 @@ static int spi_nor_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 	if (ret)
 		return ret;
 
-	ret = nor->params.locking_ops->unlock(nor, ofs, len);
+	ret = nor->flash.locking_ops->unlock(nor, ofs, len);
 
 	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_LOCK);
 	return ret;
@@ -1659,7 +1659,7 @@ static int spi_nor_is_locked(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 	if (ret)
 		return ret;
 
-	ret = nor->params.locking_ops->is_locked(nor, ofs, len);
+	ret = nor->flash.locking_ops->is_locked(nor, ofs, len);
 
 	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_LOCK);
 	return ret;
@@ -2094,7 +2094,7 @@ static int
 is25lp256_post_bfpt_fixups(struct spi_nor *nor,
 			   const struct sfdp_parameter_header *bfpt_header,
 			   const struct sfdp_bfpt *bfpt,
-			   struct spi_nor_flash_parameter *params)
+			   struct spi_nor_flash_parameter *flash)
 {
 	/*
 	 * IS25LP256 supports 4B opcodes, but the BFPT advertises a
@@ -2116,7 +2116,7 @@ static int
 mx25l25635_post_bfpt_fixups(struct spi_nor *nor,
 			    const struct sfdp_parameter_header *bfpt_header,
 			    const struct sfdp_bfpt *bfpt,
-			    struct spi_nor_flash_parameter *params)
+			    struct spi_nor_flash_parameter *flash)
 {
 	/*
 	 * MX25L25635F supports 4B opcodes but MX25L25635E does not.
@@ -2145,7 +2145,7 @@ static void gd25q256_default_init(struct spi_nor *nor)
 	 * indicate the quad_enable method for this case, we need
 	 * to set it in the default_init fixup hook.
 	 */
-	nor->params.quad_enable = macronix_quad_enable;
+	nor->flash.quad_enable = macronix_quad_enable;
 }
 
 static struct spi_nor_fixups gd25q256_fixups = {
@@ -2778,7 +2778,7 @@ static int s3an_nor_setup(struct spi_nor *nor,
 		nor->mtd.erasesize = 8 * nor->page_size;
 	} else {
 		/* Flash in Default addressing mode */
-		nor->params.convert_addr = s3an_convert_addr;
+		nor->flash.convert_addr = s3an_convert_addr;
 		nor->mtd.erasesize = nor->info->sector_size;
 	}
 
@@ -3018,7 +3018,7 @@ static int spi_nor_spimem_check_pp(struct spi_nor *nor,
 static void
 spi_nor_spimem_adjust_hwcaps(struct spi_nor *nor, u32 *hwcaps)
 {
-	struct spi_nor_flash_parameter *params =  &nor->params;
+	struct spi_nor_flash_parameter *flash =  &nor->flash;
 	unsigned int cap;
 
 	/* DTR modes are not supported yet, mask them all. */
@@ -3035,7 +3035,7 @@ spi_nor_spimem_adjust_hwcaps(struct spi_nor *nor, u32 *hwcaps)
 
 		rdidx = spi_nor_hwcaps_read2cmd(BIT(cap));
 		if (rdidx >= 0 &&
-		    spi_nor_spimem_check_readop(nor, &params->reads[rdidx]))
+		    spi_nor_spimem_check_readop(nor, &flash->reads[rdidx]))
 			*hwcaps &= ~BIT(cap);
 
 		ppidx = spi_nor_hwcaps_pp2cmd(BIT(cap));
@@ -3043,7 +3043,7 @@ spi_nor_spimem_adjust_hwcaps(struct spi_nor *nor, u32 *hwcaps)
 			continue;
 
 		if (spi_nor_spimem_check_pp(nor,
-					    &params->page_programs[ppidx]))
+					    &flash->page_programs[ppidx]))
 			*hwcaps &= ~BIT(cap);
 	}
 }
@@ -3092,7 +3092,7 @@ spi_nor_set_read_settings_from_bfpt(struct spi_nor_read_command *read,
 }
 
 struct sfdp_bfpt_read {
-	/* The Fast Read x-y-z hardware capability in params->hwcaps.mask. */
+	/* The Fast Read x-y-z hardware capability in flash->hwcaps.mask. */
 	u32			hwcaps;
 
 	/*
@@ -3323,11 +3323,11 @@ static int
 spi_nor_post_bfpt_fixups(struct spi_nor *nor,
 			 const struct sfdp_parameter_header *bfpt_header,
 			 const struct sfdp_bfpt *bfpt,
-			 struct spi_nor_flash_parameter *params)
+			 struct spi_nor_flash_parameter *flash)
 {
 	if (nor->info->fixups && nor->info->fixups->post_bfpt)
 		return nor->info->fixups->post_bfpt(nor, bfpt_header, bfpt,
-						    params);
+						    flash);
 
 	return 0;
 }
@@ -3337,7 +3337,7 @@ spi_nor_post_bfpt_fixups(struct spi_nor *nor,
  * @nor:		pointer to a 'struct spi_nor'
  * @bfpt_header:	pointer to the 'struct sfdp_parameter_header' describing
  *			the Basic Flash Parameter Table length and version
- * @params:		pointer to the 'struct spi_nor_flash_parameter' to be
+ * @flash:		pointer to the 'struct spi_nor_flash_parameter' to be
  *			filled
  *
  * The Basic Flash Parameter Table is the main and only mandatory table as
@@ -3364,9 +3364,9 @@ spi_nor_post_bfpt_fixups(struct spi_nor *nor,
  */
 static int spi_nor_parse_bfpt(struct spi_nor *nor,
 			      const struct sfdp_parameter_header *bfpt_header,
-			      struct spi_nor_flash_parameter *params)
+			      struct spi_nor_flash_parameter *flash)
 {
-	struct spi_nor_erase_map *map = &params->erase_map;
+	struct spi_nor_erase_map *map = &flash->erase_map;
 	struct spi_nor_erase_type *erase_type = map->erase_type;
 	struct sfdp_bfpt bfpt;
 	size_t len;
@@ -3407,23 +3407,23 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
 	}
 
 	/* Flash Memory Density (in bits). */
-	params->size = bfpt.dwords[BFPT_DWORD(2)];
-	if (params->size & BIT(31)) {
-		params->size &= ~BIT(31);
+	flash->size = bfpt.dwords[BFPT_DWORD(2)];
+	if (flash->size & BIT(31)) {
+		flash->size &= ~BIT(31);
 
 		/*
-		 * Prevent overflows on params->size. Anyway, a NOR of 2^64
+		 * Prevent overflows on flash->size. Anyway, a NOR of 2^64
 		 * bits is unlikely to exist so this error probably means
 		 * the BFPT we are reading is corrupted/wrong.
 		 */
-		if (params->size > 63)
+		if (flash->size > 63)
 			return -EINVAL;
 
-		params->size = 1ULL << params->size;
+		flash->size = 1ULL << flash->size;
 	} else {
-		params->size++;
+		flash->size++;
 	}
-	params->size >>= 3; /* Convert to bytes. */
+	flash->size >>= 3; /* Convert to bytes. */
 
 	/* Fast Read settings. */
 	for (i = 0; i < ARRAY_SIZE(sfdp_bfpt_reads); i++) {
@@ -3431,13 +3431,13 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
 		struct spi_nor_read_command *read;
 
 		if (!(bfpt.dwords[rd->supported_dword] & rd->supported_bit)) {
-			params->hwcaps.mask &= ~rd->hwcaps;
+			flash->hwcaps.mask &= ~rd->hwcaps;
 			continue;
 		}
 
-		params->hwcaps.mask |= rd->hwcaps;
+		flash->hwcaps.mask |= rd->hwcaps;
 		cmd = spi_nor_hwcaps_read2cmd(rd->hwcaps);
-		read = &params->reads[cmd];
+		read = &flash->reads[cmd];
 		half = bfpt.dwords[rd->settings_dword] >> rd->settings_shift;
 		spi_nor_set_read_settings_from_bfpt(read, half, rd->proto);
 	}
@@ -3447,7 +3447,7 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
 	 * Erase Types defined in the bfpt table.
 	 */
 	erase_mask = 0;
-	memset(&params->erase_map, 0, sizeof(params->erase_map));
+	memset(&flash->erase_map, 0, sizeof(flash->erase_map));
 	for (i = 0; i < ARRAY_SIZE(sfdp_bfpt_erases); i++) {
 		const struct sfdp_bfpt_erase *er = &sfdp_bfpt_erases[i];
 		u32 erasesize;
@@ -3466,7 +3466,7 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
 		spi_nor_set_erase_settings_from_bfpt(&erase_type[i], erasesize,
 						     opcode, i);
 	}
-	spi_nor_init_uniform_erase_map(map, erase_mask, params->size);
+	spi_nor_init_uniform_erase_map(map, erase_mask, flash->size);
 	/*
 	 * Sort all the map's Erase Types in ascending order with the smallest
 	 * erase size being the first member in the erase_type array.
@@ -3484,43 +3484,42 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
 
 	/* Stop here if not JESD216 rev A or later. */
 	if (bfpt_header->length < BFPT_DWORD_MAX)
-		return spi_nor_post_bfpt_fixups(nor, bfpt_header, &bfpt,
-						params);
+		return spi_nor_post_bfpt_fixups(nor, bfpt_header, &bfpt, flash);
 
 	/* Page size: this field specifies 'N' so the page size = 2^N bytes. */
-	params->page_size = bfpt.dwords[BFPT_DWORD(11)];
-	params->page_size &= BFPT_DWORD11_PAGE_SIZE_MASK;
-	params->page_size >>= BFPT_DWORD11_PAGE_SIZE_SHIFT;
-	params->page_size = 1U << params->page_size;
+	flash->page_size = bfpt.dwords[BFPT_DWORD(11)];
+	flash->page_size &= BFPT_DWORD11_PAGE_SIZE_MASK;
+	flash->page_size >>= BFPT_DWORD11_PAGE_SIZE_SHIFT;
+	flash->page_size = 1U << flash->page_size;
 
 	/* Quad Enable Requirements. */
 	switch (bfpt.dwords[BFPT_DWORD(15)] & BFPT_DWORD15_QER_MASK) {
 	case BFPT_DWORD15_QER_NONE:
-		params->quad_enable = NULL;
+		flash->quad_enable = NULL;
 		break;
 
 	case BFPT_DWORD15_QER_SR2_BIT1_BUGGY:
 	case BFPT_DWORD15_QER_SR2_BIT1_NO_RD:
-		params->quad_enable = spansion_no_read_cr_quad_enable;
+		flash->quad_enable = spansion_no_read_cr_quad_enable;
 		break;
 
 	case BFPT_DWORD15_QER_SR1_BIT6:
-		params->quad_enable = macronix_quad_enable;
+		flash->quad_enable = macronix_quad_enable;
 		break;
 
 	case BFPT_DWORD15_QER_SR2_BIT7:
-		params->quad_enable = sr2_bit7_quad_enable;
+		flash->quad_enable = sr2_bit7_quad_enable;
 		break;
 
 	case BFPT_DWORD15_QER_SR2_BIT1:
-		params->quad_enable = spansion_read_cr_quad_enable;
+		flash->quad_enable = spansion_read_cr_quad_enable;
 		break;
 
 	default:
 		return -EINVAL;
 	}
 
-	return spi_nor_post_bfpt_fixups(nor, bfpt_header, &bfpt, params);
+	return spi_nor_post_bfpt_fixups(nor, bfpt_header, &bfpt, flash);
 }
 
 #define SMPT_CMD_ADDRESS_LEN_MASK		GENMASK(23, 22)
@@ -3722,7 +3721,7 @@ spi_nor_region_check_overlay(struct spi_nor_erase_region *region,
 /**
  * spi_nor_init_non_uniform_erase_map() - initialize the non-uniform erase map
  * @nor:	pointer to a 'struct spi_nor'
- * @params:     pointer to a duplicate 'struct spi_nor_flash_parameter' that is
+ * @flash:	pointer to a duplicate 'struct spi_nor_flash_parameter' that is
  *              used for storing SFDP parsed data
  * @smpt:	pointer to the sector map parameter table
  *
@@ -3730,10 +3729,10 @@ spi_nor_region_check_overlay(struct spi_nor_erase_region *region,
  */
 static int
 spi_nor_init_non_uniform_erase_map(struct spi_nor *nor,
-				   struct spi_nor_flash_parameter *params,
+				   struct spi_nor_flash_parameter *flash,
 				   const u32 *smpt)
 {
-	struct spi_nor_erase_map *map = &params->erase_map;
+	struct spi_nor_erase_map *map = &flash->erase_map;
 	struct spi_nor_erase_type *erase = map->erase_type;
 	struct spi_nor_erase_region *region;
 	u64 offset;
@@ -3812,7 +3811,7 @@ spi_nor_init_non_uniform_erase_map(struct spi_nor *nor,
  * spi_nor_parse_smpt() - parse Sector Map Parameter Table
  * @nor:		pointer to a 'struct spi_nor'
  * @smpt_header:	sector map parameter table header
- * @params:		pointer to a duplicate 'struct spi_nor_flash_parameter'
+ * @flash:		pointer to a duplicate 'struct spi_nor_flash_parameter'
  *                      that is used for storing SFDP parsed data
  *
  * This table is optional, but when available, we parse it to identify the
@@ -3823,7 +3822,7 @@ spi_nor_init_non_uniform_erase_map(struct spi_nor *nor,
  */
 static int spi_nor_parse_smpt(struct spi_nor *nor,
 			      const struct sfdp_parameter_header *smpt_header,
-			      struct spi_nor_flash_parameter *params)
+			      struct spi_nor_flash_parameter *flash)
 {
 	const u32 *sector_map;
 	u32 *smpt;
@@ -3852,11 +3851,11 @@ static int spi_nor_parse_smpt(struct spi_nor *nor,
 		goto out;
 	}
 
-	ret = spi_nor_init_non_uniform_erase_map(nor, params, sector_map);
+	ret = spi_nor_init_non_uniform_erase_map(nor, flash, sector_map);
 	if (ret)
 		goto out;
 
-	spi_nor_regions_sort_erase_types(&params->erase_map);
+	spi_nor_regions_sort_erase_types(&flash->erase_map);
 	/* fall through */
 out:
 	kfree(smpt);
@@ -3881,13 +3880,13 @@ struct sfdp_4bait {
  * @nor:		pointer to a 'struct spi_nor'.
  * @param_header:	pointer to the 'struct sfdp_parameter_header' describing
  *			the 4-Byte Address Instruction Table length and version.
- * @params:		pointer to the 'struct spi_nor_flash_parameter' to be.
+ * @flash:		pointer to the 'struct spi_nor_flash_parameter' to be.
  *
  * Return: 0 on success, -errno otherwise.
  */
 static int spi_nor_parse_4bait(struct spi_nor *nor,
 			       const struct sfdp_parameter_header *param_header,
-			       struct spi_nor_flash_parameter *params)
+			       struct spi_nor_flash_parameter *flash)
 {
 	static const struct sfdp_4bait reads[] = {
 		{ SNOR_HWCAPS_READ,		BIT(0) },
@@ -3911,8 +3910,8 @@ static int spi_nor_parse_4bait(struct spi_nor *nor,
 		{ 0u /* not used */,		BIT(11) },
 		{ 0u /* not used */,		BIT(12) },
 	};
-	struct spi_nor_pp_command *params_pp = params->page_programs;
-	struct spi_nor_erase_map *map = &params->erase_map;
+	struct spi_nor_pp_command *flash_pp = flash->page_programs;
+	struct spi_nor_erase_map *map = &flash->erase_map;
 	struct spi_nor_erase_type *erase_type = map->erase_type;
 	u32 *dwords;
 	size_t len;
@@ -3950,7 +3949,7 @@ static int spi_nor_parse_4bait(struct spi_nor *nor,
 		const struct sfdp_4bait *read = &reads[i];
 
 		discard_hwcaps |= read->hwcaps;
-		if ((params->hwcaps.mask & read->hwcaps) &&
+		if ((flash->hwcaps.mask & read->hwcaps) &&
 		    (dwords[0] & read->supported_bit))
 			read_hwcaps |= read->hwcaps;
 	}
@@ -3966,7 +3965,7 @@ static int spi_nor_parse_4bait(struct spi_nor *nor,
 		/*
 		 * The 4 Byte Address Instruction (Optional) Table is the only
 		 * SFDP table that indicates support for Page Program Commands.
-		 * Bypass the params->hwcaps.mask and consider 4BAIT the biggest
+		 * Bypass the flash->hwcaps.mask and consider 4BAIT the biggest
 		 * authority for specifying Page Program support.
 		 */
 		discard_hwcaps |= program->hwcaps;
@@ -4001,26 +4000,26 @@ static int spi_nor_parse_4bait(struct spi_nor *nor,
 	 * Discard all operations from the 4-byte instruction set which are
 	 * not supported by this memory.
 	 */
-	params->hwcaps.mask &= ~discard_hwcaps;
-	params->hwcaps.mask |= (read_hwcaps | pp_hwcaps);
+	flash->hwcaps.mask &= ~discard_hwcaps;
+	flash->hwcaps.mask |= (read_hwcaps | pp_hwcaps);
 
 	/* Use the 4-byte address instruction set. */
 	for (i = 0; i < SNOR_CMD_READ_MAX; i++) {
-		struct spi_nor_read_command *read_cmd = &params->reads[i];
+		struct spi_nor_read_command *read_cmd = &flash->reads[i];
 
 		read_cmd->opcode = spi_nor_convert_3to4_read(read_cmd->opcode);
 	}
 
 	/* 4BAIT is the only SFDP table that indicates page program support. */
 	if (pp_hwcaps & SNOR_HWCAPS_PP)
-		spi_nor_set_pp_settings(&params_pp[SNOR_CMD_PP],
+		spi_nor_set_pp_settings(&flash_pp[SNOR_CMD_PP],
 					SPINOR_OP_PP_4B, SNOR_PROTO_1_1_1);
 	if (pp_hwcaps & SNOR_HWCAPS_PP_1_1_4)
-		spi_nor_set_pp_settings(&params_pp[SNOR_CMD_PP_1_1_4],
+		spi_nor_set_pp_settings(&flash_pp[SNOR_CMD_PP_1_1_4],
 					SPINOR_OP_PP_1_1_4_4B,
 					SNOR_PROTO_1_1_4);
 	if (pp_hwcaps & SNOR_HWCAPS_PP_1_4_4)
-		spi_nor_set_pp_settings(&params_pp[SNOR_CMD_PP_1_4_4],
+		spi_nor_set_pp_settings(&flash_pp[SNOR_CMD_PP_1_4_4],
 					SPINOR_OP_PP_1_4_4_4B,
 					SNOR_PROTO_1_4_4);
 
@@ -4051,7 +4050,7 @@ static int spi_nor_parse_4bait(struct spi_nor *nor,
 /**
  * spi_nor_parse_sfdp() - parse the Serial Flash Discoverable Parameters.
  * @nor:		pointer to a 'struct spi_nor'
- * @params:		pointer to the 'struct spi_nor_flash_parameter' to be
+ * @flash:		pointer to the 'struct spi_nor_flash_parameter' to be
  *			filled
  *
  * The Serial Flash Discoverable Parameters are described by the JEDEC JESD216
@@ -4063,7 +4062,7 @@ static int spi_nor_parse_4bait(struct spi_nor *nor,
  * Return: 0 on success, -errno otherwise.
  */
 static int spi_nor_parse_sfdp(struct spi_nor *nor,
-			      struct spi_nor_flash_parameter *params)
+			      struct spi_nor_flash_parameter *flash)
 {
 	const struct sfdp_parameter_header *param_header, *bfpt_header;
 	struct sfdp_parameter_header *param_headers = NULL;
@@ -4132,7 +4131,7 @@ static int spi_nor_parse_sfdp(struct spi_nor *nor,
 			bfpt_header = param_header;
 	}
 
-	err = spi_nor_parse_bfpt(nor, bfpt_header, params);
+	err = spi_nor_parse_bfpt(nor, bfpt_header, flash);
 	if (err)
 		goto exit;
 
@@ -4142,11 +4141,11 @@ static int spi_nor_parse_sfdp(struct spi_nor *nor,
 
 		switch (SFDP_PARAM_HEADER_ID(param_header)) {
 		case SFDP_SECTOR_MAP_ID:
-			err = spi_nor_parse_smpt(nor, param_header, params);
+			err = spi_nor_parse_smpt(nor, param_header, flash);
 			break;
 
 		case SFDP_4BAIT_ID:
-			err = spi_nor_parse_4bait(nor, param_header, params);
+			err = spi_nor_parse_4bait(nor, param_header, flash);
 			break;
 
 		default:
@@ -4184,7 +4183,7 @@ static int spi_nor_select_read(struct spi_nor *nor,
 	if (cmd < 0)
 		return -EINVAL;
 
-	read = &nor->params.reads[cmd];
+	read = &nor->flash.reads[cmd];
 	nor->read_opcode = read->opcode;
 	nor->read_proto = read->proto;
 
@@ -4215,7 +4214,7 @@ static int spi_nor_select_pp(struct spi_nor *nor,
 	if (cmd < 0)
 		return -EINVAL;
 
-	pp = &nor->params.page_programs[cmd];
+	pp = &nor->flash.page_programs[cmd];
 	nor->program_opcode = pp->opcode;
 	nor->write_proto = pp->proto;
 	return 0;
@@ -4276,7 +4275,7 @@ spi_nor_select_uniform_erase(struct spi_nor_erase_map *map,
 
 static int spi_nor_select_erase(struct spi_nor *nor)
 {
-	struct spi_nor_erase_map *map = &nor->params.erase_map;
+	struct spi_nor_erase_map *map = &nor->flash.erase_map;
 	const struct spi_nor_erase_type *erase = NULL;
 	struct mtd_info *mtd = &nor->mtd;
 	u32 wanted_size = nor->info->sector_size;
@@ -4325,7 +4324,7 @@ static int spi_nor_select_erase(struct spi_nor *nor)
 static int spi_nor_default_setup(struct spi_nor *nor,
 				 const struct spi_nor_hwcaps *hwcaps)
 {
-	struct spi_nor_flash_parameter *params = &nor->params;
+	struct spi_nor_flash_parameter *flash = &nor->flash;
 	u32 ignored_mask, shared_mask;
 	int err;
 
@@ -4333,7 +4332,7 @@ static int spi_nor_default_setup(struct spi_nor *nor,
 	 * Keep only the hardware capabilities supported by both the SPI
 	 * controller and the SPI flash memory.
 	 */
-	shared_mask = hwcaps->mask & params->hwcaps.mask;
+	shared_mask = hwcaps->mask & flash->hwcaps.mask;
 
 	if (nor->spimem) {
 		/*
@@ -4386,36 +4385,36 @@ static int spi_nor_default_setup(struct spi_nor *nor,
 static int spi_nor_setup(struct spi_nor *nor,
 			 const struct spi_nor_hwcaps *hwcaps)
 {
-	if (!nor->params.setup)
+	if (!nor->flash.setup)
 		return 0;
 
-	return nor->params.setup(nor, hwcaps);
+	return nor->flash.setup(nor, hwcaps);
 }
 
 static void macronix_set_default_init(struct spi_nor *nor)
 {
-	nor->params.quad_enable = macronix_quad_enable;
-	nor->params.set_4byte = macronix_set_4byte;
+	nor->flash.quad_enable = macronix_quad_enable;
+	nor->flash.set_4byte = macronix_set_4byte;
 }
 
 static void st_micron_set_default_init(struct spi_nor *nor)
 {
 	nor->flags |= SNOR_F_HAS_LOCK;
-	nor->params.quad_enable = NULL;
-	nor->params.set_4byte = st_micron_set_4byte;
+	nor->flash.quad_enable = NULL;
+	nor->flash.set_4byte = st_micron_set_4byte;
 }
 
 static void winbond_set_default_init(struct spi_nor *nor)
 {
-	nor->params.set_4byte = winbond_set_4byte;
+	nor->flash.set_4byte = winbond_set_4byte;
 }
 
 /**
- * spi_nor_manufacturer_init_params() - Initialize the flash's parameters and
- * settings based on MFR register and ->default_init() hook.
+ * spi_nor_manufacturer_init_flash_params() - Initialize the flash's
+ * parameters and settings based on MFR register and ->default_init() hook.
  * @nor:	pointer to a 'struct spi-nor'.
  */
-static void spi_nor_manufacturer_init_params(struct spi_nor *nor)
+static void spi_nor_manufacturer_init_flash_params(struct spi_nor *nor)
 {
 	/* Init flash parameters based on MFR */
 	switch (JEDEC_MFR(nor->info)) {
@@ -4441,93 +4440,93 @@ static void spi_nor_manufacturer_init_params(struct spi_nor *nor)
 }
 
 /**
- * spi_nor_sfdp_init_params() - Initialize the flash's parameters and settings
- * based on JESD216 SFDP standard.
+ * spi_nor_sfdp_init_flash_params() - Initialize the flash's parameters and
+ * settings based on JESD216 SFDP standard.
  * @nor:	pointer to a 'struct spi-nor'.
  *
  * The method has a roll-back mechanism: in case the SFDP parsing fails, the
  * legacy flash parameters and settings will be restored.
  */
-static void spi_nor_sfdp_init_params(struct spi_nor *nor)
+static void spi_nor_sfdp_init_flash_params(struct spi_nor *nor)
 {
-	struct spi_nor_flash_parameter sfdp_params;
+	struct spi_nor_flash_parameter sfdp_flash;
 
-	memcpy(&sfdp_params, &nor->params, sizeof(sfdp_params));
+	memcpy(&sfdp_flash, &nor->flash, sizeof(sfdp_flash));
 
-	if (spi_nor_parse_sfdp(nor, &sfdp_params)) {
+	if (spi_nor_parse_sfdp(nor, &sfdp_flash)) {
 		nor->addr_width = 0;
 		nor->flags &= ~SNOR_F_4B_OPCODES;
 	} else {
-		memcpy(&nor->params, &sfdp_params, sizeof(nor->params));
+		memcpy(&nor->flash, &sfdp_flash, sizeof(nor->flash));
 	}
 }
 
 /**
- * spi_nor_info_init_params() - Initialize the flash's parameters and settings
- * based on nor->info data.
+ * spi_nor_info_init_flash_params() - Initialize the flash's parameters and
+ * settings based on nor->info data.
  * @nor:	pointer to a 'struct spi-nor'.
  */
-static void spi_nor_info_init_params(struct spi_nor *nor)
+static void spi_nor_info_init_flash_params(struct spi_nor *nor)
 {
-	struct spi_nor_flash_parameter *params = &nor->params;
-	struct spi_nor_erase_map *map = &params->erase_map;
+	struct spi_nor_flash_parameter *flash = &nor->flash;
+	struct spi_nor_erase_map *map = &flash->erase_map;
 	const struct flash_info *info = nor->info;
 	struct device_node *np = spi_nor_get_flash_node(nor);
 	u8 i, erase_mask;
 
 	/* Initialize legacy flash parameters and settings. */
-	params->quad_enable = spansion_quad_enable;
-	params->set_4byte = spansion_set_4byte;
-	params->setup = spi_nor_default_setup;
+	flash->quad_enable = spansion_quad_enable;
+	flash->set_4byte = spansion_set_4byte;
+	flash->setup = spi_nor_default_setup;
 
 	/* Set SPI NOR sizes. */
-	params->size = (u64)info->sector_size * info->n_sectors;
-	params->page_size = info->page_size;
+	flash->size = (u64)info->sector_size * info->n_sectors;
+	flash->page_size = info->page_size;
 
 	if (!(info->flags & SPI_NOR_NO_FR)) {
 		/* Default to Fast Read for DT and non-DT platform devices. */
-		params->hwcaps.mask |= SNOR_HWCAPS_READ_FAST;
+		flash->hwcaps.mask |= SNOR_HWCAPS_READ_FAST;
 
 		/* Mask out Fast Read if not requested at DT instantiation. */
 		if (np && !of_property_read_bool(np, "m25p,fast-read"))
-			params->hwcaps.mask &= ~SNOR_HWCAPS_READ_FAST;
+			flash->hwcaps.mask &= ~SNOR_HWCAPS_READ_FAST;
 	}
 
 	/* (Fast) Read settings. */
-	params->hwcaps.mask |= SNOR_HWCAPS_READ;
-	spi_nor_set_read_settings(&params->reads[SNOR_CMD_READ],
+	flash->hwcaps.mask |= SNOR_HWCAPS_READ;
+	spi_nor_set_read_settings(&flash->reads[SNOR_CMD_READ],
 				  0, 0, SPINOR_OP_READ,
 				  SNOR_PROTO_1_1_1);
 
-	if (params->hwcaps.mask & SNOR_HWCAPS_READ_FAST)
-		spi_nor_set_read_settings(&params->reads[SNOR_CMD_READ_FAST],
+	if (flash->hwcaps.mask & SNOR_HWCAPS_READ_FAST)
+		spi_nor_set_read_settings(&flash->reads[SNOR_CMD_READ_FAST],
 					  0, 8, SPINOR_OP_READ_FAST,
 					  SNOR_PROTO_1_1_1);
 
 	if (info->flags & SPI_NOR_DUAL_READ) {
-		params->hwcaps.mask |= SNOR_HWCAPS_READ_1_1_2;
-		spi_nor_set_read_settings(&params->reads[SNOR_CMD_READ_1_1_2],
+		flash->hwcaps.mask |= SNOR_HWCAPS_READ_1_1_2;
+		spi_nor_set_read_settings(&flash->reads[SNOR_CMD_READ_1_1_2],
 					  0, 8, SPINOR_OP_READ_1_1_2,
 					  SNOR_PROTO_1_1_2);
 	}
 
 	if (info->flags & SPI_NOR_QUAD_READ) {
-		params->hwcaps.mask |= SNOR_HWCAPS_READ_1_1_4;
-		spi_nor_set_read_settings(&params->reads[SNOR_CMD_READ_1_1_4],
+		flash->hwcaps.mask |= SNOR_HWCAPS_READ_1_1_4;
+		spi_nor_set_read_settings(&flash->reads[SNOR_CMD_READ_1_1_4],
 					  0, 8, SPINOR_OP_READ_1_1_4,
 					  SNOR_PROTO_1_1_4);
 	}
 
 	if (info->flags & SPI_NOR_OCTAL_READ) {
-		params->hwcaps.mask |= SNOR_HWCAPS_READ_1_1_8;
-		spi_nor_set_read_settings(&params->reads[SNOR_CMD_READ_1_1_8],
+		flash->hwcaps.mask |= SNOR_HWCAPS_READ_1_1_8;
+		spi_nor_set_read_settings(&flash->reads[SNOR_CMD_READ_1_1_8],
 					  0, 8, SPINOR_OP_READ_1_1_8,
 					  SNOR_PROTO_1_1_8);
 	}
 
 	/* Page Program settings. */
-	params->hwcaps.mask |= SNOR_HWCAPS_PP;
-	spi_nor_set_pp_settings(&params->page_programs[SNOR_CMD_PP],
+	flash->hwcaps.mask |= SNOR_HWCAPS_PP;
+	spi_nor_set_pp_settings(&flash->page_programs[SNOR_CMD_PP],
 				SPINOR_OP_PP, SNOR_PROTO_1_1_1);
 
 	/*
@@ -4550,7 +4549,7 @@ static void spi_nor_info_init_params(struct spi_nor *nor)
 	erase_mask |= BIT(i);
 	spi_nor_set_erase_type(&map->erase_type[i], info->sector_size,
 			       SPINOR_OP_SE);
-	spi_nor_init_uniform_erase_map(map, erase_mask, params->size);
+	spi_nor_init_uniform_erase_map(map, erase_mask, flash->size);
 }
 
 static void spansion_post_sfdp_fixups(struct spi_nor *nor)
@@ -4568,7 +4567,7 @@ static void spansion_post_sfdp_fixups(struct spi_nor *nor)
 
 static void s3an_post_sfdp_fixups(struct spi_nor *nor)
 {
-	nor->params.setup = s3an_nor_setup;
+	nor->flash.setup = s3an_nor_setup;
 }
 
 /**
@@ -4600,24 +4599,25 @@ static void spi_nor_post_sfdp_fixups(struct spi_nor *nor)
 }
 
 /**
- * spi_nor_late_init_params() - Late initialization of default flash parameters.
+ * spi_nor_late_init_flash_params() - Late initialization of default flash
+ * parameters.
  * @nor:	pointer to a 'struct spi_nor'
  *
  * Used to set default flash parameters and settings when the ->default_init()
  * hook or the SFDP parser let voids.
  */
-static void spi_nor_late_init_params(struct spi_nor *nor)
+static void spi_nor_late_init_flash_params(struct spi_nor *nor)
 {
 	/*
 	 * NOR protection support. When locking_ops are not provided, we pick
 	 * the default ones.
 	 */
-	if (nor->flags & SNOR_F_HAS_LOCK && !nor->params.locking_ops)
-		nor->params.locking_ops = &stm_locking_ops;
+	if (nor->flags & SNOR_F_HAS_LOCK && !nor->flash.locking_ops)
+		nor->flash.locking_ops = &stm_locking_ops;
 }
 
 /**
- * spi_nor_init_params() - Initialize the flash's parameters and settings.
+ * spi_nor_init_flash_params() - Initialize the flash's parameters and settings.
  * @nor:	pointer to a 'struct spi-nor'.
  *
  * The flash parameters and settings are initialized based on a sequence of
@@ -4625,18 +4625,18 @@ static void spi_nor_late_init_params(struct spi_nor *nor)
  *
  * 1/ Default flash parameters initialization. The initializations are done
  *    based on nor->info data:
- *		spi_nor_info_init_params()
+ *		spi_nor_info_init_flash_params()
  *
  * which can be overwritten by:
  * 2/ Manufacturer flash parameters initialization. The initializations are
  *    done based on MFR register, or when the decisions can not be done solely
  *    based on MFR, by using specific flash_info tweeks, ->default_init():
- *		spi_nor_manufacturer_init_params()
+ *		spi_nor_manufacturer_init_flash_params()
  *
  * which can be overwritten by:
  * 3/ SFDP flash parameters initialization. JESD216 SFDP is a standard and
  *    should be more accurate that the above.
- *		spi_nor_sfdp_init_params()
+ *		spi_nor_sfdp_init_flash_params()
  *
  *    Please note that there is a ->post_bfpt() fixup hook that can overwrite
  *    the flash parameters and settings immediately after parsing the Basic
@@ -4650,22 +4650,22 @@ static void spi_nor_late_init_params(struct spi_nor *nor)
  *		spi_nor_post_sfdp_fixups()
  *
  * 5/ Late default flash parameters initialization, used when the
- * ->default_init() hook or the SFDP parser do not set specific params.
- *		spi_nor_late_init_params()
+ * ->default_init() hook or the SFDP parser do not set specific flash params.
+ *		spi_nor_late_init_flash_params()
  */
-static void spi_nor_init_params(struct spi_nor *nor)
+static void spi_nor_init_flash_params(struct spi_nor *nor)
 {
-	spi_nor_info_init_params(nor);
+	spi_nor_info_init_flash_params(nor);
 
-	spi_nor_manufacturer_init_params(nor);
+	spi_nor_manufacturer_init_flash_params(nor);
 
 	if ((nor->info->flags & (SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ)) &&
 	    !(nor->info->flags & SPI_NOR_SKIP_SFDP))
-		spi_nor_sfdp_init_params(nor);
+		spi_nor_sfdp_init_flash_params(nor);
 
 	spi_nor_post_sfdp_fixups(nor);
 
-	spi_nor_late_init_params(nor);
+	spi_nor_late_init_flash_params(nor);
 }
 
 /**
@@ -4676,14 +4676,14 @@ static void spi_nor_init_params(struct spi_nor *nor)
  */
 static int spi_nor_quad_enable(struct spi_nor *nor)
 {
-	if (!nor->params.quad_enable)
+	if (!nor->flash.quad_enable)
 		return 0;
 
 	if (!(spi_nor_get_protocol_width(nor->read_proto) == 4 ||
 	      spi_nor_get_protocol_width(nor->write_proto) == 4))
 		return 0;
 
-	return nor->params.quad_enable(nor);
+	return nor->flash.quad_enable(nor);
 }
 
 static int spi_nor_init(struct spi_nor *nor)
@@ -4691,7 +4691,7 @@ static int spi_nor_init(struct spi_nor *nor)
 	int err;
 
 	if (nor->clear_sr_bp) {
-		if (nor->params.quad_enable == spansion_quad_enable)
+		if (nor->flash.quad_enable == spansion_quad_enable)
 			nor->clear_sr_bp = spi_nor_spansion_clear_sr_bp;
 
 		err = nor->clear_sr_bp(nor);
@@ -4718,7 +4718,7 @@ static int spi_nor_init(struct spi_nor *nor)
 		 */
 		WARN_ONCE(nor->flags & SNOR_F_BROKEN_RESET,
 			  "enabling reset hack; may not recover from unexpected reboots\n");
-		nor->params.set_4byte(nor, true);
+		nor->flash.set_4byte(nor, true);
 	}
 
 	return 0;
@@ -4742,7 +4742,7 @@ void spi_nor_restore(struct spi_nor *nor)
 	/* restore the addressing mode */
 	if (nor->addr_width == 4 && !(nor->flags & SNOR_F_4B_OPCODES) &&
 	    nor->flags & SNOR_F_BROKEN_RESET)
-		nor->params.set_4byte(nor, false);
+		nor->flash.set_4byte(nor, false);
 }
 EXPORT_SYMBOL_GPL(spi_nor_restore);
 
@@ -4842,7 +4842,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	struct device *dev = nor->dev;
 	struct mtd_info *mtd = &nor->mtd;
 	struct device_node *np = spi_nor_get_flash_node(nor);
-	struct spi_nor_flash_parameter *params = &nor->params;
+	struct spi_nor_flash_parameter *flash = &nor->flash;
 	int ret;
 	int i;
 
@@ -4901,7 +4901,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 		nor->clear_sr_bp = spi_nor_clear_sr_bp;
 
 	/* Init flash parameters based on flash_info struct and SFDP */
-	spi_nor_init_params(nor);
+	spi_nor_init_flash_params(nor);
 
 	if (!mtd->name)
 		mtd->name = dev_name(dev);
@@ -4909,12 +4909,12 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	mtd->type = MTD_NORFLASH;
 	mtd->writesize = 1;
 	mtd->flags = MTD_CAP_NORFLASH;
-	mtd->size = params->size;
+	mtd->size = flash->size;
 	mtd->_erase = spi_nor_erase;
 	mtd->_read = spi_nor_read;
 	mtd->_resume = spi_nor_resume;
 
-	if (nor->params.locking_ops) {
+	if (nor->flash.locking_ops) {
 		mtd->_lock = spi_nor_lock;
 		mtd->_unlock = spi_nor_unlock;
 		mtd->_is_locked = spi_nor_is_locked;
@@ -4939,7 +4939,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 		mtd->flags |= MTD_NO_ERASE;
 
 	mtd->dev.parent = dev;
-	nor->page_size = params->page_size;
+	nor->page_size = flash->page_size;
 	mtd->writebufsize = nor->page_size;
 
 	if (of_property_read_bool(np, "broken-flash-reset"))
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index d1d736d3c8ab..12961b157743 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -580,10 +580,10 @@ struct flash_info;
  * @controller_ops:	SPI NOR controller driver specific operations.
  * @clear_sr_bp:	[FLASH-SPECIFIC] clears the Block Protection Bits from
  *			the SPI NOR Status Register.
- * @params:		[FLASH-SPECIFIC] SPI-NOR flash parameters and settings.
- *                      The structure includes legacy flash parameters and
- *                      settings that can be overwritten by the spi_nor_fixups
- *                      hooks, or dynamically when parsing the SFDP tables.
+ * @flash:		SPI-NOR flash parameters and settings. The structure
+ *			includes default flash parameters and settings that can
+ *			be overwritten by the spi_nor_fixups hooks, or
+ *			dynamically when parsing the SFDP tables.
  * @priv:		the private data
  */
 struct spi_nor {
@@ -609,7 +609,7 @@ struct spi_nor {
 	const struct spi_nor_controller_ops *controller_ops;
 
 	int (*clear_sr_bp)(struct spi_nor *nor);
-	struct spi_nor_flash_parameter params;
+	struct spi_nor_flash_parameter flash;
 
 	void *priv;
 };
@@ -640,7 +640,7 @@ spi_nor_region_mark_overlay(struct spi_nor_erase_region *region)
 
 static bool __maybe_unused spi_nor_has_uniform_erase(const struct spi_nor *nor)
 {
-	return !!nor->params.erase_map.uniform_erase_type;
+	return !!nor->flash.erase_map.uniform_erase_type;
 }
 
 static inline void spi_nor_set_flash_node(struct spi_nor *nor,
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
