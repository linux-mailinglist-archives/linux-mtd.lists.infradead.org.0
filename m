Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB0D75205
	for <lists+linux-mtd@lfdr.de>; Thu, 25 Jul 2019 17:00:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kMHGh8VapnpxZ+LK+5AMIz+KfR2kJKj7yzwYXMX+I7Y=; b=rSdI0WIMe+zxEh
	TWy2EtEPzv3pQzZ9ict7yh1Z8PLY7s5hmOy20wIosM31NfQ4NDmgxHFkvR0OfRhedVxzlrr6Di9By
	Ti538oBvYEHPUJlxXrXWkOJ2B3eFjXMuqs+pfSHCaYq22DxvqXVEmnUN8qWrrO4Ep5mlneF6PnJTN
	AasZNwC+jIJgt/a+F1Au7Ue9WpezmLS9+GHQk6Vr14j9nz1LcpY3qS+O2q7yxQpY1qoY7Xe7+4E5y
	5GaCYAGDiErGbyaHUdj6G7AuzuexEnGopw2nnvW4rcjoGQmrxkoLTzgB1Ir0jsz7mLemEujnQ3KEG
	9ZU4pqL3wVKodUuwOTww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqfEZ-0005QW-I4; Thu, 25 Jul 2019 15:00:43 +0000
Received: from mx0a-0014ca01.pphosted.com ([208.84.65.235])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqfE2-0004Rs-3s
 for linux-mtd@lists.infradead.org; Thu, 25 Jul 2019 15:00:12 +0000
Received: from pps.filterd (m0042385.ppops.net [127.0.0.1])
 by mx0a-0014ca01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6PEvjlO001791; Thu, 25 Jul 2019 07:59:38 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=proofpoint;
 bh=eLltd09AZLnnfOw2WrA/G1QDSh/+zspsDr0BDSLPhBQ=;
 b=hz4ZObUNiC2u7psSw+/euweRuI/h6QxXcD5dqOi29G7Me3yqcPYS056hLNor0PNCQC7q
 kAbxXwOSNk4XfCDENTrRbgoSYeqhe4h4t/wFNUxxO9irNmfMA51zfEVVvVfMJoqRIRjc
 Ko4J7kC54k1+SH0nUXEF1njTSoEb0yiwdnb2xLCIM4Eec0Qpd2ty+kcb45tLZNFY6ncW
 6vuREWJ0QNAZm9gguiHJyjA6BfiD3HjrOyt26t8ydFQzOkqJAflapVDFWn29Y6CYDD7R
 huRByhfi3CvEcsQkByADohlRuxABJj3lmgViCHOgpu3OVXsumrR/W7SZx2Gapj7R3pHQ hg== 
Authentication-Results: cadence.com; spf=pass smtp.mailfrom=piotrs@cadence.com
Received: from nam04-bn3-obe.outbound.protection.outlook.com
 (mail-bn3nam04lp2057.outbound.protection.outlook.com [104.47.46.57])
 by mx0a-0014ca01.pphosted.com with ESMTP id 2ty9h4h4vg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 25 Jul 2019 07:59:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JbU9CvGnMty/kNpBYTFGn8Qrloqy6FW0sA8qkKJAJDoXanmK6NTSbzG08ygnitjC5mZkyrnAtd12E/wguJskeqp+/Dy9M9c410W0uDLs7+tol8bNITXJB++ZQhIVRGJmHpvdVjhOEZRI6nQu+TrDzOHtHj2SwASPA0vPyPq8vmiZ3d0PSVnQTdzWGfkvQaNk+3jLstbDlCiNHwRUMuCUJBbRw5Hhbn2cEuq6P4jq9C8befk0K1vEEZOK/vuFB5GhT/91isqwC+QVTmNHR2Z0YQxD5S5yuRUBdZ6+rFuujWZtjeAkaRBrhGSXEpzP5S+CXpxQEQ4NMZwZvhnDXCz/Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eLltd09AZLnnfOw2WrA/G1QDSh/+zspsDr0BDSLPhBQ=;
 b=g/W6BT+hEsI8F25gmcx0n0tBv6F3Tf6/nnVm5JV1zERCC1cURrpf/Icx+lPE7DPj+3YMqSexTupfAtuPcg1nnqDo1aP6qjKKnOj2Wi3hEemAW5RiaYiA3sLCmAEJQy47jpRQ5BZ/LyQb5NgvzjRs8BAorEu/Fa+DS4QKBYcTi4mqtrIgv8HdVKHN+WV6/S0b7Byx17UJ8DjhuO1b5VIO/U6V/NGzTNWaRo9WMw8yE1Xtkrj3mTUF4zOG4W8SrGWsbm0Yy4+JNR+kemVyea70Qkg/HiSja2t1nNlSMKyCEOMJ9L4Z2UUxwT7+y4rA3/LcglebiDS++bEbghrU05rR4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip is
 158.140.1.28) smtp.rcpttodomain=infradead.org
 smtp.mailfrom=cadence.com;dmarc=fail (p=none sp=none pct=100) action=none
 header.from=cadence.com;dkim=none (message not signed);arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eLltd09AZLnnfOw2WrA/G1QDSh/+zspsDr0BDSLPhBQ=;
 b=XcxcBnbwzgHnGD6F97+H3KvyrhozSET3kY3XDfDfvVXm1C3hs5QCzNds+PMKI8yg/e1iKaTH8g1hERIo8ThmaiJHrQxE+9jx20yVPa8RqwaE2J3EIgCRP4D+wgYu1vqqknbluE5ty3lqQIgHyIBSClUV6clqN1+20hyu8tdtOpo=
Received: from BN8PR07CA0036.namprd07.prod.outlook.com (2603:10b6:408:ac::49)
 by BN8PR07MB6817.namprd07.prod.outlook.com (2603:10b6:408:b9::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2115.10; Thu, 25 Jul
 2019 14:59:35 +0000
Received: from BY2NAM05FT041.eop-nam05.prod.protection.outlook.com
 (2a01:111:f400:7e52::209) by BN8PR07CA0036.outlook.office365.com
 (2603:10b6:408:ac::49) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2115.13 via Frontend
 Transport; Thu, 25 Jul 2019 14:59:35 +0000
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 cadence.com discourages use of 158.140.1.28 as permitted sender)
Received: from sjmaillnx1.cadence.com (158.140.1.28) by
 BY2NAM05FT041.mail.protection.outlook.com (10.152.100.178) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.7 via Frontend Transport; Thu, 25 Jul 2019 14:59:34 +0000
Received: from maileu3.global.cadence.com (maileu3.cadence.com [10.160.88.99])
 by sjmaillnx1.cadence.com (8.14.4/8.14.4) with ESMTP id
 x6PExTRm024674
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Thu, 25 Jul 2019 07:59:30 -0700
X-CrossPremisesHeadersFilteredBySendConnector: maileu3.global.cadence.com
Received: from maileu3.global.cadence.com (10.160.88.99) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3; Thu, 25 Jul 2019 16:59:28 +0200
Received: from lvlogina.cadence.com (10.165.176.102) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3 via Frontend Transport; Thu, 25 Jul 2019 16:59:27 +0200
Received: from lvlogina.cadence.com (localhost.localdomain [127.0.0.1])
 by lvlogina.cadence.com (8.14.4/8.14.4) with ESMTP id x6PExS3Z012639;
 Thu, 25 Jul 2019 15:59:28 +0100
Received: (from piotrs@localhost)
 by lvlogina.cadence.com (8.14.4/8.14.4/Submit) id x6PExN34012572;
 Thu, 25 Jul 2019 15:59:23 +0100
From: Piotr Sroka <piotrs@cadence.com>
To: <linux-kernel@vger.kernel.org>
Subject: [v5 0/2] mtd: nand: Add Cadence NAND controller driver
Date: Thu, 25 Jul 2019 15:58:04 +0100
Message-ID: <20190725145804.8886-1-piotrs@cadence.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-OrganizationHeadersPreserved: maileu3.global.cadence.com
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:158.140.1.28; IPV:CAL; SCL:-1; CTRY:US;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(376002)(346002)(136003)(2980300002)(36092001)(189003)(199004)(36756003)(47776003)(42186006)(70206006)(7636002)(26005)(51416003)(305945005)(316002)(16586007)(5660300002)(8936002)(336012)(50466002)(50226002)(76130400001)(48376002)(107886003)(86362001)(2906002)(1076003)(70586007)(486006)(246002)(54906003)(426003)(6916009)(2351001)(4326008)(478600001)(26826003)(87636003)(476003)(2616005)(186003)(8676002)(6666004)(7416002)(356004)(126002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN8PR07MB6817; H:sjmaillnx1.cadence.com; FPR:;
 SPF:SoftFail; LANG:en; PTR:corp.Cadence.COM; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1076296b-91dc-4ada-d8e8-08d71110b4eb
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328);
 SRVR:BN8PR07MB6817; 
X-MS-TrafficTypeDiagnostic: BN8PR07MB6817:
X-Microsoft-Antispam-PRVS: <BN8PR07MB6817CD2083D88F73390B6961DDC10@BN8PR07MB6817.namprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0109D382B0
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 7iu/bsVckLe7H5CZaRpSL9/jRzadflnWmOZiofIwq86g9clE+Sj102XX7qoDm65MMpO6FHs1a6sEYzrUbGAtVL8BsC6xzG7ZbiPmx+lkw2C0rEkS1c4Y2Bu/d7i+QJnidzDgGKm9cCZGOqLEl3Bwe1Vp1ffc7BFNAd86PkKL6fqI8ENy3LpJCH6gNLtjj9jBETzeWAgCyNteWHy+4ULaa/ChP6JmG9v2yTzLpKenQxi9zG4zPua76vnBNOak5QmAMkUHVAKUCaPf0d+nKKvgEECqQEQLz5l+aS6f9cXwvp4L7x13+AwXA+pJS64CpE3JTi2Qd7Od9IanznRfMgMpGyeKqySogMHSJWPHqxiOWT8ScdN6a4OSvktvFbEWiq+W8h49A5rzztetAsmTyH3ZDQGmOPeep66pO1sRuFcqljA=
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2019 14:59:34.7838 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1076296b-91dc-4ada-d8e8-08d71110b4eb
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9; Ip=[158.140.1.28];
 Helo=[sjmaillnx1.cadence.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR07MB6817
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
 spamscore=0 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1907250175
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_080010_444318_1410F10F 
X-CRM114-Status: GOOD (  15.46  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, Boris Brezillon <bbrezillon@kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Richard Weinberger <richard@nod.at>, Stefan Agner <stefan@agner.ch>,
 Marek Vasut <marek.vasut@gmail.com>, Paul Burton <paul.burton@mips.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 Dmitry Osipenko <digetx@gmail.com>, Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Kazuhiro Kasai <kasai.kazuhiro@socionext.com>,
 Piotr Sroka <piotrs@cadence.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Driver for Cadence HPNFC NAND flash controller.

HW DMA interface
Page write and page read operations are executed in Command DMA mode.
Commands are defined by DMA descriptors.
In CDMA mode controller own DMA engine is used (Master DMA mode).
Other operations defined by nand_op_instr are executed in "Generic" mode.
In that mode data can be transferred only in by Slave DMA interface.
Slave DMA interface can be connected directly to AXI or to an external
DMA engine.

HW ECC support
Cadence NAND controller supports HW BCH correction.
 ECC is transparent from SW point of view. It means that ECC codes
are calculated and written to flash. In read operation ECC codes 
are removed from user data and correction is made if necessary.

Controller data layout with ECC enabled:
 -------------------------------------------------------------------------
|Sec 1 | ECC | Sec 2 | ECC ...... | Sec n | OOB (32B) | ECC | unused data |
 -------------------------------------------------------------------------

Last sector is extended by a out-bound data. Tha maximum size of
"extra data" is 32 bytes. The oob data are protected by ECC. If we need to 
read only oob data the whole last sector must be read. It is because 
oob data are part of last sector. Reading oob function always reads 
whole sector and writing oob function always writes whole last sector.
Written data are interleaved with the ECC therefore part of the 
last sector is located on oob area and the BBM is overwritten.

SKIP BYTES feature
To protect BBM the "skip byte" HW feature is used. 
Write page function copies BBM value from first byte of oob data to 
BBM offset defined by manufacturer. Read page functions always takes 
BBM from flash manufacturer offset. It causes that for not written 
pages the proper value of BBM marker is used.

ECC size calculation
Information about supported ECC steps and ECC strengths are read 
from controller registers. ECC sector size and ECC strength can be
configurable. Size of ECC depends on maximum supported sector size 
it not depends on selected sector size. Therefore there is a separate
function for calculating ECC size for each of possible 
sector size/step size.

Piotr Sroka (2):
  Add new Cadence NAND driver to MTD subsystem
  Add Cadence NAND controller driver

 .../bindings/mtd/cadence-nand-controller.txt       |   50 +
 drivers/mtd/nand/raw/Kconfig                       |    7 +
 drivers/mtd/nand/raw/Makefile                      |    1 +
 drivers/mtd/nand/raw/cadence-nand-controller.c     | 3021 ++++++++++++++++++++
 4 files changed, 3079 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt
 create mode 100644 drivers/mtd/nand/raw/cadence-nand-controller.c

-- 
2.15.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
