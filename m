Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D37C6D81D
	for <lists+linux-mtd@lfdr.de>; Fri, 19 Jul 2019 03:02:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z5lcmb36P0EYAxa+plbg6jJR3v+ZmzxyCH0GfBJGKmc=; b=p/SlXZI9G24JqE
	HpJ/CJ+/i+4WbUijhxHWmTnQEUAPfDXRcmSVb1/47j8TFoNj5xQ9Fgy6naYoo2Y1FLjet1B2eqG8b
	9CQeHqRPs1q6BAxn2wtO2/PM4f1YviSNBhHHX+U/zHFZHHb8NpE+a5SnRjs16PGi8f06Nu7K38Gsw
	xI5zrw9T/6bdylXfgYGOtX3n0WVo8hzWAfw68e1StX/3yVoBuevKxxYfwiWFwLidCuL7xiwY6H+Dc
	B26ykSOF2IE+5AhkSLQIFVe6zUVZ+nfWSNp9OmgZhxgh0PimFY2BfvIOnWdg/PdethW2hZWO7Fh0n
	uvFGpFzlS49FCF1GQFYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoHHi-0004yL-0t; Fri, 19 Jul 2019 01:02:06 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoHHS-0004wn-Ij
 for linux-mtd@lists.infradead.org; Fri, 19 Jul 2019 01:01:52 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 14D4288903822913EF0F;
 Fri, 19 Jul 2019 09:01:38 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.439.0; Fri, 19 Jul 2019 09:01:29 +0800
From: Mao Wenan <maowenan@huawei.com>
To: <dwmw2@infradead.org>, <computersforpeace@gmail.com>,
 <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>
Subject: [PATCH -next] mtd: hyperbus: fix build error about CONFIG_REGMAP
Date: Fri, 19 Jul 2019 09:07:03 +0800
Message-ID: <20190719010703.63815-1-maowenan@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_180150_776309_2112B6EB 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: kernel-janitors@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, Mao Wenan <maowenan@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

When CONFIG_MUX_MMIO and CONFIG_HBMC_AM654 are both 'm', there are
some building error as below:

drivers/mux/mmio.c: In function mux_mmio_probe:
drivers/mux/mmio.c:76:20: error: storage size of field isnt known
   struct reg_field field;
                    ^~~~~
drivers/mux/mmio.c:102:15: error: implicit declaration of function devm_regmap_field_alloc; did you mean devm_mux_chip_alloc? [-Werror=implicit-function-declaration]
   fields[i] = devm_regmap_field_alloc(dev, regmap, field);
               ^~~~~~~~~~~~~~~~~~~~~~~
               devm_mux_chip_alloc
drivers/mux/mmio.c:76:20: warning: unused variable field [-Wunused-variable]
   struct reg_field field;
                    ^~~~~
cc1: some warnings being treated as errors
make[2]: *** [drivers/mux/mmio.o] Error 1
make[1]: *** [drivers/mux] Error 2
make[1]: *** Waiting for unfinished jobs....
make: *** [drivers] Error 2

This because CONFIG_REGMAP is not enable, so change the Kconfig for HBMC_AM654.

Fixes: b07079f1642c("mtd: hyperbus: Add driver for TI's HyperBus memory controller")

Signed-off-by: Mao Wenan <maowenan@huawei.com>
---
 drivers/mtd/hyperbus/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mtd/hyperbus/Kconfig b/drivers/mtd/hyperbus/Kconfig
index cff6bbd..f324fa6 100644
--- a/drivers/mtd/hyperbus/Kconfig
+++ b/drivers/mtd/hyperbus/Kconfig
@@ -14,6 +14,8 @@ if MTD_HYPERBUS
 
 config HBMC_AM654
 	tristate "HyperBus controller driver for AM65x SoC"
+	select OF
+	select REGMAP
 	select MULTIPLEXER
 	select MUX_MMIO
 	help
-- 
2.7.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
