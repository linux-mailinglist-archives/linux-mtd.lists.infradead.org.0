Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 845B51F85F7
	for <lists+linux-mtd@lfdr.de>; Sun, 14 Jun 2020 01:53:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rOmw+CEjB/ELis8IQKzy6/zXAGLdULBEiVPu5YP9yC0=; b=LOH
	tODWOM8r1fE+N1W54GZjUZja7idY1BluycF0XkUezttKdGLpnLoq+PA/JzgxhWd7xybOX4hPa2QtJ
	O0N181EQ/MxlQ+sgTvp1CaRWFe/qepXYxG+J0IL/Z2yo0xfFonQjMj5AF5kRRlYX/yInIW1THPsO+
	BpoaM3TEvFPdZwRB/T3YHWNyQ69bKi4WPAonBXoere3Xm/6i3U16u0sAwSH9o5gKCgh0MmofuamZT
	rKMEnLhBbe6yYTRx6YhhA/J6WoedQOtP9Mf/LT2u1+8LmCTTTCD0bjJ4gaIdvhcrciK5Md6Ys9vpO
	u+boAQ11teLEcM/joZwyNgIf/0J1l5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkFy2-000817-VU; Sat, 13 Jun 2020 23:53:42 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkFxx-00080h-Ke
 for linux-mtd@lists.infradead.org; Sat, 13 Jun 2020 23:53:39 +0000
Received: by mail-qk1-x742.google.com with SMTP id c14so12469735qka.11
 for <linux-mtd@lists.infradead.org>; Sat, 13 Jun 2020 16:53:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=8/ZkbH0LJ/L7pCqBw9Gi2WSPLjhSXxaxLoaVym36vd8=;
 b=nmpur7Ku4Wyb0Pjg7P+Sfhxfs/vzTM42xwEuIpUJNOXU2jgjtKpKX6YI4Recer518T
 vIuT5WdE5H7ktkiBKQNvko+QXX0k7OWJaFSxJLViJMdaLgLiboUz+f2fuT0K7hHV4Gl7
 mmeIZFGLPhlzIC1AEYiDoUPzkLniF2+XuYjwV0JPOUA3ZCYuD+UTV7xFwvZBK7QeyZJW
 4yeDORcNpbhyNscBBjN52N/nPnDNnqG85YLr83FUQINjB4VLN6DpIoUZUISI0nP7kozR
 dOT4UqZEGTBrMq+IP91zA4bBHuIpMq1DsTTIIYnNbe2kU1McVyyo8JFNVf8Y47g+q5mq
 79uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=8/ZkbH0LJ/L7pCqBw9Gi2WSPLjhSXxaxLoaVym36vd8=;
 b=W8uVdJB/NcbkEFOmB7Oz3spnjJE39TuhZ5yyjGJJKsY4a0cfFDEi5BdU7kNjlGMSpb
 xIoarUEksxOwtXNauoNt5otqiWvleYYlQ798yWvqd+gJDk4gJvsrY0D9RYWAuTVJoaZE
 G+L9VW3x9EwQ1XNF5ZjEthf2nqANcDzNCHGnBt2fduVIdhUpkcdbOD4tncn1BUaadYLI
 e5Kv3ievIQ/fsITRVzIQwX6Pjcz6nGXKnIHrk0kQs6D2ti3j14CFCfOQgg2S0QZa9vMy
 ept3ynD1b/zICu4Ta1vOnceFTOi+OH+30FooG1Z+QvS1HAGGGW/sqhoylt2UGJ0Oscr/
 QdNw==
X-Gm-Message-State: AOAM533529Ka4SGcvsgz2z153iz27WeWM32jsQtacJT533pMqpjlAm20
 NVNIcpmfRNCksNqC10qiZnA=
X-Google-Smtp-Source: ABdhPJwTRHsjpAuwKdwG/QDHbAkp3CsUWbiHue2lbwsCSmxvGKuDIxluwohyfo0Gs8lMSqU+WhWCBg==
X-Received: by 2002:ae9:ef8c:: with SMTP id d134mr9481262qkg.66.1592092415297; 
 Sat, 13 Jun 2020 16:53:35 -0700 (PDT)
Received: from localhost.localdomain ([72.53.229.195])
 by smtp.gmail.com with ESMTPSA id v14sm8614538qtj.31.2020.06.13.16.53.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 16:53:34 -0700 (PDT)
From: Sven Van Asbroeck <thesven73@gmail.com>
X-Google-Original-From: Sven Van Asbroeck <TheSven73@gmail.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v1] mtd: spi-nor: Add support for Winbond w25q64jv spi flash
Date: Sat, 13 Jun 2020 19:53:31 -0400
Message-Id: <20200613235331.24678-1-TheSven73@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_165337_702388_07966A39 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thesven73[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [thesven73[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This chip is (nearly) identical to the Winbond w25q64 which is
already supported by Linux. Compared to the w25q64, the 'jv'
does not support Quad SPI mode, and has a different JEDEC ID.

To: Tudor Ambarus <tudor.ambarus@microchip.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>
To: Vignesh Raghavendra <vigneshr@ti.com>
Cc: linux-mtd@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Sven Van Asbroeck <TheSven73@gmail.com>
---

Tree: next-20200613

 drivers/mtd/spi-nor/winbond.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/spi-nor/winbond.c b/drivers/mtd/spi-nor/winbond.c
index 5062af10f138..18bdff02f57f 100644
--- a/drivers/mtd/spi-nor/winbond.c
+++ b/drivers/mtd/spi-nor/winbond.c
@@ -65,6 +65,7 @@ static const struct flash_info winbond_parts[] = {
 			    SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
 	{ "w25x64", INFO(0xef3017, 0, 64 * 1024, 128, SECT_4K) },
 	{ "w25q64", INFO(0xef4017, 0, 64 * 1024, 128, SECT_4K) },
+	{ "w25q64jv", INFO(0xef7017, 0, 64 * 1024, 128, SECT_4K) },
 	{ "w25q64dw", INFO(0xef6017, 0, 64 * 1024, 128,
 			   SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			   SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
