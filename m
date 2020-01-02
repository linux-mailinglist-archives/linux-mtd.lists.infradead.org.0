Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFA512E65A
	for <lists+linux-mtd@lfdr.de>; Thu,  2 Jan 2020 14:09:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4egESLRZO0PuX+UXgLhJhwHjwVoyohVlZywPSxmkYg=; b=d6Jx2/Q4BlGT3p
	o5A46SmHvViJhn9IeUiC1X39bTE1SOQYw1+Y3N/p7RtVrEsSKqkq1Vj56zocRvvKQTJ5KSZZ/p1ro
	zylZ8qJnWLCXewLA1NBsqn9DKCaC55lIbS76KWQN2jhgS4QxngtYZkQEiE0jTDcZ1E2k8J8eEtsaJ
	EC9+U4tL8f1DBpj4Qm86rAYp6FP2/Uh7N6nz8Ijuj3TvepX6DI02TADHzpRQFtGU1+2p7M7WkQktW
	DYzFvYUjEOIKoqPOOwebNgWqZ3ndjBU8mgVNPXoOODToV+TmFYxdGBkblcurcY7eiObcOZeLLFJWd
	1NLTIuYmWHBSXkZbkT5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in0Db-0007Y9-AG; Thu, 02 Jan 2020 13:08:51 +0000
Received: from first.geanix.com ([116.203.34.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in0DR-0007XB-Fz
 for linux-mtd@lists.infradead.org; Thu, 02 Jan 2020 13:08:44 +0000
Received: from localhost (87-49-44-45-mobile.dk.customer.tdc.net [87.49.44.45])
 by first.geanix.com (Postfix) with ESMTPSA id 4ADA4750;
 Thu,  2 Jan 2020 13:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
 t=1577970500; bh=XfPm35eGN5+xpwS8KwBzEk1mrUoGTU4Ie/ppTaltq/I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=cGAW1xXmyB44612wv1DyxyIO6G5i65uJ+uWxZK6o95eFzlDizEOOuI2OUJdJpHM7g
 aAlCIysiEB4QoFbuH/IRv7REZJWdCzN/0gGe50L+4UE/b1no2lFV9oZCAFVrNeL6+J
 gGpjTy5UoSwkvBCiApQkM7Pbdq2VOc6FE2j0SlomWOaJTsWEH+ZH424QYfhTIV+8xw
 j5ZaPbnhFH8JABSwWXUMkaFprNKO1EOePtdtYBb+7ffJGQSCaX82cuS3d2ZVYMa+PB
 6BmDIObq9M5VuShlYFoqDnlSLkwNfQKgnOE/i65qEs5R1KjqM1bbi8wjj7+ngMWA5h
 D+bN0XJ2o74Jw==
From: Esben Haabendal <esben@geanix.com>
To: linux-mtd@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Boris Brezillon <boris.brezillon@collabora.com>, Han Xu <han.xu@nxp.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH 2/2] mtd: rawnand: gpmi: Restore nfc timing setup after
 suspend/resume
Date: Thu,  2 Jan 2020 14:08:26 +0100
Message-Id: <20200102130826.170647-2-esben@geanix.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200102130826.170647-1-esben@geanix.com>
References: <20200102130826.170647-1-esben@geanix.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.7 required=4.0 tests=BAYES_00,DKIM_INVALID,
 DKIM_SIGNED,UNPARSEABLE_RELAY,URIBL_BLOCKED autolearn=disabled
 version=3.4.3
X-Spam-Checker-Version: SpamAssassin 3.4.3 (2019-12-06) on ea2d15de10a4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_050842_631286_9B81E39F 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: martin@geanix.com, sean@geanix.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

As we reset the GPMI block at resume, the timing parameters setup by a
previous exec_op is lost.  Rewriting GPMI timing registers on first exec_op
after resume fixes the problem.

Signed-off-by: Esben Haabendal <esben@geanix.com>
---
 drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
index 7ac8c8b95afc..fcc7325f2a10 100644
--- a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
+++ b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
@@ -2728,6 +2728,10 @@ static int gpmi_pm_resume(struct device *dev)
 		return ret;
 	}
 
+	/* Set flag to get timing setup restored for next exec_op */
+	if (this->hw.clk_rate)
+		this->hw.must_apply_timings = true;
+
 	/* re-init the BCH registers */
 	ret = bch_set_geometry(this);
 	if (ret) {
-- 
2.24.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
