Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D43103C26
	for <lists+linux-mtd@lfdr.de>; Wed, 20 Nov 2019 14:41:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=u9u/dOdTkeCtDcc5ojYm2CmohVt9kFWHqiddaH1AM3s=; b=IvC
	fJwUowFR+gYRGl3xgcLQOmPhs5DHruQX1ZK5ONyBZtsUoO0qpRp4LMl4laVvPj722i5D/aajqsElo
	+iaLQLDBHZCMJ9dIyazwgjabNKEunTTflWPOyrs9kSly7lKlYULPnlVBbIKEj3wVrrneza7UslaX8
	4goyEYMX02WGg+Te5G4N1KR9ymKNx0ZO9sXScSV7+aU/1k+9vbkyzCfqw4lwP6ZTxU71FW8J9CUu0
	LG0tLsNigDFZkjqhaRL5tU1JHNSSSX+Yx8QEEdNuFf4CxuziDvT8pISv3M/W99gkptGDbRWIY1gLq
	6HVksCU0rZD4Rrq+WJU2Z2yz0gqlKLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXQEC-0005ua-33; Wed, 20 Nov 2019 13:41:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXQE4-0005uB-1O
 for linux-mtd@lists.infradead.org; Wed, 20 Nov 2019 13:40:57 +0000
Received: from localhost.localdomain (unknown [118.189.143.39])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 81F1A224FC;
 Wed, 20 Nov 2019 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574257255;
 bh=j7hjYLBTiYgP/Olh2gqSk1QwqVMqLpIv7BMtU43hpCQ=;
 h=From:To:Cc:Subject:Date:From;
 b=x+mRt77lQ9fqi8mkNJMT9rElA1N/nukHqksY5peXRRvflwYCUqMufXeXou/wt4puT
 0MbgdHrpPg0NtHIDNgwdAVhC8m54UYG+kgliMH2d3Q/kT/q1yJPyvzyNgfc3fiI9+d
 qVljYvCxntZD87SySXaLwdeePCakBnx4k1ftWdnY=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] mtd: onenand: Fix Kconfig indentation
Date: Wed, 20 Nov 2019 21:40:50 +0800
Message-Id: <20191120134050.14622-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_054056_098377_A97476D4 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [118.189.143.39 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Adjust indentation from spaces to tab (+optional two spaces) as in
coding style with command like:
	$ sed -e 's/^        /\t/' -i */Kconfig

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/mtd/nand/onenand/Kconfig | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/nand/onenand/Kconfig b/drivers/mtd/nand/onenand/Kconfig
index ae0b8fe5b990..ea382fc48432 100644
--- a/drivers/mtd/nand/onenand/Kconfig
+++ b/drivers/mtd/nand/onenand/Kconfig
@@ -33,12 +33,12 @@ config MTD_ONENAND_OMAP2
 	  Enable dmaengine and gpiolib for better performance.
 
 config MTD_ONENAND_SAMSUNG
-        tristate "OneNAND on Samsung SOC controller support"
-        depends on ARCH_S3C64XX || ARCH_S5PV210 || ARCH_EXYNOS4
-        help
-          Support for a OneNAND flash device connected to an Samsung SOC.
-          S3C64XX uses command mapping method.
-          S5PC110/S5PC210 use generic OneNAND method.
+	tristate "OneNAND on Samsung SOC controller support"
+	depends on ARCH_S3C64XX || ARCH_S5PV210 || ARCH_EXYNOS4
+	help
+	  Support for a OneNAND flash device connected to an Samsung SOC.
+	  S3C64XX uses command mapping method.
+	  S5PC110/S5PC210 use generic OneNAND method.
 
 config MTD_ONENAND_OTP
 	bool "OneNAND OTP Support"
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
