Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA823157234
	for <lists+linux-mtd@lfdr.de>; Mon, 10 Feb 2020 10:57:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZWvo14GniDw7Rr+Fz6qdKxjcR03SX8qgoPfM9aYLQXc=; b=r5oBDsdyQ43mX1
	aJkuWru/gbNQYC0O+OZnR7WL3ak2VZiAWo3Ao6BSYbLDpIKijsEnEkZ/tae51AUKGLUBpxfAwfa8V
	60TEW7rs9XSzEpAIPLXJ85VwYGHxi5W040SezoghHAeQbT8Qe2Sa5BThLL7ZAaUfZIGmR5TnSsIZE
	DF/fU8zF+Xc+jiaCRG6H7Y+AuhByYbojQBY7QsT4Hh1pRGdVRl6qX6EPPzkmEfbvPNluZDiBWoo+/
	HwPeIRfcrT8dtB932v3pfc3i9l2yiz/vNhoVelFRGoO19eBRfJYwXM/YtrMFMQp6BSZDk+rAfdB9J
	4aZ1rje3L8aQmRGJkGQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j15pD-00033i-MH; Mon, 10 Feb 2020 09:57:55 +0000
Received: from mx0b-0014ca01.pphosted.com ([208.86.201.193]
 helo=mx0a-0014ca01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j15oH-0002LX-OJ
 for linux-mtd@lists.infradead.org; Mon, 10 Feb 2020 09:56:59 +0000
Received: from pps.filterd (m0042333.ppops.net [127.0.0.1])
 by mx0b-0014ca01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01A9rXJ8031836; Mon, 10 Feb 2020 01:56:49 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=proofpoint;
 bh=MkWFF7EmeFLz23iTv7r8kNoNjaqoi3zsgSRGdIdCf0A=;
 b=ZXHj/UltdzK0WkPnaziRrKZMPPXKiQYjVI6gIdedsI0PwYkrEufVFTAvwmfT/e7brH3H
 sc/nuSDD+ImZLvmkDrZLUSUCutwnPq/qX3Yu+w1LZn28usnkEUBYHZESGFeYFtXGcjHH
 UMpw8Nb4NUO0Qf7FBJ559yaaOBOPrIzDZXJJL//7sjGid7zSlyG+8WNE50Y0i3DhiEhr
 VBH50O1M/1DLTMxIDdSgXTZnQ2f4U0cXf2MdX7wm1qyveWDj4HgN39cDmP1pgweDAc3S
 2uE4XC2wTPmwP2Y0hSnoC0PTYxZZZgDtfpCyNXjMmAsiHCrfwM1nyjGZaEXtbETczac0 RQ== 
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2103.outbound.protection.outlook.com [104.47.70.103])
 by mx0b-0014ca01.pphosted.com with ESMTP id 2y1u17d9en-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 10 Feb 2020 01:56:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jFRx04RjgfS5e6jrvCPEA0WnzzD9AekteAaDyYZGtzdZ4IEVKN0ETqGiNilbcmdeO3vWuA4NyJsi7kr+I9AdHfpA3ENWu+AWNCd2elO+zsXr44qxxfaF+WCPF6zgsNMTSgnKoDNeuEu+IwM7k7zeVGoKevu7AVnvDZJghbSyLjzmRG6s+MYy7lqc+ElSiXTH2hStgwHjn1bvQeNv2sbGhRvHYpw2haS0TrnhBH3z9RgGtYoCLi2w0e5j4L4i4kDUz7CIJXSBURJT6zpdhhkhHeacV6AJlpIhFL1mwhlYZkZ+EDPjs6+SompnteiJ4kn+TjDk9NuwDI/cpzF5aZpZZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MkWFF7EmeFLz23iTv7r8kNoNjaqoi3zsgSRGdIdCf0A=;
 b=BYToVQC5k6kwaBBA+d3hVWhSZTRl1DysyUN9yOF+WJnxKoIERtapSdts5wkXydHhuSx1AgtItTPzpgXLY/h1joS/8YSDvC0fOLT8uMd3pIK+GZAzoXY76acTe/aJWP0TGG2AQQbfIg0Adz6fdwPnD9nSjGZWEt/bzVl4e22PErv0iG9ZzQYKaGOlhVi0Z8bv5wrN81bcOI/J7y+kPhH865sEcdaaGChbC8P2HaCT5eC0f9gZNf5SJuEv+Q8TvBV18VngspSyCfyz9c2qwmGFibnydkHjvV/MrkXjG8WhGfGH1FsIUuew6HegOgwPG8FuUEXhQhCg7UEhP5hweYip9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 158.140.1.28) smtp.rcpttodomain=nod.at smtp.mailfrom=cadence.com; dmarc=pass
 (p=none sp=none pct=100) action=none header.from=cadence.com; dkim=none
 (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MkWFF7EmeFLz23iTv7r8kNoNjaqoi3zsgSRGdIdCf0A=;
 b=llTVqGVR/5YPQSqZal0W8ZFbWkPqVsmm5H5bxkvDDNBLO44yyyG6f7/N8jg7RK83hytgl3skI9Mn8Wd+wvQAtiFF897r2lMcj1ZgEAeK44NGCakjrD8Z2muXzQt8DPC/sjaKyxF6jOPEecffZPIbHG1KiFQ7L7lfccjzpDNmv1o=
Received: from SN4PR0701CA0039.namprd07.prod.outlook.com
 (2603:10b6:803:2d::28) by SN6PR07MB5486.namprd07.prod.outlook.com
 (2603:10b6:805:ee::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.23; Mon, 10 Feb
 2020 09:56:47 +0000
Received: from BN8NAM12FT042.eop-nam12.prod.protection.outlook.com
 (2a01:111:f400:fe5b::205) by SN4PR0701CA0039.outlook.office365.com
 (2603:10b6:803:2d::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.21 via Frontend
 Transport; Mon, 10 Feb 2020 09:56:47 +0000
Received-SPF: Pass (protection.outlook.com: domain of cadence.com designates
 158.140.1.28 as permitted sender) receiver=protection.outlook.com;
 client-ip=158.140.1.28; helo=sjmaillnx2.cadence.com;
Received: from sjmaillnx2.cadence.com (158.140.1.28) by
 BN8NAM12FT042.mail.protection.outlook.com (10.13.182.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.10 via Frontend Transport; Mon, 10 Feb 2020 09:56:47 +0000
Received: from maileu3.global.cadence.com (maileu3.cadence.com [10.160.88.99])
 by sjmaillnx2.cadence.com (8.14.4/8.14.4) with ESMTP id
 01A9ui2K018302
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Mon, 10 Feb 2020 01:56:45 -0800
X-CrossPremisesHeadersFilteredBySendConnector: maileu3.global.cadence.com
Received: from maileu3.global.cadence.com (10.160.88.99) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3; Mon, 10 Feb 2020 10:56:44 +0100
Received: from vleu-orange.cadence.com (10.160.88.83) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3 via Frontend Transport; Mon, 10 Feb 2020 10:56:44 +0100
Received: from vleu-orange.cadence.com (localhost.localdomain [127.0.0.1])
 by vleu-orange.cadence.com (8.14.4/8.14.4) with ESMTP id 01A9uiEu030287;
 Mon, 10 Feb 2020 10:56:44 +0100
Received: (from piotrs@localhost)
 by vleu-orange.cadence.com (8.14.4/8.14.4/Submit) id 01A9uitv030286;
 Mon, 10 Feb 2020 10:56:44 +0100
From: Piotr Sroka <piotrs@cadence.com>
To: 
Subject: [PATCH 4/4] mtd: rawnand: cadence: reinit complete before execute
 command
Date: Mon, 10 Feb 2020 10:55:28 +0100
Message-ID: <1581328530-29966-4-git-send-email-piotrs@cadence.com>
X-Mailer: git-send-email 2.4.5
In-Reply-To: <1581328530-29966-1-git-send-email-piotrs@cadence.com>
References: <1581328530-29966-1-git-send-email-piotrs@cadence.com>
MIME-Version: 1.0
X-OrganizationHeadersPreserved: maileu3.global.cadence.com
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:158.140.1.28; IPV:CAL; SCL:-1; CTRY:US;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(39860400002)(136003)(189003)(199004)(36092001)(2616005)(86362001)(8936002)(5660300002)(316002)(70206006)(426003)(70586007)(7636002)(246002)(8676002)(478600001)(2906002)(26005)(42186006)(26826003)(109986005)(4326008)(356004)(54906003)(6666004)(336012)(186003)(36756003)(4744005)(266003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR07MB5486; H:sjmaillnx2.cadence.com; FPR:;
 SPF:Pass; LANG:en; PTR:corp.cadence.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 152df9fa-5d77-45c8-3119-08d7ae0f8aca
X-MS-TrafficTypeDiagnostic: SN6PR07MB5486:
X-Microsoft-Antispam-PRVS: <SN6PR07MB548631B592DE123DA79C108FDD190@SN6PR07MB5486.namprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:397;
X-Forefront-PRVS: 03094A4065
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3gr8XE6R1tqAknxNTHohDjz+6zi17pS7qB93MfXgl9jwXN/vKR0/v1dXvJEMN0aiwL/DmLAYc7lXP6ijgcXaCB8mvXvhMJ+HiHCK33+6Ipzu8uo473b31lnJ3euRCXVMUAMQKKw9LT0HSvCAEo/YTjuLYabPOwWiOMb/64+0xeYqv9fS17THwF+DEZy1qLGuAECbA1CAT+IgTddTm3VnEqIq7b343U2zR/AX7iktfvZOkEAMopPG4NS9InnR/Q/ZXszC6L8zyw0w5ySRkZfJm2owJVh/rj36mrCoLfA8Fr8UUWipjSF2v45RgZbNtnCRQh/bLECK5l/guzWdbzNzXcAQi53aH/dRwRWWw5MwJ9LCcMl8s2qrvtBn8g8uGw+2wTWepKii6MV2q8ztT11Xmqb9HsGEPzA6mw7RNHiIDmcKBq8nYBp8o6HK1FMuNwwGm1qksVirilZs2zD4O6WrlHPqWlUhvuTDs4B56Jul8YTo+hBZBWM6GWWbLWttqQ2txebzsp3bmaFiO6wPUWpvIw==
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2020 09:56:47.1094 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 152df9fa-5d77-45c8-3119-08d7ae0f8aca
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9; Ip=[158.140.1.28];
 Helo=[sjmaillnx2.cadence.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR07MB5486
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-10_02:2020-02-07,
 2020-02-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0 bulkscore=0
 malwarescore=0 phishscore=0 priorityscore=1501 impostorscore=0
 mlxlogscore=856 clxscore=1015 mlxscore=0 suspectscore=0 adultscore=0
 spamscore=0 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2001150001 definitions=main-2002100077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_015657_945185_BF1B5887 
X-CRM114-Status: GOOD (  12.06  )
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

Reinitilaize complete object before executing CDMA command to make sure
that done flag is ok.

Signed-off-by: Piotr Sroka <piotrs@cadence.com>
---
 drivers/mtd/nand/raw/cadence-nand-controller.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/nand/raw/cadence-nand-controller.c b/drivers/mtd/nand/raw/cadence-nand-controller.c
index 5c1bbb05ab51..efddc5c68afb 100644
--- a/drivers/mtd/nand/raw/cadence-nand-controller.c
+++ b/drivers/mtd/nand/raw/cadence-nand-controller.c
@@ -998,6 +998,7 @@ static int cadence_nand_cdma_send(struct cdns_nand_ctrl *cdns_ctrl,
 		return status;
 
 	cadence_nand_reset_irq(cdns_ctrl);
+	reinit_completion(&cdns_ctrl->complete);
 
 	writel_relaxed((u32)cdns_ctrl->dma_cdma_desc,
 		       cdns_ctrl->reg + CMD_REG2);
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
