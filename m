Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35001AC0E2
	for <lists+linux-mtd@lfdr.de>; Fri,  6 Sep 2019 21:49:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Vx3UOF3ncht8A/tiqfgc7GK5GbDeK4xGhZEOEr4hVp0=; b=cgNUuuRfriDkUwmR8zBLz9kGJY
	dr7w1qaUgTt5VE1TP1iXfwUBBL3kEVO9Kr47doChORDEYU4++HSsyAOWvYgPhf7A+XTDXN+73WyeY
	uK8LFqJXcxNVKaOSgx3mDKteEmJ8H/ea6LgaZVLYVo0rU7tXXhTnx/OmA2/v4Mah9hahujr7IGJ5E
	PNCp49U6TfLVO4jwPlJg/hSyiweUygBYWGMkyYADeJFg50MfUztzCbrRd6S/2d79BTz55iRyf2i8c
	BA+LYkarnhzqRRXAEqD1EmllraBNbcId2Ht+tPct6HXxej/Ie/64FjwADYAPqjDQblmbkxLsFVYEH
	MQOhssUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6KEe-0004ro-Aw; Fri, 06 Sep 2019 19:49:32 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6KES-0004oT-Ep
 for linux-mtd@lists.infradead.org; Fri, 06 Sep 2019 19:49:21 +0000
Received: by mail-pf1-x443.google.com with SMTP id 205so5226877pfw.2
 for <linux-mtd@lists.infradead.org>; Fri, 06 Sep 2019 12:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mU1+WGtGI6s1SQGf+HUbugB7ywPYgCVVN6kyBzTaNcA=;
 b=rR42GsoQTXfsBGioVnUnyXrolTnujYH0VV3GlvCX7f+eVRQOY4iR4Jl+A6T+JGK6Uk
 JhVPirT10DmB2aIVqgd4ufROGVgCU8UmCaouhJLZWmSkSJ2scDGTwV76+FP7Edb0zl3m
 EjtKQp3GCokxIGWgxsemLvZS7youH/HsBTsxTfjEei6lQXPSs48cXywXSvUhFW6i2a/h
 hPrEbkaapa19w8ts7Y5h34/COYBufEfcxHs7sxStF+YBs/HNE+dQTMfCodr6eRHu+eOU
 htdA0pHyEdY+AGo8rb8rs7WmyBfdJYCIjmIarIXCLCreuFoEdum2dXLGlhZQYqKQCT4A
 D2uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mU1+WGtGI6s1SQGf+HUbugB7ywPYgCVVN6kyBzTaNcA=;
 b=mTz4RMUur+etALBMf9o9yZHkC4Bx//UFZQG6fMv06DhpvX/mQhvatcipUXO8Ik4fYm
 fdk3047T/dyLHK0nAM+NoeUFwQ9d+ThziivcRe0KWQFUjEC9vYQ/Fa2Ivz+BbcYZCfrg
 V7cFWniewiy2IOixqNEfDnjqOG+MHQ86ecSQXdwIe3zWgzm1i+I4WActAGHFKN9UO7bm
 2j5DD39ZDekX5c7Jctb7leNKQ6HZvMyGE411w8WuOWKisZS8J1T7rGS2ahsxTxivJMnu
 F3XZSkTr+CSZWkDuWUAO/rxXrrej6YU6JaUOlY4kAs9VVK9z/+Y8L4/duFshVBBU7Z99
 3aWw==
X-Gm-Message-State: APjAAAXuHLJKTqgjmBdLsQXnV1mW+pMQ4kgVG5W0dV0Zv2fGSFW0R99j
 kXVD4S7rf7bMTZkT+bqiokaoZ0+G
X-Google-Smtp-Source: APXvYqxso7WabPx8hLIH7RQGLkKtxnqxDs90vXPzVkIPXtY/aopJL+vzjpb6PG1mpQ04vofmb+UVqw==
X-Received: by 2002:aa7:8a86:: with SMTP id a6mr12830850pfc.76.1567799359949; 
 Fri, 06 Sep 2019 12:49:19 -0700 (PDT)
Received: from mail.broadcom.com ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id c127sm9830119pfb.5.2019.09.06.12.49.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Sep 2019 12:49:19 -0700 (PDT)
From: Kamal Dasu <kdasu.kdev@gmail.com>
To: kdasu.kdev@gmail.com
Subject: [PATCH 2/2] mtd: rawnand: use bounce buffer when vmalloced data buf
 detected
Date: Fri,  6 Sep 2019 15:47:16 -0400
Message-Id: <20190906194719.15761-2-kdasu.kdev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190906194719.15761-1-kdasu.kdev@gmail.com>
References: <20190906194719.15761-1-kdasu.kdev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_124920_505123_505356B2 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kdasu.kdev[at]gmail.com)
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Frieder Schrempf <frieder.schrempf@kontron.de>,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

For controller drivers that use DMA and set NAND_USE_BOUNCE_BUFFER
option use data buffers that are not vmalloced, aligned and have
valid virtual address to be able to do DMA transfers. This change
adds additional check and makes use of data buffer allocated
in nand_base driver when it is passed a vmalloced data buffer for
DMA transfers.

Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
---
 drivers/mtd/nand/raw/nand_base.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 91f046d4d452..46f6965a896a 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -45,6 +45,12 @@
 
 #include "internals.h"
 
+static int nand_need_bounce_buf(const void *buf, struct nand_chip *chip)
+{
+	return !virt_addr_valid(buf) || is_vmalloc_addr(buf) ||
+		!IS_ALIGNED((unsigned long)buf, chip->buf_align);
+}
+
 /* Define default oob placement schemes for large and small page devices */
 static int nand_ooblayout_ecc_sp(struct mtd_info *mtd, int section,
 				 struct mtd_oob_region *oobregion)
@@ -3183,9 +3189,7 @@ static int nand_do_read_ops(struct nand_chip *chip, loff_t from,
 		if (!aligned)
 			use_bufpoi = 1;
 		else if (chip->options & NAND_USE_BOUNCE_BUFFER)
-			use_bufpoi = !virt_addr_valid(buf) ||
-				     !IS_ALIGNED((unsigned long)buf,
-						 chip->buf_align);
+			use_bufpoi = nand_need_bounce_buf(buf, chip);
 		else
 			use_bufpoi = 0;
 
@@ -4009,9 +4013,7 @@ static int nand_do_write_ops(struct nand_chip *chip, loff_t to,
 		if (part_pagewr)
 			use_bufpoi = 1;
 		else if (chip->options & NAND_USE_BOUNCE_BUFFER)
-			use_bufpoi = !virt_addr_valid(buf) ||
-				     !IS_ALIGNED((unsigned long)buf,
-						 chip->buf_align);
+			use_bufpoi = nand_need_bounce_buf(buf, chip);
 		else
 			use_bufpoi = 0;
 
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
