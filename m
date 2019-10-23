Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2D7E1D76
	for <lists+linux-mtd@lfdr.de>; Wed, 23 Oct 2019 15:57:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IeSRCjcz4ixg9KwMfl+hrkANohr1l+tQagv6hZhlp6s=; b=n2VNwguBONjUS2
	v9kfU84iJcp09lGi+BBnnMaG065/kS9hBcZTlQB9dxkABANn+7MijhAgBDAc+q4BQGvKIJgZfQpDR
	xkFC4FTEEKvfTYHUE9jvFzZ8Tz7mk+MreY2EfqmQ1kyN3FC/SrPJaAW+8C+UDGnIsYsxe3CrSv9o5
	tdiXyAFlwzPy9XRoPiFE+EwEkdP/aTwwU3Ry9dgbsfAdw67IZjMCafqmomfT8WZ2xMxMckzKieRac
	+bHXOGJPrHvP0bGut973x3ieDBXwGPOXReIEEtC/G9Jj44ClpMmHWANWMSbvrFRHj+Bv9RGIza/sn
	0xb6u/2Tk2k0hJhraj7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNH8t-0001Ut-GJ; Wed, 23 Oct 2019 13:57:39 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNH8l-0001U3-9u
 for linux-mtd@lists.infradead.org; Wed, 23 Oct 2019 13:57:33 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id ED1D5DD28FD9AC71B3EB;
 Wed, 23 Oct 2019 21:57:26 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0; Wed, 23 Oct 2019
 21:57:17 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <piotrs@cadence.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <dwmw2@infradead.org>, <computersforpeace@gmail.com>, <vigneshr@ti.com>
Subject: [PATCH -next] mtd: rawnand: cadence: Remove dev_err() on
 platform_get_irq() failure
Date: Wed, 23 Oct 2019 21:57:10 +0800
Message-ID: <20191023135710.29888-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_065731_953431_9452789D 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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

platform_get_irq() will call dev_err() itself on failure,
so there is no need for the driver to also do this.
This is detected by coccinelle.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/mtd/nand/raw/cadence-nand-controller.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/raw/cadence-nand-controller.c b/drivers/mtd/nand/raw/cadence-nand-controller.c
index 91dabff..5f07e8e 100644
--- a/drivers/mtd/nand/raw/cadence-nand-controller.c
+++ b/drivers/mtd/nand/raw/cadence-nand-controller.c
@@ -2961,10 +2961,8 @@ static int cadence_nand_dt_probe(struct platform_device *ofdev)
 
 	cdns_ctrl->dev = &ofdev->dev;
 	cdns_ctrl->irq = platform_get_irq(ofdev, 0);
-	if (cdns_ctrl->irq < 0) {
-		dev_err(&ofdev->dev, "no irq defined\n");
+	if (cdns_ctrl->irq < 0)
 		return cdns_ctrl->irq;
-	}
 	dev_info(cdns_ctrl->dev, "IRQ: nr %d\n", cdns_ctrl->irq);
 
 	cdns_ctrl->reg = devm_platform_ioremap_resource(ofdev, 0);
-- 
2.7.4



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
