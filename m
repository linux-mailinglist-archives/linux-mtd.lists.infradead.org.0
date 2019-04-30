Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BDEF39F
	for <lists+linux-mtd@lfdr.de>; Tue, 30 Apr 2019 12:04:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r1hJZml5m13FjNVx2ptRgrM1CvvbR3gcxG4hwtJvW5Q=; b=d/DL6j5hFP5hmt
	sp5lT9WHIOPkZMU5MBrMLNuRJIzU6eLpqqapQlNxOLDadBn5Bm54u1S8j/kAiMgiYeESPjv1FZNOu
	Y411YlG58FOE/4zwDwqCVqBtOmGM0m2bTIyQaEeku+qo0xPEbwNSNOTkREnTI0cOKsHhnJ0YJtmuH
	B0L6j/tub3XNSmVdiV8AlPChOOja9B+lcxCd39MJBetTdhQcvOMVLcmlqGj26JgUXkBbKM1EGCZj5
	1O+H9vKmTmTapkD7gf5koqwUg9EDtIWTuwoLm4GJahzgKg4EYnLy/sjhaNiCsIzr52pVzmjeNNHut
	0aUjGUvJXPb6srotLVxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLPch-0000el-Lg; Tue, 30 Apr 2019 10:04:27 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLPcQ-0000UC-4k; Tue, 30 Apr 2019 10:04:11 +0000
X-UUID: 2567b0dd098c40d19feabd68777f9ac1-20190430
X-UUID: 2567b0dd098c40d19feabd68777f9ac1-20190430
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <xiaolei.li@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1533831900; Tue, 30 Apr 2019 02:04:07 -0800
Received: from mtkmbs03n1.mediatek.inc (172.21.101.181) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 03:04:06 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs03n1.mediatek.inc (172.21.101.181) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 18:04:04 +0800
Received: from mtkslt306.mediatek.inc (10.21.14.136) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 30 Apr 2019 18:04:04 +0800
From: Xiaolei Li <xiaolei.li@mediatek.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>
Subject: [PATCH v2 5/5] mtd: rawnand: mtk: Setup empty page threshold correctly
Date: Tue, 30 Apr 2019 18:02:50 +0800
Message-ID: <20190430100250.28083-6-xiaolei.li@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190430100250.28083-1-xiaolei.li@mediatek.com>
References: <20190430100250.28083-1-xiaolei.li@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_030410_185142_1C5DB4EA 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-mediatek@lists.infradead.org, xiaolei.li@mediatek.com,
 linux-mtd@lists.infradead.org, srv_heupstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

MTK NAND Controller has the ability to check whether read data are
mostly 0xff by comparing zero bit count of read data with empty
threshold automatically.

But now we never set this threshold and always make it be default value
which is 10.

This patch fixes this problem by setting empty threshold as the product
of read sector count and ECC strength.

Fixes: 1d6b1e464950 ("mtd: mediatek: driver for MTK Smart Device")
Signed-off-by: Xiaolei Li <xiaolei.li@mediatek.com>
---
 drivers/mtd/nand/raw/mtk_nand.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/mtd/nand/raw/mtk_nand.c b/drivers/mtd/nand/raw/mtk_nand.c
index 48759af5c058..b56965328771 100644
--- a/drivers/mtd/nand/raw/mtk_nand.c
+++ b/drivers/mtd/nand/raw/mtk_nand.c
@@ -94,6 +94,7 @@
 #define NFI_MASTER_STA		(0x224)
 #define		MASTER_STA_MASK		(0x0FFF)
 #define NFI_EMPTY_THRESH	(0x23C)
+#define		EMPTY_THRESH_MASK	GENMASK(7, 0)
 
 #define MTK_NAME		"mtk-nand"
 #define KB(x)			((x) * 1024UL)
@@ -947,6 +948,14 @@ static int mtk_nfc_read_subpage(struct mtd_info *mtd, struct nand_chip *chip,
 		return -EINVAL;
 	}
 
+	/**
+	 * Setup empty threshold as the product of sector count
+	 * and ECC strength
+	 */
+	reg = sectors * chip->ecc.strength;
+	reg = min_t(unsigned int, reg, EMPTY_THRESH_MASK);
+	nfi_writel(nfc, reg, NFI_EMPTY_THRESH);
+
 	reg = nfi_readw(nfc, NFI_CNFG);
 	reg |= CNFG_READ_EN | CNFG_DMA_BURST_EN | CNFG_AHB;
 	if (!raw) {
-- 
2.18.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
