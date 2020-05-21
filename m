Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAAC61DC696
	for <lists+linux-mtd@lfdr.de>; Thu, 21 May 2020 07:26:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Izq5puUDVni3Bup4CtEfQu+8quJbZnJUFV8zMIVJdr8=; b=BvL
	cOyFIeIBPEAQhc3QX8xULCvpZndVOfY6eXxQhmI1ZvLTuEH7UNZ9kcGCJsEWnyZj3dHljhRvnqgss
	YQBbSuYu0pAXOexMOBQzZB0Bo0kaJeq2QaXH2H1snBXaOh/Kfzlh7GLAFdTUzkKOvv8ccuPCwHANk
	6I5CUVAAXXi89fXHffgqN32W+PJ21GBXu5FrVfZ0c6UK+yRyXnTn/LZ/XGgZNWhOhuWd/TqEl+dvG
	mq30ilhGdFAMnJZLeD/lrEW3SNW91mZYhlXxTf6SofHhojQsLLsokyhCfgt7yeJdviwXcu7RwhSBB
	SMQjBUVEJ/qeM/2XSlWvYOBy95fIZTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbdiz-0006T2-KN; Thu, 21 May 2020 05:26:33 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbdiq-0006SR-H5
 for linux-mtd@lists.infradead.org; Thu, 21 May 2020 05:26:27 +0000
Received: by mail-wm1-x344.google.com with SMTP id u188so5102123wmu.1
 for <linux-mtd@lists.infradead.org>; Wed, 20 May 2020 22:26:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=94FiodHUtUj74NaCpe0rAM7NIXPvi2dRW79zAd5+bos=;
 b=YVUnHTXJC9friZQ33uhkX/g3Il24tvG6lcvOPeKjB6/JFk/8jIEGBUCuZopbdUkVpy
 zsKXv8gPrHguRfXaeb2j3535C9dBOqyIpXPryxiVx3UP21dvCrFCN9obrf4vy+OV8k0o
 Vw/gLXCRzLVKK5qlGX0XPNZdNzgRKvi2ledis=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=94FiodHUtUj74NaCpe0rAM7NIXPvi2dRW79zAd5+bos=;
 b=UzQ3MPydS2yN6r34HIqmR4xAS8M+/Knz/5Np0pJvfqIavcelIKczK2ARRb5KXDK8xA
 4KzbmSDYFda7ytS51kHVWXO5PSkJIM297IJIYulXu8KxRF48hkcgtQ8qWP8o3tu8Q8LS
 LaRgwwrnRMrf13vjPl2b+3XdmlOSXJEIaaSFbpLCMPLR4ob5IFOuthR+JJq16t05MDxs
 T0rNiViOlR6WQ17G3xErrHoMo/PKaPzmS/oMTLpfRAGlcBAByCl67Az1PiCiYwnjs7SN
 X9YsfFwJM8PFyI0IWX5yNRHrcLG7wc52zkW5yHQDKkb0VWgMEM+kZh7rNAayE13pdnFF
 tKZg==
X-Gm-Message-State: AOAM530nVmCRvv2OuDXZdcMKX3wX3W1DWPek4OAaHFf7QaROxT98i8+h
 QJmzVlxi5ylIi5lZjDUfjsp/7g==
X-Google-Smtp-Source: ABdhPJx7JV9SHaGggcuNKCw4mn1/dp2GgFyYILR9HW5X9qkMIZtgst272a1bYiSSw78+jfeTHcyDOg==
X-Received: by 2002:a1c:25c3:: with SMTP id l186mr7428854wml.103.1590038780122; 
 Wed, 20 May 2020 22:26:20 -0700 (PDT)
Received: from rayagonda.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id i21sm5283069wml.5.2020.05.20.22.26.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 22:26:19 -0700 (PDT)
From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/1] drivers: mtd: spi-nor: update read capabilities for
 w25q64 and s25fl064k
Date: Thu, 21 May 2020 10:56:08 +0530
Message-Id: <20200521052608.32667-1-rayagonda.kokatanur@broadcom.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_222624_567479_F49474FD 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Both w25q64 and s25fl064k nor flash support QUAD and DUAL read
command, hence update the same in flash_info table.

Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
---
 drivers/mtd/spi-nor/spansion.c | 3 ++-
 drivers/mtd/spi-nor/winbond.c  | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/spi-nor/spansion.c b/drivers/mtd/spi-nor/spansion.c
index 6756202ace4b..c91bbb8d9cd6 100644
--- a/drivers/mtd/spi-nor/spansion.c
+++ b/drivers/mtd/spi-nor/spansion.c
@@ -52,7 +52,8 @@ static const struct flash_info spansion_parts[] = {
 			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "s25fl016k",  INFO(0xef4015,      0,  64 * 1024,  32,
 			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "s25fl064k",  INFO(0xef4017,      0,  64 * 1024, 128, SECT_4K) },
+	{ "s25fl064k",  INFO(0xef4017,      0,  64 * 1024, 128,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "s25fl116k",  INFO(0x014015,      0,  64 * 1024,  32,
 			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "s25fl132k",  INFO(0x014016,      0,  64 * 1024,  64, SECT_4K) },
diff --git a/drivers/mtd/spi-nor/winbond.c b/drivers/mtd/spi-nor/winbond.c
index 17deabad57e1..2028cab3eff9 100644
--- a/drivers/mtd/spi-nor/winbond.c
+++ b/drivers/mtd/spi-nor/winbond.c
@@ -39,7 +39,8 @@ static const struct flash_info winbond_parts[] = {
 			    SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			    SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
 	{ "w25x64", INFO(0xef3017, 0, 64 * 1024, 128, SECT_4K) },
-	{ "w25q64", INFO(0xef4017, 0, 64 * 1024, 128, SECT_4K) },
+	{ "w25q64", INFO(0xef4017, 0, 64 * 1024, 128,
+			 SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "w25q64dw", INFO(0xef6017, 0, 64 * 1024, 128,
 			   SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			   SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
