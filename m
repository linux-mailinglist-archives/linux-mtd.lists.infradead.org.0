Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80AF746231
	for <lists+linux-mtd@lfdr.de>; Fri, 14 Jun 2019 17:10:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2hlzZIup8bd697a8+dJBWUk81K2/4n7O24R2u5/Rx+c=; b=Gci0Qn4FHcQmWY
	UCtt2gi9268LiExA0LC1+sSutCZSD0huTGedo3zAN/463pYyQI4zmM20N8BRs52RbrOpy68rVb3pT
	WwKQ1rgX8UoroHFxVoF106kQ5Brb5Hak6SwU4lcffu8et74/5wwTcNfiWbGZK0WSmvoRhFjebAdPq
	vFAcoYccS5/DqY6jfsTsHSjTDSELDV0UnVvROCHTdK/mBVgEv9/tCMQI97/3bFpYYdy41nPkRgf5Z
	Wef0KJeRc6MSyEpDVRp4z/006X1goMidl05BeuAekZM5F+/1Ln1z87gXKQKWxNmRtBWsX+fJ+iPvD
	Oau8GOpgVqSIU7JXaBIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbnqZ-0007u5-OI; Fri, 14 Jun 2019 15:10:31 +0000
Received: from mx0b-0014ca01.pphosted.com ([208.86.201.193]
 helo=mx0a-0014ca01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbnqQ-0007tI-IO
 for linux-mtd@lists.infradead.org; Fri, 14 Jun 2019 15:10:24 +0000
Received: from pps.filterd (m0042333.ppops.net [127.0.0.1])
 by mx0b-0014ca01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5EF4GZR022902; Fri, 14 Jun 2019 08:09:53 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=proofpoint;
 bh=zutQYHKILo9D5aTttR1PQ5MocwnzlGDu/I4L3RBlPOs=;
 b=YvTHSNzD48Y6gsazCXz4Xb0R1HnWbx8f9Wt73lbjS2KH7efxXfasYlN7fydT3AQDDIID
 DyIRCwk8RsT5Zr514v5Y5IIImq4CpW4RUFKYhT5wtLdfk4RDFM03yMBtZjW2X49ijnTf
 CqKnzPJXVROjDozIzZUaD1cMsyIIjE82D3X01Q6uaR5Q6UuVrfPFqC1qQ3BtWa8lFXlK
 nK8ZIAoSO5A7mOKRsAyYF6pXO8f6QQ1eD+e/My54p4otTW9bXDTXVIGI2p3MuiYN3AeP
 oD/Tw/q3jSZRjl+6SdkP54A2jZ3/s4zgxap2Fxn6yjZfW80Irlp9pqwJybqy+N2TI7+b /g== 
Authentication-Results: cadence.com; spf=pass smtp.mailfrom=piotrs@cadence.com
Received: from nam01-sn1-obe.outbound.protection.outlook.com
 (mail-sn1nam01lp2054.outbound.protection.outlook.com [104.47.32.54])
 by mx0b-0014ca01.pphosted.com with ESMTP id 2t3qr0ncjy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 14 Jun 2019 08:09:52 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zutQYHKILo9D5aTttR1PQ5MocwnzlGDu/I4L3RBlPOs=;
 b=Z9ea8GSazH6DZcaW8OJsgUdT1HXlzgLj6WEsOdNrOGtt5Wome0scBopDSxpge2vLaILi9tY1+5Hy/1ymKigNUebCI00u2ENeKdBTnA9R52lmZs8Ghyuvy69FK/4r9CMHDxQIjfZu1s7Uhcj1Qm+gb5ajUBq14xOsuRjOnsneR0s=
Received: from BYAPR07CA0011.namprd07.prod.outlook.com (2603:10b6:a02:bc::24)
 by CO2PR07MB2486.namprd07.prod.outlook.com (2603:10b6:102:f::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.17; Fri, 14 Jun
 2019 15:09:50 +0000
Received: from CO1NAM05FT011.eop-nam05.prod.protection.outlook.com
 (2a01:111:f400:7e50::208) by BYAPR07CA0011.outlook.office365.com
 (2603:10b6:a02:bc::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1987.13 via Frontend
 Transport; Fri, 14 Jun 2019 15:09:50 +0000
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 cadence.com discourages use of 158.140.1.28 as permitted sender)
Received: from sjmaillnx1.cadence.com (158.140.1.28) by
 CO1NAM05FT011.mail.protection.outlook.com (10.152.96.118) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2008.7 via Frontend Transport; Fri, 14 Jun 2019 15:09:49 +0000
Received: from maileu3.global.cadence.com (maileu3.cadence.com [10.160.88.99])
 by sjmaillnx1.cadence.com (8.14.4/8.14.4) with ESMTP id
 x5EF9g8Y010059
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Fri, 14 Jun 2019 08:09:43 -0700
X-CrossPremisesHeadersFilteredBySendConnector: maileu3.global.cadence.com
Received: from maileu3.global.cadence.com (10.160.88.99) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3; Fri, 14 Jun 2019 17:09:41 +0200
Received: from lvlogina.cadence.com (10.165.176.102) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3 via Frontend Transport; Fri, 14 Jun 2019 17:09:41 +0200
Received: from lvlogina.cadence.com (localhost.localdomain [127.0.0.1])
 by lvlogina.cadence.com (8.14.4/8.14.4) with ESMTP id x5EF9f03031066;
 Fri, 14 Jun 2019 16:09:41 +0100
Received: (from piotrs@localhost)
 by lvlogina.cadence.com (8.14.4/8.14.4/Submit) id x5EF9Y8Z030961;
 Fri, 14 Jun 2019 16:09:34 +0100
From: Piotr Sroka <piotrs@cadence.com>
To: <linux-kernel@vger.kernel.org>
Subject: [v3 0/2] mtd: nand: Add Cadence NAND controller driver
Date: Fri, 14 Jun 2019 16:06:38 +0100
Message-ID: <20190614150638.28383-1-piotrs@cadence.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-OrganizationHeadersPreserved: maileu3.global.cadence.com
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:158.140.1.28; IPV:CAL; SCL:-1; CTRY:US;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(396003)(136003)(376002)(346002)(39860400002)(2980300002)(36092001)(189003)(199004)(50226002)(478600001)(7636002)(48376002)(26826003)(51416003)(6916009)(50466002)(356004)(7416002)(305945005)(36756003)(8676002)(1076003)(87636003)(246002)(2906002)(54906003)(16586007)(47776003)(42186006)(76130400001)(426003)(8936002)(316002)(486006)(26005)(107886003)(2351001)(336012)(70206006)(2616005)(126002)(70586007)(4326008)(186003)(5660300002)(476003)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CO2PR07MB2486; H:sjmaillnx1.cadence.com; FPR:;
 SPF:SoftFail; LANG:en; PTR:corp.cadence.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9df39479-07e4-4818-b90e-08d6f0da5884
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328);
 SRVR:CO2PR07MB2486; 
X-MS-TrafficTypeDiagnostic: CO2PR07MB2486:
X-Microsoft-Antispam-PRVS: <CO2PR07MB24867686734437F8E36DFC7BDDEE0@CO2PR07MB2486.namprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0068C7E410
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: l3WpcVbfcvr0pHNIz7GKdT3xC/8q2AmxJu+4LyVAP0xonfiJCi+lXEsnUKHcL+0vw4sEzeP+hT0rMJ5Bg1C5dvAzXs9XdkST7tGkrBlprfsc3jiUZHRRHWrZgEWuIk3ngisSQ4vCdaDDFWd8Y0Y7X7/0xSg4TP3qSesBpZ2UamLs56vVurnA69Kde/XCaH27hYIQ8e2Fq6SZKOMsUPflGWjwTylegCnbgLEm7j5HSbuZHFQ4NJI9LTozLwiNKMzKrtkgNKstm3c2laxmnc3sFSw3cbn8wWVhmzB906A+avajsMu7JN1hWUpVdII5tUPq/dV1FhQkGWjVMQvCLRDqs1ag+gslji9gSLhrUA/wZ8L1Gp6bRgbLvo3Sgs6qT6qhzI9tbLBsJMyxP7JWJyGAQ7pLY6/XxXMli2vAhKzYMeQ=
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2019 15:09:49.3780 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9df39479-07e4-4818-b90e-08d6f0da5884
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9; Ip=[158.140.1.28];
 Helo=[sjmaillnx1.cadence.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO2PR07MB2486
X-Proofpoint-SPF-Result: pass
X-Proofpoint-SPF-Record: v=spf1 include:spf.smktg.jp
 include:_spf.salesforce.com
 include:mktomail.com include:spf-0014ca01.pphosted.com
 include:spf.protection.outlook.com include:auth.msgapp.com
 include:spf.mandrillapp.com ~all
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-14_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0
 priorityscore=1501 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0
 spamscore=0 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906140125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_081022_910065_30E83BAB 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [208.86.201.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Boris Brezillon <bbrezillon@kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Richard Weinberger <richard@nod.at>, Stefan Agner <stefan@agner.ch>,
 Marek Vasut <marek.vasut@gmail.com>, Paul Burton <paul.burton@mips.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 Dmitry Osipenko <digetx@gmail.com>, Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, Piotr Sroka <piotrs@cadence.com>
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
  dt-bindings: nand: Add Cadence NAND controller driver

 .../bindings/mtd/cadence-nand-controller.txt       |   51 +
 drivers/mtd/nand/raw/Kconfig                       |    7 +
 drivers/mtd/nand/raw/Makefile                      |    1 +
 drivers/mtd/nand/raw/cadence-nand-controller.c     | 3119 ++++++++++++++++++++
 4 files changed, 3178 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt
 create mode 100644 drivers/mtd/nand/raw/cadence-nand-controller.c

-- 
2.15.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
