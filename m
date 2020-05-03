Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7295D1C2DB0
	for <lists+linux-mtd@lfdr.de>; Sun,  3 May 2020 17:54:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mOqSCvTslIsO9593q+jPj3gK61uZKpLtcgZEpN5bvr4=; b=Y2NBa+x3r13/RM
	mRkCcYsqSG561lWyRcMRykPWak7s+1UB1Li3l49DqGBpFX/6AfiCRJCE9CjW5Pndrsz+FLCWIZh7O
	0WmTvss5bxcT/++PNWrAXJLV6p7VU8CAcyoLF/ru9a8igBGCyD/ptGXHzJLCvlgwSsSu4Fekbpw40
	cknN4KIBMAcvjTjSFT4iDLT2UvIVNsB1prY8y3ywMkfMz+AIfu1P/JRH35SHkrr83N8ntOsEAlKWR
	iofZDBxZYZxYq1clLKC3t25PvzqCMfuGXW6pvclZn5u46RaIJJxDPgzl1puH5q5YzzooX0vpxizE2
	VZ9JmrfNY5J4R9kBBaJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVGwm-00034V-J0; Sun, 03 May 2020 15:54:28 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVGw9-0002dm-Bn
 for linux-mtd@lists.infradead.org; Sun, 03 May 2020 15:53:51 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 1712B24000A;
 Sun,  3 May 2020 15:53:47 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 3/8] mtd: rawnand: toshiba: Set the pairing scheme for
 TC58TEG5DCLTA00
Date: Sun,  3 May 2020 17:53:36 +0200
Message-Id: <20200503155341.16712-4-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200503155341.16712-1-miquel.raynal@bootlin.com>
References: <20200503155341.16712-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_085349_531070_B5F8A741 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Maxime Ripard <maxime@cerno.tech>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Boris Brezillon <bbrezillon@kernel.org>

TC58TEG5DCLTA00 uses a stride of 3 between its lower and upper page.
Set the appropriate pairing scheme at init time.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_toshiba.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mtd/nand/raw/nand_toshiba.c b/drivers/mtd/nand/raw/nand_toshiba.c
index 6b887ce20f30..ae069905d7e4 100644
--- a/drivers/mtd/nand/raw/nand_toshiba.c
+++ b/drivers/mtd/nand/raw/nand_toshiba.c
@@ -196,8 +196,11 @@ static void toshiba_nand_decode_id(struct nand_chip *chip)
 
 static int tc58teg5dclta00_init(struct nand_chip *chip)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
+
 	chip->onfi_timing_mode_default = 5;
 	chip->options |= NAND_NEED_SCRAMBLING;
+	mtd_set_pairing_scheme(mtd, &dist3_pairing_scheme);
 
 	return 0;
 }
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
