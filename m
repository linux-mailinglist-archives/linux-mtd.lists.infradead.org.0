Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2359CEEB
	for <lists+linux-mtd@lfdr.de>; Mon, 26 Aug 2019 14:03:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dp1trBTedDV53ikchkc5lCVtRRCufQDuJgxxo0BEZQ4=; b=LVMjT1DKN1I+u+
	2aCkAZKI0QK2+t7/HioMoLm8RV6TpE7c5hDo39RUkw3eQeTNks2m0xfgAuDr7pwXoHTYjqjD5hw39
	UyOfbvRAQhvd5ru7y3+BYz0Ci4h5xRmxRxMpzYwSfhbChucfreCtA38k7k2iyNmWLqCA3wtHWi+pi
	Locq8cgaTpUp66Ax1UdGhkQZKhDqmrC55Ga5hJoTcBCYJomzxh1wBjIjpDTdFsMVr0MBC+ldcf8pY
	B4CEXRjYF0LuOZWKg2892rE9Kp0vwL344guE2dpeaWFmjj0dK8XT6GAwLpLOSiFqLKAKaLVNEP4ZR
	ygTXJOPhqpp2pSpOif8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2DiQ-000866-Kq; Mon, 26 Aug 2019 12:03:18 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Dhk-0007QP-Ro
 for linux-mtd@lists.infradead.org; Mon, 26 Aug 2019 12:02:39 +0000
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
IronPort-SDR: PcCCbOHqlNZfPEcuJ1tRAOpVNeCYQzcRcrfkEXpU+1Jq7H6I79lPbn6zRXPB415kYtxHQg7wVZ
 qG6Fb9EOR0Sxf31GVAxhYPy605eP05l3FmhoFRavKs5dC8VjNTdbDIU1cUr2SwwCZ8b5lyF3kc
 stXFzncdJEd8U7GFMQaTlfDiMi2y+ik6PhMSnk+tDfSoywba39JKTMop1jEu/jpZJoH65CKGJN
 atzcY2ffVuTR14SeQX4KUe6SeWqIMO8kNlJgpLTccTZNrrie9G+Ey0jmEkrAKjwwOZ+QKNUtzX
 HEc=
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="44988489"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Aug 2019 05:02:31 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 26 Aug 2019 05:02:25 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 26 Aug 2019 05:02:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g9P5OzEaNu35iZwFIzABLR++68X53fojPezBL5EQPNR4i2PS4y3xY9MVC9zexS8JzF6FdttzJ5VYevGDo3rb7dmdmW/uxiF20asR8+HCgLWRMIjl8z5p4da0d/SL2vn/bfbAAJM6qwYamZGh3qEgyYVVtYLT+Ckuxzpt5f11WI0SO+J4XJURAfh9b4Yt/EGDWPlwGTFND9Win+IIHZWS+dKvrbOfEBDBedHG0H82HJylRQtF43VefHR62ifLR9bB6FnaPMlkaMneaIGBck5dWN5Ka0qJI6GV3nM1YXnCzQ8JFDc/+8YfVVvdxunkT8uAX9qK2OeaGOzls7uKATZr2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A7rmJye5KszaQWOnckHJL0FB/ydlh5fs3DtNq501OvM=;
 b=HImonJm+9E27px79UEQ+4ZCzhyxuPP+oBZmCw1b0NWWL1n+0DIacIKQ8gRdnbDzgh7vL+Zs0OSbivnfO5EWT+BuQVhwG7bXqqUrYK+5wyUutc094sYty8TQie6lkUN9ceZ+t7J++rxOpgFIKop3k+gyGSjPeguHS7v+WJG5dznUI+QULApGNt6lrSkLiKuKxtSMrfqqeZxBQyM/ka/zxm/ski8//2BoNCQ+NtLgwetAeAOn3HNrHImVI4f1qbI3r1qWE64kINWfD7yyj4vlfsdhRKcO6/0P9p5SXP6yLXKPb+V7QqAs2Iw+9WdD6db+GUcj2Yh1h3kIIzsmD3AWO4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A7rmJye5KszaQWOnckHJL0FB/ydlh5fs3DtNq501OvM=;
 b=EW+PCCfmngLbBYl38w/Cx/VT6/MpY0HeAtLO4kCkB+PA1g160wVZiLGbVXJicDdb2ZcxSXBJN5HgH68ZLOlCK69oltkr95otmAvG1gWgOEVRwTpF4WLG+9AsxQbrq1iN0ascqcFUqzG1Qy+mXp7t/XjqYfvB8y/h0lrkx0mZBKI=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3776.namprd11.prod.outlook.com (20.178.251.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Mon, 26 Aug 2019 12:02:23 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5%7]) with mapi id 15.20.2199.021; Mon, 26 Aug 2019
 12:02:23 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>,
 <vigneshr@ti.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 14/20] mtd: spi_nor: Add a ->setup() method
Thread-Topic: [PATCH v3 14/20] mtd: spi_nor: Add a ->setup() method
Thread-Index: AQHVXAYen6dvUzECsUC64iE9uEqDRw==
Date: Mon, 26 Aug 2019 12:02:23 +0000
Message-ID: <20190826120206.15025-5-tudor.ambarus@microchip.com>
References: <20190826120206.15025-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190826120206.15025-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P194CA0041.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:803:3c::30) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1de9ce91-e8c6-4fba-f026-08d72a1d4143
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB3776; 
x-ms-traffictypediagnostic: MN2PR11MB3776:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3776A70EC5A2DD56BF2ACB6CF0A10@MN2PR11MB3776.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01415BB535
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(376002)(346002)(136003)(39860400002)(189003)(199004)(81166006)(81156014)(8676002)(1076003)(2201001)(2501003)(30864003)(14444005)(256004)(26005)(7736002)(99286004)(66066001)(2906002)(76176011)(52116002)(316002)(186003)(50226002)(8936002)(66476007)(66556008)(64756008)(66946007)(66446008)(110136005)(53936002)(2616005)(36756003)(25786009)(5660300002)(386003)(305945005)(6506007)(102836004)(3846002)(6116002)(446003)(11346002)(478600001)(4326008)(86362001)(6436002)(6486002)(6512007)(14454004)(71200400001)(53946003)(71190400001)(107886003)(476003)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3776;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: b858mVVLyxF1Gq0HhAKm/4Lk78c6xFrN7UkLXjG2B518Wo1jZv1WhvX/tPLLxwLzzc7MHN1csNrGLD/PZIa9Dq/sJnMPa+0Yh0wi9Av3GXgx1Z3t/PhSZcRn1w1ucapzQE0jKdusG5LaVmVNu307BHWBpwjPp77xxX682qJt2Hhx8ZwclLnFNDBKVPaVOrafdy0TT3vMtwZHTXsEPaEPx6Y/Dpf64sO9uXjfH+0Lg4/2wcqQ9opWZgp741NLbOOKsL4rrlNhVlXIikcvTXIcN95LWpneR5P53NZHj7wdJfFyd3m4jA+MCYxX9u9vB835TwYPEo1DXEVAbCNa6dYeP/ifXU89xUFo3ciqak9wdoamXkgAI0zy9mfBUXk3PU1VQ11sCOEyV7Ol5PH/C7elPqWlnBLjMuKPMdZsPzldJMg=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1de9ce91-e8c6-4fba-f026-08d72a1d4143
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2019 12:02:23.7222 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lCf6z+rZYvpfsVgWBbgxCymX7MWaH93WW8bW4VonWH3u8Fr7nQ19WHuhx2lB4xdiG2aEIXvQL5nn/dxfHZOrdvf5PKIj5boYxHkjrJVVLiY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3776
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_050237_096827_491E922A 
X-CRM114-Status: GOOD (  18.35  )
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

nor->params.setup() configures the SPI NOR memory. Useful for SPI NOR
flashes that have peculiarities to the SPI NOR standard, e.g.
different opcodes, specific address calculation, page size, etc.
Right now the only user will be the S3AN chips, but other
manufacturers can implement it if needed.

Move spi_nor_setup() related code in order to avoid a forward
declaration to spi_nor_default_setup().

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
v3: collect R-b, rebase on previous commits

 drivers/mtd/spi-nor/spi-nor.c | 432 +++++++++++++++++++++---------------------
 include/linux/mtd/spi-nor.h   |   5 +
 2 files changed, 226 insertions(+), 211 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index b96a7066a36c..2aca56e07341 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -4144,6 +4144,226 @@ static int spi_nor_parse_sfdp(struct spi_nor *nor,
 	return err;
 }
 
+static int spi_nor_select_read(struct spi_nor *nor,
+			       u32 shared_hwcaps)
+{
+	int cmd, best_match = fls(shared_hwcaps & SNOR_HWCAPS_READ_MASK) - 1;
+	const struct spi_nor_read_command *read;
+
+	if (best_match < 0)
+		return -EINVAL;
+
+	cmd = spi_nor_hwcaps_read2cmd(BIT(best_match));
+	if (cmd < 0)
+		return -EINVAL;
+
+	read = &nor->params.reads[cmd];
+	nor->read_opcode = read->opcode;
+	nor->read_proto = read->proto;
+
+	/*
+	 * In the spi-nor framework, we don't need to make the difference
+	 * between mode clock cycles and wait state clock cycles.
+	 * Indeed, the value of the mode clock cycles is used by a QSPI
+	 * flash memory to know whether it should enter or leave its 0-4-4
+	 * (Continuous Read / XIP) mode.
+	 * eXecution In Place is out of the scope of the mtd sub-system.
+	 * Hence we choose to merge both mode and wait state clock cycles
+	 * into the so called dummy clock cycles.
+	 */
+	nor->read_dummy = read->num_mode_clocks + read->num_wait_states;
+	return 0;
+}
+
+static int spi_nor_select_pp(struct spi_nor *nor,
+			     u32 shared_hwcaps)
+{
+	int cmd, best_match = fls(shared_hwcaps & SNOR_HWCAPS_PP_MASK) - 1;
+	const struct spi_nor_pp_command *pp;
+
+	if (best_match < 0)
+		return -EINVAL;
+
+	cmd = spi_nor_hwcaps_pp2cmd(BIT(best_match));
+	if (cmd < 0)
+		return -EINVAL;
+
+	pp = &nor->params.page_programs[cmd];
+	nor->program_opcode = pp->opcode;
+	nor->write_proto = pp->proto;
+	return 0;
+}
+
+/**
+ * spi_nor_select_uniform_erase() - select optimum uniform erase type
+ * @map:		the erase map of the SPI NOR
+ * @wanted_size:	the erase type size to search for. Contains the value of
+ *			info->sector_size or of the "small sector" size in case
+ *			CONFIG_MTD_SPI_NOR_USE_4K_SECTORS is defined.
+ *
+ * Once the optimum uniform sector erase command is found, disable all the
+ * other.
+ *
+ * Return: pointer to erase type on success, NULL otherwise.
+ */
+static const struct spi_nor_erase_type *
+spi_nor_select_uniform_erase(struct spi_nor_erase_map *map,
+			     const u32 wanted_size)
+{
+	const struct spi_nor_erase_type *tested_erase, *erase = NULL;
+	int i;
+	u8 uniform_erase_type = map->uniform_erase_type;
+
+	for (i = SNOR_ERASE_TYPE_MAX - 1; i >= 0; i--) {
+		if (!(uniform_erase_type & BIT(i)))
+			continue;
+
+		tested_erase = &map->erase_type[i];
+
+		/*
+		 * If the current erase size is the one, stop here:
+		 * we have found the right uniform Sector Erase command.
+		 */
+		if (tested_erase->size == wanted_size) {
+			erase = tested_erase;
+			break;
+		}
+
+		/*
+		 * Otherwise, the current erase size is still a valid canditate.
+		 * Select the biggest valid candidate.
+		 */
+		if (!erase && tested_erase->size)
+			erase = tested_erase;
+			/* keep iterating to find the wanted_size */
+	}
+
+	if (!erase)
+		return NULL;
+
+	/* Disable all other Sector Erase commands. */
+	map->uniform_erase_type &= ~SNOR_ERASE_TYPE_MASK;
+	map->uniform_erase_type |= BIT(erase - map->erase_type);
+	return erase;
+}
+
+static int spi_nor_select_erase(struct spi_nor *nor, u32 wanted_size)
+{
+	struct spi_nor_erase_map *map = &nor->params.erase_map;
+	const struct spi_nor_erase_type *erase = NULL;
+	struct mtd_info *mtd = &nor->mtd;
+	int i;
+
+	/*
+	 * The previous implementation handling Sector Erase commands assumed
+	 * that the SPI flash memory has an uniform layout then used only one
+	 * of the supported erase sizes for all Sector Erase commands.
+	 * So to be backward compatible, the new implementation also tries to
+	 * manage the SPI flash memory as uniform with a single erase sector
+	 * size, when possible.
+	 */
+#ifdef CONFIG_MTD_SPI_NOR_USE_4K_SECTORS
+	/* prefer "small sector" erase if possible */
+	wanted_size = 4096u;
+#endif
+
+	if (spi_nor_has_uniform_erase(nor)) {
+		erase = spi_nor_select_uniform_erase(map, wanted_size);
+		if (!erase)
+			return -EINVAL;
+		nor->erase_opcode = erase->opcode;
+		mtd->erasesize = erase->size;
+		return 0;
+	}
+
+	/*
+	 * For non-uniform SPI flash memory, set mtd->erasesize to the
+	 * maximum erase sector size. No need to set nor->erase_opcode.
+	 */
+	for (i = SNOR_ERASE_TYPE_MAX - 1; i >= 0; i--) {
+		if (map->erase_type[i].size) {
+			erase = &map->erase_type[i];
+			break;
+		}
+	}
+
+	if (!erase)
+		return -EINVAL;
+
+	mtd->erasesize = erase->size;
+	return 0;
+}
+
+static int spi_nor_default_setup(struct spi_nor *nor,
+				 const struct spi_nor_hwcaps *hwcaps)
+{
+	struct spi_nor_flash_parameter *params = &nor->params;
+	u32 ignored_mask, shared_mask;
+	int err;
+
+	/*
+	 * Keep only the hardware capabilities supported by both the SPI
+	 * controller and the SPI flash memory.
+	 */
+	shared_mask = hwcaps->mask & params->hwcaps.mask;
+
+	if (nor->spimem) {
+		/*
+		 * When called from spi_nor_probe(), all caps are set and we
+		 * need to discard some of them based on what the SPI
+		 * controller actually supports (using spi_mem_supports_op()).
+		 */
+		spi_nor_spimem_adjust_hwcaps(nor, &shared_mask);
+	} else {
+		/*
+		 * SPI n-n-n protocols are not supported when the SPI
+		 * controller directly implements the spi_nor interface.
+		 * Yet another reason to switch to spi-mem.
+		 */
+		ignored_mask = SNOR_HWCAPS_X_X_X;
+		if (shared_mask & ignored_mask) {
+			dev_dbg(nor->dev,
+				"SPI n-n-n protocols are not supported.\n");
+			shared_mask &= ~ignored_mask;
+		}
+	}
+
+	/* Select the (Fast) Read command. */
+	err = spi_nor_select_read(nor, shared_mask);
+	if (err) {
+		dev_err(nor->dev,
+			"can't select read settings supported by both the SPI controller and memory.\n");
+		return err;
+	}
+
+	/* Select the Page Program command. */
+	err = spi_nor_select_pp(nor, shared_mask);
+	if (err) {
+		dev_err(nor->dev,
+			"can't select write settings supported by both the SPI controller and memory.\n");
+		return err;
+	}
+
+	/* Select the Sector Erase command. */
+	err = spi_nor_select_erase(nor, nor->info->sector_size);
+	if (err) {
+		dev_err(nor->dev,
+			"can't select erase settings supported by both the SPI controller and memory.\n");
+		return err;
+	}
+
+	return 0;
+}
+
+static int spi_nor_setup(struct spi_nor *nor,
+			 const struct spi_nor_hwcaps *hwcaps)
+{
+	if (!nor->params.setup)
+		return 0;
+
+	return nor->params.setup(nor, hwcaps);
+}
+
 static void macronix_set_default_init(struct spi_nor *nor)
 {
 	nor->params.quad_enable = macronix_quad_enable;
@@ -4229,6 +4449,7 @@ static void spi_nor_info_init_params(struct spi_nor *nor)
 	/* Initialize legacy flash parameters and settings. */
 	params->quad_enable = spansion_quad_enable;
 	params->set_4byte = spansion_set_4byte;
+	params->setup = spi_nor_default_setup;
 
 	/* Set SPI NOR sizes. */
 	params->size = (u64)info->sector_size * info->n_sectors;
@@ -4403,217 +4624,6 @@ static void spi_nor_init_params(struct spi_nor *nor)
 	spi_nor_late_init_params(nor);
 }
 
-static int spi_nor_select_read(struct spi_nor *nor,
-			       u32 shared_hwcaps)
-{
-	int cmd, best_match = fls(shared_hwcaps & SNOR_HWCAPS_READ_MASK) - 1;
-	const struct spi_nor_read_command *read;
-
-	if (best_match < 0)
-		return -EINVAL;
-
-	cmd = spi_nor_hwcaps_read2cmd(BIT(best_match));
-	if (cmd < 0)
-		return -EINVAL;
-
-	read = &nor->params.reads[cmd];
-	nor->read_opcode = read->opcode;
-	nor->read_proto = read->proto;
-
-	/*
-	 * In the spi-nor framework, we don't need to make the difference
-	 * between mode clock cycles and wait state clock cycles.
-	 * Indeed, the value of the mode clock cycles is used by a QSPI
-	 * flash memory to know whether it should enter or leave its 0-4-4
-	 * (Continuous Read / XIP) mode.
-	 * eXecution In Place is out of the scope of the mtd sub-system.
-	 * Hence we choose to merge both mode and wait state clock cycles
-	 * into the so called dummy clock cycles.
-	 */
-	nor->read_dummy = read->num_mode_clocks + read->num_wait_states;
-	return 0;
-}
-
-static int spi_nor_select_pp(struct spi_nor *nor,
-			     u32 shared_hwcaps)
-{
-	int cmd, best_match = fls(shared_hwcaps & SNOR_HWCAPS_PP_MASK) - 1;
-	const struct spi_nor_pp_command *pp;
-
-	if (best_match < 0)
-		return -EINVAL;
-
-	cmd = spi_nor_hwcaps_pp2cmd(BIT(best_match));
-	if (cmd < 0)
-		return -EINVAL;
-
-	pp = &nor->params.page_programs[cmd];
-	nor->program_opcode = pp->opcode;
-	nor->write_proto = pp->proto;
-	return 0;
-}
-
-/**
- * spi_nor_select_uniform_erase() - select optimum uniform erase type
- * @map:		the erase map of the SPI NOR
- * @wanted_size:	the erase type size to search for. Contains the value of
- *			info->sector_size or of the "small sector" size in case
- *			CONFIG_MTD_SPI_NOR_USE_4K_SECTORS is defined.
- *
- * Once the optimum uniform sector erase command is found, disable all the
- * other.
- *
- * Return: pointer to erase type on success, NULL otherwise.
- */
-static const struct spi_nor_erase_type *
-spi_nor_select_uniform_erase(struct spi_nor_erase_map *map,
-			     const u32 wanted_size)
-{
-	const struct spi_nor_erase_type *tested_erase, *erase = NULL;
-	int i;
-	u8 uniform_erase_type = map->uniform_erase_type;
-
-	for (i = SNOR_ERASE_TYPE_MAX - 1; i >= 0; i--) {
-		if (!(uniform_erase_type & BIT(i)))
-			continue;
-
-		tested_erase = &map->erase_type[i];
-
-		/*
-		 * If the current erase size is the one, stop here:
-		 * we have found the right uniform Sector Erase command.
-		 */
-		if (tested_erase->size == wanted_size) {
-			erase = tested_erase;
-			break;
-		}
-
-		/*
-		 * Otherwise, the current erase size is still a valid canditate.
-		 * Select the biggest valid candidate.
-		 */
-		if (!erase && tested_erase->size)
-			erase = tested_erase;
-			/* keep iterating to find the wanted_size */
-	}
-
-	if (!erase)
-		return NULL;
-
-	/* Disable all other Sector Erase commands. */
-	map->uniform_erase_type &= ~SNOR_ERASE_TYPE_MASK;
-	map->uniform_erase_type |= BIT(erase - map->erase_type);
-	return erase;
-}
-
-static int spi_nor_select_erase(struct spi_nor *nor, u32 wanted_size)
-{
-	struct spi_nor_erase_map *map = &nor->params.erase_map;
-	const struct spi_nor_erase_type *erase = NULL;
-	struct mtd_info *mtd = &nor->mtd;
-	int i;
-
-	/*
-	 * The previous implementation handling Sector Erase commands assumed
-	 * that the SPI flash memory has an uniform layout then used only one
-	 * of the supported erase sizes for all Sector Erase commands.
-	 * So to be backward compatible, the new implementation also tries to
-	 * manage the SPI flash memory as uniform with a single erase sector
-	 * size, when possible.
-	 */
-#ifdef CONFIG_MTD_SPI_NOR_USE_4K_SECTORS
-	/* prefer "small sector" erase if possible */
-	wanted_size = 4096u;
-#endif
-
-	if (spi_nor_has_uniform_erase(nor)) {
-		erase = spi_nor_select_uniform_erase(map, wanted_size);
-		if (!erase)
-			return -EINVAL;
-		nor->erase_opcode = erase->opcode;
-		mtd->erasesize = erase->size;
-		return 0;
-	}
-
-	/*
-	 * For non-uniform SPI flash memory, set mtd->erasesize to the
-	 * maximum erase sector size. No need to set nor->erase_opcode.
-	 */
-	for (i = SNOR_ERASE_TYPE_MAX - 1; i >= 0; i--) {
-		if (map->erase_type[i].size) {
-			erase = &map->erase_type[i];
-			break;
-		}
-	}
-
-	if (!erase)
-		return -EINVAL;
-
-	mtd->erasesize = erase->size;
-	return 0;
-}
-
-static int spi_nor_setup(struct spi_nor *nor,
-			 const struct spi_nor_hwcaps *hwcaps)
-{
-	struct spi_nor_flash_parameter *params = &nor->params;
-	u32 ignored_mask, shared_mask;
-	int err;
-
-	/*
-	 * Keep only the hardware capabilities supported by both the SPI
-	 * controller and the SPI flash memory.
-	 */
-	shared_mask = hwcaps->mask & params->hwcaps.mask;
-
-	if (nor->spimem) {
-		/*
-		 * When called from spi_nor_probe(), all caps are set and we
-		 * need to discard some of them based on what the SPI
-		 * controller actually supports (using spi_mem_supports_op()).
-		 */
-		spi_nor_spimem_adjust_hwcaps(nor, &shared_mask);
-	} else {
-		/*
-		 * SPI n-n-n protocols are not supported when the SPI
-		 * controller directly implements the spi_nor interface.
-		 * Yet another reason to switch to spi-mem.
-		 */
-		ignored_mask = SNOR_HWCAPS_X_X_X;
-		if (shared_mask & ignored_mask) {
-			dev_dbg(nor->dev,
-				"SPI n-n-n protocols are not supported.\n");
-			shared_mask &= ~ignored_mask;
-		}
-	}
-
-	/* Select the (Fast) Read command. */
-	err = spi_nor_select_read(nor, shared_mask);
-	if (err) {
-		dev_err(nor->dev,
-			"can't select read settings supported by both the SPI controller and memory.\n");
-		return err;
-	}
-
-	/* Select the Page Program command. */
-	err = spi_nor_select_pp(nor, shared_mask);
-	if (err) {
-		dev_err(nor->dev,
-			"can't select write settings supported by both the SPI controller and memory.\n");
-		return err;
-	}
-
-	/* Select the Sector Erase command. */
-	err = spi_nor_select_erase(nor, nor->info->sector_size);
-	if (err) {
-		dev_err(nor->dev,
-			"can't select erase settings supported by both the SPI controller and memory.\n");
-		return err;
-	}
-
-	return 0;
-}
-
 /**
  * spi_nor_quad_enable() - enable Quad I/O if needed.
  * @nor:                pointer to a 'struct spi_nor'
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index 35aad92a4ff8..fc0b4b19c900 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -498,6 +498,10 @@ struct spi_nor_locking_ops {
  * @convert_addr:	converts an absolute address into something the flash
  *                      will understand. Particularly useful when pagesize is
  *                      not a power-of-2.
+ * @setup:              configures the SPI NOR memory. Useful for SPI NOR
+ *                      flashes that have peculiarities to the SPI NOR standard
+ *                      e.g. different opcodes, specific address calculation,
+ *                      page size, etc.
  * @locking_ops:	SPI NOR locking methods.
  */
 struct spi_nor_flash_parameter {
@@ -513,6 +517,7 @@ struct spi_nor_flash_parameter {
 	int (*quad_enable)(struct spi_nor *nor);
 	int (*set_4byte)(struct spi_nor *nor, bool enable);
 	u32 (*convert_addr)(struct spi_nor *nor, u32 addr);
+	int (*setup)(struct spi_nor *nor, const struct spi_nor_hwcaps *hwcaps);
 
 	const struct spi_nor_locking_ops *locking_ops;
 };
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
