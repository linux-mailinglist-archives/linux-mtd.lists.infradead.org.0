Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF53FA10F
	for <lists+linux-mtd@lfdr.de>; Wed, 13 Nov 2019 02:54:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ohpb/6PweUg4g3kpiS08BEeu8+AORvHqB9LoaLR4Z8=; b=AXRpG6hlBP+tDf
	y21vhJAAD3HpNZiG7OehsNNnzK4a6zqjgFioftefqwgZ/h1AmKuOhE91je/ZAjA63ggQWxHYU1DrV
	OJrAf4E+wWqCAcgc3maQLt0iVH3S6NqU0c/MPwZ88JNkRViy2SSLUvHZesu4SGJkgAhj196fftMof
	G5ufxHpVn7G+TbNakTeZMLmCCQuL9qm5I6hoC1JoJn1PDkYretVwR5LwOEZhyylMhP4BR8ZPI+eZM
	Px0Z/9xsOVkQBlYnJeyV3NfUr+hzaZVwj+0tfqTTqmvHb/Oxe0bb9Vkjlv/XCXGQlROoV6upidjuP
	KpyMCZyknW6HVH+rtO8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUhrr-0004n7-S3; Wed, 13 Nov 2019 01:54:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUhrd-0004lu-A2
 for linux-mtd@lists.infradead.org; Wed, 13 Nov 2019 01:54:34 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 42FE9222D4;
 Wed, 13 Nov 2019 01:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573610073;
 bh=KTkvUQEH+MTZwMLJGI6O1q79iMJJn6gCBtjwVFifjm4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RY93mNUVDjKuF5UyHDNJtndzLkDZHwJirf+dOM+t7DbXmmy586O5a5KBotbirqVOT
 v481YYUyEAtNpuHz0MI0PX7FguczU9LyWTTgjJyll1VHjvsT+xtproq6AT2+CEbNst
 p3sNOi5UkuVepSuNWuAIz5UeP14Q+55wxnt0kilU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 151/209] mtd: spi-nor: cadence-quadspi: Use
 proper enum for dma_[un]map_single
Date: Tue, 12 Nov 2019 20:49:27 -0500
Message-Id: <20191113015025.9685-151-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015025.9685-1-sashal@kernel.org>
References: <20191113015025.9685-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_175433_364399_520B9F80 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>,
 Boris Brezillon <boris.brezillon@bootlin.com>,
 Nathan Chancellor <natechancellor@gmail.com>, linux-mtd@lists.infradead.org,
 clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 900f5e0d8c9edc5dacc57873d22aee2ae699a8e1 ]

Clang warns when one enumerated type is converted implicitly to another.

drivers/mtd/spi-nor/cadence-quadspi.c:962:47: warning: implicit
conversion from enumeration type 'enum dma_transfer_direction' to
different enumeration type 'enum dma_data_direction' [-Wenum-conversion]
        dma_dst = dma_map_single(nor->dev, buf, len, DMA_DEV_TO_MEM);
                  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~
./include/linux/dma-mapping.h:428:66: note: expanded from macro
'dma_map_single'
                                   ~~~~~~~~~~~~~~~~~~~~          ^
drivers/mtd/spi-nor/cadence-quadspi.c:997:43: warning: implicit
conversion from enumeration type 'enum dma_transfer_direction' to
different enumeration type 'enum dma_data_direction' [-Wenum-conversion]
        dma_unmap_single(nor->dev, dma_dst, len, DMA_DEV_TO_MEM);
        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~
./include/linux/dma-mapping.h:429:70: note: expanded from macro
'dma_unmap_single'
                                     ~~~~~~~~~~~~~~~~~~~~~~          ^
2 warnings generated.

Use the proper enums from dma_data_direction to satisfy Clang.

DMA_FROM_DEVICE = DMA_DEV_TO_MEM = 2

Link: https://github.com/ClangBuiltLinux/linux/issues/108
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Boris Brezillon <boris.brezillon@bootlin.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/mtd/spi-nor/cadence-quadspi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
index 0806c7a81c0f7..04cedd3a2bf66 100644
--- a/drivers/mtd/spi-nor/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/cadence-quadspi.c
@@ -972,7 +972,7 @@ static int cqspi_direct_read_execute(struct spi_nor *nor, u_char *buf,
 		return 0;
 	}
 
-	dma_dst = dma_map_single(nor->dev, buf, len, DMA_DEV_TO_MEM);
+	dma_dst = dma_map_single(nor->dev, buf, len, DMA_FROM_DEVICE);
 	if (dma_mapping_error(nor->dev, dma_dst)) {
 		dev_err(nor->dev, "dma mapping failed\n");
 		return -ENOMEM;
@@ -1007,7 +1007,7 @@ static int cqspi_direct_read_execute(struct spi_nor *nor, u_char *buf,
 	}
 
 err_unmap:
-	dma_unmap_single(nor->dev, dma_dst, len, DMA_DEV_TO_MEM);
+	dma_unmap_single(nor->dev, dma_dst, len, DMA_FROM_DEVICE);
 
 	return ret;
 }
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
