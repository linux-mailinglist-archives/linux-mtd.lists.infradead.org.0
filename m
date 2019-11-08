Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D081F462A
	for <lists+linux-mtd@lfdr.de>; Fri,  8 Nov 2019 12:40:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iTuzxpIU4ZcAU1fPF575h5QVhCxCt1yo6a1Z5vjBSmo=; b=m0E+ob0qxgeMWz
	5mkDTSYSuj8c3odkiBI8b8HuQty5SyR3od20k1JeHfWRlbmdXa7/a/f1vks7vk7wCUqHSe8S/gU+Y
	OuvknkmJmnXHSGJ9KtIVpLxhxITd3VO+tbvK+4zWnB5FrIzgtxvER6kBsKlFe+FwyDLPF0h77Crdz
	Mi979te0EpeHpg1wDPUqGnwbZfrq2ipFdSWnlexu17FTtE4Ph4oXSgpSmg1D6lW4NbJNZcx5slKib
	4nAMInQG9UhSORn3ojImKwtTS8dbNg15uBCvdmm/pqirkqSM22JhBJEM5mkyEhvD7es8a8XATCu88
	v7RXlpcLm5gEp+t1/wOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT2dE-0001A2-8X; Fri, 08 Nov 2019 11:40:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT2cS-0007mn-AJ
 for linux-mtd@lists.infradead.org; Fri, 08 Nov 2019 11:40:01 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E9DDF21D7F;
 Fri,  8 Nov 2019 11:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573213199;
 bh=HYdL5GQ3OQvT0aFNudvAPyRyi+SuJmdXbbSLSZAqU6U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WvTe288PSPznFlLA3mWEsffPt+x81Lu38kGyycD5lRZnMGBp7Yx0CFjlejmtfu/zU
 K2HzCFdqL+gYDyUprHqAvC04hkoJ5oqVhcZepurjWnXBEea/lHH9aVnsD4Psf0deT+
 21l4UMKg5i2EHgu/w17Lts1yfupC0yMZStthGFV0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 083/205] mtd: rawnand: qcom: don't include
 dma-direct.h
Date: Fri,  8 Nov 2019 06:35:50 -0500
Message-Id: <20191108113752.12502-83-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108113752.12502-1-sashal@kernel.org>
References: <20191108113752.12502-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_034000_418803_A49ED28D 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, linux-mtd@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>, Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Christoph Hellwig <hch@lst.de>

[ Upstream commit ab0fb17c7d46406e1aac2dda265874751946626d ]

A recent commit removed the incorrect use of phys_to_dma from this
driver, but failed to remove the dma-direct.h include, so do that
now.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/mtd/nand/raw/qcom_nandc.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/qcom_nandc.c b/drivers/mtd/nand/raw/qcom_nandc.c
index 880e75f63a19b..07d8750313fd6 100644
--- a/drivers/mtd/nand/raw/qcom_nandc.c
+++ b/drivers/mtd/nand/raw/qcom_nandc.c
@@ -23,7 +23,6 @@
 #include <linux/of_device.h>
 #include <linux/delay.h>
 #include <linux/dma/qcom_bam_dma.h>
-#include <linux/dma-direct.h> /* XXX: drivers shall never use this directly! */
 
 /* NANDc reg offsets */
 #define	NAND_FLASH_CMD			0x00
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
