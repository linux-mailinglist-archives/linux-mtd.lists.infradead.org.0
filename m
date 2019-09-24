Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 489F1BC3C3
	for <lists+linux-mtd@lfdr.de>; Tue, 24 Sep 2019 10:05:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K45RUiw61bibVs5D9ixI2HS49CMcAO3V59nGr1fHkR0=; b=RKNcRZZovAtPJk
	IP/jYZLnbfxgRV4StKqwVMjDhKzO5KB8p5JtKEc6FCtX1vVKs59fv4Sngs/UGL5dy3E2zWSqTKuOG
	rJKZ6YeDPZz54G+u0Jd9rjKTcRd2naPXgiAhMyO+8Du/4TrPsuxm+QM8/pWsxs52fXvTCjTmceF+2
	R84B1F1+Ec+OgaYNE+A86Da2JPOwaFx/eSUyqc58txlFNwlezDb6X1OBFfmZBWBO3eqbpRYrlEszf
	yM0U+EUwV5XQXBv87kFdR5rkRZ7T3sDhu9lI5xSFK9IT8iFYjD9aUd7ZwB+MiNMIvlcyEJu3RaOm7
	B6iugWmh4vWJujxI8VBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCfpB-0006dj-EP; Tue, 24 Sep 2019 08:05:30 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCfnQ-0004Xx-Ng
 for linux-mtd@lists.infradead.org; Tue, 24 Sep 2019 08:03:42 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 4C2A023BE55810675A48;
 Tue, 24 Sep 2019 16:03:38 +0800 (CST)
Received: from SZXY1Y004550421.china.huawei.com (10.61.99.243) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.439.0; Tue, 24 Sep 2019 16:03:30 +0800
From: Huaijie Yi <yihuaijie@huawei.com>
To: <joern@lazybastard.org>, <dwmw2@infradead.org>,
 <computersforpeace@gmail.com>, <marek.vasut@gmail.com>,
 <richard.weinberger@gmail.com>, <vigneshr@ti.com>, <richard@nod.at>
Subject: [PATCH] mtd: change perm of module param phram to writable
Date: Tue, 24 Sep 2019 08:03:15 +0000
Message-ID: <1569312195-18660-1-git-send-email-yihuaijie@huawei.com>
X-Mailer: git-send-email 2.6.4.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.61.99.243]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_010341_064117_94A5A541 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: nixiaoming@huawei.com, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

we need param phram to be writable to create
multiple device under built-in case. As cmdline
could only set one device, and more devices must
be created by writing "<name>,<start>,<length>"
to /sys/module/phram/parameters/phram

Signed-off-by: Xiaoming Ni <nixiaoming@huawei.com>
Signed-off-by: Huaijie Yi <yihuaijie@huawei.com>
---
 drivers/mtd/devices/phram.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/devices/phram.c b/drivers/mtd/devices/phram.c
index a5833dd..e3469ec 100644
--- a/drivers/mtd/devices/phram.c
+++ b/drivers/mtd/devices/phram.c
@@ -312,7 +312,7 @@ static int phram_param_call(const char *val, const struct kernel_param *kp)
 #endif
 }
 
-module_param_call(phram, phram_param_call, NULL, NULL, 000);
+module_param_call(phram, phram_param_call, NULL, NULL, 0200);
 MODULE_PARM_DESC(phram, "Memory region to map. \"phram=<name>,<start>,<length>\"");
 
 
-- 
1.8.5.6



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
