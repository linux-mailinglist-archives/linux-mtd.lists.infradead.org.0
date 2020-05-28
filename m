Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F12BA1E54B8
	for <lists+linux-mtd@lfdr.de>; Thu, 28 May 2020 05:37:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fyYR52HnLTwVZRxRSZ3QFiy7C0hlbmCFvc1KDKzkGDY=; b=aUr/JWmfK1EDdY
	JFaM0mWgjQPW/NUVtYnvV2aQEEDD5lzRUw2ccRodfs3lE6bXm/YV+XPLyeJOO9Zu5qGtAk6I0sS4w
	9BFVUbf5mgb3WtHaFxzNQkl/iPgVEvtsGlQgsgE6xH1/yyNYCP8sf7bi14z1J47YBRaEnio5YKUTd
	1ymp19xQ1uktMM16zXYBgUY9kbSYXDICukOi2AoV7o6ykdqieH3cTIqrnS5Igc4qxkjfNaLvq86hH
	V0zWEEHpEsVAcmMV+jTBWpMU64KBEWh1mgBF9dr8mIUvAHTHhYUKVH4tHmx+tZuBYjNtDNH0akw6L
	rJDmQHH8kc86An1luH9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je9ML-0008H6-Sk; Thu, 28 May 2020 03:37:33 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je9ME-0008GV-6a
 for linux-mtd@bombadil.infradead.org; Thu, 28 May 2020 03:37:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=CRlM6H0LUK2VWw79PmFDlAoLQeq4YwUzY95hAqpjs7Q=; b=dZXlQCOzLtMpeDEUmRFU7fyFRk
 aXuDzXVP6Vyt/Tq/z0U+3hhrXYoqFqCCTT6pVdwh/jvMEfQvf2dB+2S9uIl199G7JwmEri6k23idf
 1PlnsZmKnDQ/NQWWoj1wUt29n4g+bA2xJ8WWsM3rfyZVtKILG5gVgZHqDeo5+acwpO+PetYV5fFzn
 Rc1zQfI1K5hhSlymdWUgSjQjCaVDgpqGIQ3ZKMqdoebZcCpgi/g/3qOyRRu9XFUbzemKUbr58Wsaa
 8zICD84DoxaG3N2Bmmfmhi+LYeEsDDShhGS4ebUAZ8yVSFeJ9s93qw4V3WnyCiwSeJ8o55DyB6ei9
 FJvns7Ew==;
Received: from smtpbgbr2.qq.com ([54.207.22.56])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je9M0-00086l-FV
 for linux-mtd@lists.infradead.org; Thu, 28 May 2020 03:37:17 +0000
X-QQ-mid: bizesmtp18t1590636991tn6x3lor
Received: from localhost.localdomain (unknown [119.145.4.99])
 by esmtp6.qq.com (ESMTP) with 
 id ; Thu, 28 May 2020 11:36:01 +0800 (CST)
X-QQ-SSF: 01400000008000Z0ZM30B00A0000000
X-QQ-FEAT: 3fDsO+rzVm6vxUQZLxLhjvVN3N9mnI50eByOaPlvNNW98meQoerJ388iDn2Sz
 xqi9KpNqgdcUPOaiG4HtFazoNKR8I6AuRTnrXAlxSKp3GNFWwp/MRRlvO4rRVamgnLrmzjI
 O79MybbaR2J/XTjlKsN/8J9A5Gy3iQ+a6OBBvs6ckwTevUWjNTimwSWrbc+YHDrz9l8enbx
 wil8DbkYIzGQn5ESAZdQtKFLzwyBdthmHOs8/W72BoDWfvdxxMgbhU2uh1CTC2NjUP+tJt9
 MCo2wu/FvFNuZT0hmU/sHlI/BGK9kuMGcQx/+POu5Uv3yW9bFvbGr2yd6S+0XmiqONLFIxj
 5h7n1R7UuLWG4Q+ZKg=
X-QQ-GoodBg: 2
From: wuxy@bitland.com.cn
To: tudor.ambarus@microchip.com, miquel.raynal@bootlin.com,
 linux-kernel@vger.kernel.org, drinkcat@chromium.org,
 linux-mtd@lists.infradead.org, stlin2@winbond.com, vigneshr@ti.com
Subject: [PATCH] [v3]mtd: spi-nor: winbond: add 1.8v SPI NOR Flash IDs
Date: Thu, 28 May 2020 11:36:00 +0800
Message-Id: <20200528033600.26105-1-wuxy@bitland.com.cn>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:bitland.com.cn:qybgforeign:qybgforeign5
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_043713_452945_F2F23F98 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.207.22.56 listed in list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [54.207.22.56 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: wuxy <wuxy@bitland.corp-partner.google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: wuxy <wuxy@bitland.corp-partner.google.com>

Winbond has new 1.8V SPI NOR Flash IDs,we need to use the SPI
flash IDs in kukui series,this patch can support the new flash IDs.

Signed-off-by: Xingyu Wu <wuxy@bitland.corp-partner.google.com>
Signed-off-by: ST Lin <stlin2@winbond.com>
Test-by: Nicolas Boichat <drinkcat@chromium.org>

---
This patch copied from:https://patchwork.ozlabs.org/patch/1150756/,
The original patch is invalid,so re-submit a new patch for this.
 drivers/mtd/spi-nor/winbond.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/mtd/spi-nor/winbond.c b/drivers/mtd/spi-nor/winbond.c
index 17deabad57e1..cda4f8847bd6 100644
--- a/drivers/mtd/spi-nor/winbond.c
+++ b/drivers/mtd/spi-nor/winbond.c
@@ -61,6 +61,15 @@ static const struct flash_info winbond_parts[] = {
 			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "w25m512jv", INFO(0xef7119, 0, 64 * 1024, 1024,
 			    SECT_4K | SPI_NOR_QUAD_READ | SPI_NOR_DUAL_READ) },
+	{ "w25q64jwxxIM", INFO(0xef8017, 0, 64 * 1024, 128,
+			    SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			    SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "w25q128jwxxIM", INFO(0xef8018, 0, 64 * 1024, 256,
+			    SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			    SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "w25q256jwxxIM", INFO(0xef8019, 0, 64 * 1024, 512,
+			    SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			    SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
 };
 
 /**
-- 
2.20.1




______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
