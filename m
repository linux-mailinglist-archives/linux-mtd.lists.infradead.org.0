Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F09E157233
	for <lists+linux-mtd@lfdr.de>; Mon, 10 Feb 2020 10:57:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dpgX0yzGPCSnSt+Cgg0lhfByXWlCLfZOXAnV49QV4dg=; b=LUXwO5C3nNjrTi
	tqaUgE9XeJ1Yam50YQiyowUKWk7kb9iSh7S+mZCf8tc1sdGTph9wlO7aHwsPYxeihkuL3VQwOny6K
	p1nv9Wa27Y5B0AF0h592ohLKlANNTGMj95HJA+7bsiZY80QXcDJTnT0AOWt7hohINsZ9nMS8STusk
	6Hc9I6NQCge6+28pY/+Hx29K/EbVhRCFo0uM/G7z5PACEMiH8bkzs31yc1HrDJ0qjEFYxUSSMTK8e
	WjObrA+QmV1yCPE+YMjIMQfqbMQBLBj7rgovu4lL14fksz18B9baRx3NHfOkhptfCcW4fdLNm15yN
	FlhwIdFUq6eTU1pI0bGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j15ou-0002c4-Mv; Mon, 10 Feb 2020 09:57:36 +0000
Received: from mx0a-0014ca01.pphosted.com ([208.84.65.235])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j15oF-0002Hx-Qe
 for linux-mtd@lists.infradead.org; Mon, 10 Feb 2020 09:56:57 +0000
Received: from pps.filterd (m0042385.ppops.net [127.0.0.1])
 by mx0a-0014ca01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01A9qjYl013001; Mon, 10 Feb 2020 01:56:43 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=proofpoint;
 bh=Ffk8csaGWAEw0OFLormV0A9G4oo/pPKffEVNCiclfRg=;
 b=jiN0tKNGojQ5lZdqRXe1hjV9oiTWA6VTi5N/IaWzJn9PH9qP+kxs3SEBAYwQr21oYoXg
 VmItGfVHbg012pKk+T5J3OKyoKqWIWJZIr+XuUY2vJp5KPeRiRWoTNq474B9YsEFe7uE
 dwtApoCgoZrSC3J01Q9WDAZbU679cgZLZxrTRSBx/pizcgyZO5yY68rDVh17C+vqj43f
 /Th9lMR2STBPI3FartMZkpzKEbqRuCS5pyVaDurgCTjR2k28TJFPQKz2wypcDzc+0HX6
 m6ufgTMzBQFsC/eBzVgzgcMw7Z0G4T38Z5oD4jYaS1qBVdmB8dSMA2zdrX+l+MYW726s 3g== 
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2105.outbound.protection.outlook.com [104.47.70.105])
 by mx0a-0014ca01.pphosted.com with ESMTP id 2y1tmpna16-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 10 Feb 2020 01:56:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fgek0OA9Fn8E9QwwOJ4w6gnWXyhFZdV+6R6oQW/YOJIvRiEv+H1VPEfzInuT3VAEcrNXUNBRS/zhh3HcUwne8r0PfSNvRBli3rwNYtq7uQz+vZuSHEHdNqGu/VrkNOdcxO7OBMxWFGQN8I0jZ31dZQW3OZ1hs05a4JNmMcLqiqEq36GZGIZ0TKtzkxDB14PjFRFdFVuTrfMrtF5AvgAWPSmCD077KbEo+kAPHBA7atwL4gpDj2uWP90Tc8lQLZnZvLpk2sJ3M2Crz/i0wGv2O9hDANpvbzJtNafD0wTDq+D7GkcDIUOEWIhmxSBWX2R6ruqnb8bKxbURUbiwRKLSBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ffk8csaGWAEw0OFLormV0A9G4oo/pPKffEVNCiclfRg=;
 b=Y8oZwc/CMmg5tfzrRjRJD2nod+cLepM+IZQYZxUJjDQc648V4FmxdDCi9dWdiftAvZdUbe7lALYzh+0cSsOrRXR69PG/jiLoGZWNA6OsBXymjbXKt6Rv+MIxyLomaP7kW5ztBnImmzwa/93nTw3JXNRt6hXLBFUAz2c2vvZM/Wnl1fnLbcetQ23wwK5HIb6pI6S4T8yVEz2tCvaXL8CJgsnMOx2eLgSmQiOGB/TuMV6ynOV3FsvKneA0dVjImibrQpNxTe2qsKmhO18MS8+lqWHJp9zMU4J/xS+trxTEUITNGQq+SIA5pa2EypAypGzocIp9JQjBoBVfAJTzoAjIcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 158.140.1.28) smtp.rcpttodomain=nod.at smtp.mailfrom=cadence.com; dmarc=pass
 (p=none sp=none pct=100) action=none header.from=cadence.com; dkim=none
 (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ffk8csaGWAEw0OFLormV0A9G4oo/pPKffEVNCiclfRg=;
 b=GEsSEGepyUwBs40tYyN9I3SMbZkqR3G6gr1eh/caBrW7uNJAvepUqVdvP0cEqstK8IGyfEyeK+CiuyQg3ICubLremVkH6WR+5L94AcQ20llEHyB+zTPuLlcYXaIKPpjtZ9dDeZdiIfjPmv5Glnpsf0e0pqXlICBRM1peq2Y7kE4=
Received: from BYAPR07CA0047.namprd07.prod.outlook.com (2603:10b6:a03:60::24)
 by MN2PR07MB6944.namprd07.prod.outlook.com (2603:10b6:208:1a6::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.21; Mon, 10 Feb
 2020 09:56:39 +0000
Received: from DM6NAM12FT065.eop-nam12.prod.protection.outlook.com
 (2a01:111:f400:fe59::208) by BYAPR07CA0047.outlook.office365.com
 (2603:10b6:a03:60::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.21 via Frontend
 Transport; Mon, 10 Feb 2020 09:56:39 +0000
Received-SPF: Pass (protection.outlook.com: domain of cadence.com designates
 158.140.1.28 as permitted sender) receiver=protection.outlook.com;
 client-ip=158.140.1.28; helo=sjmaillnx1.cadence.com;
Received: from sjmaillnx1.cadence.com (158.140.1.28) by
 DM6NAM12FT065.mail.protection.outlook.com (10.13.179.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.10 via Frontend Transport; Mon, 10 Feb 2020 09:56:38 +0000
Received: from maileu3.global.cadence.com (maileu3.cadence.com [10.160.88.99])
 by sjmaillnx1.cadence.com (8.14.4/8.14.4) with ESMTP id
 01A9uXCe010151
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Mon, 10 Feb 2020 01:56:35 -0800
X-CrossPremisesHeadersFilteredBySendConnector: maileu3.global.cadence.com
Received: from maileu3.global.cadence.com (10.160.88.99) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3; Mon, 10 Feb 2020 10:56:33 +0100
Received: from vleu-orange.cadence.com (10.160.88.83) by
 maileu3.global.cadence.com (10.160.88.99) with Microsoft SMTP Server (TLS) id
 15.0.1367.3 via Frontend Transport; Mon, 10 Feb 2020 10:56:33 +0100
Received: from vleu-orange.cadence.com (localhost.localdomain [127.0.0.1])
 by vleu-orange.cadence.com (8.14.4/8.14.4) with ESMTP id 01A9uXAj030258;
 Mon, 10 Feb 2020 10:56:33 +0100
Received: (from piotrs@localhost)
 by vleu-orange.cadence.com (8.14.4/8.14.4/Submit) id 01A9uXCo030257;
 Mon, 10 Feb 2020 10:56:33 +0100
From: Piotr Sroka <piotrs@cadence.com>
To: 
Subject: [PATCH 2/4] mtd: rawnand: cadence: fix calculating avaialble oob size
Date: Mon, 10 Feb 2020 10:55:26 +0100
Message-ID: <1581328530-29966-2-git-send-email-piotrs@cadence.com>
X-Mailer: git-send-email 2.4.5
In-Reply-To: <1581328530-29966-1-git-send-email-piotrs@cadence.com>
References: <1581328530-29966-1-git-send-email-piotrs@cadence.com>
MIME-Version: 1.0
X-OrganizationHeadersPreserved: maileu3.global.cadence.com
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:158.140.1.28; IPV:CAL; SCL:-1; CTRY:US;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(376002)(39860400002)(36092001)(189003)(199004)(356004)(6666004)(7636002)(36756003)(5660300002)(4326008)(109986005)(70586007)(2616005)(70206006)(426003)(186003)(2906002)(8936002)(26826003)(336012)(478600001)(26005)(246002)(86362001)(54906003)(42186006)(8676002)(316002)(266003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR07MB6944; H:sjmaillnx1.cadence.com; FPR:;
 SPF:Pass; LANG:en; PTR:corp.Cadence.COM; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d4262be7-e959-4fd0-87e3-08d7ae0f85a3
X-MS-TrafficTypeDiagnostic: MN2PR07MB6944:
X-Microsoft-Antispam-PRVS: <MN2PR07MB6944CCCFB152A5D67B36B208DD190@MN2PR07MB6944.namprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-Forefront-PRVS: 03094A4065
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Aac77gRf7gOnWBcGP6oOzyYvbY3BUsY1GWvYD+mtRf70IbgMPaPYLSIzOV1GEA6RzBIAOsrg1MK3seIZYb8Q1/+RYehJcsfH0VZr0ntgwaBQHDCeuczjOtXM+2Hcb60roFWBizvrSZYJ9g5QaRx9ms1jYjLfSMZvvmCOkRTUdIlYYTRxAGIMWCWOMvtQr/Lk+zP+aibtEszJJHOuIINJ8TPvsaO5Tj9RSAmaLf/a/jsk5g33BrDI9n6cyFpRArtglLVRq93LCB/uus+uJfkqkSSRaPmUtRX/b52v77OlA1r+WN52eBtZOu0og8Xdy9kgy+Z/2iTBGYdrp2NSkKd2Clmu+A/9rFa93zyHb12mrQXA823UDEjKxPWRb3UvZ5enP+VWz8D3pC4Fb9FIWzR3C/cN1Uaqgt70LVbC1uv+idjNcu4Hyidw5u1MzmW/4PQzXOisbgOF2zvJc7ElkYxUXDoA4EvjD2ZIfa27dIPjcq6Yg3d4ukpNRK2AGihsSI2HDJsbltXxznvPCK27HFCsDQ==
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2020 09:56:38.4954 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d4262be7-e959-4fd0-87e3-08d7ae0f85a3
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9; Ip=[158.140.1.28];
 Helo=[sjmaillnx1.cadence.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR07MB6944
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-10_02:2020-02-07,
 2020-02-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0 impostorscore=0
 lowpriorityscore=0 mlxlogscore=788 spamscore=0 priorityscore=1501
 bulkscore=0 phishscore=0 mlxscore=0 suspectscore=0 clxscore=1015
 adultscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2001150001 definitions=main-2002100077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_015655_904922_77D66BFF 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [208.84.65.235 listed in list.dnswl.org]
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

Previously ecc_sector size was used for calculation but its value
was not yet known.

Signed-off-by: Piotr Sroka <piotrs@cadence.com>
---
 drivers/mtd/nand/raw/cadence-nand-controller.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/cadence-nand-controller.c b/drivers/mtd/nand/raw/cadence-nand-controller.c
index 5063a8b493a4..2ebfd0934739 100644
--- a/drivers/mtd/nand/raw/cadence-nand-controller.c
+++ b/drivers/mtd/nand/raw/cadence-nand-controller.c
@@ -2595,7 +2595,7 @@ int cadence_nand_attach_chip(struct nand_chip *chip)
 {
 	struct cdns_nand_ctrl *cdns_ctrl = to_cdns_nand_ctrl(chip->controller);
 	struct cdns_nand_chip *cdns_chip = to_cdns_nand_chip(chip);
-	u32 ecc_size = cdns_chip->sector_count * chip->ecc.bytes;
+	u32 ecc_size;
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	int ret;
 
@@ -2634,6 +2634,7 @@ int cadence_nand_attach_chip(struct nand_chip *chip)
 	/* Error correction configuration. */
 	cdns_chip->sector_size = chip->ecc.size;
 	cdns_chip->sector_count = mtd->writesize / cdns_chip->sector_size;
+	ecc_size = cdns_chip->sector_count * chip->ecc.bytes;
 
 	cdns_chip->avail_oob_size = mtd->oobsize - ecc_size;
 
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
