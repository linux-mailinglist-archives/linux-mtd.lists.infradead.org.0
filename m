Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58144CC2D3
	for <lists+linux-mtd@lfdr.de>; Fri,  4 Oct 2019 20:41:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mB/gtSdWtoHwTRXulqZOVwnFlE+GmtTTx06YK1RWe5A=; b=MgiOeim4oDDB8w
	OixQmTscz21OVKjyZsEOjAVIFk6sMs1ygTYkAjFKZvJAYqhtDcAJHK+rwdWAQuiGKgnUQnp8ZkPOC
	tTZ6GLNAmN3FwWf1iWLPthPvi6Fo+YoNOgBrf74vNg91+7XCZTPo2gbetwp7XBqe0IZQYjBD8cOK5
	k5ylPrjUyIcelNjAQr7k+K9OmLMpAQG0jdQunAmQ17P2ThNYFBlJoXdQDwNnN4AXfnQbD+HreaWbj
	ME90LE/fR3Lm+4jTWoSA1W25r+a+5QvTcxMQDn5erNk0kPOk/D4JRk0/+ddlZPWovLHEbT9TwIrOT
	kOcbJsSkKdFy6jWWv/uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGSWP-0006Zs-8e; Fri, 04 Oct 2019 18:41:45 +0000
Received: from mail-eopbgr730112.outbound.protection.outlook.com
 ([40.107.73.112] helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGSWE-0006Z2-Hh
 for linux-mtd@lists.infradead.org; Fri, 04 Oct 2019 18:41:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QO9QlOq02HbX3tQyudjY6hc9aTsXk3c/CHoFhLR7F/JS/MEU8MEr4eXjJOOS9rqlXNmNCYLQsObyImUVNo/q7/hJ45nnyxpUygbXFAl2vGmctmULiKNsHJrbTZO+oimjSC1TMptVKQtWTqRt6VKO2bQesoqJYd4FsAOEm/ZBYN8DGh3pOHZE8lAS7zhcex3sTfxldmplFO3rpjpeTU3JyQqo4PxBBJ31uwdQ2lTUX3MiHjPHR5QdiLxRZVP+ngITNOSokeaY7R6RQe100QLloftQ3MX0pvScHzIaQIgofG2OEtV9B+A7o7y1flEcZ+aenwFFFfZ1vUgPf9myxQGmjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mGgVzgyvztRBbmvNoW1W8Z1YYeCrc7ykHM3fjtrCBuo=;
 b=RMXGDcY3Upc3yYCqtd2xORWrfM6Hla4lPfis37qlaPa8KNEhimUtEJtFW6hOxcUT0sS2GXj15XKgcTKdsyq2Qay8sorJBi1IEp+RC1be0d1IS2I+ysvG0QEKsCOf8jxj1JKPgx1RZ/SEB+7Wkto2r5u3ZSxeJpspQYtCClGPjT1AtiJ8XhJ5bSeWveUf5Z4Q2SAJv6zfv1iWvAW56fQ5EiuyKgyn1DOkRan8xcT4myKJvL4DfZrojk4lFTcRnZsqB7jDKKyLJ5MzbmYKcE8Mpm3vFjdBBeGTSzx37BU/2X/HQ564RZg5rTPhlf2YkHyuqos3teHljPrdXprstkWZ7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wavecomp.com; dmarc=pass action=none header.from=mips.com;
 dkim=pass header.d=mips.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wavecomp.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mGgVzgyvztRBbmvNoW1W8Z1YYeCrc7ykHM3fjtrCBuo=;
 b=XpkcFeRHCuGXOSAxw8cr1gGAYGIUzX9WNg4dCDHjjvadb44GOcC6MbLW/8m1FarHk+5nAa8hg7gaaIYTTb4N45CBTz0+x9F7yiSdsLaGL2qU1egUguAvky90qX8GEaDUd8FbTSw2BfvQb6Q0+ykfspjib01ptVKrf/Iwqjq2D0M=
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com (10.172.60.12) by
 MWHPR2201MB1709.namprd22.prod.outlook.com (10.164.206.151) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Fri, 4 Oct 2019 18:41:30 +0000
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::3050:9a38:9d8e:8033]) by MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::3050:9a38:9d8e:8033%5]) with mapi id 15.20.2327.023; Fri, 4 Oct 2019
 18:41:30 +0000
From: Paul Burton <paul.burton@mips.com>
To: "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
Subject: [PATCH v2] mtd: rawnand: au1550nd: Fix au_read_buf16() prototype
Thread-Topic: [PATCH v2] mtd: rawnand: au1550nd: Fix au_read_buf16() prototype
Thread-Index: AQHVeuNWynqdjimsiEObCQj6PnemqA==
Date: Fri, 4 Oct 2019 18:41:30 +0000
Message-ID: <20191004184115.851137-1-paul.burton@mips.com>
References: <20191004183706.850363-1-paul.burton@mips.com>
In-Reply-To: <20191004183706.850363-1-paul.burton@mips.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR01CA0034.prod.exchangelabs.com (2603:10b6:a02:80::47)
 To MWHPR2201MB1277.namprd22.prod.outlook.com
 (2603:10b6:301:18::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pburton@wavecomp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.23.0
x-originating-ip: [12.94.197.246]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0ad88d19-055c-4e53-9251-08d748fa78b0
x-ms-traffictypediagnostic: MWHPR2201MB1709:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR2201MB170998EB3CF1A199A9B0B9FBC19E0@MWHPR2201MB1709.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:913;
x-forefront-prvs: 018093A9B5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(39840400004)(376002)(346002)(396003)(136003)(199004)(189003)(42882007)(478600001)(26005)(2351001)(66446008)(66476007)(66946007)(66556008)(64756008)(52116002)(99286004)(6436002)(6512007)(6486002)(5640700003)(25786009)(14454004)(4326008)(1076003)(5660300002)(71200400001)(71190400001)(186003)(76176011)(446003)(386003)(8676002)(256004)(44832011)(476003)(2616005)(486006)(11346002)(14444005)(54906003)(316002)(7736002)(7416002)(305945005)(6116002)(2906002)(3846002)(81156014)(81166006)(8936002)(50226002)(6916009)(36756003)(2501003)(6506007)(102836004)(66066001)(21314003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR2201MB1709;
 H:MWHPR2201MB1277.namprd22.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jFMw5jBwYFCw5BeeYNRoS4Y0tCNmL/UP05VCBxzNynuNMQECdr0h2IAkiJpKvyH3NMPPF2xKb2QuNvRAmSKKHJv6fw+l/n+vFq3aAa1AjIaz9SCGeWJs7R85MswT6ysxZ0Ex+v4te4Ejk/TDcdyUBzdYQiYLw5hHtRnJs3Rwy2p6g+5ga7lVuDeDGemD6jy6vLlsGyUPVRp9N+P3HhB8+I4UUjEnA+LZLuZINsblfASALtH09uiGTkwMy5RlFpjdxSpVhcC3cC/trnLGSF6AWLGFD7kUDedhjgPIF4e3MiDe8+YBQtbLs6kVdrn3V12+t9t1tHBRRtwgLPTgtc4QBJhZqu7iFuyallrr1Z14MPmMDwpQM42TCD0APkacRmKNb1+27+HBBrSUpgqU7CTeRu8y8akQzHbBldTdOjFOWYM=
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ad88d19-055c-4e53-9251-08d748fa78b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2019 18:41:30.3584 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fXSRCeS4zUZPtRApnz1Q+BewToni6J4ICPwrznc4o+vICynAIZcsRUMNRzdE5UdkSOUBzliRbHjFJ0q+ErnX7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR2201MB1709
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_114134_590106_858A9C31 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.73.112 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Paul Burton <pburton@wavecomp.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Commit 7e534323c416 ("mtd: rawnand: Pass a nand_chip object to
chip->read_xxx() hooks") modified the prototype of the struct nand_chip
read_buf function pointer. In the au1550nd driver we have 2
implementations of read_buf. The previously mentioned commit modified
the au_read_buf() implementation to match the function pointer, but not
au_read_buf16(). This results in a compiler warning for MIPS
db1xxx_defconfig builds:

  drivers/mtd/nand/raw/au1550nd.c:443:57:
    warning: pointer type mismatch in conditional expression

Fix this by updating the prototype of au_read_buf16() to take a struct
nand_chip pointer as its first argument, as is expected after commit
7e534323c416 ("mtd: rawnand: Pass a nand_chip object to chip->read_xxx()
hooks").

Note that this shouldn't have caused any functional issues at runtime,
since the offset of the struct mtd_info within struct nand_chip is 0
making mtd_to_nand() effectively a type-cast.

Signed-off-by: Paul Burton <paul.burton@mips.com>
Fixes: 7e534323c416 ("mtd: rawnand: Pass a nand_chip object to chip->read_xxx() hooks")
Cc: Boris Brezillon <bbrezillon@kernel.org>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: David Woodhouse <dwmw2@infradead.org>
Cc: Brian Norris <computersforpeace@gmail.com>
Cc: Marek Vasut <marek.vasut@gmail.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>
Cc: linux-mtd@lists.infradead.org
Cc: linux-mips@vger.kernel.org
Cc: stable@vger.kernel.org # v4.20+

---

Changes in v2:
- Update kerneldoc comment too...

 drivers/mtd/nand/raw/au1550nd.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/raw/au1550nd.c b/drivers/mtd/nand/raw/au1550nd.c
index 97a97a9ccc36..e10b76089048 100644
--- a/drivers/mtd/nand/raw/au1550nd.c
+++ b/drivers/mtd/nand/raw/au1550nd.c
@@ -134,16 +134,15 @@ static void au_write_buf16(struct nand_chip *this, const u_char *buf, int len)
 
 /**
  * au_read_buf16 -  read chip data into buffer
- * @mtd:	MTD device structure
+ * @this:	NAND chip object
  * @buf:	buffer to store date
  * @len:	number of bytes to read
  *
  * read function for 16bit buswidth
  */
-static void au_read_buf16(struct mtd_info *mtd, u_char *buf, int len)
+static void au_read_buf16(struct nand_chip *this, u_char *buf, int len)
 {
 	int i;
-	struct nand_chip *this = mtd_to_nand(mtd);
 	u16 *p = (u16 *) buf;
 	len >>= 1;
 
-- 
2.23.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
