Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA0E15722D
	for <lists+linux-mtd@lfdr.de>; Mon, 10 Feb 2020 10:57:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KT5C5pS51qed1I/+IsBHzPzroPwRnAkg2be779X49xE=; b=ViUmjWBqCxLuNV
	ElyBwPqgPxF+YYxDlJYhG9ZI5dZtYxki+W5pnFyVs2sy4P7NVjh3vC+xWkTvgZHBGajzyIm2bzKeQ
	rIL9v/+gNWAubptBV8WuyI4N7lexlB1d4xz2uUBMMw/7dDJEjNGfnavqvxX4zVHBxPIEW4cUEaFiz
	jAEMf+Sj3XqTjb/AbqLUwNfuNnOShhuU8JrLLbomNKzWvzWUUUS7z7dCjfLh9xBdocSJEMCdtICP1
	o1KEW0XZchDIZtuame6yOpamrsb9zu2pQfXARhiQHqJEZKngeuaQ7q2hIv6TkE4FlUPdXhE9VocTf
	s1duW4mwWq/UUmufFiqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j15oG-0002Ay-Cj; Mon, 10 Feb 2020 09:56:56 +0000
Received: from mx0b-0014ca01.pphosted.com ([208.86.201.193]
 helo=mx0a-0014ca01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j15o5-00028x-N2
 for linux-mtd@lists.infradead.org; Mon, 10 Feb 2020 09:56:47 +0000
Received: from pps.filterd (m0042333.ppops.net [127.0.0.1])
 by mx0b-0014ca01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01A9rXJ4031836; Mon, 10 Feb 2020 01:56:29 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=proofpoint;
 bh=O90wWRk6Rm7B0pPTAJ7KjESzK5HCX7l0xplF3hbNPyw=;
 b=tO+oe+EKKz2txl2hBae1l2XbylS5lvwyQZ8jTyvFoxSM8NyN5fIVZLKEf/yRJUkVQGlT
 RXAJspftGpPfgyo3/gXjRJOSMWLV72QwPLiBtRTOmfP0xb8UzKpT++agqXLlBI6Rmcne
 wvP6QOieGPMcnZ2979InYoqRR8JBNU0U2CIxo7YsjmbX767MJMqqz8MzkysHnIv4l9V8
 /yFeKaRJo6U7C6ppUazDjtkgP2Z5/cVWxmnPo/8CIA8s+vC0Oz3Ld3Ceav3pitv3DhXg
 FOc2+530oWj/aC9gqyWLk+FLosTvmteScr1Ki3OYbaS7C64wGjnso5aL98vdNM2iUXYP 3w== 
Received: from nam04-sn1-obe.outbound.protection.outlook.com
 (mail-sn1nam04lp2058.outbound.protection.outlook.com [104.47.44.58])
 by mx0b-0014ca01.pphosted.com with ESMTP id 2y1u17d9e4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 10 Feb 2020 01:56:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KRiHz5UaiVsDccslsLn6rCu0G7EwxvTBP7aD0m46KMyYfpaSCQRk8lnfiKKmoy8v7Pb+DmiNsieVxtAGwI/avG3Nsz/EhtWXlKrr4/pYr5aakHsM6bGSi0YCR65RR9JSiz3mHFymcSVi1QnIpB/S3O9+vPoyLnNNy+rRO4nUPNq565ncHNmAOLTRrLSQiH0Ccft8MmLqGHgu/6FtW/MaxZf+OxhvNeBd21HiuUq50e8/ZAmWLOxv8/Ncv11BIm/6xP8ol0A0E51PPMOhDYvf5Olum6yeGDfaEEISCd+L7yk2MijfWqvIxhObGKVVooBosgO5xqW1bCL0WnusGv+PJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O90wWRk6Rm7B0pPTAJ7KjESzK5HCX7l0xplF3hbNPyw=;
 b=T6Bf4Rw+PeYpB57barcbTPidak17gczYaE4egnaY5xSmra5MDdbn6eWUH3xdxIlYHGG7ZrwgOcdkXtvDslqR8G5H9Hle29qB2SQ7KfwiTd7ujONE59R78dKQKKYbyt7kuaZ884TIl6yx4OCfv8UsCTw7kglYc11Zn+Hodx/aCeM0UAVcUQ6d8avWX/9T0YYy8YRqgWSRqxTeFvJWFd/PF3c6lrJhP9JNV0PIjziXOm4FAZhs8cR7N6UMgrP+ORb0c7W/5n9D4QBiha5QvqklPoq604ghHYCLq2x+2oM6VHaf3zS8i8rGmMAoBnLakJ5xKUNlWqNdAmmc1akaPjXjsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 199.43.4.28) smtp.rcpttodomain=nod.at smtp.mailfrom=cadence.com; dmarc=pass
 (p=none sp=none pct=100) action=none header.from=cadence.com; dkim=none
 (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O90wWRk6Rm7B0pPTAJ7KjESzK5HCX7l0xplF3hbNPyw=;
 b=OyreM5m6GjA5z6NChN/iSDLTWBjH0npqjrnMDmljWPMVRsdHhrg7JaB7ztC/453ga2S58x1YZIgzmDkqoi+lvp09qGraMWfLSwx+0y8FRMbIw5OhX491NEYuCulJW3vucoHmT72WMdQiF98qY+2hHmWS0yUv0ITXMrFwBHM5Ntg=
Received: from DM6PR07CA0047.namprd07.prod.outlook.com (2603:10b6:5:74::24) by
 DM6PR07MB5691.namprd07.prod.outlook.com (2603:10b6:5:32::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.28; Mon, 10 Feb 2020 09:56:26 +0000
Received: from DM6NAM12FT048.eop-nam12.prod.protection.outlook.com
 (2a01:111:f400:fe59::203) by DM6PR07CA0047.outlook.office365.com
 (2603:10b6:5:74::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.21 via Frontend
 Transport; Mon, 10 Feb 2020 09:56:26 +0000
Received-SPF: Pass (protection.outlook.com: domain of cadence.com designates
 199.43.4.28 as permitted sender) receiver=protection.outlook.com;
 client-ip=199.43.4.28; helo=rmmaillnx1.cadence.com;
Received: from rmmaillnx1.cadence.com (199.43.4.28) by
 DM6NAM12FT048.mail.protection.outlook.com (10.13.178.173) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.10 via Frontend Transport; Mon, 10 Feb 2020 09:56:25 +0000
Received: from maileu3.global.cadence.com (maileu3.cadence.com [10.160.88.99])
 by rmmaillnx1.cadence.com (8.14.4/8.14.4) with ESMTP id
 01A9uH0e029084
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Mon, 10 Feb 2020 04:56:19 -0500
X-CrossPremisesHeadersFilteredBySendConnector: maileu3.global.cadence.com
Received: from maileu3.global.cadence.com (10.160.88.99) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3; Mon, 10 Feb 2020 10:56:17 +0100
Received: from vleu-orange.cadence.com (10.160.88.83) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3 via Frontend Transport; Mon, 10 Feb 2020 10:56:17 +0100
Received: from vleu-orange.cadence.com (localhost.localdomain [127.0.0.1])
 by vleu-orange.cadence.com (8.14.4/8.14.4) with ESMTP id 01A9uHXM030214;
 Mon, 10 Feb 2020 10:56:17 +0100
Received: (from piotrs@localhost)
 by vleu-orange.cadence.com (8.14.4/8.14.4/Submit) id 01A9uAdO030204;
 Mon, 10 Feb 2020 10:56:10 +0100
From: Piotr Sroka <piotrs@cadence.com>
To: 
Subject: [PATCH 1/4] mtd: rawnand: cadence: get meta data size from registers
Date: Mon, 10 Feb 2020 10:55:25 +0100
Message-ID: <1581328530-29966-1-git-send-email-piotrs@cadence.com>
X-Mailer: git-send-email 2.4.5
MIME-Version: 1.0
X-OrganizationHeadersPreserved: maileu3.global.cadence.com
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:199.43.4.28; IPV:CAL; SCL:-1; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(39860400002)(346002)(396003)(199004)(189003)(36092001)(70586007)(356004)(6666004)(426003)(70206006)(86362001)(8936002)(109986005)(2616005)(54906003)(316002)(42186006)(81156014)(81166006)(8676002)(186003)(2906002)(26005)(5660300002)(36756003)(26826003)(4326008)(478600001)(336012)(266003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR07MB5691; H:rmmaillnx1.cadence.com; FPR:;
 SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5951f2d8-4617-4271-fe82-08d7ae0f7dd8
X-MS-TrafficTypeDiagnostic: DM6PR07MB5691:
X-Microsoft-Antispam-PRVS: <DM6PR07MB5691C81C935FC6F0E86E428BDD190@DM6PR07MB5691.namprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:655;
X-Forefront-PRVS: 03094A4065
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Cygm7Q6z5aFETjzMwlxsfjZegsHsqw1M8ZYmID2cI7FlUBGuueF3b05rETqI94WOpSagr72yjtC4eNIIgVknMf6WXAT5azCZBxVKd7E7oDbOfV22dXyFBryH4N2cYIYIO7wpgQX09Si/tCekKZ6vCQgcrEHAveRBIUVf+07B/4C8+3dZmKdrpmfASNa1MAKWRkAtvFE0yVzOcF+gZhaE3Ih29WWNRNuIlM9aQNiozgs9y89Bm6N1DJCdsWSff4oNI81ZMxaifCyBYalco05AJawoXuqvBUpwigbWmVuZkEXZEgm/OrdiXhomwTP0ydP0w6ZU2oCzojhrX2/Vs+tc3C/VrB2zmr4pgPwE8pN3kMmTLZ7Qb7O5UWHXLzhAUQ1Fb/LJiP+iuj3XMt4gpRsz9BZG7AxdtphsfV8CEnX9teR4HuhHa8x4a4LxNuxEKblh1A+W7WG/R750ANdmtSJI0Slztk5i44OjXqfzu/K6tXO3RYuHY4lxzwVLyUIBy10PREymo2k8p4Q5EnsgjUW6iQ==
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2020 09:56:25.4650 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5951f2d8-4617-4271-fe82-08d7ae0f7dd8
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9; Ip=[199.43.4.28];
 Helo=[rmmaillnx1.cadence.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR07MB5691
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-10_02:2020-02-07,
 2020-02-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0 bulkscore=0
 malwarescore=0 phishscore=0 priorityscore=1501 impostorscore=0
 mlxlogscore=999 clxscore=1011 mlxscore=0 suspectscore=0 adultscore=0
 spamscore=0 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2001150001 definitions=main-2002100077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_015646_448797_22D0B19E 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [208.86.201.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Kazuhiro Kasai <kasai.kazuhiro@socionext.com>,
 Piotr Sroka <piotrs@cadence.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Add checking size of BCH meta data size in capabilities registers
instead of using fixed value. BCH meta data is used to keep data
from nand flash oob area.

Signed-off-by: Piotr Sroka <piotrs@cadence.com>
---
 .../mtd/nand/raw/cadence-nand-controller.c    | 21 ++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/nand/raw/cadence-nand-controller.c b/drivers/mtd/nand/raw/cadence-nand-controller.c
index f6c7102a1e32..5063a8b493a4 100644
--- a/drivers/mtd/nand/raw/cadence-nand-controller.c
+++ b/drivers/mtd/nand/raw/cadence-nand-controller.c
@@ -30,7 +30,6 @@
  * Generic mode is used for executing rest of commands.
  */
 
-#define MAX_OOB_SIZE_PER_SECTOR	32
 #define MAX_ADDRESS_CYC		6
 #define MAX_ERASE_ADDRESS_CYC	3
 #define MAX_DATA_SIZE		0xFFFC
@@ -190,6 +189,7 @@
 
 /* BCH Engine identification register 3. */
 #define BCH_CFG_3				0x844
+#define		BCH_CFG_3_METADATA_SIZE		GENMASK(23, 16)
 
 /* Ready/Busy# line status. */
 #define RBN_SETINGS				0x1004
@@ -499,6 +499,7 @@ struct cdns_nand_ctrl {
 
 	unsigned long assigned_cs;
 	struct list_head chips;
+	u8 bch_metadata_size;
 };
 
 struct cdns_nand_chip {
@@ -1077,6 +1078,14 @@ static int cadence_nand_read_bch_caps(struct cdns_nand_ctrl *cdns_ctrl)
 	int max_step_size = 0, nstrengths, i;
 	u32 reg;
 
+	reg = readl_relaxed(cdns_ctrl->reg + BCH_CFG_3);
+	cdns_ctrl->bch_metadata_size = FIELD_GET(BCH_CFG_3_METADATA_SIZE, reg);
+	if (cdns_ctrl->bch_metadata_size < 4) {
+		dev_err(cdns_ctrl->dev,
+			"Driver needs at least 4 bytes of BCH meta data\n");
+		return -EIO;
+	}
+
 	reg = readl_relaxed(cdns_ctrl->reg + BCH_CFG_0);
 	cdns_ctrl->ecc_strengths[0] = FIELD_GET(BCH_CFG_0_CORR_CAP_0, reg);
 	cdns_ctrl->ecc_strengths[1] = FIELD_GET(BCH_CFG_0_CORR_CAP_1, reg);
@@ -1170,7 +1179,8 @@ static int cadence_nand_hw_init(struct cdns_nand_ctrl *cdns_ctrl)
 	writel_relaxed(0xFFFFFFFF, cdns_ctrl->reg + INTR_STATUS);
 
 	cadence_nand_get_caps(cdns_ctrl);
-	cadence_nand_read_bch_caps(cdns_ctrl);
+	if (cadence_nand_read_bch_caps(cdns_ctrl))
+		return -EIO;
 
 	/*
 	 * Set IO width access to 8.
@@ -2587,7 +2597,6 @@ int cadence_nand_attach_chip(struct nand_chip *chip)
 	struct cdns_nand_chip *cdns_chip = to_cdns_nand_chip(chip);
 	u32 ecc_size = cdns_chip->sector_count * chip->ecc.bytes;
 	struct mtd_info *mtd = nand_to_mtd(chip);
-	u32 max_oob_data_size;
 	int ret;
 
 	if (chip->options & NAND_BUSWIDTH_16) {
@@ -2628,10 +2637,8 @@ int cadence_nand_attach_chip(struct nand_chip *chip)
 
 	cdns_chip->avail_oob_size = mtd->oobsize - ecc_size;
 
-	max_oob_data_size = MAX_OOB_SIZE_PER_SECTOR;
-
-	if (cdns_chip->avail_oob_size > max_oob_data_size)
-		cdns_chip->avail_oob_size = max_oob_data_size;
+	if (cdns_chip->avail_oob_size > cdns_ctrl->bch_metadata_size)
+		cdns_chip->avail_oob_size = cdns_ctrl->bch_metadata_size;
 
 	if ((cdns_chip->avail_oob_size + cdns_chip->bbm_len + ecc_size)
 	    > mtd->oobsize)
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
