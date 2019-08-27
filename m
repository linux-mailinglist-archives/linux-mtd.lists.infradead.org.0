Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED15E9E5C3
	for <lists+linux-mtd@lfdr.de>; Tue, 27 Aug 2019 12:37:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IAk9Snk0ZhuUq8pGvrRUZ0kBMvDcrZIFa6694JE2FLw=; b=MvXJQGyT/MkGVN
	Zpk6BzGYZJCBcbCNZ0da+6Ht+0aAp4yNLQJj3+m3l1B2W1R2PPSX59Hl0qf5WW0vWPllZuAcMNRo6
	C/d5PgIFylSyW3tHzi6Hls3Upb75rVmlqTe/uvZLGvDLVlnL8XtjGZiw1/Rb3Fl/Y88DzZNp64lnP
	4+aEJa71O0v8VN2BLQLEPm+d8X5J3m1zJ1SLjKP43y1VwxLbOiTJfxWexD+Zn24Wnhzhg+CqXHo9c
	yhQE9onGxgYdWF1CNTUYY9+FrMtbFsX/k5e0jprrFniP1gArHdetrDNzj/k0tqpOJ4obCzG1PuqlR
	Y2PaU1F3QIA25RcsDdkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Yqg-0001BG-Il; Tue, 27 Aug 2019 10:37:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2YqQ-0001Ak-Qm
 for linux-mtd@lists.infradead.org; Tue, 27 Aug 2019 10:37:00 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1i2YqN-0002GS-CY; Tue, 27 Aug 2019 12:36:55 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1i2YqM-000521-HA; Tue, 27 Aug 2019 12:36:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-mtd@lists.infradead.org
Subject: [PATCH] mtd: rawnand: omap2: Fix number of bitflips reporting with ELM
Date: Tue, 27 Aug 2019 12:36:53 +0200
Message-Id: <20190827103653.19263-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_033658_869567_0A890B37 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Richard Weinberger <richard@nod.at>, Sascha Hauer <s.hauer@pengutronix.de>,
 kernel@pengutronix.de, Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

omap_elm_correct_data() returns the number of bitflips for the whole
page. This is wrong, it should return the maximum number of bitflips
found in each ecc step.

In my case with a 4k page size NAND mtcdore reported -EUCLEAN with
only 12 bitflips on a page where we could correct up to 128 bits per
page (provided they are distributed equally on the 8 ecc steps)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/raw/omap2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/omap2.c b/drivers/mtd/nand/raw/omap2.c
index 8d881a28140e..6ec65f48501c 100644
--- a/drivers/mtd/nand/raw/omap2.c
+++ b/drivers/mtd/nand/raw/omap2.c
@@ -1501,7 +1501,7 @@ static int omap_elm_correct_data(struct nand_chip *chip, u_char *data,
 		}
 
 		/* Update number of correctable errors */
-		stat += err_vec[i].error_count;
+		stat = max_t(unsigned int, stat, err_vec[i].error_count);
 
 		/* Update page data with sector size */
 		data += ecc->size;
-- 
2.23.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
