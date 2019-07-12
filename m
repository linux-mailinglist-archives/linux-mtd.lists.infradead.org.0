Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E587B66C55
	for <lists+linux-mtd@lfdr.de>; Fri, 12 Jul 2019 14:15:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e1d4fxzd5vMNPHg8Q+aXtjML5ejf6eFfaOkZ4YE1msU=; b=FojZo9k5Kfn06M
	DdZt+vpZW7Gt4Uzk1ROtXD2ko6mKxKRXF3JJ0zvaPSj2nj9hB+pM02g6qVoDPheJYBAN5eLTjm5vT
	c5n/YX1WkOJNNvv4pPQk8ymocukyCdOxMIUhBxhb0ZpfHwtjPhPZbHh87YYNaKS6NlzCIdyJzyJWa
	lxNzGvEvSIASJdlfOfc5ydxECEKxaiu/7pBWn52XQ3AT037Ax2QXWG4z0Ik5DzEJv7Y9SG9UDCV2K
	8RJW2hSGgL/jR7BDH8O1Ed+gX7dz07szs6jAmGc8jFspCJ2aIJz8Ux4gnRAwJ0P5vPecFH/kcmFf6
	iu5Cd2Ge5+1czLL0yhLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hluRz-00005J-2k; Fri, 12 Jul 2019 12:14:55 +0000
Received: from mail-eopbgr150097.outbound.protection.outlook.com
 ([40.107.15.97] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hluRq-0008Vd-13
 for linux-mtd@lists.infradead.org; Fri, 12 Jul 2019 12:14:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hLxvq5RBYw8EnSVwzqahxfitCqHsA0gIaJvOGMCfYW/P4Rku52wLkfWL383I5JTLFhfg+sI4FrThCHj+Hbk+lAav2JPXInbL+ctZUOLQJ4HFKvLzRXZRqJaLdnHtgWjVsAO4ftGvdvt7chBjn65tIt7qj6PYll0k7qyOyj6POHYOarbMfR/JpomVnFXtVvD2lVzbay+4clUDErfVYIi4cM50gYi9jUFQaBMXXKZy3ato6dkTgTIiO+SRz2R8rcrK7W/V0B1dxecIHXK661D3zw80zyAq/HrAWBDWyfaVoZ6vhZunkDABUInv1Th6teb9YZSdbA11n5CngRzil7eN0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WvqfdTOR7s/RRACRDnnOr5JEVeFUudK4SKjN/V7fbqs=;
 b=Ys4MVS/UowU7555q39ieAc/KhCMef8ATKmrIdpTbgVZVeQxTJWZPo7eCF8aSCXdUpIEp23g1rUYUyW/Jwn855Oh0ec4dCKnoA8t8B5gbxXaxVPm2pm9bMzwagCPZvluwiuyOv+IJss1OeRjFRo9ZL3ZykeNZIkJ9jW8TafjYgrcfyEGOEPF+qdPhBYgJiYbd1CevXy247YLeM54ZuaFRBJj0JpXy9krRd8Es1JsxV1m2/jUB/FV5g8Wo4QLWomblwTP64fiLgxTYjKobqNIOFYr8KhMGr3zJ7w52UsCULpWFAZ+jK6lFUbaus+EkAZuQ0Xi5zR6fwOKvEvmR/EuP+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nokia.com;dmarc=pass action=none
 header.from=nokia.com;dkim=pass header.d=nokia.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nokia.onmicrosoft.com; 
 s=selector1-nokia-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WvqfdTOR7s/RRACRDnnOr5JEVeFUudK4SKjN/V7fbqs=;
 b=ml6EdFoxX70i3elmFFcCxR4iGSMcBtze0gMQ2eOam8gqemXXJ+Xf+gCMCprbOkfOK+FyYwJDg4N2Tn2njc9S2YV17MVJcNT4SkFR8tCa4huIr+/ySH+jt9QMJboECV2pQ6JrqSCgOsVDXGv5tPKghE2+epEI+jjCTgBBmTQTQps=
Received: from AM0PR07MB4082.eurprd07.prod.outlook.com (52.134.83.30) by
 AM0PR07MB6259.eurprd07.prod.outlook.com (10.186.174.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.7; Fri, 12 Jul 2019 12:14:40 +0000
Received: from AM0PR07MB4082.eurprd07.prod.outlook.com
 ([fe80::d0df:69b3:5529:84c9]) by AM0PR07MB4082.eurprd07.prod.outlook.com
 ([fe80::d0df:69b3:5529:84c9%7]) with mapi id 15.20.2094.007; Fri, 12 Jul 2019
 12:14:39 +0000
From: "Sverdlin, Alexander (Nokia - DE/Ulm)" <alexander.sverdlin@nokia.com>
To: "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
Subject: [PATCH] spi-nor: intel-spi: Whitelist 4B read commands
Thread-Topic: [PATCH] spi-nor: intel-spi: Whitelist 4B read commands
Thread-Index: AQHVOKtgwqaYRthXW0GNL3NvkrzY9Q==
Date: Fri, 12 Jul 2019 12:14:39 +0000
Message-ID: <20190712121401.28578-1-alexander.sverdlin@nokia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [131.228.32.181]
x-mailer: git-send-email 2.22.0
x-clientproxiedby: HE1PR0501CA0003.eurprd05.prod.outlook.com
 (2603:10a6:3:1a::13) To AM0PR07MB4082.eurprd07.prod.outlook.com
 (2603:10a6:208:47::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=alexander.sverdlin@nokia.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e553e063-6dd1-481d-c618-08d706c2835d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR07MB6259; 
x-ms-traffictypediagnostic: AM0PR07MB6259:
x-microsoft-antispam-prvs: <AM0PR07MB62592DAC3E3736CC32FEA2B788F20@AM0PR07MB6259.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 00963989E5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(346002)(366004)(136003)(39860400002)(376002)(199004)(189003)(8676002)(81156014)(81166006)(36756003)(66446008)(26005)(305945005)(102836004)(64756008)(66476007)(99286004)(66556008)(54906003)(4326008)(186003)(2351001)(53936002)(2501003)(316002)(6436002)(66946007)(8936002)(50226002)(7736002)(86362001)(5640700003)(2906002)(3846002)(476003)(2616005)(66066001)(25786009)(6116002)(478600001)(71200400001)(1076003)(256004)(6506007)(386003)(6486002)(52116002)(6916009)(68736007)(14454004)(5660300002)(486006)(71190400001)(6512007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM0PR07MB6259;
 H:AM0PR07MB4082.eurprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nokia.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Rv3BFJXb4kdcIB/frjKemb6ZB+DfZuO8nIQ6d571kdG6iIUK49dgPNAdZS5NhmHsrq0qceTBg/cvmJlN1Qak7csAOJDRgvl7kz58suAG4KMA6l4EQZPQup6E74a0M9gYxsn9DOm9FzlaYpFKp8kJsYHf3/jDRGK9ZlZCs9J9IrUWpRq0fR3Oa7Zjp/u1xJv3Gi5wsfBGiq1Wb1VtBn11rn4rRm8W7oBNf047orlEdOi1oysteMuQOSzb57Wm5xh0Ed3y+4QaDEIdddi79KdVXbO1MxWGW1Wshsemd+yJbo3WyAFutwiE1LplZh73/sy+a3VJpc+ztF7102HxNaCiFa7ADiYstP5qoem/3MixPbwMi3O5LtxhJcqctP1MP0L93qnb5xJSwLMEJEorlqZ4E7ZJwtiEOYsUBDkw+8uxsus=
MIME-Version: 1.0
X-OriginatorOrg: nokia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e553e063-6dd1-481d-c618-08d706c2835d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2019 12:14:39.6555 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5d471751-9675-428d-917b-70f44f9630b0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: alexander.sverdlin@nokia.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR07MB6259
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_051446_156636_DC5B27CB 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.97 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Marek Vasut <marek.vasut@gmail.com>,
 "Sverdlin, Alexander \(Nokia - DE/Ulm\)" <alexander.sverdlin@nokia.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Alexander Sverdlin <alexander.sverdlin@nokia.com>

spi-nor.c issues 4B commands for some Flash chips bigger than 16Mbytes.
Xeon(R) D-1500 documentation mentions its Integrated PCH Logic supports
Flash chips up to 64Mbytes.
D-1500 Integrated PCH documenation however has inconsistencies regarding
FADDR register width and says nothing about particular commands issued
to support 64Mbytes of Flash.

Nevetheless the tests on Xeon(R) CPU D-1548 with 512Mbit Flash chips
Macronix MX25L51245G and Micron MT25QL512A showed that erase, write and
read operations work just fine after SPINOR_OP_READ_4B and
SPINOR_OP_READ_FAST_4B are white-listed (currently only
SPINOR_OP_READ_FAST_4B is used and only for Macronix).

Signed-off-by: Alexander Sverdlin <alexander.sverdlin@nokia.com>
---
 drivers/mtd/spi-nor/intel-spi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mtd/spi-nor/intel-spi.c b/drivers/mtd/spi-nor/intel-spi.c
index 1ccf23f..43e55a2e 100644
--- a/drivers/mtd/spi-nor/intel-spi.c
+++ b/drivers/mtd/spi-nor/intel-spi.c
@@ -621,6 +621,8 @@ static ssize_t intel_spi_read(struct spi_nor *nor, loff_t from, size_t len,
 	switch (nor->read_opcode) {
 	case SPINOR_OP_READ:
 	case SPINOR_OP_READ_FAST:
+	case SPINOR_OP_READ_4B:
+	case SPINOR_OP_READ_FAST_4B:
 		break;
 	default:
 		return -EINVAL;
-- 
2.4.6


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
