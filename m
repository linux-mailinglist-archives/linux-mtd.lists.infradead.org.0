Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7095154CE8
	for <lists+linux-mtd@lfdr.de>; Thu,  6 Feb 2020 21:24:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ccxKiE2jqAoxnz7SglgTy/jRb5Ldd8HdgCUiOxQO8cM=; b=mWty9cG+1gKWTHgvpvc5ZvmDhv
	tiOPQJJ+vPC+GBJ6h6Gvxtzyji17sI2nbhJ7PJIK6LuEn6eG5X5jAuy2v2XlIGe4DJn1QI6HBy3qu
	9XC5R3mgrtGlmrHEOmj/apy02TgGGRdfkBjoCW/esZYp9U0RmvWR3U7ozM4pzpyiOq45E6NLPMwoe
	JRiET4bhAmGe0fGffD7IgO0kfp4LH58fVhkMVQyE0DF68ZXLC+aG0dL20Nk4dZMZrla1dI/VZoeX3
	Xd1rkXsMIQNfWkeTC2HZ/cqB6AggykoCFx6xG5SCBS9dSEd7ZUrdSPb4dtMPCE7MSbv12212SwrRO
	fzg/IJAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iznhk-0006r8-8e; Thu, 06 Feb 2020 20:24:52 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iznhP-0006fo-DU
 for linux-mtd@lists.infradead.org; Thu, 06 Feb 2020 20:24:32 +0000
Received: by mail-wr1-x441.google.com with SMTP id c9so8676480wrw.8
 for <linux-mtd@lists.infradead.org>; Thu, 06 Feb 2020 12:24:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Vcj3e9+EJ4WNrgAbdDvcbbbPfC25UIBCN5ll5T2N4bs=;
 b=GS9dN4t3AWNdhQsrw7lNOfrPTeUpGVVfpKTXZ5Tr37i2IJdDwWfLfXmUMXLxJEBMtA
 1QsVckviqL47iHxcjHK6JGNZL3YRxg41jaeytjeysnnrzszWLS4387t5KFSoLbE2nldH
 L0J7a7YMHM7eAt0gQh9XJEX7cPIr67yyBemihzHrpngXf9dA1njqmZQS2HS70/at/lRR
 GuA67WgmfLTA7rjCiwIe+lz5+HjKDlhq8baVhgNL1ebQKkpMVsAjWiYeNala1uz67WBs
 Ca1ZOWcauhW8XVlfYUysjP/q2za9edtKPvLdxVI60Izi6CPGhEUtNKcrzCDPLUKTjz5w
 6vIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Vcj3e9+EJ4WNrgAbdDvcbbbPfC25UIBCN5ll5T2N4bs=;
 b=UQUobfn6T6RANUwNzkQU+r2/bTjCKp522fKpyFfFuYaDJI2AcqPShMNlhdBwzlbvPD
 sZo5LbL19j3c4VgmPTelYUMqDcyPpBhJF4Ew7WxHB+2k1v21GEncE+gKupe7I6MLAEDy
 JrVD6nNz/GjfIXtjJdgFYgGCY0Ecj+RqygcFTJfC8rqIJL7O1KDO+b47zn+Hg46qCowL
 2jAfVJXz426kjGmFcUbuuJCsQ/81zxZg/2kAb4A40EDDQc+TkBD4yFMpmIF98TqmNFCd
 aro+/3daFys5IeYXvndY8QAmIZAeIdxmlDhiCvAC4EdUdXHLj5fnzfh+2G1G0MsIX8G/
 th/A==
X-Gm-Message-State: APjAAAUVTJh2kN4FjVzYuyCoPuHbQt67aQD/A/a6QoOTHx1eqXrWyNAN
 4Gd+H373bVlA7y0nw0Su484=
X-Google-Smtp-Source: APXvYqzPoHoZWjpqE5sSi/BYrIxB0T/cfaytBUDaq+eKbJVaq3F1f8ubDSgDWcw3PrZrGwAjO6cyyA==
X-Received: by 2002:adf:db48:: with SMTP id f8mr5266232wrj.146.1581020669767; 
 Thu, 06 Feb 2020 12:24:29 -0800 (PST)
Received: from opensdev.fritz.box
 (business-178-015-117-054.static.arcor-ip.net. [178.15.117.54])
 by smtp.gmail.com with ESMTPSA id c13sm539929wrx.9.2020.02.06.12.24.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 12:24:29 -0800 (PST)
From: shiva.linuxworks@gmail.com
X-Google-Original-From: sshivamurthy@micron.com
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Boris Brezillon <bbrezillon@kernel.org>, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/5] mtd: spinand: micron: Generalize the OOB layout
 structure and function names
Date: Thu,  6 Feb 2020 21:22:02 +0100
Message-Id: <20200206202206.14770-2-sshivamurthy@micron.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200206202206.14770-1-sshivamurthy@micron.com>
References: <20200206202206.14770-1-sshivamurthy@micron.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_122431_483404_90D40BCA 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shiva.linuxworks[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
