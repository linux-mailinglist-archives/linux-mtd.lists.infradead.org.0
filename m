Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 920FABED24
	for <lists+linux-mtd@lfdr.de>; Thu, 26 Sep 2019 10:13:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AywCYa9EgPS9i46jc67X/zniFwVn1JmngtIpKoGbpPI=; b=iqRnejOU6Sh1nk
	eQrSvyOIJCFcivbw7Mvz5s0qEbNsqPUgO2LXQRhWZrx39VaajfpGNrcoiqADRRoBPu72/tbCrb4Lq
	Z5JZ3BFdUvrsNT/n6cMFvdImdXSVimeSqLqU3rNoiLf3YW/F2eWJcXiGC5tw3Avq7G1HyWLAiqzFI
	KLrtBv5wTru2cmm1cpFE6HfbBccxnZ/usBmmYk0zIfVXiJ6k22as7jPcJuxopWKk/8GP7Q8gj2Cqt
	b7qSX1NZPKjL/eE6Kb6g16DEtzWhKaE6erMaId3Uevy+Hjnq88m55xia2pfk+o5egVQCHQpzSxZGM
	YYJLai5CQm/lrjf02IRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDOtJ-00039R-Du; Thu, 26 Sep 2019 08:12:45 +0000
Received: from mx0a-0014ca01.pphosted.com ([208.84.65.235])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDOt1-000397-Uh
 for linux-mtd@lists.infradead.org; Thu, 26 Sep 2019 08:12:29 +0000
Received: from pps.filterd (m0042385.ppops.net [127.0.0.1])
 by mx0a-0014ca01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8Q8BjPo024013; Thu, 26 Sep 2019 01:11:49 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=proofpoint;
 bh=xAjC8cEgAP8Za/kG87SWnHZaVYVHLBKJzlxHvZCVTrU=;
 b=L0r1r3pSxv3HtOwt+yWVAOrFGEYvpZvD8fiqqw981kJBKaUdj9LM8ipXdockWTMgaa5b
 1cSWnG0JLanR6c2DvNx29xU7hkUazJmO7V+AclcLDxtgnGHTRYnpzhr/2O6PI5WpVBiS
 x/VGSdAi+2B/oHWwMb46kqPsobjOWkONcSZuyYd3qUDlhT/CayzO9qdveUAeBjGqtUs3
 rc1FxtAqTQUeQm9yYIL5pjDH6uz6wlbH8xHRWAml4D7W/RLZp+8Ey/OwWSppoJdmsPVg
 /fbjFk2T/P96h74czRfZ+3OF/0XN91SaNm/JsMBJ5aiNqAv2mTahbjERKYZhUaGihT6o hg== 
Received: from nam03-co1-obe.outbound.protection.outlook.com
 (mail-co1nam03lp2057.outbound.protection.outlook.com [104.47.40.57])
 by mx0a-0014ca01.pphosted.com with ESMTP id 2v5ge0kj0m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 26 Sep 2019 01:11:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dGP9wKdi/l7XVW9AVyf0pWmTqAEZXg9bBIpZriwKxRYJ8Idf5aCTJnn6SI+mHBAQ8HGsh1pMMJVVadhBKVYtoVr+QqHl/qhCZAzwkoQbUvBAxC65RIQToNGh1Br0AP1w/0RHKWjOAwmf5RXozYsAmW+U6hBXSfICZmUHet10pQziWLQDw1xY8pZt2TV9qSfKklGoAdsopexKJttMJ3rYMrX+chbVssrb3xv6Q26k4lkyWlooSvYNQOBvtiuifvKzpLTJXlyYP9yQEUQjiLvYpdLddrfeOs63lBOGd0tSHbnMjl/xFluGWkt5ki7ymkcq/GUBGEGVWTxZj2N7Vc+02A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xAjC8cEgAP8Za/kG87SWnHZaVYVHLBKJzlxHvZCVTrU=;
 b=M53e2AYiB4SBevEf0r+AKORtslCStMO+ZsRfRmayJ9B0lVYKCHkXl+FFJIwCaEBXTaq41nxmvRaWORCTnmev7hbfswLHGin7NGHxNnbi1E7xNxPC84WNbHRGCjupbQ4Fz4TFT434V4CPImNKWDv01jUM9wyPkyLLPWXRtPeNk44JqF/qXaMqDMZzADQQ7zPb3vXpxDoVrQPbHUjsJ5zy0Vpti8/c0H8X8p7JhHuKVCWxCHhBMXPAAA7aNkvioB5kPoaBrN3fGxsPZyOvwCb6UK/zhAnCUXjShnZdkY92Pi7NinTkCceusS0ib+l+Zs719aEix291FvP1umaFAaZS8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 64.207.220.243) smtp.rcpttodomain=ti.com smtp.mailfrom=cadence.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=cadence.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xAjC8cEgAP8Za/kG87SWnHZaVYVHLBKJzlxHvZCVTrU=;
 b=Q7+qZkTIyLb4y/4BvDtdbtKChC7Z6GRtFmbx/D8Szq3BGlymQsOfc364HG/UGAi9zd5vt66fEgdWSSKw2KuslUzoCsjZbol/BwZhVIlJwOWAUxFqmTn5fyaXvu5n4Ogw9A0DaIeqGhMG3HP0K9/68ijEyOwwmZW4Sp5Y6+6sR0o=
Received: from DM5PR07CA0093.namprd07.prod.outlook.com (2603:10b6:4:ae::22) by
 BYAPR07MB5656.namprd07.prod.outlook.com (2603:10b6:a03:98::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Thu, 26 Sep 2019 08:11:46 +0000
Received: from DM3NAM05FT006.eop-nam05.prod.protection.outlook.com
 (2a01:111:f400:7e51::202) by DM5PR07CA0093.outlook.office365.com
 (2603:10b6:4:ae::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.20 via Frontend
 Transport; Thu, 26 Sep 2019 08:11:46 +0000
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 cadence.com discourages use of 64.207.220.243 as permitted sender)
Received: from wcmailrelayl01.cadence.com (64.207.220.243) by
 DM3NAM05FT006.mail.protection.outlook.com (10.152.98.111) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.7 via Frontend Transport; Thu, 26 Sep 2019 08:11:45 +0000
Received: from maileu3.global.cadence.com (maileu3.cadence.com [10.160.88.99])
 by wcmailrelayl01.cadence.com (8.14.7/8.14.4) with ESMTP id
 x8Q8BUXB179783
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=OK);
 Thu, 26 Sep 2019 01:11:32 -0700
X-CrossPremisesHeadersFilteredBySendConnector: maileu3.global.cadence.com
Received: from maileu3.global.cadence.com (10.160.88.99) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3; Thu, 26 Sep 2019 10:11:30 +0200
Received: from lvlogina.cadence.com (10.165.176.102) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3 via Frontend Transport; Thu, 26 Sep 2019 10:11:30 +0200
Received: from lvlogina.cadence.com (localhost.localdomain [127.0.0.1])
 by lvlogina.cadence.com (8.14.4/8.14.4) with ESMTP id x8Q8BTx1022311;
 Thu, 26 Sep 2019 09:11:29 +0100
Received: (from piotrs@localhost)
 by lvlogina.cadence.com (8.14.4/8.14.4/Submit) id x8Q8BQRA022269;
 Thu, 26 Sep 2019 09:11:26 +0100
From: Piotr Sroka <piotrs@cadence.com>
To: 
Subject: [v8 0/2] mtd: rawnand: Add Cadence NAND controller driver
Date: Thu, 26 Sep 2019 09:08:41 +0100
Message-ID: <20190926080924.19220-1-piotrs@cadence.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-OrganizationHeadersPreserved: maileu3.global.cadence.com
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:64.207.220.243; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(136003)(346002)(396003)(199004)(189003)(36092001)(476003)(81156014)(81166006)(1076003)(54906003)(26005)(16586007)(36756003)(36906005)(8676002)(1671002)(48376002)(316002)(305945005)(2906002)(42186006)(8936002)(50226002)(2616005)(478600001)(87636003)(6666004)(356004)(7416002)(5660300002)(86362001)(47776003)(70206006)(109986005)(70586007)(4326008)(50466002)(51416003)(336012)(426003)(126002)(486006)(186003)(266003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR07MB5656; H:wcmailrelayl01.cadence.com;
 FPR:; SPF:SoftFail; LANG:en; PTR:ErrorRetry; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 945733ea-bf01-4647-706b-08d742592bf6
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328);
 SRVR:BYAPR07MB5656; 
X-MS-TrafficTypeDiagnostic: BYAPR07MB5656:
X-Microsoft-Antispam-PRVS: <BYAPR07MB5656A4C6D2E8E3EDFD5C2261DD860@BYAPR07MB5656.namprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0172F0EF77
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 82TwS3vPah76qyNCnfOyogGoNHMwJ5tlPMtTL+mEJ1INVFrnkznIEVWw67QWvCuhM4DYHV6N9wDeZvowd1kIB6yt1gpRJ5ZIXngv/DtdOuoeSJ5HQ93pZbksLfpxh0pFRsygeioZcjZwfC8r5YGk+osYb17Kl1rQabzowjese/BpXBHZxRudoHouTbK1n56Ix/dswYFkCydHrdW+vUDLKBN21EUUDPubgZXmUq64Bh042qXqyiGFeXY9osBvM2M/PZr5Q04w1kqqXLwe1uNYNwy5xgdXzEpUHiCCjf2ixJfvrRnqGEY4fjtb+pbYw8RcI6aiDY5aU9khBfQDUJg8pERBKJeNJnn4xiywvpByneCeoAD2OXJYVAefad+94SC2O5oPXQ8r9zUU3CbjVLBwM2yWOTslawFT5VAq4+bhRnA=
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2019 08:11:45.1846 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 945733ea-bf01-4647-706b-08d742592bf6
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9; Ip=[64.207.220.243];
 Helo=[wcmailrelayl01.cadence.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR07MB5656
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-09-26_03:2019-09-25,2019-09-26 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0 malwarescore=0
 impostorscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 priorityscore=1501 lowpriorityscore=0 phishscore=0 adultscore=0
 suspectscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-1908290000 definitions=main-1909260080
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_011227_998247_7091A377 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [208.84.65.235 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Linus Walleij <linus.walleij@linaro.org>, Paul Cercueil <paul@crapouillou.net>,
 Liang Yang <liang.yang@amlogic.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>,
 Anders Roxell <anders.roxell@linaro.org>, Richard Weinberger <richard@nod.at>,
 Marek Vasut <marek.vasut@gmail.com>, Piotr Sroka <piotrs@cadence.com>,
 Arnd Bergmann <arnd@arndb.de>, Thomas Gleixner <tglx@linutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
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
 drivers/mtd/nand/raw/cadence-nand-controller.c     | 3031 ++++++++++++++++++++
 5 files changed, 3099 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt
 create mode 100644 drivers/mtd/nand/raw/cadence-nand-controller.c

-- 
2.15.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
