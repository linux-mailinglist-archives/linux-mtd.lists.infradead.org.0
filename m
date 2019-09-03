Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75546A5F73
	for <lists+linux-mtd@lfdr.de>; Tue,  3 Sep 2019 04:46:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MaRs4TbpzoaU275hRx9ByUIHpLfw0O+vl5i2hxvVP+U=; b=lGiIHDx3GYcs38
	dcH4DGAK+RhSB6TRANx/pHnWME1ADG2tGAOx7DzCrWNP02jUgBldYGRNNmHovVJozbPQ3dYgcDJG3
	2Hkx3K25efxq4J6Hyos6k5ipr3mOoFzkTKFI5NE4Bvd8wdr5RLWhjb3A/ESVXI7VthyqA/veVFGPQ
	Gnl4FtfTpHJAyR2RAIjmT0Mzm7h2FoqFA7pyL6a9Ho/jPemiBdQF+KUdxLKazhwk6FG7lsGHKyzkK
	fyOpjAI6CcLab2MtZanlxZxFZVG0I1rB9biEZ4nUJeJn7K+jJzYhRbXyG0IMFJiUdyHLQTAe3A/m/
	yXeGGHX7jU9eUPrIT44Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4ypl-00049A-51; Tue, 03 Sep 2019 02:46:17 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4ypU-00047t-5x
 for linux-mtd@lists.infradead.org; Tue, 03 Sep 2019 02:46:01 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 405E56DAEBC0274C3F93;
 Tue,  3 Sep 2019 10:45:55 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Tue, 3 Sep 2019
 10:45:45 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <dwmw2@infradead.org>, <computersforpeace@gmail.com>,
 <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <vigneshr@ti.com>, <linux-mtd@lists.infradead.org>
Subject: [PATCH 1/2] mtd: spear_smi: remove set but not used variable
 'flash_info'
Date: Tue, 3 Sep 2019 10:52:29 +0800
Message-ID: <1567479150-97127-2-git-send-email-zhengbin13@huawei.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567479150-97127-1-git-send-email-zhengbin13@huawei.com>
References: <1567479150-97127-1-git-send-email-zhengbin13@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_194600_403754_8747BDA7 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: zhengbin13@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Fixes gcc '-Wunused-but-set-variable' warning:

drivers/mtd/devices/spear_smi.c: In function spear_smi_probe_config_dt:
drivers/mtd/devices/spear_smi.c:780:32: warning: variable flash_info set but not used [-Wunused-but-set-variable]

It is not used since commit 6551ab5d30d6 ("mtd:
add device-tree support to spear_smi")

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 drivers/mtd/devices/spear_smi.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/mtd/devices/spear_smi.c b/drivers/mtd/devices/spear_smi.c
index 986f81d..a148158 100644
--- a/drivers/mtd/devices/spear_smi.c
+++ b/drivers/mtd/devices/spear_smi.c
@@ -777,9 +777,6 @@ static int spear_smi_probe_config_dt(struct platform_device *pdev,

 	/* Fill structs for each subnode (flash device) */
 	while ((pp = of_get_next_child(np, pp))) {
-		struct spear_smi_flash_info *flash_info;
-
-		flash_info = &pdata->board_flash_info[i];
 		pdata->np[i] = pp;

 		/* Read base-addr and size from DT */
--
2.7.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
