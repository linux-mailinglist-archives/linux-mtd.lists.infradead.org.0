Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 875F8E8733
	for <lists+linux-mtd@lfdr.de>; Tue, 29 Oct 2019 12:33:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Qa7MwzxdluDdTbFzn85LD8cbvL02K1qM+hWXzUPFq4=; b=BgKQNw4a+I1y9Z
	ft+AvbAUjokLqsaEMwARv7YLZBEAUAE5mYqtMb+d7GzLU9kumiA9bwAYE9NIUdLBn6Mv16wjGX8jC
	d6t9b1srl+feZoxm6ztnoIC4AnLZBpn8usHSeKqh2lrEAl4w69f9yzpA6yIvyL7hXoTTaiWI+GKFF
	SlCG88m5xhgYRFBbANKjZF6PtCplNl7+uct9SYYN0vbSFIYzja+/uHbKENqBNEQSbY1yx1ancmj3L
	p/P4YziITlGCp5BqETB4Px8KSyZTghO5+a3ipfXPYVx8HZ347RkVsnqHMG6S6M0Z8nTaPUL4kd08e
	yFL+aU4MhZ+ZWVGB9Fbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPPkE-0003n5-Pw; Tue, 29 Oct 2019 11:33:02 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPPk3-00038h-PP
 for linux-mtd@bombadil.infradead.org; Tue, 29 Oct 2019 11:32:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UpdSYef8E04tPDC3+zcUx/dCU2yruWTItfnY0NZKbqY=; b=H/OGHMJCclQLHVQbZ7ssg4ucWr
 2iV0bI7WVKkRRv+qGDvcVMEqo6gySl3FEJ6AH3yhojJoeoEm1ZSGVzX4ZQB/w7m/ci5E9WJxCYv44
 3gwq9bXXqkMwXJByxKHoZkkBmiRYxYQX3WFtrMN7DUXnOJnL4UIzf997ErCQJ5rtW7g9AX6Bsl+s0
 jMppSbHO0v/d1w1U+zEDsF9MLoGFWTuQ18cf3kzMNC/qiaTrm2XSILp0wbp3BlcVIPnnBcLSQM9nP
 9G6mCEWevmoh9gh5WY0CMhZUDzqrg5A2p6FziKrHUWBuOvj7+NBa+gAkVzTkaQxfBL0eGK/hopODM
 u4h5bbrg==;
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPPVc-0008P9-WC
 for linux-mtd@lists.infradead.org; Tue, 29 Oct 2019 11:18:01 +0000
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
IronPort-SDR: 2Aa3+vcR1weFThEsYEPva8W1jAO3p17EVdcgJYYNjq6Y/k4pPC8nrYk7lPDot5fVq7IMjD20j/
 r/yGfrC3nMjB1Khr0NJeWEPeNNqDZX7F0+05NxELf2TnT2tof4yYivALakCyE2jZCW50Pqp0Xs
 ceq5xYH7ZKPVyiMp74v9Tx/u95h7zkaq2xVYN0FxqUer9WrTeri3S59BzBf9DSu9/L137HjyuX
 Wr4pSpb+LZdmJNPFv/k/gmteZD19iRPb9AZPcnBThiEf60VA4vjYm6KlxaomPObgIIUV8E3kaC
 lcM=
X-IronPort-AV: E=Sophos;i="5.68,243,1569308400"; d="scan'208";a="53323572"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 29 Oct 2019 04:17:22 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 29 Oct 2019 04:17:22 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 29 Oct 2019 04:17:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FRX/bY2BXrdLB7iEiJ66bD55eMDJ04OPfqvE/jlvn9NHLQjh+r4txI3Nt/0TQtdLZT53c1zzf3VYUYAKx9I5SbyoF+oMYDd1hbr3fI5OCjRhNCscy0nw534pBF/zhc42XhvjVtokMx4tsveD19mQxjt61NI7yZGaCn+YomPqi9k9EZrlHxIeQn665ocvZ6IkBBrttScleSho5Fx1e/nzoV9ufrfYhA2XIC5fFJFWPkYjAWtb+c3yLX5e0bos43kYzb11a6xCrfbBz5kkgeF4zPC9qDSfBv5SuhlL+AperNX0MCanGmXWkom7kv//UG0fSrfXuTEHGjr47FP2PoPfTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UpdSYef8E04tPDC3+zcUx/dCU2yruWTItfnY0NZKbqY=;
 b=duu7RMHfCt0Sgbynn8NKykfyqIC06zPEexBu2xFVaz4gqJIMtjf5QM85PKjFzpLQIAn4vFAGXOx2Y/HRQo1q1hrsrh/otMbaHCzw2EELnm9NXmUWsXtLkOrU+KoCQwFZOuXpWttAWvX1iw8YRH6KafSSTPYEUxcKONBtIjbEBujq+czSQz6TxKBEhkE3SjjuVzzsupfbcW+dl+YipCYX+gygdsLleikal8FM+e2vLZHtZqOU98befCBhG6EWpWgCZALFFHEF4m8wtNwO9RAAob7BzvSFycS12O3fxXF49cETy3gmkQVVcuQ7JeX/pFn4p/hNu9hrhWElu3cLeETg4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UpdSYef8E04tPDC3+zcUx/dCU2yruWTItfnY0NZKbqY=;
 b=skaH9s+SkWUfoYP5t0nwBUBIhoOe9RFFODc8Xg+0Uwl3ij9UgKD1a/f02qhdjk5r06wi1ycIgTk5rab7fYhxiHV3iwQT9qA9QYk9VnR8A9mZB8jkppmYTByPxWFCioMCmfm2Z1NwlRxgJ7qCDK6WyoBFyoKefDA28iFW7p+d5AY=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3712.namprd11.prod.outlook.com (20.178.253.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Tue, 29 Oct 2019 11:17:20 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457%5]) with mapi id 15.20.2387.027; Tue, 29 Oct 2019
 11:17:20 +0000
From: <Tudor.Ambarus@microchip.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>,
 <boris.brezillon@collabora.com>
Subject: [PATCH v3 20/32] mtd: spi-nor: Describe all the Reg Ops
Thread-Topic: [PATCH v3 20/32] mtd: spi-nor: Describe all the Reg Ops
Thread-Index: AQHVjkpuLjmNwJLYKUK9J/AX9CybBg==
Date: Tue, 29 Oct 2019 11:17:20 +0000
Message-ID: <20191029111615.3706-21-tudor.ambarus@microchip.com>
References: <20191029111615.3706-1-tudor.ambarus@microchip.com>
In-Reply-To: <20191029111615.3706-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0376.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a3::28) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [83.166.207.93]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1bb5b6cb-550d-435a-b6cd-08d75c6190a3
x-ms-traffictypediagnostic: MN2PR11MB3712:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB37127AD5822C1FAF3D2DD6FFF0610@MN2PR11MB3712.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1002;
x-forefront-prvs: 0205EDCD76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(396003)(136003)(376002)(39860400002)(189003)(199004)(107886003)(6512007)(316002)(110136005)(4326008)(2201001)(305945005)(6436002)(54906003)(7736002)(2906002)(66946007)(66476007)(66556008)(64756008)(66446008)(6116002)(3846002)(6486002)(5660300002)(36756003)(86362001)(11346002)(446003)(8936002)(81156014)(81166006)(50226002)(2616005)(186003)(476003)(256004)(478600001)(8676002)(25786009)(14454004)(486006)(66066001)(2501003)(26005)(99286004)(386003)(76176011)(52116002)(1076003)(102836004)(71200400001)(71190400001)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3712;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qhW51ppYvkiXt6dpT0XCZBE/ZWiuIHj8OtuUxf1uy04/5UX6zsftwZ0sUSvp24VOxi0T7Vfpd529DmxWRbNKp1SFhFHeCdlNWA0ZDJDMRhmD9q98pqhVpI+prx8pdQ7+ovrpw37xg5+ou3eZMDJdryGMtVKqbYJ6uNxJ0pVQ7YT6XPYBP5WUc/9CcmgPNCkWODlyEbhC3oXoQuJZqqgRpR8Ibjcny3jmGpXOaJN4ZqoU+70r18mvDxvW9lCcydcpJ2y16uo+xqvysOugh2/i8AEI5DYjtEwAxF27K3sLYgSKoURurtLwZqiOjVkLJJmDjRHBCUy9EqPosBinTr7pE1hAJWDJW6UUhSOIZF9z7Bsl/pz5JKHOJJa/kTdn1SVoWJq3BgXU/+nvw1lQzya9ch6f+6+gu6FVB4ydCF4p8Gccm2A/j0I734beOE6NBuZJ
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bb5b6cb-550d-435a-b6cd-08d75c6190a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 11:17:20.6174 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F5ayPTmfPwny9u3O4Q5YQFi+G6FmTkwkWnx4UsvKUFkAyaBbhtlyjYQiqQXT4EgDNyGABgcC0NtLruET2aJmmNIkHvypEfSDh5gRObaMf7E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3712
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_111757_479014_04C9EB7A 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.3 points, 5.0 required)
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 Tudor.Ambarus@microchip.com
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
index 823b9b06d34d..6102318cfd03 100644
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
 		dev_err(nor->dev, "error %d clearing SR\n", ret);
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
 	int ret = spi_nor_read_sr(nor, &nor->bouncebuf[0]);
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
 		dev_err(nor->dev, "error %d clearing FSR\n", ret);
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
 	int ret = spi_nor_read_fsr(nor, &nor->bouncebuf[0]);
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
