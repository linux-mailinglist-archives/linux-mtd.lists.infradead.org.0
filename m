Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E0F1D9405
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 12:06:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9MqiK9hNbLqydDraibofyiuUaNgCVamN0Kd2WzFIa+0=; b=Oy3j4JskDOqzWEMxgZnC1vMQPL
	pfAxY0JXmVnzgKGURbzWzneQeVXad1h2l0mm6nuN13Jfd5quWt3s9uoOP+v22bCRabmmf9ok5DfIz
	SltEtHFIaiO7a1q4CUyyp5KyvjoSyDU/LUGIT+s+a7ooPEBs8A0wtwI+l6bVRM0wxdC1nIWrEtUA5
	C598VXDkZ6sg4oFZ8asAzXM89oUGnjZFm0xptuyf3Ud6oQiJYJhhY/RJnE2JSI7J6td/4dgNlT8m0
	pSc7mgwmJkO7vjujd+Sy/TGi3Baqc/tp+zLnn96DL+AiNonTwc0r4NFuZoWaMBbFAjbKoXV3bss0w
	v7+Ua0Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaz8j-0001DB-6Q; Tue, 19 May 2020 10:06:25 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaz7m-0000gn-9i
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 10:05:28 +0000
Received: by mail-wm1-x341.google.com with SMTP id m12so2443455wmc.0
 for <linux-mtd@lists.infradead.org>; Tue, 19 May 2020 03:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zgSEgyu5An5GyigcNkf1Yhsncd+sLucumkdkFEyxqlE=;
 b=JH+cUBBHxaloKdNbGpr8YDQgU3mg+XNBEvXH11SUVSCv5SfcFRw8Vv/Ru/6DCln4uH
 ZhodAAGMcQ2rr52tWoaQP719X/vU57xbnMdgHlETCRdYXzWSivJoz+sGgIYx5LACK4ae
 +W2wPH3dx6UuMj85UTBbYtQbARmpiES2WVFeCJM2A3MJFUdBiaOxkTt8Gp1Qjaf/QBoN
 otL29cIDHC2a7gTuYDQQK+TSR2tISFbRuCHcgFSYDsLucqojWakaVuZxshW0YcmEvLg4
 LWYB6UxTF0zxKIWDpqqa7WtKkv4oWR29yyN+JFyC9k/gHrmDGO332pwYJmsvCkZ6Opjg
 kfDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zgSEgyu5An5GyigcNkf1Yhsncd+sLucumkdkFEyxqlE=;
 b=mkvd7D1TYImgslUGvzmf0rMRQGH2DDhjYX00U5F4VSMImz8jAD5VJh+3DD061jhvwf
 uJ7OzbVQj8/PruotV5HVw2SrfbqtwHCW24fiS761g2qS670VYioGY73q4enzRicVqEIM
 WzM5zzs6Imz826TeFvJXgWHK1Rud4r8/F+nvv7lIotK53q71IO+Q/6XgXo7c4F1r9huf
 U/ShvGNopBznUK3oioGVOjQjoq6xZ7UxD6DhOAE4YdqKktGYXTwJ6BTCziaZEvQHIv8a
 WkcUb/7yX8sHulDbaitcAwFTFe7/bpsoobJSbBF8V7mylqGb1E+00Iw/iWZVyFduiZnq
 OJuA==
X-Gm-Message-State: AOAM533utMVoT7uHt3h1O3tdzE3EfrkAXk2umX2btawSRlKZFIYk8kPE
 Vgcjefikx0Qgl2ojMlR95YhDrIw4QF2kYw==
X-Google-Smtp-Source: ABdhPJzq+RfkgajAyRTiROXQLCFk9vTlMru/P8UByjvYwNeU4tUlEnH8LGwyV2wjDfKsh7i8CuNfWQ==
X-Received: by 2002:a7b:cb53:: with SMTP id v19mr4452837wmj.166.1589882724396; 
 Tue, 19 May 2020 03:05:24 -0700 (PDT)
Received: from ubuntu-G3.micron.com ([165.225.86.140])
 by smtp.gmail.com with ESMTPSA id b18sm19968008wrn.82.2020.05.19.03.05.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 03:05:24 -0700 (PDT)
From: Bean Huo <huobean@gmail.com>
To: miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 s.hauer@pengutronix.de, boris.brezillon@collabora.com, derosier@gmail.com
Subject: [PATCH v5 2/5] mtd: rawnand: Add {pre,
 post}_erase hooks in nand_chip_ops
Date: Tue, 19 May 2020 12:05:04 +0200
Message-Id: <20200519100507.19323-3-huobean@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200519100507.19323-1-huobean@gmail.com>
References: <20200519100507.19323-1-huobean@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_030526_394265_71E80F73 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [huobean[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: huobean@gmail.com, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, Bean Huo <beanhuo@micron.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Bean Huo <beanhuo@micron.com>

Add {pre,post}_erase hooks in the structure nand_chip_ops:
pre_erase will be called before a block is physically erased.
post_erase will be called after a block is erased.

Signed-off-by: Bean Huo <beanhuo@micron.com>
---
 drivers/mtd/nand/raw/nand_base.c | 18 +++++++++++++-----
 include/linux/mtd/rawnand.h      | 16 ++++++++++------
 2 files changed, 23 insertions(+), 11 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 7af21cf49290..e90b7ae878e2 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -4318,7 +4318,7 @@ static int nand_erase(struct mtd_info *mtd, struct erase_info *instr)
 int nand_erase_nand(struct nand_chip *chip, struct erase_info *instr,
 		    int allowbbt)
 {
-	int page, pages_per_block, ret, chipnr;
+	int page, pages_per_block, ret, chipnr, eb;
 	loff_t len;
 
 	pr_debug("%s: start = 0x%012llx, len = %llu\n",
@@ -4372,16 +4372,24 @@ int nand_erase_nand(struct nand_chip *chip, struct erase_info *instr,
 		    (page + pages_per_block))
 			chip->pagecache.page = -1;
 
-		ret = nand_erase_op(chip, (page & chip->pagemask) >>
-				    (chip->phys_erase_shift - chip->page_shift));
+		eb = (page & chip->pagemask) >>
+			(chip->phys_erase_shift - chip->page_shift);
+
+		if (chip->ops.pre_erase)
+			chip->ops.pre_erase(chip, eb);
+
+		ret = nand_erase_op(chip, eb);
 		if (ret) {
-			pr_debug("%s: failed erase, page 0x%08x\n",
-					__func__, page);
+			pr_debug("%s: failed erase block %d, page 0x%08x\n",
+					__func__, eb, page);
 			instr->fail_addr =
 				((loff_t)page << chip->page_shift);
 			goto erase_exit;
 		}
 
+		if (chip->ops.post_erase)
+			chip->ops.post_erase(chip, eb);
+
 		/* Increment page address and decrement length */
 		len -= (1ULL << chip->phys_erase_shift);
 		page += pages_per_block;
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 62932cc3ed8d..df3d4b3ef2f6 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1027,12 +1027,14 @@ struct nand_legacy {
 
 /**
  * struct nand_chip_ops - NAND Chip specific operations
- * @suspend:           [REPLACEABLE] specific NAND device suspend operation
- * @resume:            [REPLACEABLE] specific NAND device resume operation
- * @lock_area:         [REPLACEABLE] specific NAND chip lock operation
- * @unlock_area:       [REPLACEABLE] specific NAND chip unlock operation
- * @setup_read_retry:  [FLASHSPECIFIC] flash (vendor) specific function for
- *                     setting the read-retry mode. Mostly needed for MLC NAND.
+ * @suspend:		[REPLACEABLE] specific NAND device suspend operation
+ * @resume:		[REPLACEABLE] specific NAND device resume operation
+ * @lock_area:		[REPLACEABLE] specific NAND chip lock operation
+ * @unlock_area:	[REPLACEABLE] specific NAND chip unlock operation
+ * @setup_read_retry:	[FLASHSPECIFIC] flash (vendor) specific function for
+ *			setting the read-retry mode. Mostly needed for MLC NAND.
+ * @pre_erase:		[FLASHSPECIFIC] prepare a physical erase block
+ * @post_erase:		[FLASHSPECIFIC] physical block erase post
  */
 struct nand_chip_ops {
 	int (*suspend)(struct nand_chip *chip);
@@ -1040,6 +1042,8 @@ struct nand_chip_ops {
 	int (*lock_area)(struct nand_chip *chip, loff_t ofs, u64 len);
 	int (*unlock_area)(struct nand_chip *chip, loff_t ofs, u64 len);
 	int (*setup_read_retry)(struct nand_chip *chip, int retry_mode);
+	int (*pre_erase)(struct nand_chip *chip, u32 eraseblock);
+	int (*post_erase)(struct nand_chip *chip, u32 eraseblock);
 };
 
 /**
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
