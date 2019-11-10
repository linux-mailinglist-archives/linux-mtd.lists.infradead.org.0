Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3AD9F677D
	for <lists+linux-mtd@lfdr.de>; Sun, 10 Nov 2019 06:33:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9DnF9Pjvkdxvoovl/is0DPq8zIgrrqOjzTsIFM47ZMo=; b=tSs6cRrQbfBYtp
	/1io/AmcyiCwqE8cAEVvHCw1mOEDZyoyWPLgW16kin5UrHwxVP3/Vf3h+5D0wv/wb6MrQXxZGzHME
	FXaATtccAM+ufZugoqkQDwwy9Ico6KzoFYg40oLcZJpNnxTgXu/BeO3ropGpb1cWJ7hNNpAZorgny
	F80gIyB+DoJvyaNMUO8jJalPifRzqK9op9tbPShc9wndVX7/gDnAPOY4nVQ7Z0UnR9dUSFv/2p59x
	u4MxS7wgqaFwR5adF6k1K9XofvmtqMljWBr2WY7qMtHz/9gQumaP9n8hTQZkMnJs/8TxiFpjnGVya
	nxOc7FSfXNWRPyd3t7fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTfqI-0000Y8-O4; Sun, 10 Nov 2019 05:32:54 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTfq8-0000Xh-Am
 for linux-mtd@lists.infradead.org; Sun, 10 Nov 2019 05:32:45 +0000
Received: by mail-pl1-x644.google.com with SMTP id s10so6136980plp.2
 for <linux-mtd@lists.infradead.org>; Sat, 09 Nov 2019 21:32:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dW9rEHfAMAiZ8BDOMvHKousAF8Cv21mLTzBUYKxpOAI=;
 b=eRJv1meBHaBsNs/LWfHXDNl3o4RXJ1hz/3kt5fdFOk79SGhh33/iUy1l0wzRyoZWCk
 x8b44T2LDZgKpCuw/tSGwVeaLlR2Q/ItR5Sn7MbIVaXY05a8jzUbAbCgQSZ4UE7hd04/
 64lPaX1SAl2J3fgqt1fBR+dWP3OV0zBSULRZ24l1vHNnxBMB+RK3oxgnGwNJQjUsLA6R
 vpTckT7770qWDDzfgiNhsY+rbI+pZ1Q82kbmEMdxQXzmp34k3zcC4a346/C37jYyl5XK
 V3AECsCFqp53kTxhYnBUhBxT8PhTMyLGA2teM05+B7Wt3Nb3fj7HuZWa1w4OJixlRo1S
 ++Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dW9rEHfAMAiZ8BDOMvHKousAF8Cv21mLTzBUYKxpOAI=;
 b=ezoprt5OCBsW+vMtRA3HmmdRj8uddNxkysA/VXuOC/+HTsw4Q8/95qWxKOUd8X9pPR
 fTPtzvlmXsfh6WM/92tgCG5ukWU37E0weuteap2sjO0kOPrYMUB/bM0eWZinsG613uO3
 Icd5uvTvyNGepZ4CoHvStPi/v8GSi7fcWvj2HZNivrkNnL4Nc+GaImQwVDZ5QF0vSUq3
 2m2qEW8TrmNl08E+HzuueC1XA3lXCbR40Fd+LLrha9bH+OoT0CLgaKHUCWZKY7r/eWDU
 J4hGhSAbEvG+XrhLXe43VfMQl8PZO3JrxklBxo/fu1HEl+B1JPdFOkEpn/3lHTILEc94
 9ECw==
X-Gm-Message-State: APjAAAWjXA3JKdV4oihIH7t619WcK2WS0ooN+nZAF131nRzKQLI7pIZM
 Psa0X7pC38nRSuYgshCo+AKCUJVY
X-Google-Smtp-Source: APXvYqxmqFZlDdyU04Yl8n0zJ1+fXDN6Te6YzmWq7V5r4yf2f++VR8Wzpvp+/frSUOXQAo9ZLnCZkw==
X-Received: by 2002:a17:902:142:: with SMTP id
 60mr19903253plb.38.1573363958952; 
 Sat, 09 Nov 2019 21:32:38 -0800 (PST)
Received: from localhost.localdomain ([2001:19f0:7001:2668:5400:1ff:fe62:2bbd])
 by smtp.gmail.com with ESMTPSA id v19sm9759298pjr.14.2019.11.09.21.32.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 Nov 2019 21:32:38 -0800 (PST)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH] mtd: spi-nor: add dual and quad read support for w25q128
Date: Sun, 10 Nov 2019 13:32:21 +0800
Message-Id: <20191110053222.22945-1-gch981213@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_213244_395961_B6BCF5FF 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, Chuanhong Guo <gch981213@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The only w25q128 variant I could find with 0xef4018 as ID is
w25q128fv, which supports both dual and quad read mode.
Add these two flags in chip info.

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index f89620005198..6adf16259841 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -2479,7 +2479,10 @@ static const struct flash_info spi_nor_ids[] = {
 	},
 	{ "w25q80", INFO(0xef5014, 0, 64 * 1024,  16, SECT_4K) },
 	{ "w25q80bl", INFO(0xef4014, 0, 64 * 1024,  16, SECT_4K) },
-	{ "w25q128", INFO(0xef4018, 0, 64 * 1024, 256, SECT_4K) },
+	{
+		"w25q128", INFO(0xef4018, 0, 64 * 1024, 256,
+			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ)
+	},
 	{ "w25q256", INFO(0xef4019, 0, 64 * 1024, 512, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "w25q256jvm", INFO(0xef7019, 0, 64 * 1024, 512,
 			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-- 
2.21.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
