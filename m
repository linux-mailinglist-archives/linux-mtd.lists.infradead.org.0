Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C88AECE6E
	for <lists+linux-mtd@lfdr.de>; Sat,  2 Nov 2019 12:26:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dSi2uHFjhcHMpjP5sMlMFyoRun8C7MtybYE62qMgNDE=; b=FpWOw/JCaz4kc/
	EwiiMSpsoGp9nSiDxkww/GIivJqTfpF+5KkoqP2Ts+FFlNOAANgi+PnKLSHlKiJ83iUC3rMCYTnOt
	F+aB3oUPsEPmut5ODbnmE6DJPu9Z3995uQho0nnMeaRi4Zkru5GfjR1tIv1OrPQovOQ1YkqtbX91A
	WC5XmXPu4qQZSp0jPhW1nYA9YniEB1QOpVw0elTTAMghusFYFYhyEnEwe/RDvb3mL8KPSbS4Dpb50
	C2O6rG2SuDuBNxC3lD03yG1htOa+jKDj2xH/S5wa1psTmHWSnMlLUCqYiB0/XQg4YjlgAe1WBKnV5
	av0jcBc10GRkhRanYABg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQrXn-0005Qk-LT; Sat, 02 Nov 2019 11:26:11 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQrVL-0002Gt-OL
 for linux-mtd@lists.infradead.org; Sat, 02 Nov 2019 11:23:41 +0000
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
IronPort-SDR: l9qh2G7aHzD5lUpZPKEVApEPSZLZtIXI8HDuALNojjTrhOlrB3hEc0ewBGHRqrcQ7fOxiAUIVW
 U6Nm9NxISI7XYG5LowqYUE3VwNkJhk9SnQ1TAIP3CFMzhiKf46P3LthFMRANT3AvTVvU9UGRfP
 /T9jjh/bi339dGojnXBuXNlL1RTv9PtmO9KqqFjopyYJUK1OV1gGMdSCHRoqfmSatVcs0VIFjJ
 vK2rmrdVlZW8Asi+tF4xVByDH/uGlO1bGdkdE9HqNtxTt1Q9MjU2eYV3p302gykI0SqNkyzaHq
 jns=
X-IronPort-AV: E=Sophos;i="5.68,259,1569308400"; d="scan'208";a="53900862"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Nov 2019 04:23:39 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 2 Nov 2019 04:23:39 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Sat, 2 Nov 2019 04:23:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hsA5Hls+0sIkzy8Ri77ZroNtnoeBfweT0GwjJV/Or3bZHW1FQgAfdyS8NHeEBjkI+Imce7TwOYqZQVgOg/I9mtEyQaLhOLhOWluqUv/BqYiP0ETwIy7SqtJSvzwFEKOc6eW/0JDM5nWAsMHID5BZDmrFwVX6Ob8GIBZDnZbogVvvRXiIOCeiajGbkHsvxvkq513zyGVVb3xZDLCP2NI5D3HTTIVksbBbSegQH4od7FrwLNsOnYP4uUAIwo7v/aZLQGWP+2ffxAgHLmiw0exB4aTOOfNO0IcIvhDwAYzd5XsZkdRbVswwHHbVOgRsyf3sK0gfrmi9KgkhiKFGXqw0WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gPTf8+2eyRTkTeOGzHF3vSL8DFBglAXqaEotFvcBqBo=;
 b=J4bC25i0S3kFX03rnQA1urhcHrrDPZiKpQHtM4NValibZsw5aAZ6DbB5fYZ2w6x1ghTCTGQGaVo1CWBzg2KN6GkguzF8Pd1Bh520JmgArrNzoQpU2SI/En/DT3MpmFqlW/wHVcVzb818wbmtMvSV2jcoU7yoTcl3evCMnP5pBNB+x+vKjDs81aHHNPBSYKtYlmV4rCwfS7JTm9DU2ZgJ3HSjmw0zzAz0iKalwpNn2nXr6fUP2pSY4yUQS0IyiTCLLvo+d+7780X/VPreYv2XzeJjGuRrEbc6eVKYp8v3qjc4NGDYtcOEDPgWC26NCZxUIUHlfGU8ewYKoRbeSC6I7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gPTf8+2eyRTkTeOGzHF3vSL8DFBglAXqaEotFvcBqBo=;
 b=EgumarlYzuBaOl1av+OYmQLD/OuMT6LN6roqiu5XxtLUOFWETWdrBkYl1DMkijQ//+j3js3J+Sq+DsitFo362WDj+MyRhV7wiGUJrhsEbCLIpj8KqK7HQJSWwQ9OSbfN8G0rdYNdgizqV6Vl0XiztTwzy9jdVU4XTd4T7KLkXek=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3711.namprd11.prod.outlook.com (20.178.254.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Sat, 2 Nov 2019 11:23:37 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457%5]) with mapi id 15.20.2408.018; Sat, 2 Nov 2019
 11:23:37 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <vigneshr@ti.com>
Subject: [PATCH v4 08/20] mtd: spi-nor: Describe all the Reg Ops
Thread-Topic: [PATCH v4 08/20] mtd: spi-nor: Describe all the Reg Ops
Thread-Index: AQHVkW/4uobJxhxvj0OhsNkYta+AXw==
Date: Sat, 2 Nov 2019 11:23:37 +0000
Message-ID: <20191102112316.20715-9-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 83f98348-660f-42a0-2e7f-08d75f871af8
x-ms-traffictypediagnostic: MN2PR11MB3711:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3711D9B0C6E86D44618F45A3F07D0@MN2PR11MB3711.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1002;
x-forefront-prvs: 0209425D0A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(39860400002)(346002)(376002)(396003)(189003)(199004)(64756008)(386003)(316002)(446003)(4326008)(5660300002)(81166006)(6506007)(2616005)(76176011)(81156014)(11346002)(110136005)(476003)(25786009)(54906003)(8936002)(86362001)(486006)(14454004)(8676002)(102836004)(26005)(66476007)(50226002)(2906002)(6116002)(1076003)(2501003)(7736002)(3846002)(99286004)(71200400001)(36756003)(71190400001)(66556008)(256004)(305945005)(6486002)(6436002)(66946007)(66066001)(6512007)(66446008)(478600001)(186003)(52116002)(107886003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3711;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hBWtIVAnaTJ9fpi8s4Ju+z1/C1CycsbxkYL4Ox7vgYe3zDybUB2/j4jKZ759DaaDA5rVuDXzYGWHLZAxhLriptvwdIaBzEiLcyLwC8YnKd3eUZDwYAOmzBpMzsqK2vdTgGxxmfGbhHsAlyKbIOi/hDqVwHu2WTQO3oohtDGaJZ2U1F4/X6ibcHO1cbQ96CK19LZdejeWZ7DDj39G3uOUc9l69xtTXrssNoJF8Z1DMcaQ4JpVsAaLpSRY5WPjJ4KG9D/iGGkVdcHs4m3AW4fBATvl5I535LBJGTbWPakTJgbxgXNyTAOSRR9nch9rAdcJiSZkXFixB3gNIb0TFloxvU74/y7HFB1Kgg3g/fF3D4SXDTv5yy80Ksb3gj9OOHHyHHDaDZpNNNPxQrNUNO+Dq86Wcg4yt3ADllz+A2d6x1sjwUMbdMlbNGl1MVQT8hds
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 83f98348-660f-42a0-2e7f-08d75f871af8
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2019 11:23:37.6609 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /do5NyL7JAMmWmIJafn0nJNv+2eoNHznURgwgPtecBSnKUTz/pd7HvpAs7cp+Oo5m2L+LyepkCXuUFTh62ISK3jyVe337TUhsFZw9QpZ6zU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3711
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_042339_864664_A2200503 
X-CRM114-Status: GOOD (  10.87  )
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

Document all the Register Operations.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 138 ++++++++++++++++++++++++++++++++++++++----
 1 file changed, 127 insertions(+), 11 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 857675a4e329..99a9a6aba41d 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -388,9 +388,11 @@ static ssize_t spi_nor_write_data(struct spi_nor *nor, loff_t to, size_t len,
 	return nor->controller_ops->write(nor, to, len, buf);
 }
 
-/*
- * Set write enable latch with Write Enable command.
- * Returns negative if error occurred.
+/**
+ * spi_nor_write_enable() - Set write enable latch with Write Enable command.
+ * @nor:	pointer to 'struct spi_nor'.
+ *
+ * Return: 0 on success, -errno otherwise.
  */
 static int spi_nor_write_enable(struct spi_nor *nor)
 {
@@ -415,8 +417,11 @@ static int spi_nor_write_enable(struct spi_nor *nor)
 	return ret;
 }
 
-/*
- * Send write disable instruction to the chip.
+/**
+ * spi_nor_write_disable() - Send Write Disable instruction to the chip.
+ * @nor:	pointer to 'struct spi_nor'.
+ *
+ * Return: 0 on success, -errno otherwise.
  */
 static int spi_nor_write_disable(struct spi_nor *nor)
 {
@@ -534,6 +539,14 @@ static int spi_nor_read_cr(struct spi_nor *nor, u8 *cr)
 	return ret;
 }
 
+/**
+ * macronix_set_4byte() - Set 4-byte address mode for Macronix flashes.
+ * @nor:	pointer to 'struct spi_nor'.
+ * @enable:	true to enter the 4-byte address mode, false to exit the 4-byte
+ *		address mode.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
 static int macronix_set_4byte(struct spi_nor *nor, bool enable)
 {
 	int ret;
@@ -562,6 +575,14 @@ static int macronix_set_4byte(struct spi_nor *nor, bool enable)
 	return ret;
 }
 
+/**
+ * st_micron_set_4byte() - Set 4-byte address mode for ST and Micron flashes.
+ * @nor:	pointer to 'struct spi_nor'.
+ * @enable:	true to enter the 4-byte address mode, false to exit the 4-byte
+ *		address mode.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
 static int st_micron_set_4byte(struct spi_nor *nor, bool enable)
 {
 	int ret;
@@ -577,6 +598,14 @@ static int st_micron_set_4byte(struct spi_nor *nor, bool enable)
 	return spi_nor_write_disable(nor);
 }
 
+/**
+ * spansion_set_4byte() - Set 4-byte address mode for Spansion flashes.
+ * @nor:	pointer to 'struct spi_nor'.
+ * @enable:	true to enter the 4-byte address mode, false to exit the 4-byte
+ *		address mode.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
 static int spansion_set_4byte(struct spi_nor *nor, bool enable)
 {
 	int ret;
@@ -602,6 +631,13 @@ static int spansion_set_4byte(struct spi_nor *nor, bool enable)
 	return ret;
 }
 
+/**
+ * spi_nor_write_ear() - Write Extended Address Register.
+ * @nor:	pointer to 'struct spi_nor'.
+ * @ear:	value to write to the Extended Address Register.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
 static int spi_nor_write_ear(struct spi_nor *nor, u8 ear)
 {
 	int ret;
@@ -627,6 +663,14 @@ static int spi_nor_write_ear(struct spi_nor *nor, u8 ear)
 	return ret;
 }
 
+/**
+ * winbond_set_4byte() - Set 4-byte address mode for Winbond flashes.
+ * @nor:	pointer to 'struct spi_nor'.
+ * @enable:	true to enter the 4-byte address mode, false to exit the 4-byte
+ *		address mode.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
 static int winbond_set_4byte(struct spi_nor *nor, bool enable)
 {
 	int ret;
@@ -651,6 +695,14 @@ static int winbond_set_4byte(struct spi_nor *nor, bool enable)
 	return spi_nor_write_disable(nor);
 }
 
+/**
+ * spi_nor_xread_sr() - Read the Status Register on S3AN flashes.
+ * @nor:	pointer to 'struct spi_nor'.
+ * @sr:		pointer to a DMA-able buffer where the value of the
+ *              Status Register will be written.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
 static int spi_nor_xread_sr(struct spi_nor *nor, u8 *sr)
 {
 	int ret;
@@ -674,6 +726,13 @@ static int spi_nor_xread_sr(struct spi_nor *nor, u8 *sr)
 	return ret;
 }
 
+/**
+ * s3an_sr_ready() - Query the Status Register of the S3AN flash to see if the
+ * flash is ready for new commands.
+ * @nor:	pointer to 'struct spi_nor'.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
 static int s3an_sr_ready(struct spi_nor *nor)
 {
 	int ret;
@@ -685,6 +744,10 @@ static int s3an_sr_ready(struct spi_nor *nor)
 	return !!(nor->bouncebuf[0] & XSR_RDY);
 }
 
+/**
+ * spi_nor_clear_sr() - Clear the Status Register.
+ * @nor:	pointer to 'struct spi_nor'.
+ */
 static void spi_nor_clear_sr(struct spi_nor *nor)
 {
 	int ret;
@@ -706,6 +769,13 @@ static void spi_nor_clear_sr(struct spi_nor *nor)
 		dev_dbg(nor->dev, "error %d clearing SR\n", ret);
 }
 
+/**
+ * spi_nor_sr_ready() - Query the Status Register to see if the flash is ready
+ * for new commands.
+ * @nor:	pointer to 'struct spi_nor'.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
 static int spi_nor_sr_ready(struct spi_nor *nor)
 {
 	int ret = spi_nor_read_sr(nor, nor->bouncebuf);
@@ -727,6 +797,10 @@ static int spi_nor_sr_ready(struct spi_nor *nor)
 	return !(nor->bouncebuf[0] & SR_WIP);
 }
 
+/**
+ * spi_nor_clear_fsr() - Clear the Flag Status Register.
+ * @nor:	pointer to 'struct spi_nor'.
+ */
 static void spi_nor_clear_fsr(struct spi_nor *nor)
 {
 	int ret;
@@ -748,6 +822,13 @@ static void spi_nor_clear_fsr(struct spi_nor *nor)
 		dev_dbg(nor->dev, "error %d clearing FSR\n", ret);
 }
 
+/**
+ * spi_nor_fsr_ready() - Query the Flag Status Register to see if the flash is
+ * ready for new commands.
+ * @nor:	pointer to 'struct spi_nor'.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
 static int spi_nor_fsr_ready(struct spi_nor *nor)
 {
 	int ret = spi_nor_read_fsr(nor, nor->bouncebuf);
@@ -772,6 +853,12 @@ static int spi_nor_fsr_ready(struct spi_nor *nor)
 	return nor->bouncebuf[0] & FSR_READY;
 }
 
+/**
+ * spi_nor_ready() - Query the flash to see if it is ready for new commands.
+ * @nor:	pointer to 'struct spi_nor'.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
 static int spi_nor_ready(struct spi_nor *nor)
 {
 	int sr, fsr;
@@ -788,9 +875,13 @@ static int spi_nor_ready(struct spi_nor *nor)
 	return sr && fsr;
 }
 
-/*
- * Service routine to read status register until ready, or timeout occurs.
- * Returns non-zero if error.
+/**
+ * spi_nor_wait_till_ready_with_timeout() - Service routine to read the
+ * Status Register until ready, or timeout occurs.
+ * @nor:		pointer to "struct spi_nor".
+ * @timeout_jiffies:	jiffies to wait until timeout.
+ *
+ * Return: 0 on success, -errno otherwise.
  */
 static int spi_nor_wait_till_ready_with_timeout(struct spi_nor *nor,
 						unsigned long timeout_jiffies)
@@ -818,6 +909,13 @@ static int spi_nor_wait_till_ready_with_timeout(struct spi_nor *nor,
 	return -ETIMEDOUT;
 }
 
+/**
+ * spi_nor_wait_till_ready() - Wait for a predefined amount of time for the
+ * flash to be ready, or timeout occurs.
+ * @nor:	pointer to "struct spi_nor".
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
 static int spi_nor_wait_till_ready(struct spi_nor *nor)
 {
 	return spi_nor_wait_till_ready_with_timeout(nor,
@@ -880,6 +978,14 @@ static int spi_nor_write_sr_and_check(struct spi_nor *nor, u8 status_new,
 	return ((nor->bouncebuf[0] & mask) != (status_new & mask)) ? -EIO : 0;
 }
 
+/**
+ * spi_nor_write_sr2() - Write the Status Register 2 using the
+ * SPINOR_OP_WRSR2 (3eh) command.
+ * @nor:	pointer to 'struct spi_nor'.
+ * @sr2:	pointer to DMA-able buffer to write to the Status Register 2.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
 static int spi_nor_write_sr2(struct spi_nor *nor, const u8 *sr2)
 {
 	int ret;
@@ -909,6 +1015,15 @@ static int spi_nor_write_sr2(struct spi_nor *nor, const u8 *sr2)
 	return spi_nor_wait_till_ready(nor);
 }
 
+/**
+ * spi_nor_read_sr2() - Read the Status Register 2 using the
+ * SPINOR_OP_RDSR2 (3fh) command.
+ * @nor:	pointer to 'struct spi_nor'.
+ * @sr2:	pointer to DMA-able buffer where the value of the
+ *		Status Register 2 will be written.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
 static int spi_nor_read_sr2(struct spi_nor *nor, u8 *sr2)
 {
 	int ret;
@@ -932,10 +1047,11 @@ static int spi_nor_read_sr2(struct spi_nor *nor, u8 *sr2)
 	return ret;
 }
 
-/*
- * Erase the whole flash memory
+/**
+ * spi_nor_erase_chip() - Erase the entire flash memory.
+ * @nor:	pointer to 'struct spi_nor'.
  *
- * Returns 0 if successful, non-zero otherwise.
+ * Return: 0 on success, -errno otherwise.
  */
 static int spi_nor_erase_chip(struct spi_nor *nor)
 {
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
