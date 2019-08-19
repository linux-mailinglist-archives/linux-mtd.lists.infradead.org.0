Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B21F91B17
	for <lists+linux-mtd@lfdr.de>; Mon, 19 Aug 2019 04:46:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9JfbrHDgMKTUrmF1fJ9LmKCmrrTMutLzkFmSKaA4V1w=; b=gDQ
	wooLVUB3YIqgFMWBFROEhkfn9adezeRD9LG7y/RhUAkbtoWGQSMEvG1qTTjnz4uZkKdnkeDp73LF7
	G3OPAwTuOyXGnoAIuITlkJA0EQ0M8XiTCn+N1+uJGtF4p+ezyY4P/hs0lO7KfH7vo4C+VTGX+eQXR
	fjPd2Qqpbbvxqz0X7Dk4DmBWH4oaQ/GlK+gC8Z7xPJ46LMkrpiWTFrNHJP/t8xWV+EA1DoB4sonBl
	XELg/1Jm0jtYTqf0jEcHAGu1MNmDSebWuJgOD/nvDHHU3UAN5tcXDkISGPdHnw0KECbOYh9j937Kf
	C8JAH0hl2eriQdp3cWsaIr+tDOld/WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzXgd-0006Ls-5j; Mon, 19 Aug 2019 02:46:23 +0000
Received: from mail-yw1-f66.google.com ([209.85.161.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzXgU-0006LX-6F
 for linux-mtd@lists.infradead.org; Mon, 19 Aug 2019 02:46:15 +0000
Received: by mail-yw1-f66.google.com with SMTP id x74so120822ywx.6
 for <linux-mtd@lists.infradead.org>; Sun, 18 Aug 2019 19:46:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=wGyW4pmaDvW/xobvRCheZylYnIK2Mlk/QoBxdqMYERo=;
 b=GrpXGmlJIuAbFIW4JbfOZhqrho2l2vGlFekC3H3/YsrjEHi2CEk20r5pa6F9RW6uRs
 ufyMiZ45CypDdksWwXbUKgGJPE9bwqR27yh9ACM0p8auwgyMGH/2R3gKw8hhw/vX65Aj
 ennGpc9FsOy4RKHNJR192lMSWzPAZIgQLH4LWcnP112M1u/hlIga3UpgxTyOy4p1alnQ
 lmxCSlmERNf+MtlBTm+Q3QcmxC6YHY7cqX2xWFWRkxJ1J1Nkgz20WiOvtf71inTyJlZB
 4O0rtXiyG6moAR+b9duFgpoDnQM8PmF8kUQlHWFt1vVu76VBkTun7Fgmn+jrjgnfxjM+
 txig==
X-Gm-Message-State: APjAAAUFz+nHPHb1VxR2mK1j/U8vWdh3EsmpdphJX4ehADB7LpSXb+G1
 VeDJjRunYssNOAANqEePXQQ=
X-Google-Smtp-Source: APXvYqxoqUvLyiINr9C0Xyto3ZIWpr93pZJ3NNHxY+/QOIirO6rnDaZKXJlvaGNVhJtf7wrPe/gFbQ==
X-Received: by 2002:a81:ae55:: with SMTP id g21mr14907282ywk.222.1566182772167; 
 Sun, 18 Aug 2019 19:46:12 -0700 (PDT)
Received: from localhost.localdomain (24-158-240-219.dhcp.smyr.ga.charter.com.
 [24.158.240.219])
 by smtp.gmail.com with ESMTPSA id r9sm2991434ywl.108.2019.08.18.19.46.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 18 Aug 2019 19:46:11 -0700 (PDT)
From: Wenwen Wang <wenwen@cs.uga.edu>
To: Wenwen Wang <wenwen@cs.uga.edu>
Subject: [PATCH v2] mtd: rawnand: Fix a memory leak bug
Date: Sun, 18 Aug 2019 21:46:04 -0500
Message-Id: <1566182765-7150-1-git-send-email-wenwen@cs.uga.edu>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_194614_232823_DBD31DD9 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wenwenict[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Vignesh Raghavendra <vigneshr@ti.com>, Boris Brezillon <bbrezillon@kernel.org>,
 Richard Weinberger <richard@nod.at>, Randy Dunlap <rdunlap@infradead.org>,
 open list <linux-kernel@vger.kernel.org>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Marek Vasut <marek.vasut@gmail.com>,
 "open list:NAND FLASH SUBSYSTEM" <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

In nand_scan_bbt(), a temporary buffer 'buf' is allocated through
vmalloc(). However, if check_create() fails, 'buf' is not deallocated,
leading to a memory leak bug. To fix this issue, free 'buf' before
returning the error.

Signed-off-by: Wenwen Wang <wenwen@cs.uga.edu>
---
 drivers/mtd/nand/raw/nand_bbt.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_bbt.c b/drivers/mtd/nand/raw/nand_bbt.c
index 2ef15ef..96045d6 100644
--- a/drivers/mtd/nand/raw/nand_bbt.c
+++ b/drivers/mtd/nand/raw/nand_bbt.c
@@ -1232,7 +1232,7 @@ static int nand_scan_bbt(struct nand_chip *this, struct nand_bbt_descr *bd)
 	if (!td) {
 		if ((res = nand_memory_bbt(this, bd))) {
 			pr_err("nand_bbt: can't scan flash and build the RAM-based BBT\n");
-			goto err;
+			goto err_free_bbt;
 		}
 		return 0;
 	}
@@ -1245,7 +1245,7 @@ static int nand_scan_bbt(struct nand_chip *this, struct nand_bbt_descr *bd)
 	buf = vmalloc(len);
 	if (!buf) {
 		res = -ENOMEM;
-		goto err;
+		goto err_free_bbt;
 	}
 
 	/* Is the bbt at a given page? */
@@ -1258,7 +1258,7 @@ static int nand_scan_bbt(struct nand_chip *this, struct nand_bbt_descr *bd)
 
 	res = check_create(this, buf, bd);
 	if (res)
-		goto err;
+		goto err_free_buf;
 
 	/* Prevent the bbt regions from erasing / writing */
 	mark_bbt_region(this, td);
@@ -1268,7 +1268,9 @@ static int nand_scan_bbt(struct nand_chip *this, struct nand_bbt_descr *bd)
 	vfree(buf);
 	return 0;
 
-err:
+err_free_buf:
+	vfree(buf);
+err_free_bbt:
 	kfree(this->bbt);
 	this->bbt = NULL;
 	return res;
-- 
2.7.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
