Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3493B653
	for <lists+linux-mtd@lfdr.de>; Sun, 28 Apr 2019 20:10:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4EbQkwQvlWgvPB8HaoqIUEGKlatQVbfOOnMDRp/e51s=; b=m11+hCpa0HMMoepj/RVts1bTje
	XJghquv46vY1OnSX5lfOi8WgD8G9hvUmV5TyqHen4fC/ndXBLMjFEEt5+3+Z3+K6o5kNUBMk25zod
	MxjitclelftAuwXClAMNO54fMjP1oUaU3f/s0IUS1wVeUW6EC59yMEWt1xlNQQ0RavnWcdzsxK5UG
	0g+ptZ2C5fE9hKKKx+6BazYJY3hxtDSmrmNSgXYo/6xoMm6iCzonpPf/+sXSB/jEQ424ucWGMhSc4
	n0eAlQe2Re9EI/z+kqVkA4bqtThv2ronSqXOz3pQfbLPNNhWlDjupukGXYPwaQMrVxSzMx014STl6
	yPW5XW1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKoFl-0005Mp-7g; Sun, 28 Apr 2019 18:10:17 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKoFO-00051o-9U
 for linux-mtd@lists.infradead.org; Sun, 28 Apr 2019 18:10:01 +0000
Received: by mail-pg1-x541.google.com with SMTP id j26so4068877pgl.5
 for <linux-mtd@lists.infradead.org>; Sun, 28 Apr 2019 11:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3oA6xsWkMzW8lhwed6XL1LWLbuI401osDXa7Y5e4Ugw=;
 b=BhzA6dOb3wKoCsXuMCvfUbj5goqhFsUESrXRkMrNCJiUCA6wI0b2PkAr5bsPeFe7CQ
 1VKTvjFM/RyCZV6kJ3CGKHupbKoNSq+ajU3s7xVuVtp2hl5IA+kLiV24UB89iAtJc/GL
 k5537kLMn8GDFWmIo+zvQr6fsab3hLl/M+WIWwOmdGQ1CaBGTmTA9Tm7XWy4qV6wTtI1
 dMKPEhM3tMOwmpVANSOsuxPqcEo33BwMrPW1PXsmQJyih0oLYd9GFHdxNbT9dlqYEqDe
 omk09bFmQShHaOxjNGt/Wzn/f8JQq2oh23sOBlLa/apFIqtq7db1btRBVbM2c/QRjIVM
 AEtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3oA6xsWkMzW8lhwed6XL1LWLbuI401osDXa7Y5e4Ugw=;
 b=nU4HNgOWye9MdVEb6yrBg18L91JmnSz+3363feIQEvhdF5lFOLCtG4IKP7c4EYbHD0
 HU0GWhC3dG3c/AEjTUII4SbyViLOKNf2/52viOk2sFxMhNB6/ymdEf/mYTmO9ExuKf+f
 Kug+LQF7EuTXaif1M/DUO8TF2MYeBHFVNqHsMeWhpiTWtWGxR6AcYd3lz0bU7KZnJiz9
 PSpEvOucUk7QLgtQBtd5VhTcNnAc0jPW8qjqZ7/6PtiubLxr9puYzJg2EFsLOI1EZAap
 yGHeY1q8DeE6h/9bMUFG2EodVw2YMUUzvjsySrd043qX9HhWV6efQmwIEt8dZHc5nh0J
 oaIQ==
X-Gm-Message-State: APjAAAXdMgFLdlK9WqogE5wZB/QIK1aLVrlGc7SSQ3KfHpoyCow6dHaZ
 emj653Z+ejpnyrMQ7Hbbd8eibA==
X-Google-Smtp-Source: APXvYqwgLdSdvicG3hPqn/pwFsyTDykIPuPwRED2PxbP9C+HiksUXNY7i90q+fAo5WyG/BdNDlcToQ==
X-Received: by 2002:a63:5014:: with SMTP id e20mr30993446pgb.312.1556474993621; 
 Sun, 28 Apr 2019 11:09:53 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id l2sm36177136pgl.2.2019.04.28.11.09.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 28 Apr 2019 11:09:53 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: marek.vasut@gmail.com, tudor.ambarus@microchip.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, bbrezillon@kernel.org, richard@nod.at
Subject: [PATCH v2 2/3] mtd: spi-nor: add support to unlock flash device.
Date: Sun, 28 Apr 2019 23:39:15 +0530
Message-Id: <1556474956-27786-3-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556474956-27786-1-git-send-email-sagar.kadam@sifive.com>
References: <1556474956-27786-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_110955_141834_FB911A9A 
X-CRM114-Status: GOOD (  17.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: palmer@sifive.com, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, Sagar Shrikant Kadam <sagar.kadam@sifive.com>,
 paul.walmsley@sifive.com, linux-riscv@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Nor device (is25wp256 mounted on HiFive unleashed Rev A00 board) from ISSI
have memory blocks guarded by block protection bits BP[0,1,2,3].

Clearing block protection bits,unlocks the flash memory regions
The unlock scheme is registered during nor scans.

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 48 ++++++++++++++++++++++++++++++++++++++++++-
 include/linux/mtd/spi-nor.h   |  1 +
 2 files changed, 48 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index c5408ed..81c7b3e 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1461,6 +1461,46 @@ static int macronix_quad_enable(struct spi_nor *nor)
 }
 
 /**
+ * issi_unlock() - clear BP[0123] write-protection.
+ * @nor: pointer to a 'struct spi_nor'
+ * @ofs: offset from which to unlock memory
+ * @len: number of bytes to unlock
+ * Bits [2345] of the Status Register are BP[0123].
+ * ISSI chips use a different block protection scheme than other chips.
+ * Just disable the write-protect unilaterally.
+ * Return: 0 on success, -errno otherwise.
+ */
+static int issi_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
+{
+	int ret, val;
+	u8 mask = SR_BP0 | SR_BP1 | SR_BP2 | SR_BP3;
+
+	val = read_sr(nor);
+	if (val < 0)
+		return val;
+	if (!(val & mask))
+		return 0;
+
+	write_enable(nor);
+
+	write_sr(nor, val & ~mask);
+
+	ret = spi_nor_wait_till_ready(nor);
+	if (ret)
+		return ret;
+
+	ret = read_sr(nor);
+	if (ret > 0 && !(ret & mask)) {
+		dev_info(nor->dev,
+			"ISSI Block Protection Bits cleared SR=0x%x", ret);
+		return 0;
+	} else {
+		dev_err(nor->dev, "ISSI Block Protection Bits not cleared\n");
+		return -EINVAL;
+	}
+}
+
+/**
  * spansion_quad_enable() - set QE bit in Configuraiton Register.
  * @nor:	pointer to a 'struct spi_nor'
  *
@@ -1836,7 +1876,7 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "is25wp256", INFO(0x9d7019, 0, 64 * 1024, 1024,
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_4B_OPCODES)
+			SPI_NOR_4B_OPCODES | SPI_NOR_HAS_LOCK)
 	},
 
 	/* Macronix */
@@ -4078,6 +4118,12 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 		nor->flash_is_locked = stm_is_locked;
 	}
 
+	/* NOR protection support for ISSI chips */
+	if (JEDEC_MFR(info) == SNOR_MFR_ISSI ||
+	    info->flags & SPI_NOR_HAS_LOCK) {
+		nor->flash_unlock = issi_unlock;
+
+	}
 	if (nor->flash_lock && nor->flash_unlock && nor->flash_is_locked) {
 		mtd->_lock = spi_nor_lock;
 		mtd->_unlock = spi_nor_unlock;
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index ff13297..9a7d719 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -127,6 +127,7 @@
 #define SR_BP0			BIT(2)	/* Block protect 0 */
 #define SR_BP1			BIT(3)	/* Block protect 1 */
 #define SR_BP2			BIT(4)	/* Block protect 2 */
+#define SR_BP3			BIT(5)	/* Block protect 3 for ISSI device*/
 #define SR_TB			BIT(5)	/* Top/Bottom protect */
 #define SR_SRWD			BIT(7)	/* SR write protect */
 /* Spansion/Cypress specific status bits */
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
