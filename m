Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC737177A8
	for <lists+linux-mtd@lfdr.de>; Wed,  8 May 2019 13:32:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IxXDOuueEGhvuPJJvfZSvsBKEHa+vukXdVExerQUgTk=; b=stJDfa7hz2Ner7
	xi4hBYRosOV11WEFHxSZ3OrVD24n3p7OHjl+0sZANkGtrGY8dGpztqCJ5hnHrZMZjymihI7sX71z8
	Jjn/bTvNWSfxwlV9qsJQsKphCcWsQSAE0Aj9HRPIHEI0WtsqFbwKf8WiWa46cpb0cn4h4YZSmYcZ3
	Rzzz2REAJQTABJtormLUFnjOPKtT1+ETmc6yDTs7nqldtOg4t9V0kCtCY259l1jfnyhitwhKXE6Je
	8kICZ5wsIBztcphlvJNCrCzFBd3zpp6pkFa/Lfgu2wCwvPYRzrPxZiJEyIUTxr3mz8gVY6VIen5np
	cxVWUOPD0ZAhAYr6Y5yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOKoN-0002Un-5W; Wed, 08 May 2019 11:32:35 +0000
Received: from mail-eopbgr780045.outbound.protection.outlook.com
 ([40.107.78.45] helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOKlq-0006sC-2m; Wed, 08 May 2019 11:30:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector1-analog-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=peJzb31cm17ABrXFyc+VL8b8kWU6z5UpeWBKRx5iGOY=;
 b=Ht8Fm6RXFzi+Mh2C7TtDBrevghDIkKBBrf5hR26HEMHT3clXH+auLpcCAPlBDjunidMIf2KlMCOrIihkOj8RRHLgWzEWMMKXr0g4KWNemLVVhqUlyEjNr2yadJK+HpBmin3dfirgmdsGRBLIe+wQFsopNOyElR+2pj8AJZVAfxw=
Received: from BYAPR03CA0029.namprd03.prod.outlook.com (2603:10b6:a02:a8::42)
 by CY4PR03MB3127.namprd03.prod.outlook.com (2603:10b6:910:53::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1856.15; Wed, 8 May
 2019 11:29:53 +0000
Received: from BL2NAM02FT049.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::206) by BYAPR03CA0029.outlook.office365.com
 (2603:10b6:a02:a8::42) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1856.11 via Frontend
 Transport; Wed, 8 May 2019 11:29:52 +0000
Authentication-Results: spf=pass (sender IP is 137.71.25.55)
 smtp.mailfrom=analog.com; lists.freedesktop.org; dkim=none (message not
 signed) header.d=none;lists.freedesktop.org; dmarc=bestguesspass action=none
 header.from=analog.com;
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.55 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.55; helo=nwd2mta1.analog.com;
Received: from nwd2mta1.analog.com (137.71.25.55) by
 BL2NAM02FT049.mail.protection.outlook.com (10.152.77.118) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1856.11
 via Frontend Transport; Wed, 8 May 2019 11:29:52 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta1.analog.com (8.13.8/8.13.8) with ESMTP id x48BTp08023613
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Wed, 8 May 2019 04:29:51 -0700
Received: from saturn.analog.com (10.50.1.244) by NWD2HUBCAS7.ad.analog.com
 (10.64.69.107) with Microsoft SMTP Server id 14.3.408.0; Wed, 8 May 2019
 07:29:51 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <linuxppc-dev@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>,
 <linux-ide@vger.kernel.org>, <linux-clk@vger.kernel.org>,
 <linux-rpi-kernel@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-rockchip@lists.infradead.org>, 
 <linux-pm@vger.kernel.org>, <linux-gpio@vger.kernel.org>,
 <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <linux-omap@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
 <linux-wireless@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-pci@vger.kernel.org>, <linux-tegra@vger.kernel.org>,
 <devel@driverdev.osuosl.org>, <linux-usb@vger.kernel.org>,
 <kvm@vger.kernel.org>, <linux-fbdev@vger.kernel.org>,
 <linux-mtd@lists.infradead.org>, <cgroups@vger.kernel.org>,
 <linux-mm@kvack.org>, <linux-security-module@vger.kernel.org>,
 <linux-integrity@vger.kernel.org>, <alsa-devel@alsa-project.org>
Subject: [PATCH 06/16] x86/mtrr: use new match_string() helper + add gaps ==
 minor fix
Date: Wed, 8 May 2019 14:28:32 +0300
Message-ID: <20190508112842.11654-8-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508112842.11654-1-alexandru.ardelean@analog.com>
References: <20190508112842.11654-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.55; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(1496009)(39860400002)(346002)(136003)(396003)(376002)(2980300002)(189003)(199004)(478600001)(356004)(7416002)(4326008)(476003)(107886003)(305945005)(5660300002)(76176011)(48376002)(47776003)(50466002)(486006)(7636002)(44832011)(70206006)(70586007)(2906002)(110136005)(6666004)(50226002)(8936002)(54906003)(2616005)(246002)(53416004)(16586007)(1076003)(8676002)(11346002)(106002)(86362001)(7696005)(51416003)(446003)(126002)(426003)(186003)(2441003)(2201001)(336012)(316002)(26005)(36756003)(77096007)(921003)(83996005)(2101003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR03MB3127; H:nwd2mta1.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail10.analog.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9e84d071-f926-4c84-2e80-08d6d3a87ceb
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328);
 SRVR:CY4PR03MB3127; 
X-MS-TrafficTypeDiagnostic: CY4PR03MB3127:
X-Microsoft-Antispam-PRVS: <CY4PR03MB3127E9C16F1035878E392535F9320@CY4PR03MB3127.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-Forefront-PRVS: 0031A0FFAF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: hda0K0v5ij/G6H2YACXfIt6bKjpSjAgKGea3NqLag4TL7c+wMp6G/9ToPo3Vo2ALGoXYKL8lIXefI3pjgsKmvrxcQbFYmQXJS7mMxOOHzlhmFQ7IYxncBKfDC4dQju6ANVJhrbiCK6I2H9u41GPFBS6zp5bmQ3KEGqcTA6uu8J8UwkG02mPR404b+UaRjboXhFhWhmzco8OFnY/ZS+Oyiv+jgrcub3OWF1ZE6g2PWZYCiPw+ix3NL4MdKxaNv0gnzhApnIqnJ4GghYC7Eb4ExLnTn+gnu/dJzfLMbsj54G46HtKSw8zG3MhatUk0Fy/RUF/d0ftyuE3K6GD9m91VOurlbnHt9HiykZLpXxUZ0G1o+7zGAAC/ca50ThQK38xp2eRz+OZNwVPJAdO97Sm3P+EhZBozB3hNY3g9PrvxJRw=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2019 11:29:52.2067 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e84d071-f926-4c84-2e80-08d6d3a87ceb
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.55];
 Helo=[nwd2mta1.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR03MB3127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_042958_468041_B449AE6C 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.78.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: gregkh@linuxfoundation.org,
 Alexandru Ardelean <alexandru.ardelean@analog.com>,
 andriy.shevchenko@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This change is a bit more than cosmetic.

It replaces 2 values in mtrr_strings with NULL. Previously, they were
defined as "?", which is not great because you could technically pass "?",
and you would get value 2.
It's not sure whether that was intended (likely it wasn't), but this fixes
that.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 arch/x86/kernel/cpu/mtrr/if.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/x86/kernel/cpu/mtrr/if.c b/arch/x86/kernel/cpu/mtrr/if.c
index 4ec7a5f7b94c..e67820a044cc 100644
--- a/arch/x86/kernel/cpu/mtrr/if.c
+++ b/arch/x86/kernel/cpu/mtrr/if.c
@@ -20,8 +20,8 @@ static const char *const mtrr_strings[MTRR_NUM_TYPES] =
 {
 	"uncachable",		/* 0 */
 	"write-combining",	/* 1 */
-	"?",			/* 2 */
-	"?",			/* 3 */
+	NULL,			/* 2 */
+	NULL,			/* 3 */
 	"write-through",	/* 4 */
 	"write-protect",	/* 5 */
 	"write-back",		/* 6 */
@@ -29,7 +29,9 @@ static const char *const mtrr_strings[MTRR_NUM_TYPES] =
 
 const char *mtrr_attrib_to_str(int x)
 {
-	return (x <= 6) ? mtrr_strings[x] : "?";
+	if ((x >= ARRAY_SIZE(mtrr_strings)) || (mtrr_strings[x] == NULL))
+		return "?";
+	return mtrr_strings[x];
 }
 
 #ifdef CONFIG_PROC_FS
@@ -142,7 +144,7 @@ mtrr_write(struct file *file, const char __user *buf, size_t len, loff_t * ppos)
 		return -EINVAL;
 	ptr = skip_spaces(ptr + 5);
 
-	i = __match_string(mtrr_strings, MTRR_NUM_TYPES, ptr);
+	i = match_string(mtrr_strings, ptr);
 	if (i < 0)
 		return i;
 
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
