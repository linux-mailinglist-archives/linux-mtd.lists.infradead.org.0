Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0824182045
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Mar 2020 19:01:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=R7lMwGKcUdDVuMUNvVATTXg3jIR2br+CSjY20lRwLrI=; b=Pxj2T2zyMFAuNHHVWU2xb8fDSa
	5DaMp8ui408Gg4bKaXkAN1MNx06ewM3kNlm+QkN/Xqq2JTPWVzp2kg4tBMTfztsYXXDxm7Xr3G/FK
	eSIIagz/eNF1/w/Whrsdcn0gAYdx+blBDzAyg8p2KWG8ppp4+nmHx4Jp5J7DTEaFyrud6wiZBTScS
	sHD15xNLfDM8Nme6mBgOwvnRe+0u0vbEZs9aIX9DOpql5w7j2c3cPlHYqYnSEXHqGIFPRvX08qGo+
	xlxGHhRj7cjdifAqAElKIRmDpHRUuA+KysiQKkAx6TRQQKdo65x5Y58e18IyqWtUrQ6SnTlw87IsK
	P+v0uYFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC5fB-0000pK-9q; Wed, 11 Mar 2020 18:01:01 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC5dB-0006SJ-3B
 for linux-mtd@lists.infradead.org; Wed, 11 Mar 2020 17:58:58 +0000
Received: by mail-wr1-x444.google.com with SMTP id s5so3843200wrg.3
 for <linux-mtd@lists.infradead.org>; Wed, 11 Mar 2020 10:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+0g3TUuCJUm9ZTQt2upCbsRVi7/9EKui7ktihNwzaDc=;
 b=TsTUXdsh8sqrSedFXRED2/dAg2vNMf1h5465VRoyvVgEc9E6uIUY6+CBePtQ7zR1oe
 rpM6XhSyyZf+l4tpClm2v/slstLRScfHQ5bJ3bmzMKR/z8iXTrdI8vWlN13rfV0/0BIN
 VvPOlu4Lw6whyjKKQtY5C+HGahEQW+YW85KXhBNjHc5D1Gy3XJNsuCFomtR0sgtKh7WL
 WwUrr1mU4WdB7rgCM798dEmsLgiQbZNDfaRRPVfFT5biQ8Qt+P6LmbQolFayf7gJXCYH
 /NAtaaScmV3PHAfQieHXFxyICJNhOqwJjqH5nCTc5fi5gJqbkNm1e+JSEAY+UgzTYUGS
 jGUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+0g3TUuCJUm9ZTQt2upCbsRVi7/9EKui7ktihNwzaDc=;
 b=J2CxaJSwPd5uSOm+zsddF1hHLJnpbu++XKNrywZOCXghHhfr/Un79HgCMTS1woGlT1
 VtWcSrtdc6r8hwgFsKppKopVV0qm2nhxElInAOofKTzRv8SioGNlZXy6dytnGP4Y13df
 KY0/EHuLzrd3twBOpQkzBXbwq1P87oWE6vZilM9Ho63J/ncAyu0nCc5YpIjMVJ21LjUW
 kW0V/Kz7wMwV5seOSkVm+eOoXNTq+9cQn+Qv/begTpoXrFjaux6tAsLlYVs3raEUxrbK
 5I/7O37OL9eYs+nZ8wGwOUClidJTsiROhg9ga8WajOkw2+WEn4cB2Jz+lnU4IuAl9+n1
 OCpA==
X-Gm-Message-State: ANhLgQ0roynWyPpGmNJ84kH0SVT7GVYerx8oIAz7nWkA9cQ1Cti8S5FU
 +PEOOJyjsdwXJ7HxcAmqnhs=
X-Google-Smtp-Source: ADFU+vsKK8iU4vOE0efdx2GcHjG39PrZbK6UdA0kUPdWOm9fR83Am8uyH9ngW7dnVspNsuO5kZVC/w==
X-Received: by 2002:a05:6000:1081:: with SMTP id
 y1mr5666948wrw.52.1583949535510; 
 Wed, 11 Mar 2020 10:58:55 -0700 (PDT)
Received: from opensdev.fritz.box
 (business-178-015-117-054.static.arcor-ip.net. [178.15.117.54])
 by smtp.gmail.com with ESMTPSA id l18sm1502107wrr.17.2020.03.11.10.58.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 10:58:54 -0700 (PDT)
From: shiva.linuxworks@gmail.com
X-Google-Original-From: sshivamurthy@micron.com
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Chuanhong Guo <gch981213@gmail.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 6/6] mtd: spinand: micron: Add new Micron SPI NAND devices
 with multiple dies
Date: Wed, 11 Mar 2020 18:57:35 +0100
Message-Id: <20200311175735.2007-7-sshivamurthy@micron.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200311175735.2007-1-sshivamurthy@micron.com>
References: <20200311175735.2007-1-sshivamurthy@micron.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_105857_148477_F514CEDC 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Add device table for new Micron SPI NAND devices, which have multiple
dies.

Also, enable support to select the dies.

Signed-off-by: Shivamurthy Shastri <sshivamurthy@micron.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/spi/micron.c | 58 +++++++++++++++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/drivers/mtd/nand/spi/micron.c b/drivers/mtd/nand/spi/micron.c
index d6fd63008782..5d370cfcdaaa 100644
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
@@ -137,6 +159,18 @@ static const struct spinand_info micron_spinand_table[] = {
 		     0,
 		     SPINAND_ECCINFO(&micron_8_ooblayout,
 				     micron_8_ecc_get_status)),
+	/* M79A 4Gb 3.3V */
+	SPINAND_INFO("MT29F4G01ADAGD",
+		     SPINAND_ID(SPINAND_READID_METHOD_OPCODE_DUMMY, 0x36),
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
 	SPINAND_INFO("MT29F4G01ABAFD",
 		     SPINAND_ID(SPINAND_READID_METHOD_OPCODE_DUMMY, 0x34),
@@ -159,6 +193,30 @@ static const struct spinand_info micron_spinand_table[] = {
 		     SPINAND_HAS_CR_FEAT_BIT,
 		     SPINAND_ECCINFO(&micron_8_ooblayout,
 				     micron_8_ecc_get_status)),
+	/* M70A 8Gb 3.3V */
+	SPINAND_INFO("MT29F8G01ADAFD",
+		     SPINAND_ID(SPINAND_READID_METHOD_OPCODE_DUMMY, 0x46),
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
+	SPINAND_INFO("MT29F8G01ADBFD",
+		     SPINAND_ID(SPINAND_READID_METHOD_OPCODE_DUMMY, 0x47),
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
 
 static int micron_spinand_init(struct spinand_device *spinand)
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
