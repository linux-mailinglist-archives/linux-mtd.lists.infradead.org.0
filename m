Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C01B65224A
	for <lists+linux-mtd@lfdr.de>; Tue, 25 Jun 2019 06:47:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GhD9RvfRb8aN+OhmAnjy6KMgbVYMwV0FesBeCAMvclM=; b=uIkV8DiZ+34YOL
	5e3uol7O30O1HsrPhiRfGteoAM/zT2AaAewXPbAZSK1eiqlfmllg6FwgwP/L/CqACoJiGxEDGpMQW
	AB2GJ4L4SgNgMeeyxv2BV2HFwf0WP62ttdi7EG59oKOWi2WH3TQYazM+WHPIi/miwCgploeOaqnjw
	DvOlTrZ6Rna4t95gpZ+joykokYMHb8iJs8F4U4+ZIhXsuCCbsY6shoRfs9Y9xbIxPqO5it8VwYtVQ
	hAfVFuFQMs82/FFIzITxbIfies1vuIgClsTPI/9n3oChbg3w/eqQSh1RjfpYlm0r2hpY4P0RYnyv5
	fpXfdvFKLHbNI2tbaJYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfdMG-0005rp-Ev; Tue, 25 Jun 2019 04:47:04 +0000
Received: from mail-eopbgr740087.outbound.protection.outlook.com
 ([40.107.74.87] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfdM3-0005r6-SL
 for linux-mtd@lists.infradead.org; Tue, 25 Jun 2019 04:46:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z6D+3ooFLGTQVLRknkth4/HujIit7qoNMsYM6fToroE=;
 b=og2YQmX7ePmTggTdokoBXbTiXGzTRD2Lpu95KqrVPIFcI0iqFrYijGtQaE6Gl9m0t4CCBtZ7bHdKPp6jPy+BzLpxhFuQsOLnNCfBpjQ0SnatXI59w81IEvUVVIFvpv6eA/TRLv2D/4qs/Zq9B63kUajSeml02w7/2Xn6DhMiwTE=
Received: from DM6PR02CA0106.namprd02.prod.outlook.com (2603:10b6:5:1f4::47)
 by MW2PR02MB3786.namprd02.prod.outlook.com (2603:10b6:907:3::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2008.16; Tue, 25 Jun
 2019 04:46:46 +0000
Received: from BL2NAM02FT048.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::209) by DM6PR02CA0106.outlook.office365.com
 (2603:10b6:5:1f4::47) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2008.16 via Frontend
 Transport; Tue, 25 Jun 2019 04:46:46 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.100)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.100; helo=xsj-pvapsmtpgw02;
Received: from xsj-pvapsmtpgw02 (149.199.60.100) by
 BL2NAM02FT048.mail.protection.outlook.com (10.152.76.109) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1987.11
 via Frontend Transport; Tue, 25 Jun 2019 04:46:46 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]:32852
 helo=xsj-pvapsmtp01) by xsj-pvapsmtpgw02 with esmtp (Exim 4.63)
 (envelope-from <naga.sureshkumar.relli@xilinx.com>)
 id 1hfdLx-0006rv-CJ; Mon, 24 Jun 2019 21:46:45 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <naga.sureshkumar.relli@xilinx.com>)
 id 1hfdLr-0007mZ-Ew; Mon, 24 Jun 2019 21:46:39 -0700
Received: from xsj-pvapsmtp01 (smtp-fallback.xilinx.com [149.199.38.66] (may
 be forged))
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x5P4kawv015624; 
 Mon, 24 Jun 2019 21:46:36 -0700
Received: from [172.23.37.108] (helo=xhdnagasure40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <naga.sureshkumar.relli@xilinx.com>)
 id 1hfdLm-0007lC-P1; Mon, 24 Jun 2019 21:46:35 -0700
From: Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>
To: miquel.raynal@bootlin.com, helmut.grohne@intenta.de
Subject: [LINUX PATCH v17 1/2] mtd: rawnand: nand_micron: Do not over write
 driver's read_page()/write_page()
Date: Mon, 24 Jun 2019 22:46:29 -0600
Message-Id: <20190625044630.31717-1-naga.sureshkumar.relli@xilinx.com>
X-Mailer: git-send-email 2.17.1
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.100; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(396003)(136003)(346002)(2980300002)(199004)(189003)(486006)(70206006)(70586007)(1076003)(107886003)(5660300002)(48376002)(8936002)(50466002)(8676002)(81166006)(81156014)(106002)(16586007)(316002)(305945005)(36386004)(103116003)(2906002)(2616005)(476003)(126002)(63266004)(426003)(336012)(36756003)(77096007)(478600001)(26005)(186003)(7696005)(51416003)(7416002)(47776003)(50226002)(356004)(6666004)(9786002)(4326008)(42866002)(5001870100001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MW2PR02MB3786; H:xsj-pvapsmtpgw02; FPR:;
 SPF:Pass; LANG:en; PTR:xapps1.xilinx.com,unknown-60-100.xilinx.com; A:1; MX:1;
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1f79b9f0-f131-43fc-4805-08d6f92820b5
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:MW2PR02MB3786; 
X-MS-TrafficTypeDiagnostic: MW2PR02MB3786:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <MW2PR02MB3786D899FD5804BDA969700DAFE30@MW2PR02MB3786.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:200;
X-Forefront-PRVS: 0079056367
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: OPzJ0r2nteg9BI2IxpmS8N18w/wAE2VKs11AVIrnFAjAa8KIjO/tXm75Lmw//0kCBkA23QXx7AWK2vFpwVIa7lLWjffbigljesZDCC3uo0IrcFdkLH5tovTRXJBEWE1m356Ui9mgeGW03NroQH/le9b3U3m7NJvVL30S5c9oiuPqxcB+FcAFJMin1ohQ/RoYt+PeBA9vbi0djyI9Cis+rxvd2r16d70LpH7E/bSyDm4u8yGLsZeUEfvt6NHcs/HIB2YV8z5LbgfcbfOvDd2Db+PTCQqRGJSQYZDbKaQmwuYuvdoLUpBTJrs8o3D9RuQzUG41rlJ2Fep+J7vDGM1agqDPsyEw9BEr7Y5EyNuibCy/pRIiHNBML3UzuqfzeQ4AYxFE97G8Bf4+oJOWPixFGPUkDwGRoYZTckPgby0XtTw=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2019 04:46:46.0531 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f79b9f0-f131-43fc-4805-08d6f92820b5
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.100];
 Helo=[xsj-pvapsmtpgw02]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR02MB3786
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_214651_922429_BE810D24 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.0 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.87 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 3.0 AC_FROM_MANY_DOTS      Multiple periods in From user name
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
Cc: Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>, vigneshr@ti.com,
 bbrezillon@kernel.org, yamada.masahiro@socionext.com, richard@nod.at,
 linux-kernel@vger.kernel.org, marek.vasut@gmail.com,
 linux-mtd@lists.infradead.org, computersforpeace@gmail.com,
 dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Add check before assigning chip->ecc.read_page() and chip->ecc.write_page()

Signed-off-by: Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>
---
 drivers/mtd/nand/raw/nand_micron.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_micron.c b/drivers/mtd/nand/raw/nand_micron.c
index cbd4f09ac178..565f2696c747 100644
--- a/drivers/mtd/nand/raw/nand_micron.c
+++ b/drivers/mtd/nand/raw/nand_micron.c
@@ -500,8 +500,11 @@ static int micron_nand_init(struct nand_chip *chip)
 		chip->ecc.size = 512;
 		chip->ecc.strength = chip->base.eccreq.strength;
 		chip->ecc.algo = NAND_ECC_BCH;
-		chip->ecc.read_page = micron_nand_read_page_on_die_ecc;
-		chip->ecc.write_page = micron_nand_write_page_on_die_ecc;
+		if (!chip->ecc.read_page)
+			chip->ecc.read_page = micron_nand_read_page_on_die_ecc;
+
+		if (!chip->ecc.write_page)
+			chip->ecc.write_page = micron_nand_write_page_on_die_ecc;
 
 		if (ondie == MICRON_ON_DIE_MANDATORY) {
 			chip->ecc.read_page_raw = nand_read_page_raw_notsupp;
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
