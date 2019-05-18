Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0A8224B1
	for <lists+linux-mtd@lfdr.de>; Sat, 18 May 2019 21:30:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yVWNN7flo37SDQ5nKwkFqI4LDnw/JuKR0gDdrWNtDw0=; b=DXDp3dgCkSulN8
	YJYkUriXzDO4/hyjjUXICN8g7u31pDfpL3s9x9V3BLMJ9JDL04aNmbrOzwZdS0m//KQfm71NcKiuR
	Xukr9/VzFX0n+Vq4sB4SfUGFTthVs1tCga8BM383dS8TXVApOFWEgR+iJAqAgfPfbilbzjgnaD8mN
	oJBhL1YTkWSMYGouC4DFkI6auMUnHkG9zq1fjk+2yb1wO2sy+ZFrc0yE/5xTsjya/CmTu/9bUq0/S
	UVfvP0qZi7YQwBlGpwdiR4ysH5OBK+yYGIBpBSHpaF6EJ7zWBEFLpVRCQAniSJEFeAFOtJT4Owj8l
	u9TBaJ2FVUL8WRUyG2hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hS51m-0006n9-W3; Sat, 18 May 2019 19:29:55 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hS51c-0006mj-O1
 for linux-mtd@lists.infradead.org; Sat, 18 May 2019 19:29:46 +0000
Received: by mail-wr1-x442.google.com with SMTP id f8so3979556wrt.1
 for <linux-mtd@lists.infradead.org>; Sat, 18 May 2019 12:29:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/XidOJA5GQwPOYch3JGHuDtp8yXZWQzLJEMf+yMRqG4=;
 b=DHPFCzm9eCpw+1Uf29CLI2LJvXyBxmckk1ffkypIx3S9ihjynph8jO6oCbNwPkQ5U1
 BJfD0BE73dNzA8cogdZGxT6Z41Y8iaQ9gnlnrEqXyJfp1H6n4BZce+GPXfdrpqNd4s8t
 in1W9WPi0mWaStsiG2JYNuQyXD3gDnuruEvn0G6nudGH2cOWVI2+03P7QMv1/w6SltRb
 OOeLqHXeeSutr1ISmoM7FEIX2IBTRCNDpR2gqVCxMGB6uuWMbvQpzGQxFwWr97fI9B7V
 6bacTDMblqWl/qAbDUBgGJvaQRFgtoLDc8fM7hQW+IhpjmHdaxWswTD7JTLIReHfNkF/
 p8EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/XidOJA5GQwPOYch3JGHuDtp8yXZWQzLJEMf+yMRqG4=;
 b=IMo+GgAIvxSv8xgRs9hsadAYNy66nn+iK3dH/86GhB6CMVVHNL9aitnHvNPLPyApfu
 z+KCqCnh3Zj6+qC4CxsabmpQqUaJNXEUdcPAB8bpXLFrlbfQLW2pf9o2+7vd3V8BflQn
 37uxi4BY1Bbnt3Jihq/zIqVknfwckBKCS3VU6mTwSTdgSBqScP1ie4z69q1U9s7fwOej
 r5z0Q3A1ElwNxaZQyWF/IqP6EztxrdQzMykT3ixhrGHBTdicoYzMIeWnXCqY7gbCUqRE
 2cHa9c3NZfbrVLxOQXH0kJvtyIt8poTmmTMyNifT6GzPvEpSEXS/1DlZiIF0mpj6AsM+
 qRGg==
X-Gm-Message-State: APjAAAU3O4hwpd8VKUZMcyG+ULW7/hoJvS8n4jsAUMZ2siMx9vELuHNM
 8q2jET9kzDsKMN2ysvaSoF0=
X-Google-Smtp-Source: APXvYqwKuEDD/XfBVC7pqVLxQk62BmacwrHrtYNPU0t8f9f8JMmCdI4jOyD0VAxREvRaySXm3Yv3Qg==
X-Received: by 2002:adf:f407:: with SMTP id g7mr23436365wro.196.1558207780515; 
 Sat, 18 May 2019 12:29:40 -0700 (PDT)
Received: from localhost.localdomain (93-143-246-195.adsl.net.t-com.hr.
 [93.143.246.195])
 by smtp.gmail.com with ESMTPSA id b194sm10556073wmb.23.2019.05.18.12.29.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 18 May 2019 12:29:39 -0700 (PDT)
From: Robert Marko <robimarko@gmail.com>
To: marek.vasut@gmail.com, computersforpeace@gmail.com, bbrezillon@kernel.org,
 richard@nod.at, linux-mtd@lists.infradead.org
Subject: [PATCH v2] mtd: spi-nor: Add Winbond w25q16jv support
Date: Sat, 18 May 2019 21:29:35 +0200
Message-Id: <20190518192935.22684-1-robimarko@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_122944_808016_2E8F7EE0 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robimarko[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Robert Marko <robimarko@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Datasheet: https://www.winbond.com/resource-files/w25q16jv%20spi%20revg%2003222018%20plus.pdf

Testing done on Mikrotik Routerboard RB450Gx4 board under 4.14.119 and 4.19.43 kernels.

Test board does not support Dual or Quad modes.

Signed-off-by: Robert Marko <robimarko@gmail.com>
---
v1 to v2:
        Alphabetically order
 drivers/mtd/spi-nor/spi-nor.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 6e13bbd1aaa5..36fb216e7cee 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1976,6 +1976,11 @@ static const struct flash_info spi_nor_ids[] = {
 			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
 	},
 	{ "w25x32", INFO(0xef3016, 0, 64 * 1024,  64, SECT_4K) },
+	{
+		"w25q16jv", INFO(0xef7015, 0, 64 * 1024,  32,
+			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
+	},
 	{ "w25q20cl", INFO(0xef4012, 0, 64 * 1024,  4, SECT_4K) },
 	{ "w25q20bw", INFO(0xef5012, 0, 64 * 1024,  4, SECT_4K) },
 	{ "w25q20ew", INFO(0xef6012, 0, 64 * 1024,  4, SECT_4K) },
-- 
2.21.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
