Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5142141214
	for <lists+linux-mtd@lfdr.de>; Fri, 17 Jan 2020 21:06:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+oluEDYX8Sz94koH3VuHorjZ8nJf0xN6VGFpUdZOySw=; b=pl6RqU0BcvaX4/
	4It046Jw8PN6vN9yr7RYfaoS9x4S8azV6vafAvb4IcvJD0FJcX0ekQKVKxUnOhBXG8jqe/n4npSc+
	pk1Uhfn7XDjUucPO+U/D7Rczbx7VMTyREE3x57FT9c4sE5z81nzjfgSYyLfVCFthoJUTCnifFrU7y
	WmTh7h5BXtcc46EZQLDPZ2xAd7YUbigeONCkM3Qvop84p/6xFVpciFGewVFSFw6j+VXIZXkdqtruj
	Ikl82KOPyvEZVgeYg1Ao3hYLtbXp8ksjUbRf5NDF19NjccT0D4Fq4Gd/94Nr9Gkx5xn4yJCUqv/A1
	ib7TmqZRKdWN+6XWI4nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isXsT-0001pg-2M; Fri, 17 Jan 2020 20:05:57 +0000
Received: from first.geanix.com ([116.203.34.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isXsG-0001oM-Uq
 for linux-mtd@lists.infradead.org; Fri, 17 Jan 2020 20:05:50 +0000
Received: from localhost (87-49-44-45-mobile.dk.customer.tdc.net [87.49.44.45])
 by first.geanix.com (Postfix) with ESMTPSA id A1778AB85D;
 Fri, 17 Jan 2020 20:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
 t=1579291490; bh=1GLtPwg7JdswZinMsh5MjBCQQjQEWaf+P1IDgjM0YLs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=F/zPL3CMRnimda2fRV7CLQo6cnt6b/EeyJScsHMKxMi6hiSmzoNjEQzZu4D8Aw81h
 XuCEvmb/mB1TBLrzNW0xKmeXHiMLEul1oGM+sYoXVKm1RS8a7WO6F6GqdlnBv8jGM3
 2uqEEXfmYtAc6DoZXuQT1a1GbQ+3Lzo+2LrggUl16T4T0pGWkGRp4wZOKQk03q1R6s
 kqVHCIMc+l8X1p8W/emJqkd+dMTWgAA9UEiM/hCamv91v3t6SxcaYciAbYzlQyGAHm
 NS4MhpkvCijYCHhkYaJxrIpdVDQQzkUxJDQ1OZhzk+5J0Ls/1Qd14dicBj/ZkI0F6K
 YaJofEoxrUr9A==
From: Esben Haabendal <esben@geanix.com>
To: linux-mtd@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Han Xu <han.xu@nxp.com>, Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v2 1/2] mtd: rawnand: gpmi: Fix suspend/resume problem
Date: Fri, 17 Jan 2020 21:05:36 +0100
Message-Id: <20200117200537.9279-2-esben@geanix.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200117200537.9279-1-esben@geanix.com>
References: <20200117200537.9279-1-esben@geanix.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.7 required=4.0 tests=BAYES_00,DKIM_INVALID,
 DKIM_SIGNED,UNPARSEABLE_RELAY,URIBL_BLOCKED autolearn=disabled
 version=3.4.3
X-Spam-Checker-Version: SpamAssassin 3.4.3 (2019-12-06) on ea2d15de10a4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_120546_009416_11BBA785 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Richard Weinberger <richard@nod.at>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On system resume, the gpmi clock must be enabled before accessing gpmi
block.  Without this, resume causes something like

[  661.348790] gpmi_reset_block(5cbb0f7e): module reset timeout
[  661.348889] gpmi-nand 1806000.gpmi-nand: Error setting GPMI : -110
[  661.348928] PM: dpm_run_callback(): platform_pm_resume+0x0/0x44 returns -110
[  661.348961] PM: Device 1806000.gpmi-nand failed to resume: error -110

Fixes: ef347c0cfd61 ("mtd: rawnand: gpmi: Implement exec_op")
Cc: stable@vger.kernel.org
Signed-off-by: Esben Haabendal <esben@geanix.com>
---
 drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
index 334fe3130285..879df8402446 100644
--- a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
+++ b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
@@ -148,6 +148,10 @@ static int gpmi_init(struct gpmi_nand_data *this)
 	struct resources *r = &this->resources;
 	int ret;
 
+	ret = pm_runtime_get_sync(this->dev);
+	if (ret < 0)
+		return ret;
+
 	ret = gpmi_reset_block(r->gpmi_regs, false);
 	if (ret)
 		goto err_out;
@@ -179,8 +183,9 @@ static int gpmi_init(struct gpmi_nand_data *this)
 	 */
 	writel(BM_GPMI_CTRL1_DECOUPLE_CS, r->gpmi_regs + HW_GPMI_CTRL1_SET);
 
-	return 0;
 err_out:
+	pm_runtime_mark_last_busy(this->dev);
+	pm_runtime_put_autosuspend(this->dev);
 	return ret;
 }
 
-- 
2.25.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
