Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C58121D3FEE
	for <lists+linux-mtd@lfdr.de>; Thu, 14 May 2020 23:24:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XJGRwJawLQFJ2yzI8pcMcVL+MM2zCcgiWkxsKEVHGNQ=; b=bo42XMVJBJx/EUUNNyS59ukepD
	u8S4jffATaHBEl7ySpNOBKoKiemmBAeaQbeCyWTsgpGuK3CMLgdSqZXNMn6mt6Yfi/mXHxEqfGizm
	O8mVdHeDuMbkequLFt3ZBVH1P47ologGCFKTZYB8wxgA+cTmA3YL2wwqkOYkUHr6jkQ4kGkKuIBUw
	ZIfvqNp1JZpgHKb6WyjsH3I06nR1djJEoKB9UzBGgXMsTsj6LIInBhqEJmI+hg4942ywYZ/qXxBPc
	CkdoHbYP9h3KT/+U/J5Uhcl10bPAfBbbadO8bAu62lWNH2cZNaT5rd8uSCdUCLt7034M2GDW7idpO
	uDu9chsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZLLC-0007nO-R6; Thu, 14 May 2020 21:24:30 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZLKc-0007LH-A9
 for linux-mtd@lists.infradead.org; Thu, 14 May 2020 21:23:55 +0000
Received: by mail-wr1-x441.google.com with SMTP id 50so593799wrc.11
 for <linux-mtd@lists.infradead.org>; Thu, 14 May 2020 14:23:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vEQ3EETF6/6FEJ3XSdcKCgNodtqpyCCg4YqFAvW+xyc=;
 b=DIXycBslQDtOQVfH7G8oWQmAk53UAsqPQecgcKSjRkdWvxi8W5hRZIga0UtG1ZYrg+
 eDK7bGDbofXGPzfldPcGuzRxtuivsZjgRwTn8eTIRrTy8234CaWrWNc02C+eoTqBTYfd
 yXEirqmATB6Xahu9ovGzxHBwYBAL9ZcXHZAJxyigkc/qWg1O+RyloQBH73VI66em1VbN
 eni/5dOgjR6wQEKALycy95WGYWenwt1ZVhLtY6n6bMXIgtnbspClIJ5y+pmhZlOUHxtm
 BRpkzTE4BXmgXIktljPGP0ROxwQfcRjCZCRWidSuvBn0xP7fEo5cwVTVYPZWJ0MVlC8b
 Tx4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vEQ3EETF6/6FEJ3XSdcKCgNodtqpyCCg4YqFAvW+xyc=;
 b=DCTBTFKmwSjPZVal0iwpvYZIPJhmzWMzE/1tF/4NPM7zcOMMQ7FWNMyw5glWgazz4d
 pqTVqHkVGshHWZuEwJe1Om6e0Bt/LAFOWZzbFLBdyJC4gMcoN2e2gSvUsnerXrqqcqV9
 4hURCkxVtesUYczx6NCm98xoN03xXyAktvRSAi079usuZywH7+ddMRxxkKQ2hiE5dwxk
 HGpoOsGLB0dO9FtLoC6h//LjcP/4CZS1Bivsqm3NBi7riNVu3cnOTx3qmi3LEBYRl2aM
 8rn/PY3hS9tD821b52O7cuvDCk2i7kcUXzgbv+JurXjpn0GQ9W3VnKS/mppCw5sueYm6
 r2dw==
X-Gm-Message-State: AOAM532dVhNGJLPmfuHs5DwTHM7dCqoHa2+C4yVOqvPFfAuh0IWl8Z3p
 9Rlh57KOVWalP6epnTaRlU4=
X-Google-Smtp-Source: ABdhPJzwMm5H8+1KFnuDw4eEj5HBRBDxs+kDv4Qd1RIWBWitne6+RKJnGbFdqCuTE3Kj7cZXXF6RHA==
X-Received: by 2002:adf:f605:: with SMTP id t5mr424885wrp.354.1589491433142;
 Thu, 14 May 2020 14:23:53 -0700 (PDT)
Received: from localhost.localdomain (ip5f5bfcc8.dynamic.kabel-deutschland.de.
 [95.91.252.200])
 by smtp.gmail.com with ESMTPSA id 128sm491210wme.39.2020.05.14.14.23.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 14:23:52 -0700 (PDT)
From: huobean@gmail.com
X-Google-Original-From: beanhuo@micron.com
To: miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 s.hauer@pengutronix.de, boris.brezillon@collabora.com, derosier@gmail.com
Subject: [PATCH v3 3/5] mtd: rawnand: Add write_oob hook in nand_chip_ops
Date: Thu, 14 May 2020 23:23:31 +0200
Message-Id: <20200514212333.28692-4-beanhuo@micron.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514212333.28692-1-beanhuo@micron.com>
References: <20200514212333.28692-1-beanhuo@micron.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_142354_349876_B014F043 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [huobean[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 Bean Huo <beanhuo@micron.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Bean Huo <beanhuo@micron.com>

Break the function nand_write_oob() into two functions, and one of them
is named nand_write_oob_nand(), which will be assigned to new added hook
write_oob by default. The hook write_oob will be overwritten in the NAND
vendor lower-level driver if needed.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Signed-off-by: Bean Huo <beanhuo@micron.com>
---
 drivers/mtd/nand/raw/internals.h | 3 ++-
 drivers/mtd/nand/raw/nand_base.c | 9 +++++++++
 include/linux/mtd/rawnand.h      | 3 +++
 3 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/internals.h b/drivers/mtd/nand/raw/internals.h
index 9d0caadf940e..d54bc43f9ccd 100644
--- a/drivers/mtd/nand/raw/internals.h
+++ b/drivers/mtd/nand/raw/internals.h
@@ -96,7 +96,8 @@ int nand_read_param_page_op(struct nand_chip *chip, u8 page, void *buf,
 void nand_decode_ext_id(struct nand_chip *chip);
 void panic_nand_wait(struct nand_chip *chip, unsigned long timeo);
 void sanitize_string(uint8_t *s, size_t len);
-
+int nand_write_oob_nand(struct nand_chip *chip, loff_t to,
+			 struct mtd_oob_ops *ops);
 static inline bool nand_has_exec_op(struct nand_chip *chip)
 {
 	if (!chip->controller || !chip->controller->ops ||
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 842490d9fd09..b630f7f6a651 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -4121,6 +4121,13 @@ static int nand_write_oob(struct mtd_info *mtd, loff_t to,
 			  struct mtd_oob_ops *ops)
 {
 	struct nand_chip *chip = mtd_to_nand(mtd);
+
+	return chip->ops.write_oob(chip, to, ops);
+}
+
+int nand_write_oob_nand(struct nand_chip *chip, loff_t to,
+			struct mtd_oob_ops *ops)
+{
 	int ret;
 
 	ops->retlen = 0;
@@ -4427,6 +4434,8 @@ static void nand_set_defaults(struct nand_chip *chip)
 
 	if (!chip->buf_align)
 		chip->buf_align = 1;
+
+	chip->ops.write_oob = nand_write_oob_nand;
 }
 
 /* Sanitize ONFI strings so we can safely print them */
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index f60cfe93b226..a1bb2acfaf6a 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1020,6 +1020,7 @@ struct nand_legacy {
  *			setting the read-retry mode. Mostly needed for MLC NAND.
  * @pre_erase:		[FLASHSPECIFIC] prepare a physical erase block
  * @post_erase:		[FLASHSPECIFIC] physical block erase post
+ * @write_oob:		[REPLACEABLE] Raw NAND write operation
  */
 struct nand_chip_ops {
 	int (*suspend)(struct nand_chip *chip);
@@ -1029,6 +1030,8 @@ struct nand_chip_ops {
 	int (*setup_read_retry)(struct nand_chip *chip, int retry_mode);
 	int (*pre_erase)(struct nand_chip *chip, u32 eraseblock);
 	int (*post_erase)(struct nand_chip *chip, u32 eraseblock);
+	int (*write_oob)(struct nand_chip *chip, loff_t to,
+			 struct mtd_oob_ops *ops);
 };
 
 /**
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
