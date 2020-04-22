Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A831B4CF9
	for <lists+linux-mtd@lfdr.de>; Wed, 22 Apr 2020 21:01:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4Lm43o0Wnj8TjEEDCuQFH9yjtARqb1Vh257EDiI1t5E=; b=Q4YhA8RdLQmZim
	DuyhnkeVgzM2RhkJiK6NoPTlirocMGKL2H+UfkvoY/Jz7BVupRPS9OXCCpPeGcLQogby6ZI+Fno33
	e+vURl2B5VsmiF+dfI1kiGMrtOBt2/7i6qEMZt/2BBPxlbTv1I71f40gQ0oCJPXXAcXBXNZ3PcsZ/
	mZ9Bxo/oKvj7Ij0o75Td5bnrIgvPJX8ujYgfHkDrOvk6KZkVkD+88lfiOsiQDjyuIqMhM18PwCM86
	/yjX4UaWm6Z6J+EhzeA0EJhNlst0Xj7rhUdYgM+2WuRRoxRL9uQoz3r40RfHXYfenF28BqVidOEgn
	3qUn/YGSuMCYU0nO2/DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRKcA-0000n0-IU; Wed, 22 Apr 2020 19:00:54 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRKbe-0000YQ-6Z
 for linux-mtd@lists.infradead.org; Wed, 22 Apr 2020 19:00:26 +0000
Received: by mail-lj1-x241.google.com with SMTP id g4so3545261ljl.2
 for <linux-mtd@lists.infradead.org>; Wed, 22 Apr 2020 12:00:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=from:subject:to:cc:organization:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=MvCjazpUMLNQKBtNuvfByrd9RV4zfvzQXI2dTSouLt0=;
 b=s4VxaO0xWQ1ips5bcoPK8SS4CB5vh7zDzW8puMVfJpQyZv56O4Gh9dDJWYbOCFNKVi
 luMwskFC5mTFwrdba0gqFyp7hBv6+v9AsFHDKx7bnVbrNIOx5OI3Q9ONsnW3l0A5gVtR
 e+/ofndX5wazyCNdtiItr4lbrpfy/xv9zonDrBcHFfYj0D9RoJCp/b9+1eXgsfNlxhYj
 utfLbhbNzdgJ4hZ8islAIzumD1/J/0vHZ9FlJe4f1FH18CfyEe5ujdOCmeVeIj2S9Yw6
 XDPSo77N/K19iySC0iz+WZUSHw2qoEg5mD8ubIP+QzK49941yWTbr4yK1m2K6oxb3IcM
 SyRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:organization:message-id:date
 :user-agent:mime-version:content-language:content-transfer-encoding;
 bh=MvCjazpUMLNQKBtNuvfByrd9RV4zfvzQXI2dTSouLt0=;
 b=LG4h2IhMXS23fxINB0O2XYNqBMAg66hPaZsILhgYPv0DMz/QuDBwccpCRYyC+KgvEX
 R6l2sB1GyHViGTBdL5ylnVqCRdLhDx7WIdr/XJ8qCdqP3gov1YIfj9N1qZwJeuQmBYOM
 DAPGI9IVnVHe9umQSkw3IVotDc4R6SvgjWjxRbnDIeKBSkDUTVBuh/Q8QwEvCuT6q8kQ
 Zzf0tpS5F3gjRhuUcNdNUq7und3gE6JW6IrzJamxm8lR1vsN57A6GIVCSMjfTMSBGlEu
 5b0OCdIQ0T+JkdpJLX9cYmtAo64tg/T1jVmtkXW2Hdxh25eVJWXXmWE7jsE4/Pa5tvHq
 14XA==
X-Gm-Message-State: AGi0PubV7cdUJJnWiuNcGQ3YVI10RoATyh9a2l30XE+3R7PBp/iiehyL
 TopFjiWeT1VUCNyDOCn3MhWEgptmG34=
X-Google-Smtp-Source: APiQypIbPZicdIWX6KFmLsQs8aRG5n6ECf58dmM106PN9HkHIw7LIce91W+ffYhO+3IUrzZ92Cvu+A==
X-Received: by 2002:a2e:9048:: with SMTP id n8mr174739ljg.122.1587582020392;
 Wed, 22 Apr 2020 12:00:20 -0700 (PDT)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:4688:36d2:9969:8701:c16d:700f])
 by smtp.gmail.com with ESMTPSA id 78sm195681ljf.76.2020.04.22.12.00.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 Apr 2020 12:00:19 -0700 (PDT)
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: [PATCH] mtd: spi-nor: sfdp: add/use local variable in
 spi_nor_parse_bfpt()
To: Tudor Ambarus <tudor.ambarus@microchip.com>, linux-mtd@lists.infradead.org
Organization: Cogent Embedded
Message-ID: <1fb857ca-a299-30f3-06e7-ce860e44ff3c@cogentembedded.com>
Date: Wed, 22 Apr 2020 22:00:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_120024_914519_464BC95D 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Despite of how spi_nor_parse_bfpt() abuses the structure fields during
their calculation, gcc manages to make some decent code out of that. :-)
Yet adding a local variable to store the BFPT DWORDs during calculations
still saves 12 bytes of the object code (AArch64 gcc 4.8.5)...

Signed-off-by: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>

---
This patch is against the 'spi-nor/next' branch of the MTD 'linux.git' repo.

 drivers/mtd/spi-nor/sfdp.c |   22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

Index: linux/drivers/mtd/spi-nor/sfdp.c
===================================================================
--- linux.orig/drivers/mtd/spi-nor/sfdp.c
+++ linux/drivers/mtd/spi-nor/sfdp.c
@@ -437,7 +437,7 @@ static int spi_nor_parse_bfpt(struct spi
 	struct sfdp_bfpt bfpt;
 	size_t len;
 	int i, cmd, err;
-	u32 addr;
+	u32 addr, val;
 	u16 half;
 	u8 erase_mask;
 
@@ -472,21 +472,21 @@ static int spi_nor_parse_bfpt(struct spi
 	}
 
 	/* Flash Memory Density (in bits). */
-	params->size = bfpt.dwords[BFPT_DWORD(2)];
-	if (params->size & BIT(31)) {
-		params->size &= ~BIT(31);
+	val = bfpt.dwords[BFPT_DWORD(2)];
+	if (val & BIT(31)) {
+		val &= ~BIT(31);
 
 		/*
 		 * Prevent overflows on params->size. Anyway, a NOR of 2^64
 		 * bits is unlikely to exist so this error probably means
 		 * the BFPT we are reading is corrupted/wrong.
 		 */
-		if (params->size > 63)
+		if (val > 63)
 			return -EINVAL;
 
-		params->size = 1ULL << params->size;
+		params->size = 1ULL << val;
 	} else {
-		params->size++;
+		params->size = val + 1;
 	}
 	params->size >>= 3; /* Convert to bytes. */
 
@@ -553,10 +553,10 @@ static int spi_nor_parse_bfpt(struct spi
 						params);
 
 	/* Page size: this field specifies 'N' so the page size = 2^N bytes. */
-	params->page_size = bfpt.dwords[BFPT_DWORD(11)];
-	params->page_size &= BFPT_DWORD11_PAGE_SIZE_MASK;
-	params->page_size >>= BFPT_DWORD11_PAGE_SIZE_SHIFT;
-	params->page_size = 1U << params->page_size;
+	val = bfpt.dwords[BFPT_DWORD(11)];
+	val &= BFPT_DWORD11_PAGE_SIZE_MASK;
+	val >>= BFPT_DWORD11_PAGE_SIZE_SHIFT;
+	params->page_size = 1U << val;
 
 	/* Quad Enable Requirements. */
 	switch (bfpt.dwords[BFPT_DWORD(15)] & BFPT_DWORD15_QER_MASK) {

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
