Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF9EF3A2
	for <lists+linux-mtd@lfdr.de>; Tue, 30 Apr 2019 12:04:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sslMPdzGGqNF2CDiovvDnyKpRMzLdyXn/bTP40C215g=; b=fc9lulJOff/TQ7
	alQVvisqSBuKZXIX/IqbDMr5Um9l8CX9X2PIul4iJWKC8CMA0TvAjbu6iQMOIGa+uxKYtg4BSPlNN
	rAYTsaL0xu+SzzxYpmWDpCg4tC7iSzniJXP3meOXkCfhxizwH1fykPjewFy1wgTtxkIs6Q0f8L4kk
	l5YOxxDB0MTqh3vTZGv5LHclyC8yWOh7bw6UUVWrnYryki1S3pa4K138hV3swu6PjqKV8BkebMoOv
	DUR9CgmXF8IPdspIk417nHNpZXpKMu53S7fVXpU65Ot1CQkGvOSOumjdthpOywMtqkM5LnUq6hKpf
	QmdKH920CsdepOul9Akw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLPcv-0000xi-2g; Tue, 30 Apr 2019 10:04:41 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLPcQ-0000UT-7k; Tue, 30 Apr 2019 10:04:12 +0000
X-UUID: fd97d828dd56461fbde749a8d81d498a-20190430
X-UUID: fd97d828dd56461fbde749a8d81d498a-20190430
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <xiaolei.li@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1100900683; Tue, 30 Apr 2019 02:04:03 -0800
Received: from mtkmbs03n1.mediatek.inc (172.21.101.181) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 03:04:02 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs03n1.mediatek.inc (172.21.101.181) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 18:04:00 +0800
Received: from mtkslt306.mediatek.inc (10.21.14.136) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 30 Apr 2019 18:04:00 +0800
From: Xiaolei Li <xiaolei.li@mediatek.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>
Subject: [PATCH v2 1/5] mtd: rawnand: mtk: Correct low level time calculation
 of r/w cycle
Date: Tue, 30 Apr 2019 18:02:46 +0800
Message-ID: <20190430100250.28083-2-xiaolei.li@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190430100250.28083-1-xiaolei.li@mediatek.com>
References: <20190430100250.28083-1-xiaolei.li@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_030410_285018_0DBC6EA8 
X-CRM114-Status: GOOD (  13.10  )
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
 linux-mtd@lists.infradead.org, stable@vger.kernel.org,
 srv_heupstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

At present, the flow of calculating AC timing of read/write cycle in SDR
mode is that:
At first, calculate high hold time which is valid for both read and write
cycle using the max value between tREH_min and tWH_min.
Secondly, calculate WE# pulse width using tWP_min.
Thridly, calculate RE# pulse width using the bigger one between tREA_max
and tRP_min.

But NAND SPEC shows that Controller should also meet write/read cycle time.
That is write cycle time should be more than tWC_min and read cycle should
be more than tRC_min. Obviously, we do not achieve that now.

This patch corrects the low level time calculation to meet minimum
read/write cycle time required. After getting the high hold time, WE# low
level time will be promised to meet tWP_min and tWC_min requirement,
and RE# low level time will be promised to meet tREA_max, tRP_min and
tRC_min requirement.

Fixes: edfee3619c49 ("mtd: nand: mtk: add ->setup_data_interface() hook")
Cc: stable@vger.kernel.org
Signed-off-by: Xiaolei Li <xiaolei.li@mediatek.com>
---
 drivers/mtd/nand/raw/mtk_nand.c | 24 +++++++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/raw/mtk_nand.c b/drivers/mtd/nand/raw/mtk_nand.c
index b6b4602f5132..4fbb0c6ecae3 100644
--- a/drivers/mtd/nand/raw/mtk_nand.c
+++ b/drivers/mtd/nand/raw/mtk_nand.c
@@ -508,7 +508,8 @@ static int mtk_nfc_setup_data_interface(struct nand_chip *chip, int csline,
 {
 	struct mtk_nfc *nfc = nand_get_controller_data(chip);
 	const struct nand_sdr_timings *timings;
-	u32 rate, tpoecs, tprecs, tc2r, tw2r, twh, twst, trlt;
+	u32 rate, tpoecs, tprecs, tc2r, tw2r, twh, twst = 0, trlt = 0;
+	u32 thold;
 
 	timings = nand_get_sdr_timings(conf);
 	if (IS_ERR(timings))
@@ -544,11 +545,28 @@ static int mtk_nfc_setup_data_interface(struct nand_chip *chip, int csline,
 	twh = DIV_ROUND_UP(twh * rate, 1000000) - 1;
 	twh &= 0xf;
 
-	twst = timings->tWP_min / 1000;
+	/* Calculate real WE#/RE# hold time in nanosecond */
+	thold = (twh + 1) * 1000000 / rate;
+	/* nanosecond to picosecond */
+	thold *= 1000;
+
+	/**
+	 * WE# low level time should be expaned to meet WE# pulse time
+	 * and WE# cycle time at the same time.
+	 */
+	if (thold < timings->tWC_min)
+		twst = timings->tWC_min - thold;
+	twst = max(timings->tWP_min, twst) / 1000;
 	twst = DIV_ROUND_UP(twst * rate, 1000000) - 1;
 	twst &= 0xf;
 
-	trlt = max(timings->tREA_max, timings->tRP_min) / 1000;
+	/**
+	 * RE# low level time should be expaned to meet RE# pulse time,
+	 * RE# access time and RE# cycle time at the same time.
+	 */
+	if (thold < timings->tRC_min)
+		trlt = timings->tRC_min - thold;
+	trlt = max3(trlt, timings->tREA_max, timings->tRP_min) / 1000;
 	trlt = DIV_ROUND_UP(trlt * rate, 1000000) - 1;
 	trlt &= 0xf;
 
-- 
2.18.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
