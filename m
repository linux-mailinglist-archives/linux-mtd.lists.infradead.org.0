Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8ED11661A
	for <lists+linux-mtd@lfdr.de>; Mon,  9 Dec 2019 06:16:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UtbypBNWtVaEFjUu8Rvf5tvEEKaQznUGvJ3yaqqsy9I=; b=Bqk
	n4Z07d/EDPNBXmzFfSgB3AprOvxbGd9XiV7LMV9VGpXLovt/5JHjm60nuFnbKwFzAyhbu5AJl6u8p
	bl9LMAl9y9F0z8sMFId4OjgSmJJUzuoRxrR1CzJPX/XccHaoEbP2Lwcjz4ZedbCjOqAJLSrvqspsW
	mkUlxauNzarH+ao/XPdVXlBjKCYm9XG4qUx7e6i8TCDqzWi1sElRJNdGEY5N2wjpEOZu2JiUxdib+
	4P/4FwYwnRvbSd1GKX+aBh62GEgkP3HIXN7UrQb8ilKQxI8VJ8/6JSTAZeZkz5DMhDTLxREzPaI9s
	L731ZL2azDW9MVYZrHsEDnETKF0Sl+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieBP1-0007cx-6E; Mon, 09 Dec 2019 05:16:11 +0000
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieBOo-0007cT-Cp
 for linux-mtd@lists.infradead.org; Mon, 09 Dec 2019 05:16:02 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-11.nifty.com with ESMTP id xB95FR53012005;
 Mon, 9 Dec 2019 14:15:27 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com xB95FR53012005
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1575868528;
 bh=YUKwrQ0HNTM5/RA0jtvxUxrn3eWB5Xxa4b2uKY9dbao=;
 h=From:To:Cc:Subject:Date:From;
 b=gDedeshFSu7VE1TZH3L6Mc/zJwLLcWAC4nUfyH1+SRaTCFwOF0rphr6qHaZ5sDWsR
 6dteJukWCZYitIcH0RdDfWGC2gZVwxvjHvOg4sp8ME+yOqCaZXlTd0ANc3jQGMO0sM
 vS8mTs3PrFoK4cIFEhJ1rS3Hma9dcU1d94K1JWq//ZWx1AWXtsuyZBYHRzbS8Iay48
 kyTukskR/KlrkNZ5XZQN6KDYORqTHmLQ+XuAtZeMzQoauDswMur+PJ+fLx4NEPk/w2
 7iQ5yCP2kKWDYufFSTKqPDKfbiUynmB5yXb6DRge1r3evPDQsYbm6CVYOcMNf5XFO/
 Ho7W0mcaoXibw==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-mtd@lists.infradead.org
Subject: [PATCH] mtd: rawnand: denali: error out if platform has no associated
 data
Date: Mon,  9 Dec 2019 14:15:23 +0900
Message-Id: <20191209051523.21772-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_211559_303201_3BE854EB 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.78 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Miquel Raynal <miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Masahiro Yamada <yamada.masahiro@socionext.com>

denali->ecc_caps is a mandatory parameter. If it were left unset,
nand_ecc_choose_conf() would end up with NULL pointer access.

So, every compatible must be associated with proper denali_dt_data.
If of_device_get_match_data() returns NULL, let it fail immediately.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 drivers/mtd/nand/raw/denali_dt.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/nand/raw/denali_dt.c b/drivers/mtd/nand/raw/denali_dt.c
index 8b779a899dcf..276187939689 100644
--- a/drivers/mtd/nand/raw/denali_dt.c
+++ b/drivers/mtd/nand/raw/denali_dt.c
@@ -118,11 +118,12 @@ static int denali_dt_probe(struct platform_device *pdev)
 	denali = &dt->controller;
 
 	data = of_device_get_match_data(dev);
-	if (data) {
-		denali->revision = data->revision;
-		denali->caps = data->caps;
-		denali->ecc_caps = data->ecc_caps;
-	}
+	if (WARN_ON(!data))
+		return -EINVAL;
+
+	denali->revision = data->revision;
+	denali->caps = data->caps;
+	denali->ecc_caps = data->ecc_caps;
 
 	denali->dev = dev;
 	denali->irq = platform_get_irq(pdev, 0);
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
