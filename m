Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B7814FF80
	for <lists+linux-mtd@lfdr.de>; Sun,  2 Feb 2020 22:58:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=z6dB+JQAMSbs1aGTtMABG/K58FREHN9rq43UPcw/wj4=; b=R2mP/SebDI3MDm0Qi337l63Mg4
	lpfXildf+ACTRzOv1KTyqPBoMhTS6JWZm79PKHAhjGu2DsNwFN4xfLl97ZyaOy3WcARY6WUZrhuU5
	Ap/b1QZ6L/wkh4RJJyUZ4XAR16q6gZbgVwjF1jYIIyBTIi+g9T635put2bkmwr0atJCkTGaPxa4Nz
	9EBU6h7upXBsIWXBhYPWLCLiEt3Vgd+seR25i1Ky8V+yK0SWwfhIP2Ug1qMQ1clpZ6xcgoKGReEc+
	SvxIH6kTOadnRhg+5Bqjsl/G/etiEcUmW8sS1uCxyJtE4pkQFkK88dLPsuAmN39DBQHAnvrzgI/jd
	c+m7cSMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyNGb-0001IC-IH; Sun, 02 Feb 2020 21:58:57 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyNFF-0000HG-BB
 for linux-mtd@lists.infradead.org; Sun, 02 Feb 2020 21:57:35 +0000
Received: by mail-wm1-x341.google.com with SMTP id s144so12982800wme.1
 for <linux-mtd@lists.infradead.org>; Sun, 02 Feb 2020 13:57:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3dLHbgqnxzITEPk0xVr2q4acu5k1gqYIJuRiRDYsyfM=;
 b=i6sn9HS05ehtC8NoNAFCY/z7MxG4qIQXHBHzArXM8R7czsmlRH6VVbnr7zCGzCMxFw
 +cpgr9ZntSojztMI+KlXsSAR4fASYj/fXZ/qbKiujILL3t+o+TxxbmL+RA4EAGfQay6D
 X31ns5YaTQ7PVDmm1QRN94lcDSsq4ne7jbgyiuN1G8vpsvvFOINewix/kDI/r9ZKhgok
 0jpnTHIjKF/IyYRnfthPoxAbercMPKZgQO+b72Yzr/+wKXaJDHRcmLKfcwMnBZyo26qN
 1raof8u7y86H7Ag5Zovex574/oGUUHnXs5leK1lZ2OjTFv8kvK8DJJBuCpuPIzwk/HFz
 7oXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3dLHbgqnxzITEPk0xVr2q4acu5k1gqYIJuRiRDYsyfM=;
 b=ShTvKOr5s3QnAxqGEHVg8s2BtwPigV3d6eHp8IxBU5P1e7pKPFRnTXax/QrI1WZWos
 /Y2X61iUuLHNLZgXyp3XmdhYDf7/9Gzvuj+XZDmeYdO4H6a7Ka1Kk2h6t0bA1cZWJvTO
 14sA+SoNaGLi4cnH9l9x4St4ghIprSGLLWgUv2OcpjzxT3gKVBdZu1mkgxgNOMG+8Hqf
 KP+ScI1B9LBr0es0iK1urE2LwARXF/Ljrkti2zWBKmRT+bh03fIrOhT8K26PdsYGudFX
 BYDGYVEnSA7FQv3D8Y0Ef867ngJwCALyMAVKKWmsr0I9sAAD9RlpNYNzX722kNTYbcLg
 +DOQ==
X-Gm-Message-State: APjAAAXg+RaR0+Lbmfn/uLvwWztWXwlu2gYQiKhCqHg1auPJqVHbqzjV
 YNqFf7ChsxDkRgEOHCxUwe0=
X-Google-Smtp-Source: APXvYqxkq79MGinXkrF1t0NJB9q3e2oug5VUdbRsPHSxyrVhg0GfF97I0VOF9GGEzaM6bnpOxTkE4Q==
X-Received: by 2002:a7b:cb91:: with SMTP id m17mr23679112wmi.146.1580680652015; 
 Sun, 02 Feb 2020 13:57:32 -0800 (PST)
Received: from opensdev.fritz.box
 (business-178-015-117-054.static.arcor-ip.net. [178.15.117.54])
 by smtp.gmail.com with ESMTPSA id c4sm20612488wml.7.2020.02.02.13.57.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 13:57:31 -0800 (PST)
From: shiva.linuxworks@gmail.com
X-Google-Original-From: sshivamurthy@micron.com
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Boris Brezillon <bbrezillon@kernel.org>, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 5/5] mtd: spinand: micron: Add new Micron SPI NAND devices
 with multiple dies
Date: Sun,  2 Feb 2020 22:55:08 +0100
Message-Id: <20200202215508.2928-6-sshivamurthy@micron.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200202215508.2928-1-sshivamurthy@micron.com>
References: <20200202215508.2928-1-sshivamurthy@micron.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_135733_396402_9FFBA638 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

Add device table for new Micron SPI NAND devices, which have multiple
dies.

Also, enable support to select the dies.

Signed-off-by: Shivamurthy Shastri <sshivamurthy@micron.com>
---
 drivers/mtd/nand/spi/micron.c | 58 +++++++++++++++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/drivers/mtd/nand/spi/micron.c b/drivers/mtd/nand/spi/micron.c
index 3d3734afc35e..84e1c109ad0c 100644
--- a/drivers/mtd/nand/spi/micron.c
+++ b/drivers/mtd/nand/spi/micron.c
@@ -20,6 +20,15 @@
 
 #define MICRON_CFG_CONTI_READ		BIT(0)
 
+/*
+ * As per datasheet, die selection is done by the 6th bit of Die
+ * Select Register (Address 0xD0).
+ */
+#define MICRON_DIE_SELECT_REG	0xD0
+
+#define MICRON_SELECT_DIE_0	0x00
+#define MICRON_SELECT_DIE_1	0x40
+
 static SPINAND_OP_VARIANTS(read_cache_variants,
 		SPINAND_PAGE_READ_FROM_CACHE_QUADIO_OP(0, 2, NULL, 0),
 		SPINAND_PAGE_READ_FROM_CACHE_X4_OP(0, 1, NULL, 0),
@@ -66,6 +75,22 @@ static const struct mtd_ooblayout_ops micron_8_ooblayout = {
 	.free = micron_8_ooblayout_free,
 };
 
+static int micron_select_target(struct spinand_device *spinand,
+				unsigned int target)
+{
+	struct spi_mem_op op = SPINAND_SET_FEATURE_OP(MICRON_DIE_SELECT_REG,
+						      spinand->scratchbuf);
+
+	if (target == 0)
+		*spinand->scratchbuf = MICRON_SELECT_DIE_0;
+	else if (target == 1)
+		*spinand->scratchbuf = MICRON_SELECT_DIE_1;
+	else
+		return -EINVAL;
+
+	return spi_mem_exec_op(spinand->spimem, &op);
+}
+
 static int micron_8_ecc_get_status(struct spinand_device *spinand,
 				   u8 status)
 {
@@ -133,6 +158,17 @@ static const struct spinand_info micron_spinand_table[] = {
 		     0,
 		     SPINAND_ECCINFO(&micron_8_ooblayout,
 				     micron_8_ecc_get_status)),
+	/* M79A 4Gb 3.3V */
+	SPINAND_INFO("MT29F4G01ADAGD", 0x36,
+		     NAND_MEMORG(1, 2048, 128, 64, 2048, 80, 2, 1, 2),
+		     NAND_ECCREQ(8, 512),
+		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
+					      &write_cache_variants,
+					      &update_cache_variants),
+		     0,
+		     SPINAND_ECCINFO(&micron_8_ooblayout,
+				     micron_8_ecc_get_status),
+		     SPINAND_SELECT_TARGET(micron_select_target)),
 	/* M70A 4Gb 3.3V */
 	SPINAND_INFO("MT29F4G01ABAFD", 0x34,
 		     NAND_MEMORG(1, 4096, 256, 64, 2048, 40, 1, 1, 1),
@@ -153,6 +189,28 @@ static const struct spinand_info micron_spinand_table[] = {
 		     SPINAND_HAS_CR_FEAT_BIT,
 		     SPINAND_ECCINFO(&micron_8_ooblayout,
 				     micron_8_ecc_get_status)),
+	/* M70A 8Gb 3.3V */
+	SPINAND_INFO("MT29F8G01ADAFD", 0x46,
+		     NAND_MEMORG(1, 4096, 256, 64, 2048, 40, 1, 1, 2),
+		     NAND_ECCREQ(8, 512),
+		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
+					      &write_cache_variants,
+					      &update_cache_variants),
+		     SPINAND_HAS_CR_FEAT_BIT,
+		     SPINAND_ECCINFO(&micron_8_ooblayout,
+				     micron_8_ecc_get_status),
+		     SPINAND_SELECT_TARGET(micron_select_target)),
+	/* M70A 8Gb 1.8V */
+	SPINAND_INFO("MT29F8G01ADBFD", 0x47,
+		     NAND_MEMORG(1, 4096, 256, 64, 2048, 40, 1, 1, 2),
+		     NAND_ECCREQ(8, 512),
+		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
+					      &write_cache_variants,
+					      &update_cache_variants),
+		     SPINAND_HAS_CR_FEAT_BIT,
+		     SPINAND_ECCINFO(&micron_8_ooblayout,
+				     micron_8_ecc_get_status),
+		     SPINAND_SELECT_TARGET(micron_select_target)),
 };
 
 static int micron_spinand_detect(struct spinand_device *spinand)
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
