Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ADA09CED9
	for <lists+linux-mtd@lfdr.de>; Mon, 26 Aug 2019 14:00:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=84rBXccW0FKruWm2YJAKtaVu8TxKKgonalDe9R7PV/s=; b=YH8UZzczZQo/Le
	IXZzToBA2A1zh0hRa6B/ZCctEudJiE9tZi3LmPJnYoID+N2OXU2VT90w48TZSWMdcsXxmbnuT06+H
	FkBnBGHC2svQF1TGESVqOczRDydZZerQZTVStPvN9sPtxHBCL80cX+bMbWMhlDBNDZ/H2CwJJhxVB
	lqAiJBDA+Ig517vPTVHUqZANxPn/yGl3Bxx22qMQ5cPpEES0ytqSmtSJFYCY4AMUZ6N0mbEU1z/XR
	lM/+COJVbgpB6jiBLWG6qmzU7ZEFnbhvHx280V61aAq6whHVFKv1XyQLYKUFyJZmfTe5htQa5hmQN
	0dGO16fiNS8tZlnfg9Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Dfj-0005U6-Eq; Mon, 26 Aug 2019 12:00:31 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2DeC-0002dL-Ig
 for linux-mtd@lists.infradead.org; Mon, 26 Aug 2019 11:58:59 +0000
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
IronPort-SDR: NkNXFDk3qbCkiwInb2c/B1XUn6sDoHNdr/QSCCNtZiqIf3yPghlNYmZy9m4DHxOT0ZXk0pCE5E
 yoL7jbfwrwXOjhezjN4RQTUaqRa4SgRnubNOBySmNwvTn4GKsOsOCJzl8XOVVwG2wZNylxWSR5
 ffKyrJfZRVzgwDsYLzTl/Fo+vB5QBulJaDFvls6mnJcPGHtgLaMEHl7ztRFcbi9MnH3v1S+Fvq
 ilSXXg1lbvNmDer9YlnB00T82g/fpzjn0A43JJjIzKcPVXiqPtoTunQ1p2t+EQGk3uLE3+++WW
 gPE=
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="44987649"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Aug 2019 04:58:55 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 26 Aug 2019 04:58:52 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 26 Aug 2019 04:58:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Get6ImAVYQhFPqYFKnL6oCnd9eEpM9o3aGJIUUbwFBKnop/yoaa+6I4JZQ2Tqjc05Fna19K7Kj7pr0H5bNUCDymlOcgnbU8w2WpLcrhBpBOTE9f4QcSN1c7iLCMZpBfCv/bIf2/l7ipsYTSqQrAfmi27U4o/e+EJsHLEyH0gLO53voR4O4MtoBNACdQywXAgnffJkSd5SdWuNks2R5AY4og5Idv+oVotGves5tbC1xV7rtteekEFhs+3SlO1Gjb6Ry3bqN7qOY2R2SJVayPp2nZ2Z48bryM3gsCAV1ccNBA38me9lvw9e3priJhLMBwKN7xR325RhQ12JgxbY6eXFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o+uGO1wnUc7VOBpwSlQm2Jwaf7rqoSKbN4C3jVfhH9Y=;
 b=QUsbeK0uxlPB0p7zJJ0yDbeCFgFAnbKGQqZycyeLbNIQ2ZgNFQGZPgA3rlwSslBzn2vQofjHMpHr2a+pNf+mmXyKT3hq9Kumo7kIiDg3jurGWvXUjIZa+Rdgnb0GDoAtuewisniCiU/ZLSSnICZ5QWVhdJjHMBQzaKSrwpjpXa4FiTarRCd0ng1AQ060smcOMEr8N65AnVKS03ak3Z2Jo4o1aC29xTf8oEJ9+N0zTGubktLCGb8sUhenlbBRiKjZbqBCzvsufrB4s0WMdJbCh+1c1o48ekR7aXDuRsJxscctsRXiKzGLEH2GLFRCBWizBUM0WD7aiH7oaiW6se9bOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o+uGO1wnUc7VOBpwSlQm2Jwaf7rqoSKbN4C3jVfhH9Y=;
 b=ED2xuwgwEUMaDzm5OAyflNEH24re6KMmzLcyq6AJN4MjpzItK/EPl7yfWj0/KDpka2CZdPIXGDhmRgpt3Qi9sgNdVBM7+iL8slB2uDLAmDSCzFgmwS/hP84KDyvjvRgA+TwE2LUGiHlTQyea2AFkDcHPPJfiCjCegQy5/xUdz3s=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4350.namprd11.prod.outlook.com (52.135.39.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Mon, 26 Aug 2019 11:58:49 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5%7]) with mapi id 15.20.2199.021; Mon, 26 Aug 2019
 11:58:49 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>,
 <vigneshr@ti.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 04/20] mtd: spi-nor: Move erase_map to 'struct
 spi_nor_flash_parameter'
Thread-Topic: [PATCH v3 04/20] mtd: spi-nor: Move erase_map to 'struct
 spi_nor_flash_parameter'
Thread-Index: AQHVXAWfsCwfU61x0kahhLMF12CZfQ==
Date: Mon, 26 Aug 2019 11:58:49 +0000
Message-ID: <20190826115833.14913-5-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: a33ad0c8-e4d4-4bdc-4479-08d72a1cc190
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB4350; 
x-ms-traffictypediagnostic: MN2PR11MB4350:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB43505257F17E13306517965AF0A10@MN2PR11MB4350.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01415BB535
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(396003)(376002)(366004)(39860400002)(189003)(199004)(386003)(66476007)(6506007)(66556008)(64756008)(81156014)(66446008)(66946007)(14444005)(256004)(8676002)(81166006)(71200400001)(71190400001)(25786009)(6512007)(1076003)(6436002)(8936002)(107886003)(53936002)(36756003)(6486002)(5660300002)(4326008)(50226002)(486006)(86362001)(66066001)(2616005)(476003)(305945005)(3846002)(186003)(76176011)(52116002)(99286004)(6116002)(478600001)(2501003)(7736002)(446003)(11346002)(14454004)(2906002)(110136005)(2201001)(316002)(26005)(102836004)(309714004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4350;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: h8b+soVRgyN2DrgxhDscdAwSJ5pYw1YiRoO/fZRPt8bz9crcDnByg+MBs7Vu4CgxXkvKjm1Wo6G8PZNXuA4M4AE9EmJR3Tju1E14qww6GWTdlLjWR6FzKNsWSARpcT7X1jj/SMG3wQBQ8iF9DdyeYCS5Qva6gcN4I4+JkSXuWWnigrN9Ag7a4VNM3vl0e6rzKGQeXFnZqgBoFKtUjjwSs3z5ShxCEwsRwh1fLs9g+n4/lQ23x+FpFyn61VcUjzNOnOwjKrArpe5JAdA86aRBrZvL7+NZ7aYiyJkRiK8zzfzh3JrNNGhTZVfzxlGS9HjfOS/C0sBXNy/VtOEHY5aTENd0y6rxgyemQMCcP/46kfgn4Akk+2SncoSt1FKWTzJucOy+GyG1zpd/Qz6sXiaDj0Gnyawd277wziZ/njb0JrE=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a33ad0c8-e4d4-4bdc-4479-08d72a1cc190
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2019 11:58:49.3071 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /73/PV0r70i4OPpytSLt/A58eo/EX67KYavBTmh4fn1sQFLaSX/7e4eE9rsWo+1Tex7w2Wn8n3gLDmRkliIyeg6+pTDja84W+J+LXfd6jzg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4350
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_045857_019189_70391C5D 
X-CRM114-Status: GOOD (  14.15  )
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
Cc: Tudor.Ambarus@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

All flash parameters and settings should reside inside
'struct spi_nor_flash_parameter'. Move the SMPT parsed erase map
from 'struct spi_nor' to 'struct spi_nor_flash_parameter'.

Please note that there is a roll-back mechanism for the flash
parameter and settings, for cases when SFDP parser fails. The SFDP
parser receives a Stack allocated copy of nor->params, called
sfdp_params, and uses it to retrieve the serial flash discoverable
parameters. JESD216 SFDP is a standard and has a higher priority
than the default initialized flash parameters, so will overwrite the
sfdp_params data when needed. All SFDP code uses the local copy of
nor->params, that will overwrite it in the end, if the parser succeds.

Saving and restoring the nor->params.erase_map is no longer needed,
since the SFDP code does not touch it.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
v3: Collect R-b

 drivers/mtd/spi-nor/spi-nor.c | 40 +++++++++++++++++++++-------------------
 include/linux/mtd/spi-nor.h   |  8 +++++---
 2 files changed, 26 insertions(+), 22 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index effda372cb33..9dd6cd8cd13c 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -600,7 +600,7 @@ static void spi_nor_set_4byte_opcodes(struct spi_nor *nor)
 	nor->erase_opcode = spi_nor_convert_3to4_erase(nor->erase_opcode);
 
 	if (!spi_nor_has_uniform_erase(nor)) {
-		struct spi_nor_erase_map *map = &nor->erase_map;
+		struct spi_nor_erase_map *map = &nor->params.erase_map;
 		struct spi_nor_erase_type *erase;
 		int i;
 
@@ -1133,7 +1133,7 @@ static int spi_nor_init_erase_cmd_list(struct spi_nor *nor,
 				       struct list_head *erase_list,
 				       u64 addr, u32 len)
 {
-	const struct spi_nor_erase_map *map = &nor->erase_map;
+	const struct spi_nor_erase_map *map = &nor->params.erase_map;
 	const struct spi_nor_erase_type *erase, *prev_erase = NULL;
 	struct spi_nor_erase_region *region;
 	struct spi_nor_erase_command *cmd = NULL;
@@ -3328,7 +3328,7 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
 			      const struct sfdp_parameter_header *bfpt_header,
 			      struct spi_nor_flash_parameter *params)
 {
-	struct spi_nor_erase_map *map = &nor->erase_map;
+	struct spi_nor_erase_map *map = &params->erase_map;
 	struct spi_nor_erase_type *erase_type = map->erase_type;
 	struct sfdp_bfpt bfpt;
 	size_t len;
@@ -3409,7 +3409,7 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
 	 * Erase Types defined in the bfpt table.
 	 */
 	erase_mask = 0;
-	memset(&nor->erase_map, 0, sizeof(nor->erase_map));
+	memset(&params->erase_map, 0, sizeof(params->erase_map));
 	for (i = 0; i < ARRAY_SIZE(sfdp_bfpt_erases); i++) {
 		const struct sfdp_bfpt_erase *er = &sfdp_bfpt_erases[i];
 		u32 erasesize;
@@ -3684,14 +3684,18 @@ spi_nor_region_check_overlay(struct spi_nor_erase_region *region,
 /**
  * spi_nor_init_non_uniform_erase_map() - initialize the non-uniform erase map
  * @nor:	pointer to a 'struct spi_nor'
+ * @params:     pointer to a duplicate 'struct spi_nor_flash_parameter' that is
+ *              used for storing SFDP parsed data
  * @smpt:	pointer to the sector map parameter table
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int spi_nor_init_non_uniform_erase_map(struct spi_nor *nor,
-					      const u32 *smpt)
+static int
+spi_nor_init_non_uniform_erase_map(struct spi_nor *nor,
+				   struct spi_nor_flash_parameter *params,
+				   const u32 *smpt)
 {
-	struct spi_nor_erase_map *map = &nor->erase_map;
+	struct spi_nor_erase_map *map = &params->erase_map;
 	struct spi_nor_erase_type *erase = map->erase_type;
 	struct spi_nor_erase_region *region;
 	u64 offset;
@@ -3770,6 +3774,8 @@ static int spi_nor_init_non_uniform_erase_map(struct spi_nor *nor,
  * spi_nor_parse_smpt() - parse Sector Map Parameter Table
  * @nor:		pointer to a 'struct spi_nor'
  * @smpt_header:	sector map parameter table header
+ * @params:		pointer to a duplicate 'struct spi_nor_flash_parameter'
+ *                      that is used for storing SFDP parsed data
  *
  * This table is optional, but when available, we parse it to identify the
  * location and size of sectors within the main data array of the flash memory
@@ -3778,7 +3784,8 @@ static int spi_nor_init_non_uniform_erase_map(struct spi_nor *nor,
  * Return: 0 on success, -errno otherwise.
  */
 static int spi_nor_parse_smpt(struct spi_nor *nor,
-			      const struct sfdp_parameter_header *smpt_header)
+			      const struct sfdp_parameter_header *smpt_header,
+			      struct spi_nor_flash_parameter *params)
 {
 	const u32 *sector_map;
 	u32 *smpt;
@@ -3807,11 +3814,11 @@ static int spi_nor_parse_smpt(struct spi_nor *nor,
 		goto out;
 	}
 
-	ret = spi_nor_init_non_uniform_erase_map(nor, sector_map);
+	ret = spi_nor_init_non_uniform_erase_map(nor, params, sector_map);
 	if (ret)
 		goto out;
 
-	spi_nor_regions_sort_erase_types(&nor->erase_map);
+	spi_nor_regions_sort_erase_types(&params->erase_map);
 	/* fall through */
 out:
 	kfree(smpt);
@@ -3867,7 +3874,7 @@ static int spi_nor_parse_4bait(struct spi_nor *nor,
 		{ 0u /* not used */,		BIT(12) },
 	};
 	struct spi_nor_pp_command *params_pp = params->page_programs;
-	struct spi_nor_erase_map *map = &nor->erase_map;
+	struct spi_nor_erase_map *map = &params->erase_map;
 	struct spi_nor_erase_type *erase_type = map->erase_type;
 	u32 *dwords;
 	size_t len;
@@ -4097,7 +4104,7 @@ static int spi_nor_parse_sfdp(struct spi_nor *nor,
 
 		switch (SFDP_PARAM_HEADER_ID(param_header)) {
 		case SFDP_SECTOR_MAP_ID:
-			err = spi_nor_parse_smpt(nor, param_header);
+			err = spi_nor_parse_smpt(nor, param_header, params);
 			break;
 
 		case SFDP_4BAIT_ID:
@@ -4129,7 +4136,7 @@ static int spi_nor_parse_sfdp(struct spi_nor *nor,
 static int spi_nor_init_params(struct spi_nor *nor)
 {
 	struct spi_nor_flash_parameter *params = &nor->params;
-	struct spi_nor_erase_map *map = &nor->erase_map;
+	struct spi_nor_erase_map *map = &params->erase_map;
 	const struct flash_info *info = nor->info;
 	u8 i, erase_mask;
 
@@ -4229,17 +4236,12 @@ static int spi_nor_init_params(struct spi_nor *nor)
 	if ((info->flags & (SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ)) &&
 	    !(info->flags & SPI_NOR_SKIP_SFDP)) {
 		struct spi_nor_flash_parameter sfdp_params;
-		struct spi_nor_erase_map prev_map;
 
 		memcpy(&sfdp_params, params, sizeof(sfdp_params));
-		memcpy(&prev_map, &nor->erase_map, sizeof(prev_map));
 
 		if (spi_nor_parse_sfdp(nor, &sfdp_params)) {
 			nor->addr_width = 0;
 			nor->flags &= ~SNOR_F_4B_OPCODES;
-			/* restore previous erase map */
-			memcpy(&nor->erase_map, &prev_map,
-			       sizeof(nor->erase_map));
 		} else {
 			memcpy(params, &sfdp_params, sizeof(*params));
 		}
@@ -4353,7 +4355,7 @@ spi_nor_select_uniform_erase(struct spi_nor_erase_map *map,
 
 static int spi_nor_select_erase(struct spi_nor *nor, u32 wanted_size)
 {
-	struct spi_nor_erase_map *map = &nor->erase_map;
+	struct spi_nor_erase_map *map = &nor->params.erase_map;
 	const struct spi_nor_erase_type *erase = NULL;
 	struct mtd_info *mtd = &nor->mtd;
 	int i;
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index 17787238f0e9..a86c0d9fb01d 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -479,6 +479,8 @@ struct spi_nor;
  *                      in the array, the higher priority.
  * @page_programs:	page program capabilities ordered by priority: the
  *                      higher index in the array, the higher priority.
+ * @erase_map:		the erase map parsed from the SFDP Sector Map Parameter
+ *                      Table.
  * @quad_enable:	enables SPI NOR quad mode.
  */
 struct spi_nor_flash_parameter {
@@ -489,6 +491,8 @@ struct spi_nor_flash_parameter {
 	struct spi_nor_read_command	reads[SNOR_CMD_READ_MAX];
 	struct spi_nor_pp_command	page_programs[SNOR_CMD_PP_MAX];
 
+	struct spi_nor_erase_map        erase_map;
+
 	int (*quad_enable)(struct spi_nor *nor);
 };
 
@@ -519,7 +523,6 @@ struct flash_info;
  * @read_proto:		the SPI protocol for read operations
  * @write_proto:	the SPI protocol for write operations
  * @reg_proto		the SPI protocol for read_reg/write_reg/erase operations
- * @erase_map:		the erase map of the SPI NOR
  * @prepare:		[OPTIONAL] do some preparations for the
  *			read/write/erase/lock/unlock operations
  * @unprepare:		[OPTIONAL] do some post work after the
@@ -562,7 +565,6 @@ struct spi_nor {
 	enum spi_nor_protocol	reg_proto;
 	bool			sst_write_second;
 	u32			flags;
-	struct spi_nor_erase_map	erase_map;
 
 	int (*prepare)(struct spi_nor *nor, enum spi_nor_ops ops);
 	void (*unprepare)(struct spi_nor *nor, enum spi_nor_ops ops);
@@ -610,7 +612,7 @@ spi_nor_region_mark_overlay(struct spi_nor_erase_region *region)
 
 static bool __maybe_unused spi_nor_has_uniform_erase(const struct spi_nor *nor)
 {
-	return !!nor->erase_map.uniform_erase_type;
+	return !!nor->params.erase_map.uniform_erase_type;
 }
 
 static inline void spi_nor_set_flash_node(struct spi_nor *nor,
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
