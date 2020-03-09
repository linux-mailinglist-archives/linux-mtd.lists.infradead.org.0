Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49FA017DF24
	for <lists+linux-mtd@lfdr.de>; Mon,  9 Mar 2020 12:57:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1wGuZ+C+jKv+LwG1NsVj+6dk5tCGksAk3CUfR+GbpWw=; b=rMXl5vZf1LtL8H2gdCL9e8mOgQ
	m7hBzjJjfdOjjIq011r22X9GTXmOO+/w1qQZfcQhlPsOd9+uwn0hxVhrTVE4z6L93aYQPQlNz9HJl
	iyaXFt3F0v76UuSo3StYASsWL6ptRPSxhSCbIx8uiSjl1fDQWL12XGQ7oKVEiwu3/RcERB4qpVJrV
	9ZdTmMHz5m+qaBTNC3bGDHVgAp+8K9Vzsul1ACtbqeycvNBz3BzHsvkisf2PB+WSNeiMd3i/Gsz5S
	T8/8jbeIa+PdvU5n2Hy6qQV4mmSMYCSS4WkLc79SfIbZ2a7W8SQbfcdlwEQtMI0ySVJSyPXjnKLFY
	6GXXA2KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBH22-0000R6-SO; Mon, 09 Mar 2020 11:57:14 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBH0Z-0007Xz-LF
 for linux-mtd@lists.infradead.org; Mon, 09 Mar 2020 11:55:45 +0000
Received: by mail-wm1-x342.google.com with SMTP id a141so9251755wme.2
 for <linux-mtd@lists.infradead.org>; Mon, 09 Mar 2020 04:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=fZEHZVAiXu8sfQoYawsUmY7xOYvR1LEo4KSCSXP/S8s=;
 b=dXFK10TdPpfScl01k0ffiiqX07TxuSqLkEVjdgqcmmMkTChsCfUmnYlw5CQXwrSvvQ
 Ij+vgNTpHseWIFeMpDjWGXWd+wQHZzwtM9wRtl6IRzA+yI3cSTT5c7sLxHzugTp8KFdI
 k5xaRdT42Uylzwdi9Rf4Q9aAc3Z2cL8rzIXNDdRjD9IWENGXEutg2j8hxw5qDVe63CUD
 FZq8dK5561EP+BYH1Sjl6IbLNiYPLkRu/Efs9MfiOYDMIsPHrMLzF/PsJj1bwhiE0Jrv
 g50Fa/7HqmA4oeE+3kquhriHMpYN+q8R/VHxfCYAGzCOHlYaxfMJQnIYHx/bypCmel6l
 MQkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=fZEHZVAiXu8sfQoYawsUmY7xOYvR1LEo4KSCSXP/S8s=;
 b=NlaHXib582aNC4vh+nR0nlaXr0wQ27prUQ7OkFwFHaOZmvrdOY0nNzuBT4ASUFM7vf
 43MmVr9cLaqY0dPcIkrr/W5f1CtFCcTAsL8i/U4wgnGiMpIaw/SF6gwH+taE+vgdTjhx
 sRIsGIWJG9qk+hQFx71AiHec7wMIgpOPeNf9SlvxTCfo7S0qZZ8rSriOJxlKsBsoutRs
 VnGiLxEQgjv9ibsg4zkaKqmb6Qf8veBO00gAoWCfZcIUX9QM9p+Tzg6GcoTy6DAQoeje
 V734INBskC+f4/DmrrmmtM7fwE5nZlLpsMpeRRbfSYrc123OLhAZpEKhGZ7RHiByHI1J
 z6jg==
X-Gm-Message-State: ANhLgQ1X+iGnpMBEmorAL5FfSDQJvdsPbX3IAn6o9YJodCYLBRS0TuJf
 CmOfdNrPkX8c1VIANBoGyK83RwQX
X-Google-Smtp-Source: ADFU+vtHW7gernPaKXQhWvxnUv09zon4nD4dRnylsMxdwqyt22NSmRVi3uIhx4q6fzqx8tF53mqq0w==
X-Received: by 2002:a1c:4054:: with SMTP id n81mr10155732wma.114.1583754942047; 
 Mon, 09 Mar 2020 04:55:42 -0700 (PDT)
Received: from opensdev.fritz.box
 (business-178-015-117-054.static.arcor-ip.net. [178.15.117.54])
 by smtp.gmail.com with ESMTPSA id m21sm25035226wmi.27.2020.03.09.04.55.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 04:55:41 -0700 (PDT)
From: shiva.linuxworks@gmail.com
X-Google-Original-From: sshivamurthy@micron.com
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 6/6] mtd: spinand: micron: Add new Micron SPI NAND devices
 with multiple dies
Date: Mon,  9 Mar 2020 12:52:30 +0100
Message-Id: <20200309115230.7207-7-sshivamurthy@micron.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200309115230.7207-1-sshivamurthy@micron.com>
References: <20200309115230.7207-1-sshivamurthy@micron.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_045543_711111_FF482057 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shiva.linuxworks[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 drivers/mtd/nand/spi/micron.c | 55 +++++++++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/drivers/mtd/nand/spi/micron.c b/drivers/mtd/nand/spi/micron.c
index 9db1ab71fcae..f7d148aaa476 100644
--- a/drivers/mtd/nand/spi/micron.c
+++ b/drivers/mtd/nand/spi/micron.c
@@ -20,6 +20,14 @@
 
 #define MICRON_CFG_CR			BIT(0)
 
+/*
+ * As per datasheet, die selection is done by the 6th bit of Die
+ * Select Register (Address 0xD0).
+ */
+#define MICRON_DIE_SELECT_REG	0xD0
+
+#define MICRON_SELECT_DIE(x)	((x) << 6)
+
 static SPINAND_OP_VARIANTS(read_cache_variants,
 		SPINAND_PAGE_READ_FROM_CACHE_QUADIO_OP(0, 2, NULL, 0),
 		SPINAND_PAGE_READ_FROM_CACHE_X4_OP(0, 1, NULL, 0),
@@ -66,6 +74,20 @@ static const struct mtd_ooblayout_ops micron_8_ooblayout = {
 	.free = micron_8_ooblayout_free,
 };
 
+static int micron_select_target(struct spinand_device *spinand,
+				unsigned int target)
+{
+	struct spi_mem_op op = SPINAND_SET_FEATURE_OP(MICRON_DIE_SELECT_REG,
+						      spinand->scratchbuf);
+
+	if (target > 1)
+		return -EINVAL;
+
+	*spinand->scratchbuf = MICRON_SELECT_DIE(target);
+
+	return spi_mem_exec_op(spinand->spimem, &op);
+}
+
 static int micron_8_ecc_get_status(struct spinand_device *spinand,
 				   u8 status)
 {
@@ -133,6 +155,17 @@ static const struct spinand_info micron_spinand_table[] = {
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
@@ -153,6 +186,28 @@ static const struct spinand_info micron_spinand_table[] = {
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
