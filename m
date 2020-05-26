Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB891E13A7
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 19:46:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=grJx+JbXDgTU/BbRNvonPxZ3pOijZT5f8JWtTvh9a94=; b=OweRLqHKaAaddV
	MQDv6y26QHxSU6soAKmGeef7YHaMbwbi0qcm1UYlBhZkVL0AdlQ8qG8kj6gcH77SYEkXfnTZxkq1S
	1zXk+Qxk9J9iP/xhj48/yz5xfQi2x6ZmzNPCJY/SEyOIsAm6GPutxWvsaFXXytnWDTYN+AHeS3Yhq
	2QGx/MjF33lJles8yk+yhRIvxVZ67M3KGp65cdg9iLichnZJ3u8KJrVcWEFqO790yStGwSQCC2Y9l
	D7Rmy0TVZFcezEWQsN3bP1/+3fzggVy7PPiza7NJF44qxoJ7EUnP+nRmS/HE/Wq8415qJJtihpVp+
	oCI66nprVfTxe3uChOyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdHBO-0008Qo-7n; Mon, 25 May 2020 17:46:38 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdH7q-0003Dm-DU
 for linux-mtd@lists.infradead.org; Mon, 25 May 2020 17:43:00 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id F202B24000C;
 Mon, 25 May 2020 17:42:55 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v4 10/19] mtd: rawnand: Rename nand_has_setup_data_interface()
Date: Mon, 25 May 2020 19:42:30 +0200
Message-Id: <20200525174239.11349-11-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200525174239.11349-1-miquel.raynal@bootlin.com>
References: <20200525174239.11349-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_104258_610039_6412F98C 
X-CRM114-Status: GOOD (  12.93  )
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
Cc: Rickard Andersson <rickaran@axis.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This is really a NAND controller hook so call it
nand_controller_has_setup_data_interface(), which makes much more
sense.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/internals.h   | 2 +-
 drivers/mtd/nand/raw/nand_base.c   | 6 +++---
 drivers/mtd/nand/raw/nand_legacy.c | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/nand/raw/internals.h b/drivers/mtd/nand/raw/internals.h
index a518acfd9b3f..347d42c55353 100644
--- a/drivers/mtd/nand/raw/internals.h
+++ b/drivers/mtd/nand/raw/internals.h
@@ -130,7 +130,7 @@ static inline int nand_exec_op(struct nand_chip *chip,
 	return chip->controller->ops->exec_op(chip, op, false);
 }
 
-static inline bool nand_has_setup_data_iface(struct nand_chip *chip)
+static inline bool nand_controller_has_setup_data_iface(struct nand_chip *chip)
 {
 	if (!chip->controller || !chip->controller->ops ||
 	    !chip->controller->ops->setup_data_interface)
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 514ac78899ec..d446394a2ea0 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -910,7 +910,7 @@ static int nand_reset_data_interface(struct nand_chip *chip, int chipnr)
 {
 	int ret;
 
-	if (!nand_has_setup_data_iface(chip))
+	if (!nand_controller_has_setup_data_iface(chip))
 		return 0;
 
 	/*
@@ -955,7 +955,7 @@ static int nand_setup_data_interface(struct nand_chip *chip, int chipnr)
 	u8 tmode_param[ONFI_SUBFEATURE_PARAM_LEN] = { mode, };
 	int ret;
 
-	if (!nand_has_setup_data_iface(chip))
+	if (!nand_controller_has_setup_data_iface(chip))
 		return 0;
 
 	/* Change the mode on the chip side (if supported by the NAND chip) */
@@ -1024,7 +1024,7 @@ static int nand_init_data_interface(struct nand_chip *chip)
 {
 	int modes, mode, ret;
 
-	if (!nand_has_setup_data_iface(chip))
+	if (!nand_controller_has_setup_data_iface(chip))
 		return 0;
 
 	/*
diff --git a/drivers/mtd/nand/raw/nand_legacy.c b/drivers/mtd/nand/raw/nand_legacy.c
index d64791c06a97..8b91aa7773d8 100644
--- a/drivers/mtd/nand/raw/nand_legacy.c
+++ b/drivers/mtd/nand/raw/nand_legacy.c
@@ -365,7 +365,7 @@ static void nand_ccs_delay(struct nand_chip *chip)
 	 * Wait tCCS_min if it is correctly defined, otherwise wait 500ns
 	 * (which should be safe for all NANDs).
 	 */
-	if (nand_has_setup_data_iface(chip))
+	if (nand_controller_has_setup_data_iface(chip))
 		ndelay(chip->data_interface.timings.sdr.tCCS_min / 1000);
 	else
 		ndelay(500);
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
