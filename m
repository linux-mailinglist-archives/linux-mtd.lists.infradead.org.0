Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9395D653
	for <lists+linux-mtd@lfdr.de>; Tue,  2 Jul 2019 20:41:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3FPyPi8lDM5bIwnPiZh7UuORSvMM+tXnpbJ9qZMFAHw=; b=T8/WMIkf/ChXEtw3cjB+Hl3Dx1
	QFtV8V2K67/4cHemYN9XMJmFdBU6B2Yzfe5C2Z7ZyOAT2XJhUD2Ryyw0OqKqcVbRjXEh5ls+Pc889
	vdYfqXC0u4uB8h9fp60V6qY9ydNo70hR4sEMPu509BKnyPhbDboGjRDmv0nL7a0Qfr7v/HWs1h4cN
	WuycgujTPIQ0GimNE+Ml8b5PE0UKvdpgYM1rYk+w4Ijlx2ASHndjHwH0KllPVnZTTX6NO+nXcoQng
	z0flPrZbBxRGexpSN45+imsJ3WMEsqP1r/W/8m2QdQQnMGAQxKRX2wrBgh/luFtrxqZwOuWziHSTW
	gLZzdUYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiNi6-0004Lr-VX; Tue, 02 Jul 2019 18:40:58 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiNhS-0003nO-Fc
 for linux-mtd@lists.infradead.org; Tue, 02 Jul 2019 18:40:20 +0000
Received: by mail-pg1-x542.google.com with SMTP id s27so8116055pgl.2
 for <linux-mtd@lists.infradead.org>; Tue, 02 Jul 2019 11:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0sF1tajbszgBkWrij+qh2Snun7Hdtkh6IqSmd5cLEoI=;
 b=DtHMYn33VMItS9Mqb2A54QLPgAHX3jNXlN2eS6J91/O6uY1z5UrJtJLI0XK57V19bz
 ndWySJwRfhNNtwkOkV5slrphsfMsZDy9Ei8txwVJgxuU60vPZIrno2FdLdyFXDLNcE6E
 5N6i/WXXz/+a37iqGWmZFlMhdyuWuV43td52R4cIU2sNVxvvg35pGctcBOI6Vpu4nZRb
 c9QBstZskl4Uu34b8ec+cRPQod7wIw9rN5xvDbD6o13VJ1ssJBLUUelzdmj9qc0wOOK3
 f7SpWpXVUGyQuWX/0bw/cpN/xiuYaC0qTsm/sPgKvO0jueJtIhCE9W/pr28seC2qlEId
 kfNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0sF1tajbszgBkWrij+qh2Snun7Hdtkh6IqSmd5cLEoI=;
 b=etxZxupe/Lid7K+/HBYkQjCh+v7RZIDDHRHs03ZG5RoKkMhQg1D1qh2G1DSv5mbPJl
 Vu5QfRYpcQBQwKuO0+xbLCN5Ga6KQD5atzhBX3O7ozc1KgyZhgFtzcqGo1iW716zDWXK
 Uf7YMDUymPjydDe+wHQDr7ekHRmsfqZDE4r8gWWqXwdt3bnJelrmlCR0QLpst9f/K20W
 k4r79YTmQGqd0xG+OZIkg++A6dLiUG+1VqhMHxAIULbChQGie9LOpHnU68g0mmmtHJqj
 wp9y/MQR5WZLx6QxpPcU4WNvqqUYsp/yrJRr/2MqNtOhd+rSc5iDmurkQ2MGFcXpWNmu
 5L2w==
X-Gm-Message-State: APjAAAXK8CSQlB79Eb5N5i1yvuugS3G0t4cPoBDPyMuhLt4A67PZC1j2
 AcVgGo0RRXdEnITyzmV845eltQ==
X-Google-Smtp-Source: APXvYqzBLTVQUac6Xd9mE/tyVVz8vJIhTDTtyInPwU1KgqLrBTp0CAZs3Cu/UvLMDc9hMl7J+7xLzQ==
X-Received: by 2002:a63:610e:: with SMTP id v14mr32174956pgb.221.1562092818008; 
 Tue, 02 Jul 2019 11:40:18 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 e10sm15065327pfi.173.2019.07.02.11.40.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 02 Jul 2019 11:40:17 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: marek.vasut@gmail.com, tudor.ambarus@microchip.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com
Subject: [PATCH v7 2/4] mtd: spi-nor: fix nor->addr_width for is25wp256
Date: Wed,  3 Jul 2019 00:09:03 +0530
Message-Id: <1562092745-11541-3-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1562092745-11541-1-git-send-email-sagar.kadam@sifive.com>
References: <1562092745-11541-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_114018_593692_3CB20A77 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
---
 drivers/mtd/spi-nor/spi-nor.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 971f0f3..315eeec 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1860,7 +1860,7 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
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
