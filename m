Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C9DFF225
	for <lists+linux-mtd@lfdr.de>; Sat, 16 Nov 2019 17:17:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E3NtOEcwVDRLyLwKd9n8cjB72fGIDyt0/yh2uDq6R9M=; b=ly2vbImOfUs+op
	XZ4Br5WT8oykaguE884ObO01UWr7jQhJOwEbLn8cOMqk2F+cUBT+tDxeA7j7AqJPFxpCNtfwuyalD
	ZBvcZDX9La4wJ7kT27E/WFYhFCpKceRkOjx3FE/RhEKESuQ65JRMA7kXURTqLKk9T2wDkeJwZE0B2
	oT7+/PnRXZdLgrB4VwykCKHAhh7j8nxmDFuf/ZS5gnEMsv7uvLLR3EBHByiI0d2NSymuCmQNeAs20
	29w+f9k3RNApxHI6XsFuCWMPt5JmsdhNw23nX7nZR8UW58lyQCGGomebuMOxynw8a1sHZ7t1yYbt8
	sE1BtooNbt3KzouIkjig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW0lD-0000KM-KY; Sat, 16 Nov 2019 16:17:19 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW0l3-0000JY-LB
 for linux-mtd@lists.infradead.org; Sat, 16 Nov 2019 16:17:10 +0000
Received: by mail-wm1-x342.google.com with SMTP id u18so12776199wmc.3
 for <linux-mtd@lists.infradead.org>; Sat, 16 Nov 2019 08:17:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LWbF73smpS+zM5jIH3N1hRxUyU1OOypZVjmCvga6dfs=;
 b=ks6wKN6oAzKhvxz8amhfzRL0eEyGLOQKTxgVDNTtonRy3HDzc4Fg77SuwOvvDjA9LE
 0Ml4Dw6nL4b8PC6GcqIPm7MjlogNSGkNzmtofnbPsjMqs4LpIPkahSwamOKw3kVEZlYH
 Orm2sW4k+0150DhbI84AIvKlzoNo/pcVYEWEAeLjn5Utp9BhD0F9CGGvM+KGEA8fpCAK
 BaeCSNxPdYjovMStSkrlkn6L9x+KdsOHnWBHLEqBnDrd2qlGt256blRJWjYF5EKI/72V
 OcB0SogD9F5rcwJoIVm6SeExbRtCsKWNlGR+UwWv1teIK8cKgqSXAE6I0HGYfUQWBzxy
 4g2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LWbF73smpS+zM5jIH3N1hRxUyU1OOypZVjmCvga6dfs=;
 b=TO6IdBZlR6sIEZBMhxHMrBm+vNFjywR0l5bIXTihAruUfWtaKft4epVHWWRNUqM6wR
 ekqoorjG/FWQp/Pztc0YR/I6EFMCcBan2F0GDUCZK/nDnUMATtawuJT4Lm4+Cf8DRH1u
 BkWfjgIuZIsdzLmNE7khJAZi3MyvirtiWJiHfrtMQqXTWZdb/oDZtbbuHDW299U+VGWs
 MRMS604prMJDvRP++VoVNzhi11+0UwFc04nBbhSSkJqo50AeoAEzBPZEObFOq4j/9E43
 e0dfyMvFQwRP4zf6u7CRx6gBYix787JpANWOm9H7f2DOi70N4y6zWHnwQOjhCSptedGP
 LFXg==
X-Gm-Message-State: APjAAAUuVH4aYvuXdJHDm7fuYmaDVcD0upg5MeUwnLpUTlJZydre0/5f
 iibZ6zygQkvY68cuJEHhgwU=
X-Google-Smtp-Source: APXvYqx3KEE4eDXBe5mLffSZU7l7TvtisVNdRsL7T1ZJhZrE/iAY/0A23dCCW5dBKs9yOCEawnqLXA==
X-Received: by 2002:a1c:98c5:: with SMTP id
 a188mr21048904wme.133.1573921027607; 
 Sat, 16 Nov 2019 08:17:07 -0800 (PST)
Received: from localhost.localdomain (93-143-204-198.adsl.net.t-com.hr.
 [93.143.204.198])
 by smtp.googlemail.com with ESMTPSA id i14sm2724288wrn.31.2019.11.16.08.17.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Nov 2019 08:17:06 -0800 (PST)
From: Robert Marko <robimarko@gmail.com>
To: tudor.ambarus@microchip.com, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com, linux-mtd@lists.infradead.org
Subject: [PATCH] mtd: spi-nor: Add 4B_OPCODES flag to w25q256
Date: Sat, 16 Nov 2019 17:16:56 +0100
Message-Id: <20191116161656.13973-1-robimarko@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_081709_719355_7ED2F797 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robimarko[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Robert Marko <robimarko@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The w25q256 supports 4-byte opcodes so lets add the flag.

Tested on OpenWrt under 4.19.82 kernel on 8devices Habanero.

Signed-off-by: Robert Marko <robimarko@gmail.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 1d8621d43160..6d912ecdbd9a 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -2479,7 +2479,8 @@ static const struct flash_info spi_nor_ids[] = {
 	{ "w25q80", INFO(0xef5014, 0, 64 * 1024,  16, SECT_4K) },
 	{ "w25q80bl", INFO(0xef4014, 0, 64 * 1024,  16, SECT_4K) },
 	{ "w25q128", INFO(0xef4018, 0, 64 * 1024, 256, SECT_4K) },
-	{ "w25q256", INFO(0xef4019, 0, 64 * 1024, 512, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "w25q256", INFO(0xef4019, 0, 64 * 1024, 512,
+			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
 	{ "w25q256jvm", INFO(0xef7019, 0, 64 * 1024, 512,
 			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "w25m512jv", INFO(0xef7119, 0, 64 * 1024, 1024,
-- 
2.23.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
