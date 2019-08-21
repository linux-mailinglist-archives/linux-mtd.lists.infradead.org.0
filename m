Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F41980AC
	for <lists+linux-mtd@lfdr.de>; Wed, 21 Aug 2019 18:50:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ILlfj6Q79/VgEy5e7oRZWfB5IVHWD93xgt+HGTuYRq4=; b=nfK
	gLOYzWJywtYgbsjzsAcPXy4gjRgg0CGUHEwTrAIaYqKg79vYwly55vLKhTFIwdZIFbZSr2trnCRBu
	9EMjvOOvkadoveytJxtTZAWcSZXx1M7QgOf7bBf1ndt/NNrkanA075oy1YpE3aiRRwRZV2YjAFknz
	GxvwI6KywQwzB0mT1mCmtCiWOnjasTU4W9E+6APHN09eQHvEmfn4ZEP5ds/zhFRVbb54vmeqEUUUx
	5hlfhMU05RZz95BJ8BhvIrey5lFrVW4nnTdcU1zZG+BNjXe2GQHK2/X9+4O+u61mRm+DoML67zB/q
	Sw+0o6rs7I/ugcs/AGljnLbLZUoraOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Toe-0002zi-9C; Wed, 21 Aug 2019 16:50:32 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0ToX-0002zG-7m
 for linux-mtd@lists.infradead.org; Wed, 21 Aug 2019 16:50:26 +0000
Received: by mail-pl1-x644.google.com with SMTP id y8so1618720plr.12
 for <linux-mtd@lists.infradead.org>; Wed, 21 Aug 2019 09:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=vOsVwGQVH1pTZWvq9RI6vtuGHBdFwAhJmBlw43kNz3A=;
 b=FQ72VsxxF827h9uCn8Oe0rXRQviu1GeO5KJ5ZnYaHmnTcsTrXDgA02aZoVxzzwkPnK
 81t2/yP7/Lh7Oh0Aaia/sF/5LwkDv02xopWWgzbOzZzAZd50EtXiTyl8ujxFMnINCVbf
 bJ18EY9IEauG17V36C72VrrrR0kF4F4iVOvPaEMCscYx0I/5U/sbOdyuxpKJXLf5d0Rf
 d2do7MjrXdckd/cq/oaogcJm7m5J+Gz6XdjW9V/Ug+yxW5JpExkHXtgAIen8MeJGo0lG
 +FspHDWBgJD0uJsy6EzwKkTQVTW7XYSVSxALZ8pbx0knLRoUVrbw+gJL0q6j+RM8EH2V
 NCjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=vOsVwGQVH1pTZWvq9RI6vtuGHBdFwAhJmBlw43kNz3A=;
 b=qE0r42qWG9CBzDfBsecF74BgLh1g3b73q6L14xnARO+OZRl/gsdSrH+jHdlqvWQhOu
 MGP760+DtygByOAtE+rX4tIOiJVY3gq2j9L9cGCITx+92OHuQH+h2bxQOLVUv6Xnbi2n
 0PzN5HLOGI2r7qX4CyFeolqlNTkmOnPOGflDNDPtgDrIo//fFl4RBhhfdJblTuqvq+Wn
 0DMDco6cGtvsT3Rjg6KNwTcIarGswqG07Vlm2SQC8sAvtR8OhNjXtquiF8tde+AeP+Uf
 WoFzyo/SbCXig58HMaplBMDkfaRx37UF5vzUUQ/eB6b2EYk57Tg4cAULO7FIcETcBols
 QzIA==
X-Gm-Message-State: APjAAAVvMBiuDAgPpgzcf3nVhp3OlVPx3sGhulQpQNXV2ejRhtFLiyDP
 EUSVvvzAHHAShfovrztg9pEAfOnAm4z2HQ==
X-Google-Smtp-Source: APXvYqysov090aoIXmaNouZ7wKZfGapTlQ8KNwROhLrDyXYtHem3aHvFouvEGUr5PJrADORE+bfYHg==
X-Received: by 2002:a17:902:33a5:: with SMTP id
 b34mr2368689plc.286.1566406224148; 
 Wed, 21 Aug 2019 09:50:24 -0700 (PDT)
Received: from localhost.localdomain (M106072039032.v4.enabler.ne.jp.
 [106.72.39.32])
 by smtp.gmail.com with ESMTPSA id j187sm33956245pfg.178.2019.08.21.09.50.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 21 Aug 2019 09:50:23 -0700 (PDT)
From: Tokunori Ikegami <ikegami.t@gmail.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH] mtd: cfi_cmdset_0002: Fix do_erase_chip() to get chip as
 erasing mode
Date: Thu, 22 Aug 2019 01:46:51 +0900
Message-Id: <20190821164655.5860-1-ikegami.t@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_095025_281142_49110A08 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ikegami.t[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tokunori Ikegami <ikegami.t@gmail.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Richard Weinberger <richard@nod.at>, open list <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, Liu Jian <liujian56@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The chip state is set to erasing by the function after getting chip.
So it should be to get chip as erasing mode at first.
But previously it was to get chip as writing mode then fix as erasing.

Signed-off-by: Tokunori Ikegami <ikegami.t@gmail.com>
Cc: linux-mtd@lists.infradead.org
---
 drivers/mtd/chips/cfi_cmdset_0002.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/chips/cfi_cmdset_0002.c b/drivers/mtd/chips/cfi_cmdset_0002.c
index f4da7bd552e9..74b07a0bdaa2 100644
--- a/drivers/mtd/chips/cfi_cmdset_0002.c
+++ b/drivers/mtd/chips/cfi_cmdset_0002.c
@@ -2344,7 +2344,7 @@ static int __xipram do_erase_chip(struct map_info *map, struct flchip *chip)
 	adr = cfi->addr_unlock1;
 
 	mutex_lock(&chip->mutex);
-	ret = get_chip(map, chip, adr, FL_WRITING);
+	ret = get_chip(map, chip, adr, FL_ERASING);
 	if (ret) {
 		mutex_unlock(&chip->mutex);
 		return ret;
-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
