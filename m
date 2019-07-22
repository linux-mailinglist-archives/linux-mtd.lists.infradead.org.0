Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 306516F93D
	for <lists+linux-mtd@lfdr.de>; Mon, 22 Jul 2019 08:00:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aA/CHnEq1LO+MUVb6F4gL+cZbzw6vxbu4oxOXIAALBw=; b=Hj7y/eKZjVVsfg
	HLnjBXrIaJZALIYzVnchxY1nMKkLPhA672fO9JTULF5KiYDzMWF+ydD1NTr006iVfqHDsUXTXCmaX
	UapwZP6YJnSx1SqDeBoews7Dm7BUbjojrEWgjJBTOJKu1CWm44o7LPueqn55SUMTnxnF7mlkg1ewx
	odZFjqTEruPONkvmGOnoo+8+UfL4w77wu6+NHf6yQlWugCYPXq69/8XPmYHUlR1dyWoWqtpW/T/TE
	/4xbpBwej7RPhjlX90jyCMCV9RYXVPl14ahodbgNMWjt2Rn0Rvmjl4jam4UBuXNQ/5whyB2Fb94PE
	/it3i69Kj19iNYF+1izQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpRNV-0001Wj-VB; Mon, 22 Jul 2019 06:00:54 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpRJo-00065o-Lm
 for linux-mtd@lists.infradead.org; Mon, 22 Jul 2019 05:57:07 +0000
Received: by mail-ed1-x544.google.com with SMTP id x19so33565753eda.12
 for <linux-mtd@lists.infradead.org>; Sun, 21 Jul 2019 22:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=pxcu0gzYmTJg7/SYH6P7gGwh+xb3swxEoUjuPM97X8E=;
 b=izR8ii6TUtZgW0Q9fEINbTEuN2xIz0P0cbES4aGgk1EH/q4LAUZwfQZuEoAaGwgSKE
 if+hmX1Le73Kqi3SAd8MHkaj69W5eb/WDdt4i/p7UPWlchyZXFDgmc1JArZtSfp9Ltm+
 8UtZPQLx5W4IC4zHe7UBFYcgR0GfnH/i2Fw1ORF6nSu3u57ENNT6mW00ruWPHa0anpDG
 rGb7lnztbsD/0vXx/sEMP0AhtB6ss1GRE7r1DNeOs1jk+YrJhSqPeGRpBhPcbAGDFzbA
 nGek0VxIh5DGA9sRnELQWmLPicPSlPc3AUihK7N0agjpwnG5lXj+h3kNYLBRrkuIjdTr
 gdjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=pxcu0gzYmTJg7/SYH6P7gGwh+xb3swxEoUjuPM97X8E=;
 b=Jl9En7MmY5PEOHBwGpMhxArUtAX9ZyP/+96QQ1yWfDK/7zvs9MhCddApdPpPzAaRgv
 0KcnroGYUPdbr1FOwOVf4MuouMlJ1giYAzWsfzOg04o1x0j204bnCS5ntA1y67hwNOg9
 6UJK1yyDIirR/XXQ/ZpH5cHFakHtcJBM4eKhxnwxwvdhOo2+pNbcARo+j6IJBMWLdV68
 D/YSVdSy/9xNr3Pgxt0Y6+RmSZMeVk3g18U1HamZQcOq2orHzbBsghw0R2LNt+Ez5O5T
 bzoCYSTi3ZYHyNlGzkux/2hggpuT/VF6IdCmvsMKJ1e4YsCqXHqp8Uxd43BFXDZmmTZL
 wo2A==
X-Gm-Message-State: APjAAAXg9Qrf9/UKodFo9kNJ0m78KJasHnB4llGOq6jfCSfxJI05RsQw
 /q5L+YRHvhU7X2GT4JLl6Mo=
X-Google-Smtp-Source: APXvYqweD+JMsI/+uYUfECWwa5adY6VjJlXf4MWo+dcT51D1LyLnFBl2SJStG0qHkEMfz5DusOsPWQ==
X-Received: by 2002:a17:906:5c4e:: with SMTP id
 c14mr49957402ejr.73.1563775022894; 
 Sun, 21 Jul 2019 22:57:02 -0700 (PDT)
Received: from opensdev.fritz.box
 (business-178-015-117-054.static.arcor-ip.net. [178.15.117.54])
 by smtp.gmail.com with ESMTPSA id a6sm10351725eds.19.2019.07.21.22.57.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 21 Jul 2019 22:57:02 -0700 (PDT)
From: shiva.linuxworks@gmail.com
X-Google-Original-From: sshivamurthy@micron.com
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Shivamurthy Shastri <sshivamurthy@micron.com>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jeff Kletsky <git-commits@allycomm.com>,
 Chuanhong Guo <gch981213@gmail.com>,
 liaoweixiong <liaoweixiong@allwinnertech.com>
Subject: [PATCH 2/8] mtd: nand: move support functions for ONFI to nand/onfi.c
Date: Mon, 22 Jul 2019 07:56:15 +0200
Message-Id: <20190722055621.23526-3-sshivamurthy@micron.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190722055621.23526-1-sshivamurthy@micron.com>
References: <20190722055621.23526-1-sshivamurthy@micron.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_225704_833921_11226C8A 
X-CRM114-Status: GOOD (  19.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (shiva.linuxworks[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Shivamurthy Shastri <sshivamurthy@micron.com>

These functions are support functions for enabling ONFI standard and
common between raw NAND and SPI NAND.

Signed-off-by: Shivamurthy Shastri <sshivamurthy@micron.com>
---
 drivers/mtd/nand/Makefile        |  2 +-
 drivers/mtd/nand/onfi.c          | 89 ++++++++++++++++++++++++++++++++
 drivers/mtd/nand/raw/nand_base.c | 18 -------
 drivers/mtd/nand/raw/nand_onfi.c | 43 ---------------
 4 files changed, 90 insertions(+), 62 deletions(-)
 create mode 100644 drivers/mtd/nand/onfi.c

diff --git a/drivers/mtd/nand/Makefile b/drivers/mtd/nand/Makefile
index 7ecd80c0a66e..221945c223c3 100644
--- a/drivers/mtd/nand/Makefile
+++ b/drivers/mtd/nand/Makefile
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 
-nandcore-objs := core.o bbt.o
+nandcore-objs := core.o bbt.o onfi.o
 obj-$(CONFIG_MTD_NAND_CORE) += nandcore.o
 
 obj-y	+= onenand/
diff --git a/drivers/mtd/nand/onfi.c b/drivers/mtd/nand/onfi.c
new file mode 100644
index 000000000000..7aaf36dfc5e0
--- /dev/null
+++ b/drivers/mtd/nand/onfi.c
@@ -0,0 +1,89 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#define pr_fmt(fmt)     "nand-onfi: " fmt
+
+#include <linux/mtd/onfi.h>
+#include <linux/mtd/nand.h>
+
+/**
+ * onfi_crc16() - Check CRC of ONFI table
+ * @crc: base CRC
+ * @p: buffer pointing to ONFI table
+ * @len: length of ONFI table
+ *
+ * Return: CRC of the ONFI table
+ */
+u16 onfi_crc16(u16 crc, u8 const *p, size_t len)
+{
+	int i;
+
+	while (len--) {
+		crc ^= *p++ << 8;
+		for (i = 0; i < 8; i++)
+			crc = (crc << 1) ^ ((crc & 0x8000) ? 0x8005 : 0);
+	}
+
+	return crc;
+}
+EXPORT_SYMBOL_GPL(onfi_crc16);
+
+/**
+ * nand_bit_wise_majority() - Recover data with bit-wise majority
+ * @srcbufs: buffer pointing to ONFI table
+ * @nsrcbufs: length of ONFI table
+ * @dstbuf: valid ONFI table to be returned
+ * @bufsize: length og valid ONFI table
+ *
+ */
+void nand_bit_wise_majority(const void **srcbufs,
+			    unsigned int nsrcbufs,
+			    void *dstbuf,
+			    unsigned int bufsize)
+{
+	int i, j, k;
+
+	for (i = 0; i < bufsize; i++) {
+		u8 val = 0;
+
+		for (j = 0; j < 8; j++) {
+			unsigned int cnt = 0;
+
+			for (k = 0; k < nsrcbufs; k++) {
+				const u8 *srcbuf = srcbufs[k];
+
+				if (srcbuf[i] & BIT(j))
+					cnt++;
+			}
+
+			if (cnt > nsrcbufs / 2)
+				val |= BIT(j);
+		}
+
+		((u8 *)dstbuf)[i] = val;
+	}
+}
+EXPORT_SYMBOL_GPL(nand_bit_wise_majority);
+
+/**
+ * sanitize_string() - Sanitize ONFI strings so we can safely print them
+ * @s: string to be sanitized
+ * @len: length of the string
+ *
+ */
+void sanitize_string(u8 *s, size_t len)
+{
+	ssize_t i;
+
+	/* Null terminate */
+	s[len - 1] = 0;
+
+	/* Remove non printable chars */
+	for (i = 0; i < len - 1; i++) {
+		if (s[i] < ' ' || s[i] > 127)
+			s[i] = '?';
+	}
+
+	/* Remove trailing spaces */
+	strim(s);
+}
+EXPORT_SYMBOL_GPL(sanitize_string);
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 6ecd1c496ce3..c198829bcd79 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -4375,24 +4375,6 @@ static void nand_set_defaults(struct nand_chip *chip)
 		chip->buf_align = 1;
 }
 
-/* Sanitize ONFI strings so we can safely print them */
-void sanitize_string(uint8_t *s, size_t len)
-{
-	ssize_t i;
-
-	/* Null terminate */
-	s[len - 1] = 0;
-
-	/* Remove non printable chars */
-	for (i = 0; i < len - 1; i++) {
-		if (s[i] < ' ' || s[i] > 127)
-			s[i] = '?';
-	}
-
-	/* Remove trailing spaces */
-	strim(s);
-}
-
 /*
  * nand_id_has_period - Check if an ID string has a given wraparound period
  * @id_data: the ID string
diff --git a/drivers/mtd/nand/raw/nand_onfi.c b/drivers/mtd/nand/raw/nand_onfi.c
index 0b879bd0a68c..2e8edfa636ef 100644
--- a/drivers/mtd/nand/raw/nand_onfi.c
+++ b/drivers/mtd/nand/raw/nand_onfi.c
@@ -16,18 +16,6 @@
 
 #include "internals.h"
 
-u16 onfi_crc16(u16 crc, u8 const *p, size_t len)
-{
-	int i;
-	while (len--) {
-		crc ^= *p++ << 8;
-		for (i = 0; i < 8; i++)
-			crc = (crc << 1) ^ ((crc & 0x8000) ? 0x8005 : 0);
-	}
-
-	return crc;
-}
-
 /* Parse the Extended Parameter Page. */
 static int nand_flash_detect_ext_param_page(struct nand_chip *chip,
 					    struct nand_onfi_params *p)
@@ -103,37 +91,6 @@ static int nand_flash_detect_ext_param_page(struct nand_chip *chip,
 	return ret;
 }
 
-/*
- * Recover data with bit-wise majority
- */
-static void nand_bit_wise_majority(const void **srcbufs,
-				   unsigned int nsrcbufs,
-				   void *dstbuf,
-				   unsigned int bufsize)
-{
-	int i, j, k;
-
-	for (i = 0; i < bufsize; i++) {
-		u8 val = 0;
-
-		for (j = 0; j < 8; j++) {
-			unsigned int cnt = 0;
-
-			for (k = 0; k < nsrcbufs; k++) {
-				const u8 *srcbuf = srcbufs[k];
-
-				if (srcbuf[i] & BIT(j))
-					cnt++;
-			}
-
-			if (cnt > nsrcbufs / 2)
-				val |= BIT(j);
-		}
-
-		((u8 *)dstbuf)[i] = val;
-	}
-}
-
 /*
  * Check if the NAND chip is ONFI compliant, returns 1 if it is, 0 otherwise.
  */
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
