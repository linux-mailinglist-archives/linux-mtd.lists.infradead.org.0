Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 942891E7B9E
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 13:21:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vBJnVoVLE9bbWJgt7bXMw6w0fA5QoZz/M/rWtxJb33Y=; b=S9vWlKFw/gEeqz
	VtQWZ1uWMqWp2v2mc1sOdTMeDUsbkzaMqnQUEhKVI72/X5cY2nzLGk+2ja/7udPMkz/958twhkb9Y
	0Se8+QXWgxr9CIoglao4HtvosXWs4FQabGg3qIw8RJiHPq8d/1a0uU7eFjqYdlsEYC5HBvRNcTVLB
	wQAHnEFsqj/0opCprOIizAcTHuLZz1dLHm4TFxBzaspQLTduUG5KiqdI7Qw49tH6ggblhHPdqo9LD
	G1I6bNpRi8va+boyqbM+flCh973zYez6wKwIx6GN+dC2EeCMkr8wKoTMC+dxwTkt5g4M3eBv/xOXc
	s9DdnmnHt6ZWQcCDZa0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jed4i-00067e-Be; Fri, 29 May 2020 11:21:20 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jecxZ-0003b0-4t
 for linux-mtd@lists.infradead.org; Fri, 29 May 2020 11:14:03 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 1DB7E24000A;
 Fri, 29 May 2020 11:13:54 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v7 25/28] mtd: rawnand: hynix: Implement
 ->choose_interface_config() for H27UCG8T2ATR-BC
Date: Fri, 29 May 2020 13:13:19 +0200
Message-Id: <20200529111322.7184-26-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200529111322.7184-1-miquel.raynal@bootlin.com>
References: <20200529111322.7184-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_041357_414033_596D8EEC 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Michal Simek <monstr@monstr.eu>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This chip supports ONFI SDR timing mode 4, implement the new hook to
advertize it.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_hynix.c | 14 ++++++++++++++
 drivers/mtd/nand/raw/nand_ids.c   |  2 +-
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/nand_hynix.c b/drivers/mtd/nand/raw/nand_hynix.c
index 7d1be53f27f3..6d08eb834456 100644
--- a/drivers/mtd/nand/raw/nand_hynix.c
+++ b/drivers/mtd/nand/raw/nand_hynix.c
@@ -673,6 +673,15 @@ static void hynix_nand_cleanup(struct nand_chip *chip)
 	nand_set_manufacturer_data(chip, NULL);
 }
 
+static int
+h27ucg8t2atrbc_choose_interface_config(struct nand_chip *chip,
+				       struct nand_interface_config *iface)
+{
+	onfi_fill_interface_config(chip, iface, NAND_SDR_IFACE, 4);
+
+	return nand_choose_best_sdr_timings(chip, iface, NULL);
+}
+
 static int hynix_nand_init(struct nand_chip *chip)
 {
 	struct hynix_nand *hynix;
@@ -689,6 +698,11 @@ static int hynix_nand_init(struct nand_chip *chip)
 
 	nand_set_manufacturer_data(chip, hynix);
 
+	if (!strncmp("H27UCG8T2ATR-BC", chip->parameters.model,
+		     sizeof("H27UCG8T2ATR-BC") - 1))
+		chip->ops.choose_interface_config =
+			h27ucg8t2atrbc_choose_interface_config;
+
 	ret = hynix_nand_rr_init(chip);
 	if (ret)
 		hynix_nand_cleanup(chip);
diff --git a/drivers/mtd/nand/raw/nand_ids.c b/drivers/mtd/nand/raw/nand_ids.c
index c729a8bc895d..3b890d55703d 100644
--- a/drivers/mtd/nand/raw/nand_ids.c
+++ b/drivers/mtd/nand/raw/nand_ids.c
@@ -50,7 +50,7 @@ struct nand_flash_dev nand_flash_ids[] = {
 	{"H27UCG8T2ATR-BC 64G 3.3V 8-bit",
 		{ .id = {0xad, 0xde, 0x94, 0xda, 0x74, 0xc4} },
 		  SZ_8K, SZ_8K, SZ_2M, NAND_NEED_SCRAMBLING, 6, 640,
-		  NAND_ECC_INFO(40, SZ_1K), 4 },
+		  NAND_ECC_INFO(40, SZ_1K) },
 
 	LEGACY_ID_NAND("NAND 4MiB 5V 8-bit",   0x6B, 4, SZ_8K, SP_OPTIONS),
 	LEGACY_ID_NAND("NAND 4MiB 3,3V 8-bit", 0xE3, 4, SZ_8K, SP_OPTIONS),
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
