Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CA3FFBD5
	for <lists+linux-mtd@lfdr.de>; Sun, 17 Nov 2019 22:56:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oOdOgN2TKAVWYBfgQIGhnSEUT+ha3q92n9AGXESaRhk=; b=ibJIZD5bdvi7ca
	3LM8gqYF7M7VODXRql2odHB4llVWp8cxNzFWjx33hRAP86xHV+Ez45DCqNkKv7b23Kzml+tNdAnqg
	dz/gHMCKkTA5Y+brU1YjMl7JBZA/k3mPzJGBY+4AaxORjDBEhJ1kt/UkDjN0+a7cnG57u5rnvbGO/
	/I4CfGUDjp16axmlRoCjdcuU7RgVGL/LNB4G+xCCGlL0U1VXgrWPYTW7aY6bzwrDw+l9Q/nXimZKj
	iJr4kW3kSZBot2ZMHdjGc8iW8IAVZGeAwHLfNJGu5zzAyMNWXmsejUECcathK7FzpqnQSwZEelvqd
	GD4c2bHZm5soxTnDVIPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWSWb-0007gE-4t; Sun, 17 Nov 2019 21:56:05 +0000
Received: from smtpimr.rockwellcollins.com ([205.175.227.52]
 helo=da1vs04.rockwellcollins.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWSWT-0007fm-0b
 for linux-mtd@lists.infradead.org; Sun, 17 Nov 2019 21:55:58 +0000
IronPort-SDR: 4ftK9HxdwUjTYl2ef1IWY17ZJSOJ1pUMbwRvD2aKZuRgaivUsTGh/OZNO8rPFMDHWKfBptFH9b
 IKo0P2TkgfFTdko7lSA/O7LGVv3R3YIu/ja5KDiuK3kNc/gZcVDba5xplW6xkWRsjy4lVWwIUi
 e15StjVEAdwOr5URAUv+/aeh9Bm8qRXOaJdCaMeu/ZFFLeiOsyOAvfSQRN6vqQ/jeY9KmeraHU
 nyn8nOQn2CfrJguY/VgxgbByTcwNNTmbMsn8CWPOgM7/xgy2W9lptuXHcHFKGJMEVGDPcvJxjX
 DII=
Received: from ofwda1n02.rockwellcollins.com (HELO
 ciulimr02.rockwellcollins.com) ([205.175.227.14])
 by da1vs04.rockwellcollins.com with ESMTP; 17 Nov 2019 15:55:53 -0600
X-Received: from righttwix.rockwellcollins.com (righttwix.rockwellcollins.com
 [192.168.141.218])
 by ciulimr02.rockwellcollins.com (Postfix) with ESMTP id B13082087A;
 Sun, 17 Nov 2019 15:55:52 -0600 (CST)
From: Brandon Maier <brandon.maier@rockwellcollins.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH] mtd: spi-nor: Add support for sst26vf016b
Date: Sun, 17 Nov 2019 15:55:47 -0600
Message-Id: <20191117215547.163120-1-brandon.maier@rockwellcollins.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_135557_127482_1446054A 
X-CRM114-Status: UNSURE (   6.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.175.227.52 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Joseph Kust <joseph.kust@rockwellcollins.com>, marek.vasut@gmail.com,
 Brandon Maier <brandon.maier@rockwellcollins.com>, tudor.ambarus@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Joseph Kust <joseph.kust@rockwellcollins.com>

Adds support for sst26vf016b, a smaller variant of the sst26vf064b.

Signed-off-by: Joseph Kust <joseph.kust@rockwellcollins.com>
Signed-off-by: Brandon Maier <brandon.maier@rockwellcollins.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index f4afe123e9dc..500929903f61 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -2538,6 +2538,7 @@ static const struct flash_info spi_nor_ids[] = {
 	{ "sst25wf080",  INFO(0xbf2505, 0, 64 * 1024, 16, SECT_4K | SST_WRITE) },
 	{ "sst26wf016b", INFO(0xbf2651, 0, 64 * 1024, 32, SECT_4K |
 			      SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "sst26vf016b", INFO(0xbf2641, 0, 64 * 1024, 32, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "sst26vf064b", INFO(0xbf2643, 0, 64 * 1024, 128, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 
 	/* ST Microelectronics -- newer production may have feature updates */
-- 
2.23.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
