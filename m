Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DECE37BC8B
	for <lists+linux-mtd@lfdr.de>; Wed, 31 Jul 2019 11:04:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2eQYtMYoeCtK2Fu9OXlakntjcpi3Iu+7m7aQksZoA48=; b=LHFy5egoNEDJBq
	eS63DX84hYtsAhVJZMbdNXS+9yNliYGuFK6V9gCmSCXgY/1KCsXAp6pkG6p6iyqkv1/znLTWgEk3f
	BlKMoH7+MydQ8iIyXC8O/T9wVionSX0iKyuZapNHoy8guCJfBPSUbP6ZDUswmdHFwwzI7b3xFeq6T
	cj1N9/QrUKnj8ogtolAfXWALtT9ZuO/h46RMnNsA/tDlakfe6LKbyxYF+sWgnAZ1w1/QlliDVbin/
	jKwKJi5I/QcR7IhyZ2qdL/r2x0lbUQJa0hxKAwphmfSbRnbDBLkTYmuOBYC1ZAKOODnPNPALFJAPM
	HCk41vB+8N2PtqOX2KoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hskXX-0008Qo-6h; Wed, 31 Jul 2019 09:04:55 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hskWM-0007e4-U3
 for linux-mtd@lists.infradead.org; Wed, 31 Jul 2019 09:03:44 +0000
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
IronPort-SDR: 9+u8aWnjVgRYCExzEupZhaydEIqAjth3Feq4CmcM6IDGmMg8RsKkfU71ZVzA0k2wAQD2mTDQjw
 MDThtSoOlScSV94DnATF3xFMC1adkpEtkELfI9bwnPWI4u1dZg8tj82O5RoSOayXIeD/8byhba
 XUNqbGcljYoqGWSLj9VGkWAOREfGdKvWik5XKom6RFKn3gQQBmJxIfYWm6SLKlY7X6sktOdonv
 FqWXPee6cysQKnrbnqjQctVrRdjwF7bhrP5owmq0brEVXcloBypXUkS9du7J9fKq2h+3bKCe/S
 cL8=
X-IronPort-AV: E=Sophos;i="5.64,329,1559545200"; d="scan'208";a="43382572"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 31 Jul 2019 02:03:40 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 31 Jul 2019 02:03:39 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 31 Jul 2019 02:03:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lqh5WQSYSqCtfKaKHToN1ekb5VyFGfZasmR8DbsTcCkbuLNBSJQcJ9P5flUBXca5jRZ9fu6EErVG/5OLtHAMPk8KF6PGY+WplkbTWxCOoTFiNLwzT+LboTgY5uriI6MdMWyBgokBh1HQJYpLG7U6RHyGJFNEsT7IAiAq8FrMcrmCbW+3yV9+jwIYrgjiXxSyoD8iE0PVRFP7VC616LKur0dJDKPNzSovc23SMo8eOyIguMkHHSfy67EUch54yQySbwWqlUVBOsEaJ+SeK8csmqdBq6BpUlCK6s4bBflqICLBTKWgfUIUeaFizoOLnfx7cTE1rlawwYbAum65tl1bIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8k84iELptp/wzkjhatngTTzkW2T3oIdvRNpk5YjEAzw=;
 b=aBng1ZgN2TGWBpdvVUUsWEmq7P7ndqASv89T4SdMqG8T6bzlfO8Ac7vv/yVKpwik9ezJXyEmrRYgIIx9qbla4TsJ/ZI+MzIuOba8BoG4N5HuAcd3w4cB6rRhUq10xH/kFNGFkiaHNU+4T9DYOIGW8hsdgzBV4dPZPLDNEL1q3yY/EUrjESl6eJ3SdpvRGwesVL2SqKbVYrVRUxo+o7bmnYvuV20QwQhPlo2fjEy1CYdKYeUm0wMEly4lEVho7n8Azkx39zr+qiqAeKU0PfaHb+i3Fr/dgJm4Jc8faLucnA6Hgz346NUV/4DR/y7k0sd3gH3JPHSmrk0QT/TxSBsKOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8k84iELptp/wzkjhatngTTzkW2T3oIdvRNpk5YjEAzw=;
 b=T0e8J5n5qCROYkt+WYxqZEp6GzVUYuq6AqQaDWORCznU39mxknOTYo19jYhrqXNuwNJY+VvQR/pdq6bwLIAQwa/FQ8U2E8QjlvQqvJSMURKaYm6JPRkBoBeQBFjVEBet+XrHGLTmYCp08BA0RPX8uC2Pgy76O6T1JVOS7KU96WQ=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2SPR01MB0050.namprd11.prod.outlook.com (10.255.239.221) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Wed, 31 Jul 2019 09:03:37 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::61d1:6408:89a2:8de5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::61d1:6408:89a2:8de5%2]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 09:03:37 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>, <vigneshr@ti.com>
Subject: [PATCH 6/7] mtd: spi-nor: Rework the SPI NOR lock/unlock logic
Thread-Topic: [PATCH 6/7] mtd: spi-nor: Rework the SPI NOR lock/unlock logic
Thread-Index: AQHVR37XrXJde/MfmUq32aDZ/X2NkQ==
Date: Wed, 31 Jul 2019 09:03:37 +0000
Message-ID: <20190731090315.26798-7-tudor.ambarus@microchip.com>
References: <20190731090315.26798-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190731090315.26798-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR03CA0070.eurprd03.prod.outlook.com
 (2603:10a6:803:50::41) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8aeab297-0a49-444c-1593-08d71595f963
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2SPR01MB0050; 
x-ms-traffictypediagnostic: MN2SPR01MB0050:
x-microsoft-antispam-prvs: <MN2SPR01MB00506D6D6DDA58F4A2ECDF7BF0DF0@MN2SPR01MB0050.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(39860400002)(366004)(346002)(396003)(136003)(189003)(199004)(6116002)(3846002)(50226002)(53936002)(36756003)(54906003)(7416002)(305945005)(8676002)(81166006)(107886003)(2906002)(81156014)(6436002)(316002)(26005)(66476007)(66946007)(64756008)(66446008)(66556008)(6486002)(68736007)(8936002)(6512007)(86362001)(5660300002)(25786009)(1076003)(110136005)(7736002)(186003)(4326008)(11346002)(446003)(102836004)(386003)(6506007)(256004)(2616005)(476003)(52116002)(99286004)(76176011)(478600001)(2501003)(66066001)(14454004)(14444005)(486006)(71190400001)(71200400001)(2201001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2SPR01MB0050;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: u+rdyAmL/YFOaWtj4kKgTkYejO3zacTA2O5UK6sXG++7hfSYoJC+2vbltmj+7kJznDuIZyj7NYkL1zjsmNlGs51eXxfCWPnoF/PV6jW3o/iriiBEZos3tVAd1aXPFi4ml/dV4HMOhiL1kZVvcCyU0acanw8NSwzW0Kf3pF4C0rw2wNZaPXZR4h8sJ084V9puU6NyiqAh1NWQsTJc0AfgICBp/fEHPk8KdCuaT3VDOUBb6A1d91LKTZHTJDpCPHOQrY7s02+QORweFZoOZMN6Y7RkFUGNXzzuDigfp2PP6+yXVVozbQrZmlP4vF2MpXME9YyN6XnSmhYbUwGe8QihheGAbbV9So29gbsz8pR9I06dGYcH6Yn+OOx//jweFzj0ZqiOAjQ9gN2oBPgtywH4DSlXEuoz+UH9++MPNBzBl1o=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8aeab297-0a49-444c-1593-08d71595f963
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 09:03:37.6296 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tudor.ambarus@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2SPR01MB0050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_020343_029521_ECD73FD7 
X-CRM114-Status: GOOD (  13.11  )
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
 boris.brezillon@bootlin.com, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com, computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Boris Brezillon <boris.brezillon@bootlin.com>

Move the locking hooks in a separate struct so that we have just
one field to update when we change the locking implementation.

stm_locking_ops, the legacy locking operations, can be overwritten
later on by implementing manufacturer specific default_init() hooks.

Signed-off-by: Boris Brezillon <boris.brezillon@bootlin.com>
[tudor.ambarus@microchip.com: use ->default_init() hook]
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 37 +++++++++++++++++++------------------
 include/linux/mtd/spi-nor.h   | 14 ++++++++++++++
 2 files changed, 33 insertions(+), 18 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index e35aae88d38b..95ca5dd96403 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1743,6 +1743,12 @@ static int stm_is_locked(struct spi_nor *nor, loff_t ofs, uint64_t len)
 	return stm_is_locked_sr(nor, ofs, len, status);
 }
 
+static const struct spi_nor_locking_ops stm_locking_ops = {
+	.lock = stm_lock,
+	.unlock = stm_unlock,
+	.is_locked = stm_is_locked,
+};
+
 static int spi_nor_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 {
 	struct spi_nor *nor = mtd_to_spi_nor(mtd);
@@ -1752,7 +1758,7 @@ static int spi_nor_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 	if (ret)
 		return ret;
 
-	ret = nor->flash_lock(nor, ofs, len);
+	ret = nor->locking_ops->lock(nor, ofs, len);
 
 	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_UNLOCK);
 	return ret;
@@ -1767,7 +1773,7 @@ static int spi_nor_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 	if (ret)
 		return ret;
 
-	ret = nor->flash_unlock(nor, ofs, len);
+	ret = nor->locking_ops->unlock(nor, ofs, len);
 
 	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_LOCK);
 	return ret;
@@ -1782,7 +1788,7 @@ static int spi_nor_is_locked(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 	if (ret)
 		return ret;
 
-	ret = nor->flash_is_locked(nor, ofs, len);
+	ret = nor->locking_ops->is_locked(nor, ofs, len);
 
 	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_LOCK);
 	return ret;
@@ -4805,6 +4811,10 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	nor->quad_enable = spansion_quad_enable;
 	nor->set_4byte = spansion_set_4byte;
 
+	/* Default locking operations. */
+	if (info->flags & SPI_NOR_HAS_LOCK)
+		nor->locking_ops = &stm_locking_ops;
+
 	/* Init flash parameters based on flash_info struct and SFDP */
 	spi_nor_init_params(nor, &params);
 
@@ -4819,21 +4829,6 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	mtd->_read = spi_nor_read;
 	mtd->_resume = spi_nor_resume;
 
-	/* NOR protection support for STmicro/Micron chips and similar */
-	if (JEDEC_MFR(info) == SNOR_MFR_ST ||
-	    JEDEC_MFR(info) == SNOR_MFR_MICRON ||
-	    info->flags & SPI_NOR_HAS_LOCK) {
-		nor->flash_lock = stm_lock;
-		nor->flash_unlock = stm_unlock;
-		nor->flash_is_locked = stm_is_locked;
-	}
-
-	if (nor->flash_lock && nor->flash_unlock && nor->flash_is_locked) {
-		mtd->_lock = spi_nor_lock;
-		mtd->_unlock = spi_nor_unlock;
-		mtd->_is_locked = spi_nor_is_locked;
-	}
-
 	/* sst nor chips use AAI word program */
 	if (info->flags & SST_WRITE)
 		mtd->_write = sst_write;
@@ -4874,6 +4869,12 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	if (info->flags & SPI_NOR_NO_FR)
 		params.hwcaps.mask &= ~SNOR_HWCAPS_READ_FAST;
 
+	if (nor->locking_ops) {
+		mtd->_lock = spi_nor_lock;
+		mtd->_unlock = spi_nor_unlock;
+		mtd->_is_locked = spi_nor_is_locked;
+	}
+
 	/*
 	 * Configure the SPI memory:
 	 * - select op codes for (Fast) Read, Page Program and Sector Erase.
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index a434ab7a53e6..bd68ec5a10e7 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -425,9 +425,23 @@ struct spi_nor {
 	int (*set_4byte)(struct spi_nor *nor, bool enable);
 	int (*clear_sr_bp)(struct spi_nor *nor);
 
+	const struct spi_nor_locking_ops *locking_ops;
+
 	void *priv;
 };
 
+/**
+ * struct spi_nor_locking_ops - SPI NOR locking methods
+ * @lock: lock a region of the SPI NOR
+ * @unlock: unlock a region of the SPI NOR
+ * @is_locked: check if a region of the SPI NOR is completely locked
+ */
+struct spi_nor_locking_ops {
+	int (*lock)(struct spi_nor *nor, loff_t ofs, uint64_t len);
+	int (*unlock)(struct spi_nor *nor, loff_t ofs, uint64_t len);
+	int (*is_locked)(struct spi_nor *nor, loff_t ofs, uint64_t len);
+};
+
 static u64 __maybe_unused
 spi_nor_region_is_last(const struct spi_nor_erase_region *region)
 {
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
