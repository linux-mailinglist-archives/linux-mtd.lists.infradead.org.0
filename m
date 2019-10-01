Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F74C30DE
	for <lists+linux-mtd@lfdr.de>; Tue,  1 Oct 2019 12:05:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GWgC7bvDeQE+yWb2RnJx8Q2FtyTgUe3x4LrVbo4zUQs=; b=dA8x/raXJ3AWKK
	FldbayLGrATPLBxSADSyO6R4d7GDyUTNu57Ii1Fjgd1fGgiI9V+1q8OnD+j9oQf2r78Q4CtDyaeeE
	YpwYa608xoXs+O0Rbw9SnxBDKQ8MYQWCkfOaruica4KSL4y/FoI2uffUr9d2Ii6zTrQA6g0PwSpwh
	kuOGAghpHXSfe9AHihrGM3LKRVKs0djmH22PX/is01vcbJiSOZhfoYA+oV1h0XbZuahpL7lsrYjR7
	jEpqaUdRgOAtmH52uD1b/wMqkkS0wqWkbvWCdh0Q3I7ujLASRHy0a9ZIvGq4OPJYw9CE5Vo9i+T9J
	cEtbjjay90ZpktLBz37g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFF29-0005Te-36; Tue, 01 Oct 2019 10:05:29 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFF20-0005Qz-MV
 for linux-mtd@lists.infradead.org; Tue, 01 Oct 2019 10:05:22 +0000
Received: by mail-wm1-x343.google.com with SMTP id 3so2542421wmi.3
 for <linux-mtd@lists.infradead.org>; Tue, 01 Oct 2019 03:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MDb9V236X1+2wHmiAI972wYH+mIXz1A27mj3ckuSylc=;
 b=dRz45ZFY/schW2hdmyXXNc3wJcAsEVReWhJjUlkPT3gXsJwjTVpueT54F3hg02bn9r
 hdmLfZCJhrsE8tww83KORRm7Q3/S9bgaKD4/XB9pfXX2o1G5Jv0XepvCxjQNh+oIeAPb
 CDCjNL7BYGMbzctAo1ekCSB8gw/hPyrY8S5hCKceSF1+Vyzo3rEzzyWO676Q+EYBCjxP
 pdtd5+vEI3sImuzydVEe7hRfjcoz0d7lVv3nVo3CJtoeUylWEFhPAd1qjueaFTHSrpxk
 ktzfG4awi8Pa7yCqVvfiLNgS29xhWjsv/cRdRCvq1GyXkfhh2XTQzr2eboOAOjyTWO2J
 VkCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MDb9V236X1+2wHmiAI972wYH+mIXz1A27mj3ckuSylc=;
 b=dWvMrW7zhWElsPvUvQkjeNk5hSSyRdZbhOt8l2GlKnQYpQSpOcONnwuAVILndy3xTr
 o7TItbZfaVLlNJlCKsv5ZuITVQiXbi1K5ddL+1Gg4/a6kNvtspsH8FPw+uSEcF9TbQrL
 I8jEdlgFT9ZFBH6lcdx2ZhblnPGWQKJ9bsonuXtcZmYWirfFGefqHObjz0J2+213MITK
 8rJf0YKFOP7BbqwR9Sw/LcLexsIqR+04wbGMWQcp2fINI+GM0mfArGbZ4VQsltE7RIGD
 Kasp0FCgPYWINsdm7zfaD3QrttgIrI/2VU5eCqB9L2+WZW0oudPcz9Lwjqt4I1CLq3d3
 pRQw==
X-Gm-Message-State: APjAAAUZ2dl270LgfTs4gKTGkSaCx4GzbDrx05af6JvN1pJwQEUmEy+H
 8Ll8tTK5ici+b1BPqAu8oPWdRQ==
X-Google-Smtp-Source: APXvYqw/rjLK3L8BZATVfqRz06QNfAaTJW8lK7seOMEM3ex/HDidB5Ngszz5C/Uh3mwqJXGp46yxIw==
X-Received: by 2002:a1c:9ec9:: with SMTP id h192mr3006333wme.105.1569924316278; 
 Tue, 01 Oct 2019 03:05:16 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id j1sm34277253wrg.24.2019.10.01.03.05.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 03:05:15 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: [PATCH v2] mtd: st_spi_fsm: remove unused field from struct stfsm
Date: Tue,  1 Oct 2019 12:05:10 +0200
Message-Id: <20191001100510.13962-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_030520_875814_CB4935FF 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

The 'region' field in struct stfsm is unused and can be removed.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
v1 -> v2:
- fixed the commit message: it now says field instead of variable

 drivers/mtd/devices/st_spi_fsm.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/mtd/devices/st_spi_fsm.c b/drivers/mtd/devices/st_spi_fsm.c
index f4d1667daaf9..1888523d9745 100644
--- a/drivers/mtd/devices/st_spi_fsm.c
+++ b/drivers/mtd/devices/st_spi_fsm.c
@@ -255,7 +255,6 @@ struct stfsm_seq {
 struct stfsm {
 	struct device		*dev;
 	void __iomem		*base;
-	struct resource		*region;
 	struct mtd_info		mtd;
 	struct mutex		lock;
 	struct flash_info       *info;
-- 
2.23.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
