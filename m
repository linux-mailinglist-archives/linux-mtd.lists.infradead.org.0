Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 353DD75206
	for <lists+linux-mtd@lfdr.de>; Thu, 25 Jul 2019 17:01:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wORiVuIgzcLVO/Zkkop12NUwzVnFERwT/VY48+f49J8=; b=ZQCxM7WfGk4F4V
	eOmhUiT4CFD3De1iKHh0c4G9rYYidbXTUJMFs42jbnjK5/h+RLUvS7/mjXWCpCyV21A3QxRS3X7qn
	vUT7JRIeI43zmaY1SZW//ki94Ghra0QqguzNEKqFpgCDciEnRi1rMakWAhWozUTvF9eBtee6czjq8
	DU9oXPuIxS061DPVxBjPSarRnT+UC32Gzw41+lniZ8fVaNxFUBvkvHaIvfY30y3XfEJApR0SlXe6E
	tpDARIOFwQ/yY5gbYERIhHw3PXmiMiJ8jacjchjhd9HHEVxsRDJLJhzh+NxaSE0Lk6ffQXEZDrmJf
	6oTy7vaH0F+sORy6nmIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqfEs-0005dX-JV; Thu, 25 Jul 2019 15:01:02 +0000
Received: from mx0a-0014ca01.pphosted.com ([208.84.65.235])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqfE8-0005Er-LP
 for linux-mtd@lists.infradead.org; Thu, 25 Jul 2019 15:00:18 +0000
Received: from pps.filterd (m0042385.ppops.net [127.0.0.1])
 by mx0a-0014ca01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6PEvjla001791; Thu, 25 Jul 2019 08:00:07 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=proofpoint;
 bh=RKSmBSFcduIj50cvykuC55ARP0U2FL40+czvJ7Gdhuw=;
 b=UI9D/ZJ3b4jDRP3RiiO3Kjv8yn8pGbx+DlRKecisKYY/IJpZG3NMWXiNu1ADOpNcf4wT
 5qdvW704n/BaiucM+7c7P6j0VClejcFIr87QeqJJfO/w92Fe/VfhLbkeV0rU5CC2cxVW
 VNPpp2J8fnxZMs3wo/Vl8xTZtFgt2KVLyHhcIhjp0ThNfxYYgwcKWOYN7tXbkkaxpx8u
 J1VXv0SiWzvSM64TXRMMGMGQBx3yPjxdFP6GXaFbP/DToYdxEIpr9r21Tfmmf33tpyS4
 P9LEyTuGuOA3RKukreG6ueZTgj0pHGvhUeYlBVviPkRQQAaZSQquuvccVFJfo/XNuUdG 4A== 
Authentication-Results: cadence.com; spf=pass smtp.mailfrom=piotrs@cadence.com
Received: from nam01-bn3-obe.outbound.protection.outlook.com
 (mail-bn3nam01lp2051.outbound.protection.outlook.com [104.47.33.51])
 by mx0a-0014ca01.pphosted.com with ESMTP id 2ty9h4h4y4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 25 Jul 2019 08:00:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nrz4MvVHYJiBNzT0jbNXYUEvAt1pPXMQN4/8CkAecbBldu8cSITI3InDgI0X5d+oWbmyH4KmVbuNrI4bTpRtUNo5B/sMzrKMGjNlu333vXgMMXBeZTbneVcIuow4tP5bjVe8dj5wILvMdPUv8cSra7+1lRg0Q6Mw/lDrhMjLNVF9g42wu3xF/fMH2b6gwUQDuAmE89RK03oz/leyhAR2OOBCI6stLPODoc8qYTzUWpqYjy/+XfD/34bBJNYLiIk0HVN8UZLyDaJ9SvPMReVIV5p+i+Q2FBrJKP49vNenBNiHx5eV1Fua7FgmF62wHaRZPwd7fGXr6tgUZUESq0MhTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RKSmBSFcduIj50cvykuC55ARP0U2FL40+czvJ7Gdhuw=;
 b=gr+KEc8MGqmeo1q4AI5ERYwutfj165qVWxCRGFxjONaFEA90AqtR9vJVfOQdF5rsoNlJfxeGEswh/7zruny3Q4EWRyumEfO6KRsM93rtQdxeaJyMB6d2/3BtCRwumeT/ZeaMF9FavFniUBFU/gFeNiZFtm4ubHv9nrF0wCi09SxcLcDxX9IpgLoO9vqcWOkCGKqUR9gfh86B9hyXZYAeFV8nRVQ7LJ+LwGGQjW29yjBS+RccnDzDDKjSfZQ4WSlE2shK+WhBx6OrMmRRegtTlC/OdSh12f5/z81MvjcPXreElCwlQaYrE4mx5R7cTKDdUzIp4tQNBmT1eJyGSE4dLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip is
 158.140.1.28) smtp.rcpttodomain=kernel.org
 smtp.mailfrom=cadence.com;dmarc=fail (p=none sp=none pct=100) action=none
 header.from=cadence.com;dkim=none (message not signed);arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RKSmBSFcduIj50cvykuC55ARP0U2FL40+czvJ7Gdhuw=;
 b=MVorw9uBp/KNpOSTQUAJb0GL0LTXOExPNmuNoh4Od/8YJB1HubZLwHbq+COojpI4PfgfAHI5IUK802wCr8q8x6Lyy55j7PY7upSFGKnojec0mSujQxk5FXyQZC3ZpbrjhuyvWexRrIDNwN8G5FrapXwJa6yQWpKIT9MJM6nkLNc=
Received: from CY1PR07CA0038.namprd07.prod.outlook.com
 (2a01:111:e400:c60a::48) by BN8PR07MB6964.namprd07.prod.outlook.com
 (2603:10b6:408:d6::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2115.10; Thu, 25 Jul
 2019 15:00:04 +0000
Received: from CO1NAM05FT040.eop-nam05.prod.protection.outlook.com
 (2a01:111:f400:7e50::201) by CY1PR07CA0038.outlook.office365.com
 (2a01:111:e400:c60a::48) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2115.14 via Frontend
 Transport; Thu, 25 Jul 2019 15:00:04 +0000
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 cadence.com discourages use of 158.140.1.28 as permitted sender)
Received: from sjmaillnx2.cadence.com (158.140.1.28) by
 CO1NAM05FT040.mail.protection.outlook.com (10.152.96.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.7 via Frontend Transport; Thu, 25 Jul 2019 15:00:03 +0000
Received: from maileu3.global.cadence.com (maileu3.cadence.com [10.160.88.99])
 by sjmaillnx2.cadence.com (8.14.4/8.14.4) with ESMTP id
 x6PF01CL024431
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Thu, 25 Jul 2019 08:00:02 -0700
X-CrossPremisesHeadersFilteredBySendConnector: maileu3.global.cadence.com
Received: from maileu3.global.cadence.com (10.160.88.99) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3; Thu, 25 Jul 2019 16:59:59 +0200
Received: from lvlogina.cadence.com (10.165.176.102) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3 via Frontend Transport; Thu, 25 Jul 2019 16:59:59 +0200
Received: from lvlogina.cadence.com (localhost.localdomain [127.0.0.1])
 by lvlogina.cadence.com (8.14.4/8.14.4) with ESMTP id x6PF00nn014162;
 Thu, 25 Jul 2019 16:00:00 +0100
Received: (from piotrs@localhost)
 by lvlogina.cadence.com (8.14.4/8.14.4/Submit) id x6PExxkm014160;
 Thu, 25 Jul 2019 15:59:59 +0100
From: Piotr Sroka <piotrs@cadence.com>
To: <linux-kernel@vger.kernel.org>
Subject: [v5 2/2] dt-bindings: mtd: Add Cadence NAND controller driver
Date: Thu, 25 Jul 2019 15:59:55 +0100
Message-ID: <20190725145955.13951-1-piotrs@cadence.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20190725145804.8886-1-piotrs@cadence.com>
References: <20190725145804.8886-1-piotrs@cadence.com>
MIME-Version: 1.0
X-OrganizationHeadersPreserved: maileu3.global.cadence.com
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:158.140.1.28; IPV:CAL; SCL:-1; CTRY:US;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(346002)(396003)(376002)(2980300002)(36092001)(199004)(189003)(50226002)(1076003)(446003)(6916009)(107886003)(7636002)(305945005)(186003)(11346002)(8676002)(48376002)(126002)(7416002)(426003)(2616005)(476003)(486006)(4326008)(50466002)(8936002)(246002)(87636003)(76176011)(478600001)(316002)(47776003)(86362001)(336012)(54906003)(42186006)(2351001)(36756003)(16586007)(5660300002)(76130400001)(356004)(70586007)(70206006)(6666004)(26005)(2906002)(26826003)(51416003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN8PR07MB6964; H:sjmaillnx2.cadence.com; FPR:;
 SPF:SoftFail; LANG:en; PTR:corp.cadence.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: efb91d21-ffe2-4454-a650-08d71110c668
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328);
 SRVR:BN8PR07MB6964; 
X-MS-TrafficTypeDiagnostic: BN8PR07MB6964:
X-Microsoft-Antispam-PRVS: <BN8PR07MB69645869615063D89020E537DDC10@BN8PR07MB6964.namprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:862;
X-Forefront-PRVS: 0109D382B0
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: vePt/Q2NmJFkNPkb7jAlSkS5XpX1Kh42th8/zqSEtD2EJT4fncac9pjoo4R9+xkn0fRvPOqRJRh+gGIpkuxgo/cvqSz7AJ81uXxIQ9FDoEv5kbA/Y567UCmpvI3/25RuT27OgooWwIky4qLZRRkUJ2th4BAzVxEnnCemWO6mS7ItL1sgi1Qcgl4E9CwoDw89vrRk4TpTLid9U1ZktK5m3PhlXx+1bvmqzDuaArQpx14RxNGpI5O4pqjjvREJYwSSRtcLwnR4vvu1lP1Wap2H5fxb/+W7eglzTgNbdkuQHYoSE/V5DDIEheSnjIgyz+xw2vvqcU0BBtoj2KCFHcWqMugy7QsbBSCcrTQd/c9l/533susvMdt5ZA+R/EqnJAtX1nf5T6XvPH7VOwhOmMmmmAudostI3tGaoKC6qnTSKdE=
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2019 15:00:03.8707 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: efb91d21-ffe2-4454-a650-08d71110c668
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9; Ip=[158.140.1.28];
 Helo=[sjmaillnx2.cadence.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR07MB6964
X-Proofpoint-SPF-Result: pass
X-Proofpoint-SPF-Record: v=spf1 include:spf.smktg.jp
 include:_spf.salesforce.com
 include:mktomail.com include:spf-0014ca01.pphosted.com
 include:spf.protection.outlook.com include:auth.msgapp.com
 include:spf.mandrillapp.com ~all
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-25_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0
 priorityscore=1501 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0
 spamscore=0 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1907250175
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_080016_775816_552BD844 
X-CRM114-Status: GOOD (  19.30  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [208.84.65.235 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 Marek Vasut <marek.vasut@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, BrianNorris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Kazuhiro Kasai <kasai.kazuhiro@socionext.com>,
 Piotr Sroka <piotrs@cadence.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Document the bindings used by Cadence NAND controller driver

Signed-off-by: Piotr Sroka <piotrs@cadence.com>
---
Changes for v5:
- replace "_" by "-" in all properties
- change compatible name from cdns,hpnfc to cdns,hp-nfc
Changes for v4:
- add commit message
Changes for v3:
- add unit suffix for board_delay 
- move child description to proper place
- remove prefix cadence_ for reg and sdma fields
Changes for v2:
- remove chip dependends parameters from dts bindings
- add names for register ranges in dts bindings
- add generic bindings to describe NAND chip representation
---
 .../bindings/mtd/cadence-nand-controller.txt       | 50 ++++++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt

diff --git a/Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt b/Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt
new file mode 100644
index 000000000000..423547a3f993
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt
@@ -0,0 +1,50 @@
+* Cadence NAND controller
+
+Required properties:
+  - compatible : "cdns,hp-nfc"
+  - reg : Contains two entries, each of which is a tuple consisting of a
+	  physical address and length. The first entry is the address and
+	  length of the controller register set. The second entry is the
+	  address and length of the Slave DMA data port.
+  - reg-names: should contain "reg" and "sdma"
+  - interrupts : The interrupt number.
+  - clocks: phandle of the controller core clock (nf_clk).
+
+Optional properties:
+  - dmas: shall reference DMA channel associated to the NAND controller
+  - cdns,board-delay-ps : Estimated Board delay. The value includes the total
+    round trip delay for the signals and is used for deciding on values
+    associated with data read capture. The example formula for SDR mode is
+    the following:
+    board delay = RE#PAD delay + PCB trace to device + PCB trace from device
+    + DQ PAD delay
+
+Child nodes represent the available NAND chips.
+
+Required properties of NAND chips:
+  - reg: shall contain the native Chip Select ids from 0 to max supported by
+    the cadence nand flash controller
+
+
+See Documentation/devicetree/bindings/mtd/nand.txt for more details on
+generic bindings.
+
+Example:
+
+nand_controller: nand-controller @60000000 {
+	  compatible = "cdns,hp-nfc";
+	  reg = <0x60000000 0x10000>, <0x80000000 0x10000>;
+	  reg-names = "reg", "sdma";
+	  clocks = <&nf_clk>;
+	  cdns,board-delay-ps = <4830>;
+	  interrupts = <2 0>;
+	  nand@0 {
+	      reg = <0>;
+	      label = "nand-1";
+	  };
+	  nand@1 {
+	      reg = <1>;
+	      label = "nand-2";
+	  };
+
+};
-- 
2.15.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
