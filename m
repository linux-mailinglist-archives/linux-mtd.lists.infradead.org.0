Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42279DC12
	for <lists+linux-mtd@lfdr.de>; Mon, 29 Apr 2019 08:39:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7rEt43VVkDohRl9O54oPZZVPvG7iSfDKgQ95y4wift4=; b=JdB2ZPWNMaUhcg
	X0cq0cUhlj16mtlizRhXuKZfrwbg+7jZa3EARcu8vQIeARFMRvFEzSGRyvWOJNY1VwYpN92PI01Qw
	Kk5F07cmxXIAdCTbKgy56lqwD39xEsZFGctDngqfqtHTaDWPo/ZQIN9dI/GDkbfodchu2KfpiCsGN
	SNBfeRXDcli87pDIy5RjObpz4cXX4QCRUEuuz53YmAoJZ8KM/+ZCPua9wpOGUFJwRw8gKZiv1H1ss
	DENXbUPYGWYoBYk6Qh++LBM5qp6gjHYCfHXgW+RwK8ljHihHb3lUuFSrt3JzkHTu8IFjV8i2TCwWT
	ksCsBrPTWkFp/zv1j+Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKzwM-0005fT-QS; Mon, 29 Apr 2019 06:39:02 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKzw5-0005TE-4b; Mon, 29 Apr 2019 06:38:46 +0000
X-UUID: 9b29542057d6440ba9991c2784e2aa8c-20190428
X-UUID: 9b29542057d6440ba9991c2784e2aa8c-20190428
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <xiaolei.li@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1765915400; Sun, 28 Apr 2019 22:38:44 -0800
Received: from mtkmbs03n1.mediatek.inc (172.21.101.181) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 28 Apr 2019 23:38:42 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs03n1.mediatek.inc (172.21.101.181) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Apr 2019 14:38:41 +0800
Received: from mtkslt306.mediatek.inc (10.21.14.136) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 29 Apr 2019 14:38:41 +0800
From: Xiaolei Li <xiaolei.li@mediatek.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>
Subject: [PATCH 3/5] mtd: rawnand: mtk: Add validity check for CE# pin setting
Date: Mon, 29 Apr 2019 14:38:32 +0800
Message-ID: <20190429063834.45967-4-xiaolei.li@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190429063834.45967-1-xiaolei.li@mediatek.com>
References: <20190429063834.45967-1-xiaolei.li@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_233845_178024_BA8981C0 
X-CRM114-Status: UNSURE (   9.75  )
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

Currently, we only check how many CE# pins are set in device tree.
But it should be necessary to check whether CE# pin setting is
duplicated or if CE# pin index exceeds the maximum CE# number that
controller supports.

So, add validity check to avoid these invalid settings.

Signed-off-by: Xiaolei Li <xiaolei.li@mediatek.com>
---
 drivers/mtd/nand/raw/mtk_nand.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/mtd/nand/raw/mtk_nand.c b/drivers/mtd/nand/raw/mtk_nand.c
index a2f7af536380..7a5e8c9cf61b 100644
--- a/drivers/mtd/nand/raw/mtk_nand.c
+++ b/drivers/mtd/nand/raw/mtk_nand.c
@@ -162,6 +162,8 @@ struct mtk_nfc {
 	struct list_head chips;
 
 	u8 *buffer;
+
+	unsigned long assigned_cs;
 };
 
 /*
@@ -1351,6 +1353,17 @@ static int mtk_nfc_nand_chip_init(struct device *dev, struct mtk_nfc *nfc,
 			dev_err(dev, "reg property failure : %d\n", ret);
 			return ret;
 		}
+
+		if (tmp >= MTK_NAND_MAX_NSELS) {
+			dev_err(dev, "invalid CS: %u\n", tmp);
+			return -EINVAL;
+		}
+
+		if (test_and_set_bit(tmp, &nfc->assigned_cs)) {
+			dev_err(dev, "CS %u already assigned\n", tmp);
+			return -EINVAL;
+		}
+
 		chip->sels[i] = tmp;
 	}
 
-- 
2.18.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
