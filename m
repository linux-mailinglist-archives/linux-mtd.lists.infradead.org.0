Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF5CB6343
	for <lists+linux-mtd@lfdr.de>; Wed, 18 Sep 2019 14:31:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NuSGuIKqj7kRbCMHLyCFOjf2Dn4cBBjsG/yVkeP0yzg=; b=piVSefTWOWUMXl
	pZIgsz1Le89g9ojEcXBMlNmkI3Fx5AP8xD+SHNdUyPTT4/xlmD/3bBCKV9s9O9iFQWOoBhdgEQGOz
	lPKDWr/mV2AHZ33aBA6f1Lw723V+2txLHMowgEEX3JeAKIk73xVQkeND63OFHFve9WIH0kEiW6Zec
	QtgoZSv9GkNVBiPcfP4ZFRvjSNLQ3uY4OU1ZezIzTgO8PLLdD4Md3o92CLUeGB28fVrBuLUba7iiF
	LoNyDrwk6VGqY3rH3G0Fok1dYmZRQ9/kZscXoA/FZ3ysrf83XXApkouYa74btMCoFjsM1b0sofl4y
	w2I95w5gJGYCELTowikw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZ7X-0000gB-Tv; Wed, 18 Sep 2019 12:31:44 +0000
Received: from mx0b-0014ca01.pphosted.com ([208.86.201.193]
 helo=mx0a-0014ca01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZ7E-0000fk-7h
 for linux-mtd@lists.infradead.org; Wed, 18 Sep 2019 12:31:25 +0000
Received: from pps.filterd (m0042333.ppops.net [127.0.0.1])
 by mx0b-0014ca01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8ICT3ft025489; Wed, 18 Sep 2019 05:30:44 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=proofpoint;
 bh=UBsn1y3sfjEhQwbDdih3F8ZpJ1dHNPu/2WffjRky0T0=;
 b=UdJ+3DUL+KCYYYiOruBUxFC7fK1qNfZhTIfTwRt+UqEHHcsVu7LwvxEa8fupBb3b9jrZ
 AL3LG7Ps6f/Nmkl8hP0bFRyi5I+7yGsfvUm953YEq1N+sEO2B7svZmTD7siC6KqkadNb
 N2HxGpl2CaanikAzH28Ygriz3ryV/LcdTf/tZQt/usNIOXo+C2SQju0p40ipFzdWDHas
 TGohQJi9CYOTSLOw4g5tQFvQFBVn3Gw5R+2cEUrzjPS4cUi+5qLQvSoisHB1f3ixOXAx
 Eni3mgJ1U7HaKzb7GQPb9jxcHhPWygW4Ccj8DqhX/w8e9wmm6tALHA5KyL9jJzGa0OD4 aw== 
Received: from nam05-co1-obe.outbound.protection.outlook.com
 (mail-co1nam05lp2059.outbound.protection.outlook.com [104.47.48.59])
 by mx0b-0014ca01.pphosted.com with ESMTP id 2v37ktassj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 18 Sep 2019 05:30:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CbZzc6in/dRlsUzJIE55SgkkD64lDoPWVcdHjNZGqtx31i9ufjz0UJhPguEiMjbLE+r1cUfCzDJSKSc7yOOTuRsvRJ2aY7WjhMWQqzquBb1Mwv5G86cyuuOArua7K8dzZG7XNY63F4g/HCs/Qbz23GulCZTAFEs77qREKKcWW+n/2EZOoRltBMMohuZDM8K8Cm71iWm8A4QwdejD1qQ0hgAdowztTMDmwI3Ay8oY2WI98pQKSEhkEMhZjPkWanTEpqOVTdCG0Ko8ejKonkBgSdiXFUsvXPN0Y/2aD5QHPJ4nhm1spTRUE1fbAr52xtIvgMcPWGzNRz3GDf2nH93YCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UBsn1y3sfjEhQwbDdih3F8ZpJ1dHNPu/2WffjRky0T0=;
 b=GB9hANXhUaCy5bynmuC2ZBofAhWXVlgu7XFKB+Q928KKoseW7yzerfb4pM6tW6IB6lsfJUv3GCbz8ce4jYbNJnUeSs/kMU/a5tUyhqK2eZrDNTqa2NL3feFLFBFqRUKNrKc97FQ/OVWihzELEE9bbaW3o0puJwoEJFzwjksxwY6fZ7HoqVLSJ5zGiIAF6LaNgTNg3O/QIfhzo2oztTvHgq8vSaj0+5uneMwLtG1rJ4W/IagoVBI21aHDYn4u2xzICNlnl2K7trDC7nOxKD9gnIwH/1Wtd717cGfsEgKFJ03CU7xgP0bq/HIFZvhxW+PI3iLR9tMLT6kwGUEDLYZhug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 64.207.220.243) smtp.rcpttodomain=kernel.org smtp.mailfrom=cadence.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=cadence.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UBsn1y3sfjEhQwbDdih3F8ZpJ1dHNPu/2WffjRky0T0=;
 b=lL4MjAMrrz5T38mPRv2xvmvbcbN3LAnyrtYyEe6OQQeUZ2lrCAKZD78mT1qlQ63GbBbKK2PZF2NMvZ747ujQ9wSuWsaI5Dsy90QlccOJkMvyUX2RgyNP4nShPkh2owcVgObPZU1IEBrWbNJ8H6oiRVi0Aq8/hCAjser2pjR7Yw0=
Received: from BYAPR07CA0028.namprd07.prod.outlook.com (2603:10b6:a02:bc::41)
 by MN2PR07MB6575.namprd07.prod.outlook.com (2603:10b6:208:165::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2263.17; Wed, 18 Sep
 2019 12:30:41 +0000
Received: from CO1NAM05FT044.eop-nam05.prod.protection.outlook.com
 (2a01:111:f400:7e50::204) by BYAPR07CA0028.outlook.office365.com
 (2603:10b6:a02:bc::41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2136.17 via Frontend
 Transport; Wed, 18 Sep 2019 12:30:40 +0000
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 cadence.com discourages use of 64.207.220.243 as permitted sender)
Received: from wcmailrelayl01.cadence.com (64.207.220.243) by
 CO1NAM05FT044.mail.protection.outlook.com (10.152.96.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.10 via Frontend Transport; Wed, 18 Sep 2019 12:30:40 +0000
Received: from maileu3.global.cadence.com (maileu3.cadence.com [10.160.88.99])
 by wcmailrelayl01.cadence.com (8.14.7/8.14.4) with ESMTP id
 x8ICUP5o074135
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=OK);
 Wed, 18 Sep 2019 05:30:26 -0700
X-CrossPremisesHeadersFilteredBySendConnector: maileu3.global.cadence.com
Received: from maileu3.global.cadence.com (10.160.88.99) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3; Wed, 18 Sep 2019 14:30:24 +0200
Received: from lvlogina.cadence.com (10.165.176.102) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3 via Frontend Transport; Wed, 18 Sep 2019 14:30:24 +0200
Received: from lvlogina.cadence.com (localhost.localdomain [127.0.0.1])
 by lvlogina.cadence.com (8.14.4/8.14.4) with ESMTP id x8ICUOCF030430;
 Wed, 18 Sep 2019 13:30:24 +0100
Received: (from piotrs@localhost)
 by lvlogina.cadence.com (8.14.4/8.14.4/Submit) id x8ICUI0k030366;
 Wed, 18 Sep 2019 13:30:18 +0100
From: Piotr Sroka <piotrs@cadence.com>
To: 
Subject: [v7 0/2] mtd: rawnand: Add Cadence NAND controller driver
Date: Wed, 18 Sep 2019 13:28:37 +0100
Message-ID: <20190918122923.28737-1-piotrs@cadence.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-OrganizationHeadersPreserved: maileu3.global.cadence.com
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:64.207.220.243; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(199004)(36092001)(189003)(2906002)(4326008)(36756003)(486006)(87636003)(50466002)(476003)(305945005)(36906005)(70206006)(70586007)(42186006)(498600001)(16586007)(86362001)(5660300002)(2616005)(336012)(26005)(54906003)(81156014)(81166006)(8676002)(1076003)(8936002)(426003)(126002)(356004)(109986005)(50226002)(51416003)(47776003)(48376002)(7416002)(1671002)(186003)(6666004)(266003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR07MB6575; H:wcmailrelayl01.cadence.com;
 FPR:; SPF:SoftFail; LANG:en; PTR:unused.mynethost.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2fbab1d4-bdce-49fb-9d4d-08d73c340448
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328);
 SRVR:MN2PR07MB6575; 
X-MS-TrafficTypeDiagnostic: MN2PR07MB6575:
X-Microsoft-Antispam-PRVS: <MN2PR07MB6575AA93BF8CDCFA75587C57DD8E0@MN2PR07MB6575.namprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 01644DCF4A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: ThYCTcDhpTvnOzoxrCnw0jS/SX1N3bWJioe4nUv1gSl8ToNiMaW5GfDXCEZv/hL/S1pTlz0YJE/VXn6XPKTtry5WzSPybIn2jgP72cmcLMPGPiBs+W2FpouFehzxHPHMj2ZB2TBjJh+Qi6A4f6ltM+5YMvXQWl5fVtOjtQKa0py1n4YrKrYEc0Zop0DF3FM5ZAqmGnAAKjWQZPSdLvwe+absoV02yZmJ8ci/FmvHGezopK/EiQg3yYuQMDV7cxscXhsZCuvVKKE65BNPr9GadJ5RZa4T5TBf3SUefvFsqsdHQlCZSbA69kBujZ5deH+Mw4ijvbTfm2myQy0K/YGa2LJ+38EI44RkrHwvXzfhGP6///5+bpsdolwLrwFh94f1UTSZ8mOXNaiEF4/YwJ7xmEXoiz1nJVtc/4DycsWh0fI=
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2019 12:30:40.2477 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fbab1d4-bdce-49fb-9d4d-08d73c340448
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9; Ip=[64.207.220.243];
 Helo=[wcmailrelayl01.cadence.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR07MB6575
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-18_07:2019-09-17,2019-09-18 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0 malwarescore=0
 suspectscore=0 adultscore=0 phishscore=0 spamscore=0 mlxscore=0
 mlxlogscore=999 impostorscore=0 lowpriorityscore=0 bulkscore=0
 clxscore=1015 priorityscore=1501 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-1908290000 definitions=main-1909180127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_053124_407137_98DA2654 
X-CRM114-Status: GOOD (  14.94  )
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Paul Cercueil <paul@crapouillou.net>, Liang Yang <liang.yang@amlogic.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>,
 Anders Roxell <anders.roxell@linaro.org>, Richard Weinberger <richard@nod.at>,
 Marek Vasut <marek.vasut@gmail.com>, Piotr Sroka <piotrs@cadence.com>,
 Arnd Bergmann <arnd@arndb.de>, Thomas Gleixner <tglx@linutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Kazuhiro Kasai <kasai.kazuhiro@socionext.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, "David S. Miller" <davem@davemloft.net>
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

 .../bindings/mtd/cadence-nand-controller.txt       |   53 +
 MAINTAINERS                                        |    7 +
 drivers/mtd/nand/raw/Kconfig                       |    7 +
 drivers/mtd/nand/raw/Makefile                      |    1 +
 drivers/mtd/nand/raw/cadence-nand-controller.c     | 3036 ++++++++++++++++++++
 5 files changed, 3104 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt
 create mode 100644 drivers/mtd/nand/raw/cadence-nand-controller.c

-- 
2.15.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
