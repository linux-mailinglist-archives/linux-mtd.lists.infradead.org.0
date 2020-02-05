Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEA71526A3
	for <lists+linux-mtd@lfdr.de>; Wed,  5 Feb 2020 08:09:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YF4BYliwzDc2OwvzgQk1hbxzQ+oIh16yHxmP1alopPI=; b=jAIGOkli4zjXci
	3AXwDVobVwpt9HMx+MNEeFb5WboLBpZUClZhxebwSDIHFPJLnwW1sjXlCuA9ytQHAbst7iG7yw4jG
	0fh7YDFcWRXVzqQ8jV5kp1D3M+sngqic4wyi6LOmOci13glgFNl2C9Mn6m1MqSRq9ejgGx3JE0tzu
	S+m8onV7I8A8Bc6VotkZ4bTEZn00EUatl9QxX/z8YDpvtLGzM3+gEF0Y5AtbKJ3B81kdx8VJj0W3A
	HCfnso2YU6DwZkEecXrXOkH/kUBoE60wYkPLInrCidIyW7eVRNSJ882wlYtY/8zdmn/gMxc2OuOc+
	4NdYPsMh5LOtaYD78ACw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izEnt-0007io-Ku; Wed, 05 Feb 2020 07:08:53 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izEni-0007iL-3y
 for linux-mtd@lists.infradead.org; Wed, 05 Feb 2020 07:08:43 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48CCMn23ZDz1rXQk;
 Wed,  5 Feb 2020 08:08:37 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48CCMn0cgGz1qyDK;
 Wed,  5 Feb 2020 08:08:37 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id RYfC94QB2ZTW; Wed,  5 Feb 2020 08:08:36 +0100 (CET)
X-Auth-Info: iAC0CgiwMgXSnS3y/fcJllT9NaOckhWSrXp5NIx4qvk=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed,  5 Feb 2020 08:08:35 +0100 (CET)
From: Marek Vasut <marex@denx.de>
To: linux-mtd@lists.infradead.org
Subject: [PATCH] Revert "mtd: rawnand: denali: get ->setup_data_interface()
 working again"
Date: Wed,  5 Feb 2020 08:08:34 +0100
Message-Id: <20200205070834.3087104-1-marex@denx.de>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_230842_311491_7B6DDD86 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Marek Vasut <marex@denx.de>, Masahiro Yamada <masahiroy@kernel.org>,
 Dinh Nguyen <dinguyen@kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Tim Sander <tim@krieglstein.org>, Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This reverts commit d311e0c27b8fcc27f707f8cac48cd8bdc4155224, which
completely breaks NAND access on Altera SoCFPGA (detected on ArriaV
SoC).

On SoCFPGA, denali->clk_rate = 31.25 MHz and denali->clk_x_rate = 125 MHz,
hence the driver sets NAND_KEEP_TIMINGS flag. This did not happen before
and is actually incorrect, as on SoCFPGA we do not want to retain timings
from previous stage (the timings might be incorrect or outright invalid).

Cc: Boris Brezillon <boris.brezillon@collabora.com>
Cc: Dinh Nguyen <dinguyen@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Tim Sander <tim@krieglstein.org>
To: linux-mtd <linux-mtd@lists.infradead.org>
---
 drivers/mtd/nand/raw/denali.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/denali.c b/drivers/mtd/nand/raw/denali.c
index b6c463d02167..5fe3c62a756e 100644
--- a/drivers/mtd/nand/raw/denali.c
+++ b/drivers/mtd/nand/raw/denali.c
@@ -1209,7 +1209,7 @@ int denali_chip_init(struct denali_controller *denali,
 	}
 
 	/* clk rate info is needed for setup_data_interface */
-	if (!denali->clk_rate || !denali->clk_x_rate)
+	if (denali->clk_rate && denali->clk_x_rate)
 		chip->options |= NAND_KEEP_TIMINGS;
 
 	chip->bbt_options |= NAND_BBT_USE_FLASH;
-- 
2.24.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
