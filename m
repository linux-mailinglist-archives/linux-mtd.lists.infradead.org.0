Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45543B3A8E
	for <lists+linux-mtd@lfdr.de>; Mon, 16 Sep 2019 14:46:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NuSGuIKqj7kRbCMHLyCFOjf2Dn4cBBjsG/yVkeP0yzg=; b=usL8wg+Hbb0+4y
	J/I1d+G4QlqD2HYre9kGKpRWr/rbvf+vZ8vcpC/v24COf9pxMU68qSmxibz6FpIxpo7whPRsjJ784
	b/d4ZTG59OsXwCGp1Ko2P57+TllxqS3XwEKel3k8xi7v1kJgMJGPe213P/oeMH612bA6TZybp+JDw
	NnPB02VYrxIWvs/p9fxfzMAB8pyVBVZYwo51Ef08ZX4ub37bJSMjQYUS6M5LYcCiaU1zLqpfOUh+O
	/wJBb+O9j+rZPp043tTO2yEJk1fswnaORRh0CbGOsRN79QjXZu2Rfa078DfNh+5fFvh3IFt6gdeJx
	fNiH2ZhBIWuFIJ4WoBvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9qOk-0000R3-G8; Mon, 16 Sep 2019 12:46:30 +0000
Received: from mx0b-0014ca01.pphosted.com ([208.86.201.193]
 helo=mx0a-0014ca01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9qOQ-0000QX-9M
 for linux-mtd@lists.infradead.org; Mon, 16 Sep 2019 12:46:12 +0000
Received: from pps.filterd (m0042333.ppops.net [127.0.0.1])
 by mx0b-0014ca01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8GChtwE021285; Mon, 16 Sep 2019 05:45:22 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=proofpoint;
 bh=UBsn1y3sfjEhQwbDdih3F8ZpJ1dHNPu/2WffjRky0T0=;
 b=pf8QdSDkv6vV0CRc9cIvYbe03XeG+b84XFX6XSC8Uz0J8WAY1/Z2Cwf5aSXf7KTOu+MT
 TP7ax8CL951KFup4cWfrl6KULKyU96G/47p3MTjDirIKWIhJ7qydLhp1W0wAlo79bKh8
 wPO5Suefe8d6TyU+T2+0uB7CsL7aob2IDzvRA9KuoWC7EjiZ31nP7989S5fhwVqR+4NS
 UiBzL2iS1gefZE7vrBv7GdgsEkKzeET+LTzRENog5ciElfxb3vgiSBHUzbgBIA2VhdEf
 CZpKb/mxAqC0x9u4/gnNVvwgotxY36Zx8HLVsolnrlt4XGv4LsXRkHkaam4AejW4DSQ1 oQ== 
Received: from nam05-co1-obe.outbound.protection.outlook.com
 (mail-co1nam05lp2059.outbound.protection.outlook.com [104.47.48.59])
 by mx0b-0014ca01.pphosted.com with ESMTP id 2v0usvq56y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 16 Sep 2019 05:45:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BOp039HRSuO69yKpiZWDnyilLNzmFJINKz06OSpyplQnLZx5Sj8tXKbF5mfDhi/HwgOSqEnmPVkdTQGNSkSdrBv2BxxjzCUPdaZdIsV0gK7hReGtyDKHVlQOFoUGqRpQKBiogBRKUbX0FYPDpoozXlqCULYAj4tfo7Cn3kCb2wmfG7mwrv0ff6bHPrEhVqsXcEDZtiWbvlgfFQr0iUbDgxjR6h9Rse6s6ETak3ePCE91tAN9VQej9jyyycpC434CLboTCYBh9UpM6DGxdF6/nYrb9s8DCC9whSvWxKKk9zhqy+6ytCyEyIhNiqbpBdStK0nv7iguWLgYn7uwLz+YGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UBsn1y3sfjEhQwbDdih3F8ZpJ1dHNPu/2WffjRky0T0=;
 b=g61WHB1ivmxxHp3j6hVsE7ownDmi3rNEgAcdmxKthWvUL15dss4/veeOLdz05zyqzUCmSzpco8ZdccSasHgUshxiiO0eeom8pcs713gGJ5xeJnxudqeV9kA90Z2fePff2Otr0L5MStU9JEu0emYEYgkwpUfCd2PAHD1rYPWeLAoQrd1PUKLNp4z9WhqKVctOvh7pEf4UQ0dL1HRG84Zowf/XIYm1XMuLoA4jc00igY7MJ9svWY+iqzQKafIfB7PsM1pywiF7tcansWK3YZ+0jOgSBjoA4rC0vugm6RFaCjqNxo5J+CpXhS4G4ZxkbCPDMiE2I0KduOuebBa7JB3n8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 64.207.220.243) smtp.rcpttodomain=kernel.org smtp.mailfrom=cadence.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=cadence.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UBsn1y3sfjEhQwbDdih3F8ZpJ1dHNPu/2WffjRky0T0=;
 b=jnE+DAjlx3zoo1Z4ThzrV0L0PH5s47UsN7Td4Rbe0LsslisQSlaU2F8KgMdXvUyuSIluYOjgj/J7VcPptONg+CxYD0u5t/UlBhD6LLglGLVI7ZoDqj0DdNq3dPaMU9B45LXTTRxvUa8vH7MhUNH8D8XZtXrZHToxzWTLkTmdoJI=
Received: from SN4PR0701CA0017.namprd07.prod.outlook.com
 (2603:10b6:803:28::27) by BYAPR07MB6264.namprd07.prod.outlook.com
 (2603:10b6:a03:120::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2263.21; Mon, 16 Sep
 2019 12:45:18 +0000
Received: from DM3NAM05FT041.eop-nam05.prod.protection.outlook.com
 (2a01:111:f400:7e51::205) by SN4PR0701CA0017.outlook.office365.com
 (2603:10b6:803:28::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2263.17 via Frontend
 Transport; Mon, 16 Sep 2019 12:45:17 +0000
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 cadence.com discourages use of 64.207.220.243 as permitted sender)
Received: from wcmailrelayl01.cadence.com (64.207.220.243) by
 DM3NAM05FT041.mail.protection.outlook.com (10.152.98.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.10 via Frontend Transport; Mon, 16 Sep 2019 12:45:16 +0000
Received: from maileu3.global.cadence.com (maileu3.cadence.com [10.160.88.99])
 by wcmailrelayl01.cadence.com (8.14.7/8.14.4) with ESMTP id
 x8GCj0M1170065
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=OK);
 Mon, 16 Sep 2019 05:45:03 -0700
X-CrossPremisesHeadersFilteredBySendConnector: maileu3.global.cadence.com
Received: from maileu3.global.cadence.com (10.160.88.99) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3; Mon, 16 Sep 2019 14:45:00 +0200
Received: from lvlogina.cadence.com (10.165.176.102) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3 via Frontend Transport; Mon, 16 Sep 2019 14:45:00 +0200
Received: from lvlogina.cadence.com (localhost.localdomain [127.0.0.1])
 by lvlogina.cadence.com (8.14.4/8.14.4) with ESMTP id x8GCixkC028492;
 Mon, 16 Sep 2019 13:44:59 +0100
Received: (from piotrs@localhost)
 by lvlogina.cadence.com (8.14.4/8.14.4/Submit) id x8GCippo028307;
 Mon, 16 Sep 2019 13:44:51 +0100
From: Piotr Sroka <piotrs@cadence.com>
To: 
Subject: [v6 0/2] mtd: rawnand: Add Cadence NAND controller driver
Date: Mon, 16 Sep 2019 13:42:57 +0100
Message-ID: <20190916124342.24114-1-piotrs@cadence.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-OrganizationHeadersPreserved: maileu3.global.cadence.com
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:64.207.220.243; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(376002)(39860400002)(36092001)(199004)(189003)(2616005)(476003)(70206006)(50226002)(109986005)(7416002)(126002)(305945005)(48376002)(47776003)(356004)(486006)(86362001)(70586007)(186003)(1076003)(51416003)(26005)(36756003)(478600001)(5660300002)(87636003)(81156014)(81166006)(54906003)(8936002)(4326008)(16586007)(42186006)(1671002)(36906005)(316002)(53936002)(8676002)(2906002)(50466002)(426003)(336012)(266003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR07MB6264; H:wcmailrelayl01.cadence.com;
 FPR:; SPF:SoftFail; LANG:en; PTR:ErrorRetry; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b5075a33-5acc-40fe-3170-08d73aa3b98c
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328);
 SRVR:BYAPR07MB6264; 
X-MS-TrafficTypeDiagnostic: BYAPR07MB6264:
X-Microsoft-Antispam-PRVS: <BYAPR07MB6264F50567C20DFD454FED6BDD8C0@BYAPR07MB6264.namprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0162ACCC24
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: nSLd7ePrB2s7z4c/wYT8vUTu8FMaXd/HRN+zJmR/pZ2jc1U7FUFxUfLjZ86QtcvB23u1Y373vEgBsjyH0dSPnGStK7CdK02bJu3g43jtHz7prZR+zHEN00FXeGXhinD9p5kU71CsV+dqeJK3oNXnaY30macjRdYTsYaHXx/hjU87V1iYQzt+45pDWXErrfaUVEsntCbe3AXVlzsKS9B/M17mm65evreSfMxzlpsV9ByMIr1Mlul3YY4/hWwQcnRymGbyf5JIDd3hPO4AIDtlgXRAa8a8SI9O7z7ym2DsmA52NIZ3L2+O/Eqmi4L646QyHPMqLNkApgVGR04YWNYTX6wLi0eu51DaZK/Bo7egpQ1/cjHwPapuvthuAa30p/mIp0vZq5YtB7yuCqUZVWaop6rmPUTjiV6gbS0p+osgcho=
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2019 12:45:16.1776 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b5075a33-5acc-40fe-3170-08d73aa3b98c
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9; Ip=[64.207.220.243];
 Helo=[wcmailrelayl01.cadence.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR07MB6264
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-16_06:2019-09-11,2019-09-16 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0 malwarescore=0
 priorityscore=1501 adultscore=0 impostorscore=0 suspectscore=0 spamscore=0
 mlxscore=0 mlxlogscore=999 bulkscore=0 phishscore=0 lowpriorityscore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1909160136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_054610_456204_DDD3ADDD 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [208.86.201.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
