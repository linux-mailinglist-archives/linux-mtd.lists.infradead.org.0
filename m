Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6066E86B8
	for <lists+linux-mtd@lfdr.de>; Tue, 29 Oct 2019 12:23:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FSWWMPbBXHOzkFgE4yGVgmgC90DpYLEAb6tlupACib8=; b=DspzLNsd1OAmVH
	12UXKTSSeIlM0wdba7uHnbDnoUVZNPyhljteKSE2D+MvDXfEizTUSFHmmrz3bK4PF0dBJui1fN4vh
	qvStgG6tie6JVFwETns16TpI4vxk7q/a2ESSr0w3tqVA4oiSGxcykJFr7K8Bp+LLUFcQyCYndKBwe
	l1vHdpG1sp9Qpu2xfR9eb6PTwOJzdUJ+rbOBvQDmYQuEYtJ9dEXRC7quIWy0gIg3guP4uKxmG5YRb
	sLwSkrs+ca/qM5ak/4Vmzg6Uqox88NUk0I5wfyr+2Nce8QpwOo0jnIRtAYlpw3M9nwa2Su/PaX611
	L5uaUlaQnROw+wsXgAgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPPb2-00019B-Dd; Tue, 29 Oct 2019 11:23:32 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPPVB-0002xQ-PD
 for linux-mtd@lists.infradead.org; Tue, 29 Oct 2019 11:17:31 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: oidpa1YA4tangmGVBQCjLfeEk4Sksp3GxMesfEwiPKasmaBtk5+HYhCBMxY9YbMsLBkdkJb6yT
 ZkfGwYjyJZ1Jv3JllX372D7/FkWrBLN1w9Y7rL6/HebOxFkZKoscDTh897Z+w072JW9z7DzE9A
 Kjo2cD5agZVX1wuPBgLAZjKHO/b9gNHe/xNqND/mHxsCNs+uSabTgw6wXp9qaT2p76L7tmYjgP
 E3FV/A4JvcXVcDKObDmlSwFhYtpOF27wqHtnb7vwT9UPoUNp8OrSxWBLGSB4mxn3tl4zx7rRll
 EGc=
X-IronPort-AV: E=Sophos;i="5.68,243,1569308400"; d="scan'208";a="54794602"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 29 Oct 2019 04:17:28 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 29 Oct 2019 04:17:29 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 29 Oct 2019 04:17:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QcBY5sWqloq99ThFp62cbbTxBJITg4/uzAtekfyRF/xWZNPsKBYLeO1cla3ZBqKXZmgcU6VWIZaxBBO2PcPbvzMk6XMGttH+cEQKlZbdg20kLGUQ97Q7Sl6byEKuTKcvIG4yllJW+KVgm1jv5zQX2KhX0/Lxvckmtg8ukD/TkXxaUzJnZrWG0MIt1tdGWFcml53B4g/h+RQKbOiQwssFZXNzc55RqLBK0BvooRFjwOsXF284v1BVCevBIdZMzNvGY1RXEv0/rH0qhQN1HnwzSV4JEmM3H66SLIhZCMJ1SBsrA0hnlfW4u4VTNGvTB9MzjUhZmTWTL9PY7dGs3xUGvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9k4g9Zzhyj987eYqr/qAPtxjE2no7Msao5MlhBkolbg=;
 b=Ma0DNQAKs5a/QtwCqbUa3b+6537LOY5hIMavdnn9gWx0PU+9sdNefpyFOBmdXI3lpUwAVOUX2mwOdugyEoCtYsvJCRGQo4+mZh2YXuQGEpGCVlXCFwHkUQ7RZ5TJz/3sz3EiApEQtpDHhnUTSdOuXAkMIOYiBuVeGpGgKMwk6cB0pKlKL8bNHSLniupcQSSkxtVsRhVUiM79g1/vNYwsvtkNisXuEuecBul0GxXRWx/4iPsoysx0TsAxlC8r0lUo8rFVdBVAce8hXbFqlLQlKr909jViW3P8Xai7JP5f1bKUnvyZ5vnBOAuy5ymcPqj3ICWlXdSYSZq1fjPyOo2sIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9k4g9Zzhyj987eYqr/qAPtxjE2no7Msao5MlhBkolbg=;
 b=BRYKOoFqUvVWuB07sXNnyhK9pMy3oxOb2SdtDsoAgYuTwR4ioIc832mhO2sw/IY976eFb5dCfC7egRrCVhlSx7dXWQ98V0aY+GFrzPccmoIzvcDcEHY1Wt1+uJnl1hlEvHM1T2b8P6oVIezDOSbIC9HXj504hdQ0PBgmenQtKnk=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3823.namprd11.prod.outlook.com (20.178.254.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Tue, 29 Oct 2019 11:17:27 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457%5]) with mapi id 15.20.2387.027; Tue, 29 Oct 2019
 11:17:27 +0000
From: <Tudor.Ambarus@microchip.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>,
 <boris.brezillon@collabora.com>
Subject: [PATCH v3 24/32] mtd: spi-nor: Print error message when the read back
 test fails
Thread-Topic: [PATCH v3 24/32] mtd: spi-nor: Print error message when the read
 back test fails
Thread-Index: AQHVjkpyLds+N6zyek6FFtmFwXB1pA==
Date: Tue, 29 Oct 2019 11:17:27 +0000
Message-ID: <20191029111615.3706-25-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: c56aced4-1365-444e-9847-08d75c6194ac
x-ms-traffictypediagnostic: MN2PR11MB3823:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3823D1EC4F1D85569FA406C6F0610@MN2PR11MB3823.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:813;
x-forefront-prvs: 0205EDCD76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(346002)(136003)(376002)(396003)(189003)(199004)(478600001)(8676002)(4326008)(8936002)(4744005)(66066001)(14454004)(36756003)(6512007)(107886003)(86362001)(11346002)(2616005)(476003)(486006)(6436002)(1076003)(2201001)(71200400001)(71190400001)(446003)(81156014)(81166006)(6486002)(50226002)(99286004)(66946007)(386003)(316002)(52116002)(6506007)(102836004)(76176011)(26005)(2501003)(305945005)(186003)(6116002)(110136005)(25786009)(2906002)(14444005)(256004)(54906003)(3846002)(64756008)(66446008)(66556008)(66476007)(5660300002)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3823;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: S3QPxWLnrdPUzyvap4mPOAxo7SSH/jfGyeIYPwV9DQslYBhEBdBXSbTCoflRepLOyT15rLTEVc+scXadC2a4PmA3g63tzypebspisqgEuYKq3JLT7ACF1dzbQ+GffCK3pRc0Gt3qHK9I4ToZ/yPTJQVFloGnx7bbMVPxhmdy1DGUuZwE2iCYvKZLpvS/kwqWxFh140kiChNk2whkOXh1nWDhJ5Na9J3TIOL9wqNFXsjP7B/zLosDkkrGULSUxHg7ApKXcJDGmIAsc/JzO5NLgHhXHRLGckKAz6iRlv9o3hqvAovU2ovsaph+LjaaD+heBSjcVW3XTUu2tIGtWwg+DB5r1RQJAViV4QHYdKJZMs0NJdOZ63eFCeQQjT1DRR1WWQI1tiLxgGeGmSqKfhrso3qSxDc5eeB3VcN3xOqbEewbQX5hK9GNwGHjSuaLE5R9
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c56aced4-1365-444e-9847-08d75c6194ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 11:17:27.4335 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R4iLuVofgvu+29duWtgwp6wB5oOH54vIeKojhyq9LpDUmhg4mRhQoLmoJs4Pk5krsjEM4xh3KnpNaoKteHivadJdwGk62ZL/ZkPaY6reRjM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3823
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_041729_900224_D2B98035 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 Tudor.Ambarus@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

Demystify where the EIO error occurs.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 5b30fc73fdba..30ce83426266 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -974,7 +974,12 @@ static int spi_nor_write_sr_and_check(struct spi_nor *nor, u8 status_new)
 	if (ret)
 		return ret;
 
-	return (nor->bouncebuf[0] != status_new) ? -EIO : 0;
+	if (nor->bouncebuf[0] != status_new) {
+		dev_err(nor->dev, "SR: read back test failed\n");
+		return -EIO;
+	}
+
+	return 0;
 }
 
 /**
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
