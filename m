Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF8CCD3C5
	for <lists+linux-mtd@lfdr.de>; Sun,  6 Oct 2019 19:14:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2kDUfJj/pA12xYodVlryT/Bo1A9tNJ/piEIvtGglf/g=; b=fVHAi4Et2ETpW4
	awGGYDvOzYrCij582xisxALDTH3/QPCpsguySD+TYkgHHo8IZpV63woMkEy2b+6PmrzwutQ+pwIB2
	y5zKznBWNsjBa5lfoubrmTfuDzopyPg0csNzuiGFTYjqa+Sb/luK0DYvi5YWJkSnW84idarTNylLW
	474Bjess55hfkICOXOx9JqOqv6aHqB50HDyRIWyflZhT6kzifMpVyU/6hb51spOH4QopqVvp/55ps
	EQPwDijcj8nzXA8+y7J0MIGbYNmqeabBowg5eYOQTChgv7XTSsQb59GShx91/2QNd4LrY0u97K21b
	eMAiqyOOLftghoe0GBcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHA72-0003BK-Pn; Sun, 06 Oct 2019 17:14:28 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHA6p-0003B1-VS
 for linux-mtd@lists.infradead.org; Sun, 06 Oct 2019 17:14:17 +0000
Received: by mail-pl1-x643.google.com with SMTP id q15so5676257pll.11
 for <linux-mtd@lists.infradead.org>; Sun, 06 Oct 2019 10:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b3fYJoFscZfaYdgedpzppC4IQYiwjjSzfIMce4l+9os=;
 b=cGzoKpfciaWYQEsaFM42sG+CO9ev6qXMKrS3ilPhRXVhHN8/P39XuQw6exaVH0MRiE
 bk0tJ0BbYFB2PO5HRQb0yfSbEN+Ey+sMKKZTtkVXI98vEjagyYw8echd5sRHPMSta2ht
 H4kCnshjME34fMX8pRlLNS7aRB5FoactHmE7/XWYX6XPA/apVm9TjQUsWBoYD8pv1q5j
 KJHRITPGQcW65o11Ml7ixH5zNtm6eO2EBpX8+J636fHBoNK1gbeAK6UMNRfU9PArQokk
 PSFurHggrtQ0sNX7gz7z+8847FC7FJmxGsGC6RAgakVb6EDua9/C4ymtmZKt5NasKtS6
 zFHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b3fYJoFscZfaYdgedpzppC4IQYiwjjSzfIMce4l+9os=;
 b=iqugsJ9I7MtbhZ1mWBe++lblTtEbPa28VxNxLfXCLLbO7A3iYbDtOKbmwNDSokHgUo
 Jf6ZBzVWvDIufEsv5j9K+YDtlElUAkTp1/vHG2wlj1G7OfwGAloz2LWwLXOFNc3DMfdU
 GUaO52TNTIvfx3FcQ6YgGNrfa7cYduF8vBxh8Dtqw+fYPhMjgzMXjEXwEd+4DOuZaWtd
 uWnoivBNj9BInWsap7OsOK9K1apbOoxKWlP6BNauXGWwcFaTSZNiU0DYQ/iN0w4b+0h6
 aVyl7F+Fsy7Hwv5npoTHQkfRJcDP5YFSWD3y3FIGVWHCbFQ5dH3n8b6LZoInaTbwKStk
 kLHw==
X-Gm-Message-State: APjAAAXIwlpwZmOfkKeID/zyitNfuZdaPhpq6e75zbKxYcE3PkqhFOtl
 RRKX+Z4DDtCJlYFWTgF9V5L3abL3
X-Google-Smtp-Source: APXvYqxa7Q+hobYhae01Xfku4sV3/PGprSz+G2BpQSs2dp9u1RI2LLlUhpGgWnqg8XMmU8r7FIlUWA==
X-Received: by 2002:a17:902:aa91:: with SMTP id
 d17mr24517940plr.53.1570382054196; 
 Sun, 06 Oct 2019 10:14:14 -0700 (PDT)
Received: from P65xSA.lan ([128.199.164.101])
 by smtp.gmail.com with ESMTPSA id w10sm12263866pfi.137.2019.10.06.10.14.10
 for <linux-mtd@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2019 10:14:13 -0700 (PDT)
From: Deng Qingfang <dqfext@gmail.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH] mtd: spi-nor: add support for en25qh16
Date: Mon,  7 Oct 2019 01:14:04 +0800
Message-Id: <20191006171404.7253-1-dqfext@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_101416_038596_B41B8747 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dqfext[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Tested on HiWiFi C526A

Datasheet is available at:
http://www.xinyahong.com/upLoad/product/month_1411/201411201256018276.pdf

Signed-off-by: Deng Qingfang <dqfext@gmail.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 1d8621d..cc797de 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -2179,6 +2179,8 @@ static const struct flash_info spi_nor_ids[] = {
 	{ "en25q64",    INFO(0x1c3017, 0, 64 * 1024,  128, SECT_4K) },
 	{ "en25q80a",   INFO(0x1c3014, 0, 64 * 1024,   16,
 			SECT_4K | SPI_NOR_DUAL_READ) },
+	{ "en25qh16",   INFO(0x1c7015, 0, 64 * 1024,   32,
+			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "en25qh32",   INFO(0x1c7016, 0, 64 * 1024,   64, 0) },
 	{ "en25qh64",   INFO(0x1c7017, 0, 64 * 1024,  128,
 			SECT_4K | SPI_NOR_DUAL_READ) },
-- 
2.23.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
