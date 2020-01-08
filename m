Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D423133AB7
	for <lists+linux-mtd@lfdr.de>; Wed,  8 Jan 2020 06:13:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3wVheRgLGVATPGWDgkJgTA7kBmZv9Tq5tnAfhlrjflE=; b=pa/sRogSqYO5JH
	VHnplExLwAAu+HioXAP1EXERDtlXPu4VELDf5XYky7f17oBMEI5LRtc9QziFXhSBNf71ec1I5B6eq
	OQUW8Br7dYozcb/fy3yADWwLm9LU/eaD+jUZ9zLGqH3w7c6/+7ZxNHNda/CEc1VYpow4iYw1IjeMx
	hZZ/GI1VLQz+lg3+RD91q5jbHscOF0taDBLqbkjcMggSbuw9mqKERmcBrM7YYgGAkmXFxdcRB4hXz
	1ijG7YMpgL0FvNYHIfLVGojuGLk5VtD4sjhH+h8QFdNg0mvWjRkyoYOPFB5SXCgcbog1IoRV6hmZY
	6q7OeM0+uhUOQk1CErwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip3eq-000182-Mq; Wed, 08 Jan 2020 05:13:28 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip3eh-00017j-GK
 for linux-mtd@lists.infradead.org; Wed, 08 Jan 2020 05:13:20 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0085DE3h092179;
 Tue, 7 Jan 2020 23:13:14 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578460394;
 bh=K6TSP0qpy5G2KXs5Ow1U+jMrjR6keI4RxoNRDoq1gQA=;
 h=From:To:CC:Subject:Date;
 b=MOL4lhLXY/7q4XDFp1s3igygnqRm/PO4Lz3I+3A5qqwOb23Pm2imq250/ar/+JUMC
 /c6HjraJsPwPNCNlV2Ok5HEjq1ULsWZnaZNuIbcRhuqqEcbgSMklBj/DmYeakJedtu
 jyXUTBNC++LVvWfuKxzjizGY1OGiJyDTmSEez1HE=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0085DEbF101421
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 7 Jan 2020 23:13:14 -0600
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 7 Jan
 2020 23:13:13 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 7 Jan 2020 23:13:13 -0600
Received: from a0132425.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0085DBgd092701; 
 Tue, 7 Jan 2020 23:13:12 -0600
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: [PATCH] mtd: spi-nor: Fix selection of 4-byte addressing opcodes on
 Spansion
Date: Wed, 8 Jan 2020 10:43:43 +0530
Message-ID: <20200108051343.1939-1-vigneshr@ti.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_211319_628264_A4954860 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>, linux-kernel@vger.kernel.org,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

mtd->size is still unassigned when running spansion_post_sfdp_fixups()
hook, therefore use nor->params.size to determine the size of flash device.

This makes sure that 4-byte addressing opcodes are used on Spansion
flashes that are larger than 16MiB and don't have SFDP 4BAIT table
populated.

Fixes: 92094ebc385e ("mtd: spi-nor: Add spansion_post_sfdp_fixups()")
Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 1082b6bb1393..cd47f07deff3 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -4783,9 +4783,7 @@ static void spi_nor_info_init_params(struct spi_nor *nor)
 
 static void spansion_post_sfdp_fixups(struct spi_nor *nor)
 {
-	struct mtd_info *mtd = &nor->mtd;
-
-	if (mtd->size <= SZ_16M)
+	if (nor->params.size <= SZ_16M)
 		return;
 
 	nor->flags |= SNOR_F_4B_OPCODES;
-- 
2.24.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
