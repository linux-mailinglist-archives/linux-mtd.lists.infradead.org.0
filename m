Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA3A1E7675
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 09:17:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mojDn1XrBH+MDA/bnYl25M9k8gxKbnVl3EriS+0GjI4=; b=Cek
	xNjyWZJrRvLdLSSbUTuDR6bGY5xuUZ23XW8PNx7LhR0Y9Vx3bc04Vz9hl1vfVYTHOkM0M1taOIFL1
	sLACkCbrjI5A5ZanQ/GfXkRo8GONL9oEUMTdXXKhSf+sGLoLf2U5ndsIsRqnAJUzjeZEbbWXyPZFR
	2D7qeym804TfA4DDhXNd94bFfpxvNBlqVvg9hPA8btwUeLq0ZOxw0vqdnnwYY5ftLZ8yhiJo6eQY1
	oRE5rWJDx6xx4nCGE+WCINDZtBKoAPmiEbcfoNhH7pDjZ49noC7/MSKLmejaMbcP8GephCiudc+1R
	VJha3W4QWVk225bVCH46TXebt+nXHgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeZGg-0004O1-MU; Fri, 29 May 2020 07:17:26 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeZGR-0004Jw-Dm
 for linux-mtd@lists.infradead.org; Fri, 29 May 2020 07:17:12 +0000
Received: by mail-pl1-x642.google.com with SMTP id bh7so732148plb.11
 for <linux-mtd@lists.infradead.org>; Fri, 29 May 2020 00:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=P5u/NbTWEXJl8r2ntb3RMUbWPRi8ebmRq4q1xRNaxs0=;
 b=EXjRYk2eE8ul6RkMaGwpyALBo5BTSDqE3OyHZPZb+x6FV1PL83C4t1UyRjx0Rl7Hlh
 4MnRprcXutzOk7MZJ5HWAaNu6U2ubJrQmyn3RFoi9Iph7iubNRbqUT/6SvDrCTr8f79M
 hfqJPtxO8+UDIaGmdlY5wINH9dUZxOi7NC/SY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=P5u/NbTWEXJl8r2ntb3RMUbWPRi8ebmRq4q1xRNaxs0=;
 b=eDHLoASsBnhum7lkYwn+wlezi7MeL5bHb2FWw6G52X4G8boopWfJJIVoPGut+K4yk7
 /bEeoDne6w97YDz48yUc4Jbb/IvMN1ky2c8Whm1kS0s78Lp7x3eo0kdr4J7J+7dX3vKk
 yREmdktTsvnEy6CDDbO1+9VDPQtn2h+L57uyEnYUyCKfQbZdoiDNYfCxCtuaeWY76FG5
 TqA3hyRzQuZ797kPuIpO0Q3II8pXpb9x5FipvAqfbSY1L1KD2XcgMYmpDf3GqTV6Zijy
 rE+ffqTQVKv5FeRSlL3HWM5XHnZeegG3hDfXWv36eI7mWJ96phm9s8XSaDWKJVLCBvxc
 Hhxg==
X-Gm-Message-State: AOAM530AdmswCeko5ZIvHBNk9prRl/ZxNDPv294BhKz9AyGmp9gHlX4U
 nZYXBkeDbkOUdiA3j2pm7TuldA==
X-Google-Smtp-Source: ABdhPJyqIMaXyY94gFD+xEgk1Xo4EiJRBAUruzIQi6emdvQxnhR6IlFqXi9tfWoyUkrXC2CoQoI4aw==
X-Received: by 2002:a17:902:6b09:: with SMTP id
 o9mr7778933plk.100.1590736629784; 
 Fri, 29 May 2020 00:17:09 -0700 (PDT)
Received: from rayagonda.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id w65sm6418005pfb.160.2020.05.29.00.17.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 00:17:08 -0700 (PDT)
From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/1] drivers: mtd: spi-nor: update read capabilities for
 w25q64 and s25fl064k
Date: Fri, 29 May 2020 12:46:55 +0530
Message-Id: <20200529071655.739-1-rayagonda.kokatanur@broadcom.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_001711_492978_21AD5D3D 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

This is tested on Broadcom Stingray SoC (bcm958742t).

Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
---
Changes from v1:
 -Address review comments from Vignesh Raghavendra
  Update commit message with testing details.

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
