Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D49C28B8B9
	for <lists+linux-mtd@lfdr.de>; Tue, 13 Aug 2019 14:40:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uAhmNA1zYM90hrW/QoolvK1QyubzndGKO5VZQj91sE4=; b=uSYTsjQWq3ZrgF1zGdnAFipTNh
	aDKikKD4qgCtliRLhpS/FjOjbGIdTcTIt+HBUQbY9zPjOU2FrJRSeMhNk9JST9Qn60Wfe6RA/P/e5
	bUIm6odJLTi7XxTXoh+Gy3xged4vv+n8MGUPxEY35F32DqHg6bXahBufVaI7gCEeypRMbf0QU8JsS
	Kt/LIx8RdpYPPcqj0mbhhm0EqG9RlFC30Ns8t94/FEee5rzvpvNp+Ajz+/+zxe6fywqzGG4Z7CdcM
	gNNWR3z8ltbE7arAnzi+bCjRpE2AXvyvrR1WIsf2PXi37cL/TPxw/xoUu2reTzxfosmhx2tpm157O
	nWewdRWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxW6b-0002LL-Es; Tue, 13 Aug 2019 12:40:49 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxW6C-000223-LF
 for linux-mtd@lists.infradead.org; Tue, 13 Aug 2019 12:40:26 +0000
Received: by mail-pl1-x642.google.com with SMTP id bj8so2221289plb.4
 for <linux-mtd@lists.infradead.org>; Tue, 13 Aug 2019 05:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HuZqhFloNsXdkXS3ECm5uIQkv6TKXS63NVePQ94bhBM=;
 b=ktbcE/AL4sb1aIODwft8dRlSCxGZ43zSLC5NCthdXu4fWv5QoHCFZU2fpMaxZWeFFY
 Qyq129wZuAwpk46h68SWoNxmAVjuOoFu54bPyrjGgFvyl5uYNEM9o8godLU+YreMQbZk
 D+aGrUKbdJxHvTWmrPyILeXNH6/s6byaPeKQydLWHwMyg9k2v1D5LdnVcMBqendI1Ehh
 /L+VfdF2mLdy/hYw2Jmc5KAGMdNRZl6i1DNZTI2iYYb+u+BViLHTw/zSc79rm0CfYV3Q
 Yc3G7PPn1gJNXOElBy2rib87uEBdqv/3Mp/FHGJZzX1MEDJCi/9ESXu9+ptqDrtC6Om3
 xjkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HuZqhFloNsXdkXS3ECm5uIQkv6TKXS63NVePQ94bhBM=;
 b=kaFJPakhmpTbZthYgvQZMzN5HpmLDNjlNek9u4G3N4AH9XzRt999SPRyqPiSn/p5Av
 mQ80dGTCWoSTBLDd/raDIQIDjSNhG2Oz67nd3W3GldNuA783dPBUJO/Xh0Om8NqH9OAO
 4khn10AFlk0QEHTpUTZtg64LKj/Ko9S1UIpHwN8g1L7vLhxmezTYXf0X5GPhsPCdi/wu
 rTUy5n8nYgdRPRrKHO8DBYB8RhbGA+wKbqeV6238dqkf/BEEbT3V/G4Ji4eZSUNfTJqS
 Idk9dgbeeX1JPtUf+X/bfATiS9741plrVxsWGyc752fjsVBjt0RYlNSWUv2nySD1CLaV
 lBEg==
X-Gm-Message-State: APjAAAW68dVCsHteQYVBQhjSfegYosxjryE+v/yRlp6GkPFX/tYOtkYE
 inf+zpJ2WE4oas+imWWu7ZcWqw==
X-Google-Smtp-Source: APXvYqz7sJ7/aKi3Wqp7p4CdH0zx43soAGpeV6N+iBXq71zY2GoOnkwB5xc00uKcMcxN5GsX3ImK3Q==
X-Received: by 2002:a17:902:d890:: with SMTP id
 b16mr36912634plz.315.1565700024307; 
 Tue, 13 Aug 2019 05:40:24 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 v145sm14758467pfc.31.2019.08.13.05.40.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 13 Aug 2019 05:40:23 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: marek.vasut@gmail.com, tudor.ambarus@microchip.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com
Subject: [PATCH v8 2/4] mtd: spi-nor: fix nor->addr_width for is25wp256
Date: Tue, 13 Aug 2019 18:08:13 +0530
Message-Id: <1565699895-4770-3-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1565699895-4770-1-git-send-email-sagar.kadam@sifive.com>
References: <1565699895-4770-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_054024_748736_BC9E1ECC 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
index 6635127..cb40b1b 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1949,7 +1949,7 @@ static int spi_nor_spansion_clear_sr_bp(struct spi_nor *nor)
 	{ "is25wp256", INFO(0x9d7019, 0, 64 * 1024, 1024,
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
