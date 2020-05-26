Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B521A45F7
	for <lists+linux-mtd@lfdr.de>; Fri, 10 Apr 2020 13:53:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x2sXJgx4eq/P8jaX3GRcJPDRhj7FzKl3o48NSyy/OkU=; b=DUpwLHWFq9lHLC
	pnyjOKo5fPRcKdhnoLf9X55OVCsSlTA6d5NCHC2rt+elpaUYUnJQigrqVYpU+SVtHETaxbgoRnpFs
	VKtP9h8/em8NsubOYekG44qEVAetvohns3JOAQlN3bV6XovTSKLF5nJ8Uf4R71844qs5EGk3cFKE4
	P1Rbdrx/Gk7mIH47iyEoHU5ay1/1u5hNqp9259nWJ9JmT6jaENdIHXHoRo41C1PvWe9GaN0yMp4dO
	xsZf68IWOMA2VTI8uSDefObIg2UT1opp3eaUUhgAfnpdNMMQgbYKwKMO16m9Ng4GB1b4tjbf/mjUe
	+W6SkSmKlDymvfawuUlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMsDQ-0001zs-3v; Fri, 10 Apr 2020 11:52:56 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMsDI-0001zY-SQ
 for linux-mtd@lists.infradead.org; Fri, 10 Apr 2020 11:52:50 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 943DABBDCEB1263387E0;
 Fri, 10 Apr 2020 19:52:41 +0800 (CST)
Received: from localhost (10.173.223.234) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.487.0; Fri, 10 Apr 2020
 19:52:34 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <piotrs@cadence.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <vigneshr@ti.com>
Subject: [PATCH -next] mtd: rawnand: cadence: Make cadence_nand_attach_chip
 static
Date: Fri, 10 Apr 2020 19:52:28 +0800
Message-ID: <20200410115228.30440-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.173.223.234]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_045249_104638_8022BDC2 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: YueHaibing <yuehaibing@huawei.com>, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Fix sparse warning:

drivers/mtd/nand/raw/cadence-nand-controller.c:2595:5:
 warning: symbol 'cadence_nand_attach_chip' was not declared. Should it be static?

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/mtd/nand/raw/cadence-nand-controller.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/cadence-nand-controller.c b/drivers/mtd/nand/raw/cadence-nand-controller.c
index efddc5c68afb..acc0a24e5816 100644
--- a/drivers/mtd/nand/raw/cadence-nand-controller.c
+++ b/drivers/mtd/nand/raw/cadence-nand-controller.c
@@ -2592,7 +2592,7 @@ cadence_nand_setup_data_interface(struct nand_chip *chip, int chipnr,
 	return 0;
 }
 
-int cadence_nand_attach_chip(struct nand_chip *chip)
+static int cadence_nand_attach_chip(struct nand_chip *chip)
 {
 	struct cdns_nand_ctrl *cdns_ctrl = to_cdns_nand_ctrl(chip->controller);
 	struct cdns_nand_chip *cdns_chip = to_cdns_nand_chip(chip);
-- 
2.17.1



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
