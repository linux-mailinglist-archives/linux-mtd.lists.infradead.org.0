Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90699B67AF
	for <lists+linux-mtd@lfdr.de>; Wed, 18 Sep 2019 18:03:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wc4uBZhnV3ueycs66L54hFn0iBACxbu8m9m0Ttqvfd0=; b=HxAINtnrtSxq/vEieJDWMhqqNt
	k43FKKz1ryoxvJexZPdNcmx0P985VaLIt/5u4lBRp6pAeN3mcPTVcESzfoQMwMc/r+J/8zZyufzzs
	hC1Q+oPBoB07BtEY+hgtppYRTVk5biVYfFn4IIzAs0grJxdtT4mprf9ZGVEUo7sv65mctlZz510GU
	uLdk9OVlNBJzucKrwuFtVijl7G8k8CyiK6M4s5XpBczDSSFFEbjf+y/fw4GaYkYvVHQzaxDZmt+Yd
	0uHjpzjPZBAIBMo95dfR92unmbuUVzbMJVekZDXE2MXpgGH8wxKk8GK4PSKzUWeD08//O9KV7GUse
	nibJiWwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAcQQ-00081A-3G; Wed, 18 Sep 2019 16:03:26 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAcPg-0007YY-V9
 for linux-mtd@lists.infradead.org; Wed, 18 Sep 2019 16:02:42 +0000
Received: by mail-pg1-x542.google.com with SMTP id n190so118794pgn.0
 for <linux-mtd@lists.infradead.org>; Wed, 18 Sep 2019 09:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GmcLSQu6EQAPA4h2lTeOhp0gk5DIW9Hi/4PZD6ne2GI=;
 b=lHwAihyQ01mNJtRlkEW+zkPVzH7UN8YNJXaBctlQNpIunIvVg6WN0WEdXI8t5rk2Bi
 RUrfAstL9JVlFpP/c3KOvWqDNzrtR7+IYAS7TGcOoB46wOLsdiXhx1uuo0MWNqsHm9V7
 h3w2jHTh10BIcHn4CDyjqjbNZCdCCyQhafdFmzvxsC7i/5YRosUbwiwdaF8XZoZ/Ikmt
 4qI+8/4UTWN9tlpuJGLujevehagKhBMf7TgEJBy3gpC9MDHln5DN6jtkSOOxYLz8F7Jb
 g4S9sB51TTBrRobOH22E+ccjjnVfhGuoxzGV3N4Ze3FC5JzVyvwAnGspg3cF/W3bdQqf
 lyUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GmcLSQu6EQAPA4h2lTeOhp0gk5DIW9Hi/4PZD6ne2GI=;
 b=f5jWXodmnqT/Pn2odoaU9n9Z8t2ytkNd0QKnre/9kieck5PdBN88ozC1PdnL/SciVj
 pEkXp7Zf3tumtFMeXcy4WxowECqZHBXgR6L9H+nqH+WqrGfx1XH4ZUX1je2o2uwBP+YT
 /K7bzhHHuFF73OCFo+P5D3wVJYFgi+SgE/DVb+ws4B/5jlDfTwQsQeiH/IA1ceRMfnfW
 SyAf4h3Y0g8XrsOuNEei1I6ihI+4HpDA5LBaBQJbdflPMKkv7fEZqSgWgk+rG8cSX9AE
 m4j9tJ9MBwLJpodRTQhl7K7Yl0IaIy7sUvHO4dZaZog3/qjfFkDuPDwNICdkcv02BISh
 HiYQ==
X-Gm-Message-State: APjAAAXjbHkV0bq3m67+/lSQAvUnhJdReZXDDLo9UQ5TZfrQxtPIW3N4
 vd4DKHvSESSsJkqG2cAcTofYaQ==
X-Google-Smtp-Source: APXvYqxqsqKgZ2IZgToJhuCvJIAOwPTlNQxrTbdYExiHkeaBfu8MCmPQqWqbRpaNvkXeYJ5WvqewIg==
X-Received: by 2002:aa7:8005:: with SMTP id j5mr5077266pfi.50.1568822560215;
 Wed, 18 Sep 2019 09:02:40 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id g12sm9872379pfb.97.2019.09.18.09.02.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 18 Sep 2019 09:02:39 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: marek.vasut@gmail.com, tudor.ambarus@microchip.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com
Subject: [PATCH v9 2/2] mtd: spi-nor: fix nor->addr_width for is25wp256
Date: Wed, 18 Sep 2019 21:31:45 +0530
Message-Id: <1568822505-19297-3-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1568822505-19297-1-git-send-email-sagar.kadam@sifive.com>
References: <1568822505-19297-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_090241_336572_97897BDB 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: aou@eecs.berkeley.edu, palmer@sifive.com, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, Sagar Shrikant Kadam <sagar.kadam@sifive.com>,
 paul.walmsley@sifive.com, linux-riscv@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Use the post bfpt fixup hook for the is25wp256 device as done for
is25lp256 device to overwrite the address width advertised by BFPT.

For instance the standard devices eg: IS25WP256D-JMLE where J stands
for "standard" does not support SFDP.

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 003c1c7..75e8560 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1949,7 +1949,7 @@ static int spi_nor_spansion_clear_sr_bp(struct spi_nor *nor)
 	{ "is25wp256", INFO(0x9d7019, 0, 64 * 1024, 512,
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			SPI_NOR_4B_OPCODES)
-	},
+			.fixups = &is25lp256_fixups },
 	/* Macronix */
 	{ "mx25l512e",   INFO(0xc22010, 0, 64 * 1024,   1, SECT_4K) },
 	{ "mx25l2005a",  INFO(0xc22012, 0, 64 * 1024,   4, SECT_4K) },
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
