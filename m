Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A475814FF7A
	for <lists+linux-mtd@lfdr.de>; Sun,  2 Feb 2020 22:57:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ccxKiE2jqAoxnz7SglgTy/jRb5Ldd8HdgCUiOxQO8cM=; b=E4n525X9tmRdt7Pj0G3bN1eCmj
	hYpRON/Sl/FQ1n1LKGAh/BdPcp+7kTRLM3Rrad2npu+lb9iIwYGzoRW6p6U1OK+ex69+d7ql12MS9
	2+YvYCxGU9QBsjFTVXR7o8UbDEVTd7gBUNhSIJRgizoz5koi1gFGGSsyK3fAyTIcNarQOFhevPBlg
	0nBrD/6Lq3Q1xcIDtzAi1N1hjcCKOEmgy6um44laUVWPN+9ry0AYk8wmtQUtIc7U4+2ci7j8zdqHv
	szMhuc4O34Hk80gfFHUS6jouS4NVSX0eYfVZNnYEKJj0m3tWu3fdrqA8D/pvvjpFP4EqVGkwfTCB/
	UrsHZ3dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyNFP-0000BJ-PP; Sun, 02 Feb 2020 21:57:43 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyNF4-0008Ug-KV
 for linux-mtd@lists.infradead.org; Sun, 02 Feb 2020 21:57:24 +0000
Received: by mail-wr1-x443.google.com with SMTP id w12so4599170wrt.2
 for <linux-mtd@lists.infradead.org>; Sun, 02 Feb 2020 13:57:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Vcj3e9+EJ4WNrgAbdDvcbbbPfC25UIBCN5ll5T2N4bs=;
 b=AzIFCKPjliPpFkGh+fmHJHVaJmlAB0nzRyLhshxpqjuXCJ5dldnhTBBFiLRKZAzMj9
 s1iGZ1j6GueEzAL3xUWqRz3qh0/ZXQRvdtEjX1JQ+cUbI20/5b8WJv9+Y9oXdw/z01ZE
 ohy1dJ+QJq7+lP7obuazZV/wE9DiwqUZCoPu0Z0W8dII1B4sHZvjihWZpU6NXfm4vz9C
 gihWh7/5XkqC/tQbHXEHB7PDePqPMA85luNxE8qd+LYkn86YyX+IAxVcBtI27C01sdIc
 lk1DqTEsc/ej6k0b5XOwTlvntktdbjtdvd2iBDJOgO1EqUm3CuX53uc+3Lg2fyWRKkiC
 8QcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Vcj3e9+EJ4WNrgAbdDvcbbbPfC25UIBCN5ll5T2N4bs=;
 b=LpW2n5G9Bo2MFdFTp9RI/xWxBirhIMt+SZBMfJ8mmrQcxvJoj0kycwwt0ZH9FAAwUn
 45EiljAyJyEAbOqznI0I7BIwcYYUzEf3biXk80cVL5L2F2RGc3UPog7kvLXEsueppjZo
 BCXV8JI0B4eKwUiiCtAGVBXK2dZxDVI2u5m5OveK/J+WZ33iW2qhumL/mSMyfIBvgGLI
 xX/v0hQzw6YdK2qYWFlbYN67/d11GKfjUro0QIhP5d+YmpVrspNtymw9dgrky/h02rT3
 wa41upwcMKCEYvi9fj30N6SVEfb5LleRvyL87HiN83sE04mlE0xB/XtR7EIg/XP9YBJe
 2Gsw==
X-Gm-Message-State: APjAAAUFu+3XoQF6mfA5kI+d7EqOEdnlEN66HhQaG/cbJC08qrHvROwp
 IgJkgvuujqStB89svK0UbU0=
X-Google-Smtp-Source: APXvYqyWADPcQWb3wzW2L8wyyXG6TTw2oF3uUCmqwJmL8r3m1gB+F497PdbqJo0ZcNfWm9DNgH6ptA==
X-Received: by 2002:adf:a1db:: with SMTP id v27mr11546492wrv.272.1580680639050; 
 Sun, 02 Feb 2020 13:57:19 -0800 (PST)
Received: from opensdev.fritz.box
 (business-178-015-117-054.static.arcor-ip.net. [178.15.117.54])
 by smtp.gmail.com with ESMTPSA id c4sm20612488wml.7.2020.02.02.13.57.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 13:57:18 -0800 (PST)
From: shiva.linuxworks@gmail.com
X-Google-Original-From: sshivamurthy@micron.com
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Boris Brezillon <bbrezillon@kernel.org>, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/5] mtd: spinand: micron: Generalize the OOB layout
 structure and function names
Date: Sun,  2 Feb 2020 22:55:04 +0100
Message-Id: <20200202215508.2928-2-sshivamurthy@micron.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200202215508.2928-1-sshivamurthy@micron.com>
References: <20200202215508.2928-1-sshivamurthy@micron.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_135722_692261_CB2A4BE3 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shiva.linuxworks[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Shivamurthy Shastri <sshivamurthy@micron.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Shivamurthy Shastri <sshivamurthy@micron.com>

In order to add new Micron SPI NAND devices, we generalized the OOB
layout structure and function names.

Signed-off-by: Shivamurthy Shastri <sshivamurthy@micron.com>
---
 drivers/mtd/nand/spi/micron.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/mtd/nand/spi/micron.c b/drivers/mtd/nand/spi/micron.c
index 7d7b1f7fcf71..c028d0d7e236 100644
--- a/drivers/mtd/nand/spi/micron.c
+++ b/drivers/mtd/nand/spi/micron.c
@@ -34,38 +34,38 @@ static SPINAND_OP_VARIANTS(update_cache_variants,
 		SPINAND_PROG_LOAD_X4(false, 0, NULL, 0),
 		SPINAND_PROG_LOAD(false, 0, NULL, 0));
 
-static int mt29f2g01abagd_ooblayout_ecc(struct mtd_info *mtd, int section,
-					struct mtd_oob_region *region)
+static int micron_8_ooblayout_ecc(struct mtd_info *mtd, int section,
+				  struct mtd_oob_region *region)
 {
 	if (section)
 		return -ERANGE;
 
-	region->offset = 64;
-	region->length = 64;
+	region->offset = mtd->oobsize / 2;
+	region->length = mtd->oobsize / 2;
 
 	return 0;
 }
 
-static int mt29f2g01abagd_ooblayout_free(struct mtd_info *mtd, int section,
-					 struct mtd_oob_region *region)
+static int micron_8_ooblayout_free(struct mtd_info *mtd, int section,
+				   struct mtd_oob_region *region)
 {
 	if (section)
 		return -ERANGE;
 
 	/* Reserve 2 bytes for the BBM. */
 	region->offset = 2;
-	region->length = 62;
+	region->length = (mtd->oobsize / 2) - 2;
 
 	return 0;
 }
 
-static const struct mtd_ooblayout_ops mt29f2g01abagd_ooblayout = {
-	.ecc = mt29f2g01abagd_ooblayout_ecc,
-	.free = mt29f2g01abagd_ooblayout_free,
+static const struct mtd_ooblayout_ops micron_8_ooblayout = {
+	.ecc = micron_8_ooblayout_ecc,
+	.free = micron_8_ooblayout_free,
 };
 
-static int mt29f2g01abagd_ecc_get_status(struct spinand_device *spinand,
-					 u8 status)
+static int micron_8_ecc_get_status(struct spinand_device *spinand,
+				   u8 status)
 {
 	switch (status & MICRON_STATUS_ECC_MASK) {
 	case STATUS_ECC_NO_BITFLIPS:
@@ -98,8 +98,8 @@ static const struct spinand_info micron_spinand_table[] = {
 					      &write_cache_variants,
 					      &update_cache_variants),
 		     0,
-		     SPINAND_ECCINFO(&mt29f2g01abagd_ooblayout,
-				     mt29f2g01abagd_ecc_get_status)),
+		     SPINAND_ECCINFO(&micron_8_ooblayout,
+				     micron_8_ecc_get_status)),
 };
 
 static int micron_spinand_detect(struct spinand_device *spinand)
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
