Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8144ECE6B
	for <lists+linux-mtd@lfdr.de>; Sat,  2 Nov 2019 12:25:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ogqVvCOA3p7HPun0MI4e3U+X+lGgOat0YoPZDQT1Y0k=; b=kNf5GObcE8rxJM
	dnZa+P2anbsaIOllNry1A+M5hvDLYTdlMzePdPff7+R8+g6oGtbcggqp+x/A2g9iptiXNjoiOQFbV
	vRWYkDeTAyooUC4D7Ipw9zt9wRplhUwIAz+L7Cg0hNkFPmVvbSrHI7qKnI9H73crsqIhk+BJcZRs8
	QwHC4EhSEVpC66ZEvAwhCZ9nh8bd2V24vEzMoDw5pEukwy7g7vZvMIXALAyLXbJ4VOmUYi0rYGikl
	3Y0IwNcmb1QV962dgMFd7t354d+TGAikPHgFggpMO3A2dqgLMQ52JHjiK7XPR8kxR8iFb9fMa82yx
	aLidjYP5W5x6mtJKinSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQrWz-0003Tw-Vh; Sat, 02 Nov 2019 11:25:22 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQrVH-0002AD-MM
 for linux-mtd@lists.infradead.org; Sat, 02 Nov 2019 11:23:37 +0000
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
IronPort-SDR: QZLy0phm7UTZWNSBqRPii3WNDqFAf8eFO1uAGZQH3YpYrp3obM5SWpwR+O2pzBDyWRtM1Gayy/
 Pe+UxoEVTAbvVr6EzcnJyDJWusqx2Dg9PvXYQai9cc/Btxk13VXeNdIvcu6KVoMKJzs14YjoC5
 rsWf87uNtgtdXVSbHHFcYGTxryZBXW9mwkLuEbIYuuIrh752Eo4S1r/DTkpbd6B9GfF8iHneAr
 h+PiMlI4Jnc9Q9FaTHD40eSUr1T4nSUAxZ23yLcKywgjcocMfbDFw6YtWWk8ht8VI+hCh06ghn
 vQ4=
X-IronPort-AV: E=Sophos;i="5.68,259,1569308400"; d="scan'208";a="55071964"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Nov 2019 04:23:35 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 2 Nov 2019 04:23:35 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Sat, 2 Nov 2019 04:23:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EJsREzHID9jyrIlfUTmq9Iy5Uw79hGrpvI9qOmgbDnFaqY2q6Q7Q7558sOWLQb4aYl/of09E6WkkOJ9MMIr/duPhVdJQ+tIruph0YB6xkmY87Q3i9hJU+vqYR2w9KvJ50NaKTdycXHXEWGk2UQ62d/F/l/gYXaSrr/y8NT62r15BxVQjPuS9NEtZ5tt6FuWvV6RJ7qr/kdSL/ddFxWOYpjkmJnCEPr2PuF35NCCoYw6K4XEV6u7vgi6gB0/3Mjh9OwWml+MJWMAEAyvUEb2ieiyrTq5PHVKDoeAxqI9PdtUk3VKPi/siWZnQ97Qn9SgsbRlG/TzOdIaROuXNU6u+kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r0oJtNWxeqZi7Q36rQnaGNDfUrWbMaB7VcNj09aed38=;
 b=QG5D+6B4WJxBH3PHAj81RM5kj/Layl3pvI3pzBE7p9D0DJv7s1DCNmZMXO3mb/zDKoyvPC5EAjJfTNFDiIArpvM6Bgv3U8c25vAyTH3sF5MnDP9VbCiE6NDeqjeUZMggWekCXcm0OZhdhWRXAPg67B4qGZewQ/ZRAwoAsXJUT9Uust3bBei3v+/vlAYVt+fxPumgIDWFCi9CwPmy2Aq4unfNN/pZjEPqWFXoWknTmwcbPx+5fwQ36b03ndThU4sN5baQllhgCh/NKUbfXmL+6Wv7bmOca4w8CQTP1JlB0n6mmqDtM7x4zuR4XTT70HJnG+UuV+9+Jebbo38WGuQaJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r0oJtNWxeqZi7Q36rQnaGNDfUrWbMaB7VcNj09aed38=;
 b=r7WsTd+cm7vt12VPWKXKSVpBiFTBKXB/Pze283OKXVk2O+sir3wjl+ak/F8y+DngPmbKehFiuz8bkQPRXUjbuz/2CSsmapKQ4usbGE7X3uzW3FZtHJ8EaEorzpUqXujeW5QHrhjktWzuiyGHGQXAMjWM+r2UqOqr+9xRVXvwvww=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3711.namprd11.prod.outlook.com (20.178.254.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Sat, 2 Nov 2019 11:23:32 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457%5]) with mapi id 15.20.2408.018; Sat, 2 Nov 2019
 11:23:32 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <vigneshr@ti.com>
Subject: [PATCH v4 05/20] mtd: spi-nor: Void return type for
 spi_nor_clear_sr/fsr()
Thread-Topic: [PATCH v4 05/20] mtd: spi-nor: Void return type for
 spi_nor_clear_sr/fsr()
Thread-Index: AQHVkW/1/RZAzrYRzU611DjOTxXGFw==
Date: Sat, 2 Nov 2019 11:23:32 +0000
Message-ID: <20191102112316.20715-6-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: d8b7193a-e6b2-4507-f257-08d75f8717d6
x-ms-traffictypediagnostic: MN2PR11MB3711:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3711084819C1F9736BBF5A0CF07D0@MN2PR11MB3711.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1107;
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
x-microsoft-antispam-message-info: s9EuNY7+6Y2kJHynVf5hCkuXjLHmP8/tQduz9y0dAsYVtCfi3uh/c0AL58dSHaBSN+CT3BAHpuWfJkqqhlM46pY82ON2Ym9ZFk+s6Os6lN2fO95tqSfClt0pfQ10o1w6B6oqEmnktR2TUi6gLcLiqGP8E0E7JdcWuPlfiIcoiXlKkVJ6SYPuqclkV7qL0yHrwzCwi3WJyna/aROdy1FKd6INvTso1Jancl5P+LjHQHDuXNOiZz7iovPzopqr4q0MztSlJ2I3gNy/N8GppXanYzGCJZpsT0JEfJMlt5OVlbS8xxT3dp4P9NcED7KFFanRBEjZXeYcXIS8ZG/9QAiASXNTanxDIYUAlNXoKue7RMidAVE57CgBJbpJmJmg7ZTADId3I8WYWzQni3yRG8OGSLimpo+Gizj8XJeLKe66WShDOCh4+hkz9WUfxDC59yVS
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d8b7193a-e6b2-4507-f257-08d75f8717d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2019 11:23:32.4339 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sl9QxtyJzX07Duo2oMmFamdL1MAZckCbAjp4GG5hB7HijlVcMVenafyxkOMi/SszGZ9PktgDp3gOwIEtAY+QTltxuQKo0ci8s3KkOxtX9ck=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3711
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_042335_797908_E64A0599 
X-CRM114-Status: UNSURE (   7.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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

spi_nor_clear_sr() and spi_nor_clear_fsr() are called just in case
of errors. The callers didn't check their return value, make them
of type void.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 01842cd92126..db1bb2b536ee 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -714,7 +714,7 @@ static int s3an_sr_ready(struct spi_nor *nor)
 	return !!(nor->bouncebuf[0] & XSR_RDY);
 }
 
-static int spi_nor_clear_sr(struct spi_nor *nor)
+static void spi_nor_clear_sr(struct spi_nor *nor)
 {
 	int ret;
 
@@ -733,8 +733,6 @@ static int spi_nor_clear_sr(struct spi_nor *nor)
 
 	if (ret)
 		dev_dbg(nor->dev, "error %d clearing SR\n", ret);
-
-	return ret;
 }
 
 static int spi_nor_sr_ready(struct spi_nor *nor)
@@ -758,7 +756,7 @@ static int spi_nor_sr_ready(struct spi_nor *nor)
 	return !(nor->bouncebuf[0] & SR_WIP);
 }
 
-static int spi_nor_clear_fsr(struct spi_nor *nor)
+static void spi_nor_clear_fsr(struct spi_nor *nor)
 {
 	int ret;
 
@@ -777,8 +775,6 @@ static int spi_nor_clear_fsr(struct spi_nor *nor)
 
 	if (ret)
 		dev_dbg(nor->dev, "error %d clearing FSR\n", ret);
-
-	return ret;
 }
 
 static int spi_nor_fsr_ready(struct spi_nor *nor)
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
