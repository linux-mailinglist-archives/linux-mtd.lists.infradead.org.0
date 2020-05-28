Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9530E1E7048
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 01:22:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kqiDHDSS4rI3uauuYxyxSNbsS0CpAf1Afk56IBXoN1o=; b=nxJU4i9w6gNavw
	LUWG3qsY2O5roGkZKPCPX/Ylimde+BuEZzQ6N9ZJuI7l84O11yabaDcIcCTWf50GJYVtLoFOZRN/q
	bs5p+WNUiJIkwgRBpk0UBVXNU2Ah5e9PhWNiB7RIzy2g2TiLdbNnN1wmpwboZXGfqipQTXHFtoMOG
	eLc3S0qS8zwZqSYsem2hC33YUrhvFYgY6mZZK5pbiQl2FFtLTWnuLs7SMVc9M+wlMnlPLuNqFlKlE
	w3ZdcGEub9wJV6U5qVXAYAiQSL86kpLLelphPbZS/XP5FvWzcvtkk8rgViaA1TaoFxc60EKBTbOFE
	RKX62Cs40li7mQb+D0jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeRqm-0004xR-VV; Thu, 28 May 2020 23:22:13 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeRlS-0006NV-Sf
 for linux-mtd@lists.infradead.org; Thu, 28 May 2020 23:16:47 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id E4193240007;
 Thu, 28 May 2020 23:16:39 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v6 21/30] mtd: rawnand: legacy: Use a helper to access the
 timings
Date: Fri, 29 May 2020 01:16:03 +0200
Message-Id: <20200528231612.8958-22-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200528231612.8958-1-miquel.raynal@bootlin.com>
References: <20200528231612.8958-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_161643_137648_43EEA9C9 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Rickard Andersson <rickaran@axis.com>, Michal Simek <monstr@monstr.eu>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Do not access the SDR timings directly but use nand_get_sdr_timings()
instead. This way, future patching over this helper will be easier.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/nand_legacy.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/nand_legacy.c b/drivers/mtd/nand/raw/nand_legacy.c
index 60798eb29ca9..8f3644ca2ea0 100644
--- a/drivers/mtd/nand/raw/nand_legacy.c
+++ b/drivers/mtd/nand/raw/nand_legacy.c
@@ -354,6 +354,8 @@ static void nand_command(struct nand_chip *chip, unsigned int command,
 
 static void nand_ccs_delay(struct nand_chip *chip)
 {
+	const struct nand_sdr_timings *sdr = nand_get_sdr_timings(&chip->interface_config);
+
 	/*
 	 * The controller already takes care of waiting for tCCS when the RNDIN
 	 * or RNDOUT command is sent, return directly.
@@ -366,7 +368,7 @@ static void nand_ccs_delay(struct nand_chip *chip)
 	 * (which should be safe for all NANDs).
 	 */
 	if (nand_controller_can_setup_interface(chip))
-		ndelay(chip->interface_config.timings.sdr.tCCS_min / 1000);
+		ndelay(sdr->tCCS_min / 1000);
 	else
 		ndelay(500);
 }
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
