Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE35DC19
	for <lists+linux-mtd@lfdr.de>; Mon, 29 Apr 2019 08:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jp9NoEEhUB92xJEL3Ykiv1ObcLVlmkRS566/mdhQGzU=; b=jHyTUxX374QGgq
	RE69uRBfY6d2ouc7X8T616S3g4Z2Y58xWewEQ71ZLXqKmFeAvxv69ObXR79dfA85oGPQxKznsiBjX
	cwD0fZvtoVJgnW2hgoGXm4wGQpu2IyINkiCIZNEJnHh+MEan0hzOy2w8pg3DnrQXlwRKtUt8g0NIH
	EneeuUrO6D1SAQ9MHLghI2MqwFvDbshppwyF6YkBgJvnjHX4Xm5pJbmXPX2s04Bwi735DgoqQwrWd
	yhtJY1mq5kdwjj5H63oLGN4DxhjMQ3f8f9FDoMoHGLtZoWxWmncZv3dc5JcVcg4Q5NNi/sNCQOpEw
	90HDY6QD77z41CQd7PXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKzx8-0006ju-5a; Mon, 29 Apr 2019 06:39:50 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKzwD-0005WA-JB; Mon, 29 Apr 2019 06:38:57 +0000
X-UUID: 480b0a01645e444cb081e6940613cfa9-20190428
X-UUID: 480b0a01645e444cb081e6940613cfa9-20190428
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <xiaolei.li@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 712740872; Sun, 28 Apr 2019 22:38:47 -0800
Received: from mtkmbs03n1.mediatek.inc (172.21.101.181) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 28 Apr 2019 23:38:45 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs03n1.mediatek.inc (172.21.101.181) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Apr 2019 14:38:44 +0800
Received: from mtkslt306.mediatek.inc (10.21.14.136) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 29 Apr 2019 14:38:44 +0800
From: Xiaolei Li <xiaolei.li@mediatek.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>
Subject: [PATCH 5/5] mtd: rawnand: mtk: Setup empty page threshold correctly
Date: Mon, 29 Apr 2019 14:38:34 +0800
Message-ID: <20190429063834.45967-6-xiaolei.li@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190429063834.45967-1-xiaolei.li@mediatek.com>
References: <20190429063834.45967-1-xiaolei.li@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_233854_090009_90C1689F 
X-CRM114-Status: UNSURE (   8.48  )
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
mostly 0xff by comparing zero bit conut of read data with empty
threshold automatically.

But now we never set this threshold and always make it be default value
which is 10.

This patch fixes this problem by setting empty threshold as the product
of read sector count and ecc strength.

Fixes: 93db446a424c ("mtd: nand: move raw NAND related code to the raw/ subdir")
Signed-off-by: Xiaolei Li <xiaolei.li@mediatek.com>
---
 drivers/mtd/nand/raw/mtk_nand.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/mtd/nand/raw/mtk_nand.c b/drivers/mtd/nand/raw/mtk_nand.c
index cf5e50e704ae..675d4faa3480 100644
--- a/drivers/mtd/nand/raw/mtk_nand.c
+++ b/drivers/mtd/nand/raw/mtk_nand.c
@@ -94,6 +94,7 @@
 #define NFI_MASTER_STA		(0x224)
 #define		MASTER_STA_MASK		(0x0FFF)
 #define NFI_EMPTY_THRESH	(0x23C)
+#define		EMPTY_THRESH_MASK	GENMASK(7, 0)
 
 #define MTK_NAME		"mtk-nand"
 #define KB(x)			((x) * 1024UL)
@@ -931,6 +932,10 @@ static int mtk_nfc_read_subpage(struct mtd_info *mtd, struct nand_chip *chip,
 		return -EINVAL;
 	}
 
+	/* Setup empty threshold */
+	reg = max(sectors * chip->ecc.strength, EMPTY_THRESH_MASK);
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
