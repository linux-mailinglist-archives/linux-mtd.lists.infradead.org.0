Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E52DB634F
	for <lists+linux-mtd@lfdr.de>; Wed, 18 Sep 2019 14:34:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8y1WRF67iPkuHQKl9/9BSTayfpTWSlKbS8125a3YvHY=; b=jqfrhi2WFB5NoD
	e08JW3d/pF2sp5laaL66VQmL+GqLsW58f7Xqf107ji5UxusYQQEp+oNEHymQtV2629bNz44eN+dam
	H5GmRb0TaW9V/YAiHnslormnveO+QKCWXYwC7wIJI/zEdM9/68X/EQ6q4pF31UJ1iigAUj8FIbUY1
	mSF2joN4kSmVYYSPV81psmJp6n+HHdPOExXUeHLcpKWEubYSBsjXKkCSCRxXCb9Ul5tWtleP7kFuG
	d7f92m/Ljc92AxxFkJ1re+ZX3M/VQA96HsVWbUMTiPsYolTYEXNdUZ4J44dZCSkVeRw0d6+8P48wk
	1EPQO+xON5R0j9zFu4Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZ9n-0001QO-TQ; Wed, 18 Sep 2019 12:34:04 +0000
Received: from mx0b-0014ca01.pphosted.com ([208.86.201.193]
 helo=mx0a-0014ca01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZ9d-0001Px-34
 for linux-mtd@lists.infradead.org; Wed, 18 Sep 2019 12:33:54 +0000
Received: from pps.filterd (m0042333.ppops.net [127.0.0.1])
 by mx0b-0014ca01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8ICXJBM029525; Wed, 18 Sep 2019 05:33:40 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=proofpoint;
 bh=ZXKfpxxl6xzOXemPDXXdxgZTUKsstAW4xEkots+ZYaY=;
 b=I63ToQrj5LtYfpkQdg48VlxuZg+dazo5AIc7a5oNnzatZYv86BXoyEs9Kx9Z0oSXgip3
 PqW7gr+jZlNBCbD0IacWz1sO3uI75tVESqa/kwCNil6YbNpF/L012OYsNYmz7LKddurZ
 CoHWWTvaPPryHdA44+ZNyxb4m25mNpqG8Ie8rEhja0oshw9zelGJYh5A1qWUSBToX/Gm
 MDikmCV7PKc2pdYauf6Da+yEKhqECleLZM2hr/p8tmbrsWzHmX+gT9BKjcsW01kDC1rJ
 CJandDmpNEMJMz6T6iWiF4Xsij2jUfbARPdWOlrnFALpzuI+AW7kc8k/xQVr3hPiWsax /Q== 
Received: from nam03-co1-obe.outbound.protection.outlook.com
 (mail-co1nam03lp2052.outbound.protection.outlook.com [104.47.40.52])
 by mx0b-0014ca01.pphosted.com with ESMTP id 2v37ktat4h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 18 Sep 2019 05:33:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KOwVYNysaSK+GsQcrRZMlpiXAjfpXqEpmNLLXy/KgLagyp0WTl3ilCO4c9b2R8SrOVv8e4ZQhuOXPxbRwBCzkdmqboJlrPgeQqpxjITOTm0/Ktn/M/l8Qcf5FbMhasOikDiQwvQPUcXGywmom/0aPnxDDoDlPTVBqZ64+x1x+eIJqlcjgx1olwmurafMRiJ1hH2Ak21bKtNlOpPuw11MRBRc15+U1J/q5mFXth9eSzPsIrXRjHe1lshI93CaP6uXOpw7KjLVzMeo5f7l8O4DaFP4hE7LW17qv7+fKyFQsI3S5NBEWnPceQe/651F7PRrzV55TfeauEAW3o9pBohqtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZXKfpxxl6xzOXemPDXXdxgZTUKsstAW4xEkots+ZYaY=;
 b=lIBu8vRW0DnLrWOk+XfEO+fitNLIRT3Hlmuzea07+x7R6TNEvsFyIfHN6H626qJUUjkN2H4J8s8T9JezW3sEOYgIAaTvnnE/SqdENVcBtjPGD3X+zYH3toou0UU+iclsIA2N/Jbm/elLKjZwgry/0uOpzg94zr0jeqThML0hPJielosrzOrMyYnoFdWgWUz45hWZsh5UZwuPCWXA1+D7m40wqTVNryg4f2FW9hWLLeEDb5SQTdP/Dv9zdKQSFxkwBT4sx/iPIB2+KsD72jlwQ/OktXEdVaYUcgVM+6PjI2TpkBWHWSMDmUDB509PfFnLJVkkFszuKd9h/MwEShOETg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 158.140.1.28) smtp.rcpttodomain=ti.com smtp.mailfrom=cadence.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=cadence.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZXKfpxxl6xzOXemPDXXdxgZTUKsstAW4xEkots+ZYaY=;
 b=polgT42OOEqJ2q4VakCYeEtZ7d15QPDFZbJ8TkBMV/+VJ1042bqSflADPl9JwaTdDUhw3ErH5VmSd/AalO5xt99+dhkpffMGWGAfLw312k5haHuAav2u9njpUYB20DPQ3QgQqdDT1GOj9mkSDD/IFyoJaEAS1x3xy+41ngBFJzE=
Received: from CH2PR07CA0026.namprd07.prod.outlook.com (2603:10b6:610:20::39)
 by DM5PR07MB3865.namprd07.prod.outlook.com (2603:10b6:3:eb::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2263.15; Wed, 18 Sep
 2019 12:33:36 +0000
Received: from BY2NAM05FT031.eop-nam05.prod.protection.outlook.com
 (2a01:111:f400:7e52::202) by CH2PR07CA0026.outlook.office365.com
 (2603:10b6:610:20::39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2263.17 via Frontend
 Transport; Wed, 18 Sep 2019 12:33:36 +0000
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 cadence.com discourages use of 158.140.1.28 as permitted sender)
Received: from sjmaillnx2.cadence.com (158.140.1.28) by
 BY2NAM05FT031.mail.protection.outlook.com (10.152.100.168) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.10 via Frontend Transport; Wed, 18 Sep 2019 12:33:36 +0000
Received: from maileu3.global.cadence.com (maileu3.cadence.com [10.160.88.99])
 by sjmaillnx2.cadence.com (8.14.4/8.14.4) with ESMTP id
 x8ICXXpI003200
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Wed, 18 Sep 2019 05:33:34 -0700
X-CrossPremisesHeadersFilteredBySendConnector: maileu3.global.cadence.com
Received: from maileu3.global.cadence.com (10.160.88.99) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3; Wed, 18 Sep 2019 14:33:32 +0200
Received: from lvlogina.cadence.com (10.165.176.102) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3 via Frontend Transport; Wed, 18 Sep 2019 14:33:32 +0200
Received: from lvlogina.cadence.com (localhost.localdomain [127.0.0.1])
 by lvlogina.cadence.com (8.14.4/8.14.4) with ESMTP id x8ICXWI3000935;
 Wed, 18 Sep 2019 13:33:32 +0100
Received: (from piotrs@localhost)
 by lvlogina.cadence.com (8.14.4/8.14.4/Submit) id x8ICXVGq000933;
 Wed, 18 Sep 2019 13:33:31 +0100
From: Piotr Sroka <piotrs@cadence.com>
To: 
Subject: [v7 2/2] dt-bindings: mtd: Add Cadence NAND controller driver
Date: Wed, 18 Sep 2019 13:31:45 +0100
Message-ID: <20190918123223.31745-1-piotrs@cadence.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20190918122923.28737-1-piotrs@cadence.com>
References: <20190918122923.28737-1-piotrs@cadence.com>
MIME-Version: 1.0
X-OrganizationHeadersPreserved: maileu3.global.cadence.com
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:158.140.1.28; IPV:CAL; SCL:-1; CTRY:US;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(396003)(346002)(376002)(199004)(189003)(36092001)(478600001)(87636003)(5660300002)(70586007)(70206006)(109986005)(2906002)(76130400001)(42186006)(50226002)(4326008)(16586007)(48376002)(54906003)(316002)(486006)(7636002)(305945005)(1076003)(8936002)(1671002)(356004)(7416002)(50466002)(2616005)(336012)(36756003)(26826003)(6666004)(446003)(76176011)(426003)(86362001)(186003)(51416003)(26005)(476003)(47776003)(126002)(8676002)(246002)(11346002)(266003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR07MB3865; H:sjmaillnx2.cadence.com; FPR:;
 SPF:SoftFail; LANG:en; PTR:corp.Cadence.COM; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a20fe372-a398-416c-5a57-08d73c346cfe
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328);
 SRVR:DM5PR07MB3865; 
X-MS-TrafficTypeDiagnostic: DM5PR07MB3865:
X-Microsoft-Antispam-PRVS: <DM5PR07MB38658DB04A1AB4B14661B350DD8E0@DM5PR07MB3865.namprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:525;
X-Forefront-PRVS: 01644DCF4A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 3R6BftLp8SE2ipIBNr0pNyn/ZMkwS8RAsm4U4+nc0JEA02Puyo7xVqjdu8Pe2S8DHpklX1wp2at2P71BgsXruUAVSA22pyBz0gYBdxsUq7bucAZDK8ZKesOOp6UBmpx2otey5lJqPGg6daqmxW60ZMcxevtTCHH9oEBTFcqd9QqSol8wJnYK3fprbmw/Auy5GRaTPDtdGxOVaORPTb24X0tNG/5PymvbTK08/8V/MDOZhT1NRFvOUglVk/NvqUkodjGRPCrZFncIr2zlOKuaackZGEEeV4MoAM4FXtklexXy478+8K2IAWR32TmxAJ1o7vCyH+eZ4FhFm4tbP5ekUW4jUUBbmlBxYDctnnqe1r/hcmuvFi1q+j7URD7DVwkKG8EsFZnexwMNVnLIkO7ZuHtKrXi/Vvyy4u5qJZC95tE=
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2019 12:33:36.0328 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a20fe372-a398-416c-5a57-08d73c346cfe
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9; Ip=[158.140.1.28];
 Helo=[sjmaillnx2.cadence.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR07MB3865
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-18_07:2019-09-17,2019-09-18 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0 malwarescore=0
 suspectscore=0 adultscore=0 phishscore=0 spamscore=0 mlxscore=0
 mlxlogscore=999 impostorscore=0 lowpriorityscore=0 bulkscore=0
 clxscore=1015 priorityscore=1501 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-1908290000 definitions=main-1909180128
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_053353_261028_060AC851 
X-CRM114-Status: GOOD (  21.44  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [208.86.201.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 "Paul E. McKenney" <paulmck@linux.ibm.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Richard Weinberger <richard@nod.at>, Linus Walleij <linus.walleij@linaro.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 "David S. Miller" <davem@davemloft.net>, Marek Vasut <marek.vasut@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Kazuhiro Kasai <kasai.kazuhiro@socionext.com>, linux-kernel@vger.kernel.org,
 Piotr Sroka <piotrs@cadence.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Document the bindings used by Cadence NAND controller driver

Signed-off-by: Piotr Sroka <piotrs@cadence.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changes for v7:
- none
Changes for v6:
- add documentation for address-cells and size-cells
- remove not needed space
- put myself as maintainer of the Cadence nand driver bindings
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
 .../bindings/mtd/cadence-nand-controller.txt       | 53 ++++++++++++++++++++++
 MAINTAINERS                                        |  1 +
 2 files changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt

diff --git a/Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt b/Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt
new file mode 100644
index 000000000000..f3893c4d3c6a
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt
@@ -0,0 +1,53 @@
+* Cadence NAND controller
+
+Required properties:
+  - compatible : "cdns,hp-nfc"
+  - reg : Contains two entries, each of which is a tuple consisting of a
+	  physical address and length. The first entry is the address and
+	  length of the controller register set. The second entry is the
+	  address and length of the Slave DMA data port.
+  - reg-names: should contain "reg" and "sdma"
+  - #address-cells: should be 1. The cell encodes the chip select connection.
+  - #size-cells : should be 0.
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
+See Documentation/devicetree/bindings/mtd/nand.txt for more details on
+generic bindings.
+
+Example:
+
+nand_controller: nand-controller@60000000 {
+	  compatible = "cdns,hp-nfc";
+	  #address-cells = <1>;
+	  #size-cells = <0>;
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
diff --git a/MAINTAINERS b/MAINTAINERS
index 16e16445b88b..94d78f4e29ba 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3584,6 +3584,7 @@ M:	Piotr Sroka <piotrs@cadence.com>
 L:	linux-mtd@lists.infradead.org
 S:	Maintained
 F:	drivers/mtd/nand/raw/cadence-nand-controller.c
+F:	Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt
 
 CADET FM/AM RADIO RECEIVER DRIVER
 M:	Hans Verkuil <hverkuil@xs4all.nl>
-- 
2.15.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
