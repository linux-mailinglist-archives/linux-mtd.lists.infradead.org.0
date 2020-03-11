Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7AE6182035
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Mar 2020 19:00:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=m4X1A137Tzo0pBCDq0YVsqzfhUeYlqUt9z8dvz0m1DM=; b=F9uTWrP7F6XBznv2Kd8A2ljx1/
	QHHwqMO450zsw5AIRPpTUvfkgDJYXN1ZPc8dQW31kEC+M021PSWGdSe0ofBW+vm3Zxj3iXoAMez0K
	m73hHV1yuYhioQ4AUxHSLr8gFHUEqzJSckVyb7a66IkwWKxbsqmHoPflMqXQluy2c597Gd8HZRYGt
	dJcCo3Ad4rwPdsDduFOR1m3Yk14yAhbv47D2e65kz/gJHNqBARwBzMlNf1XCW7ygOjs/Jrpy8RUQH
	qgJdBZalDBtdkifqAh8Uc2CXsRRmhbqoFW8jUqvJhXuhPnaBW632MxC6H3SWe1NwSETvPXMFY+CEx
	6M4yQNvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC5eb-0007Sy-MR; Wed, 11 Mar 2020 18:00:25 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC5d7-0006PU-Uy
 for linux-mtd@lists.infradead.org; Wed, 11 Mar 2020 17:58:55 +0000
Received: by mail-wr1-x443.google.com with SMTP id 6so3830922wre.4
 for <linux-mtd@lists.infradead.org>; Wed, 11 Mar 2020 10:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=inRJj7F/F+AbnrSRtqE2WRG/KTJ90ug0HSiEeq5Pj94=;
 b=hnncAEEtg+JuFokx6qluoIDGPjGjDCUHe/CaMVrGS+t8kul2ZMdoTNwxanLMkn/tsS
 kB2NMrxOHdP3ZxRW8Gt1a9jwj8JXYYz7ggw/FyNAovZG0yeV4aSObJLAAjZq6JuS9oE5
 nKhHiosX8ZuVzjK5Pp5BEwixnPaplON1R/rgy4cHIAl8sj1r/TCh5xZ9H487/nqztatL
 7vYiGZnNCRfGgnT5FXLOKMVgzgSmHVU4rUMhttkHDxudcOcy0rvtLOYW1piFZGoO3Ol+
 wvk8XB9vG//vjjjZU4mm9IC5RrMksT7ERrHgxS1FyRUdxp7LjuR8yJ4XCxrCxJu2x40b
 g6EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=inRJj7F/F+AbnrSRtqE2WRG/KTJ90ug0HSiEeq5Pj94=;
 b=RRswQXSp0Rh6xXvYlDo0LZQ9UfiVS3YbxFMDl4BKPg3rcaJbwIsJh08mXOsmDsHp/4
 wD5sCculmgyDanUa+5x+TLhlwhpIOmdMdInswD2k7Y/lkglv3xoBFY+xBW5Ewi/16f+b
 gTy3L3+9xoV9d8T6VnRWY586xkeAYHaxNF/MBdn8+pQ/F2xpVRsvnZqPaWmpcAn1YCx1
 IXr2tSIIObfSK82I1Nmkh+AO8p9m8e7OsYp0URgu7IaCnIe14wLHUy672u9SF/+Div5p
 rte2T2V+Q5z4TjhbcqloM/CC5CO98H1NQx6mIr/KyZ8bxkEeEEj8LVcUGTfuCTfgdo8b
 qJZA==
X-Gm-Message-State: ANhLgQ1dc3M447XXNQ/uu4RIq2qRT06fnzB+tAeMJMYdHlyTBB7NYB8/
 WJWCQQx0E0yjGXdHRfhHZ1p89ldh
X-Google-Smtp-Source: ADFU+vs5z+HMwUCXtWkE+RoE8aWn/MuWk8pCgfPI8JtM44InUqEHPsnwufNPB0dl/+OoyaIBAU8AYA==
X-Received: by 2002:adf:94a3:: with SMTP id 32mr6039829wrr.276.1583949532613; 
 Wed, 11 Mar 2020 10:58:52 -0700 (PDT)
Received: from opensdev.fritz.box
 (business-178-015-117-054.static.arcor-ip.net. [178.15.117.54])
 by smtp.gmail.com with ESMTPSA id l18sm1502107wrr.17.2020.03.11.10.58.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 10:58:51 -0700 (PDT)
From: shiva.linuxworks@gmail.com
X-Google-Original-From: sshivamurthy@micron.com
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Chuanhong Guo <gch981213@gmail.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 4/6] mtd: spinand: micron: identify SPI NAND device with
 Continuous Read mode
Date: Wed, 11 Mar 2020 18:57:33 +0100
Message-Id: <20200311175735.2007-5-sshivamurthy@micron.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200311175735.2007-1-sshivamurthy@micron.com>
References: <20200311175735.2007-1-sshivamurthy@micron.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_105853_998493_D44DB699 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shiva.linuxworks[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Shivamurthy Shastri <sshivamurthy@micron.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Shivamurthy Shastri <sshivamurthy@micron.com>

Add SPINAND_HAS_CR_FEAT_BIT flag to identify the SPI NAND device with
the Continuous Read mode.

Some of the Micron SPI NAND devices have the "Continuous Read" feature
enabled by default, which does not fit the subsystem needs.

In this mode, the READ CACHE command doesn't require the starting column
address. The device always output the data starting from the first
column of the cache register, and once the end of the cache register
reached, the data output continues through the next page. With the
continuous read mode, it is possible to read out the entire block using
a single READ command, and once the end of the block reached, the output
pins become High-Z state. However, during this mode the read command
doesn't output the OOB area.

Hence, we disable the feature at probe time.

Signed-off-by: Shivamurthy Shastri <sshivamurthy@micron.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/spi/micron.c | 16 ++++++++++++++++
 include/linux/mtd/spinand.h   |  1 +
 2 files changed, 17 insertions(+)

diff --git a/drivers/mtd/nand/spi/micron.c b/drivers/mtd/nand/spi/micron.c
index 26925714a9fb..956f7710aca2 100644
--- a/drivers/mtd/nand/spi/micron.c
+++ b/drivers/mtd/nand/spi/micron.c
@@ -18,6 +18,8 @@
 #define MICRON_STATUS_ECC_4TO6_BITFLIPS	(3 << 4)
 #define MICRON_STATUS_ECC_7TO8_BITFLIPS	(5 << 4)
 
+#define MICRON_CFG_CR			BIT(0)
+
 static SPINAND_OP_VARIANTS(read_cache_variants,
 		SPINAND_PAGE_READ_FROM_CACHE_QUADIO_OP(0, 2, NULL, 0),
 		SPINAND_PAGE_READ_FROM_CACHE_X4_OP(0, 1, NULL, 0),
@@ -137,7 +139,21 @@ static const struct spinand_info micron_spinand_table[] = {
 				     micron_8_ecc_get_status)),
 };
 
+static int micron_spinand_init(struct spinand_device *spinand)
+{
+	/*
+	 * M70A device series enable Continuous Read feature at Power-up,
+	 * which is not supported. Disable this bit to avoid any possible
+	 * failure.
+	 */
+	if (spinand->flags & SPINAND_HAS_CR_FEAT_BIT)
+		return spinand_upd_cfg(spinand, MICRON_CFG_CR, 0);
+
+	return 0;
+}
+
 static const struct spinand_manufacturer_ops micron_spinand_manuf_ops = {
+	.init = micron_spinand_init,
 };
 
 const struct spinand_manufacturer micron_spinand_manufacturer = {
diff --git a/include/linux/mtd/spinand.h b/include/linux/mtd/spinand.h
index f4c4ae87181b..1077c45721ff 100644
--- a/include/linux/mtd/spinand.h
+++ b/include/linux/mtd/spinand.h
@@ -284,6 +284,7 @@ struct spinand_ecc_info {
 };
 
 #define SPINAND_HAS_QE_BIT		BIT(0)
+#define SPINAND_HAS_CR_FEAT_BIT		BIT(1)
 
 /**
  * struct spinand_info - Structure used to describe SPI NAND chips
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
