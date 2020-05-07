Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD021C964E
	for <lists+linux-mtd@lfdr.de>; Thu,  7 May 2020 18:21:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2yMLcN8UHfZwvjeN+Zzv5/6dyO/dF+2ndH/NOAP2tsI=; b=lvg
	RcF07R5liagFJzUWjmgtSTmIRfUjaPNpSJ5SgAAmahom9BhnvH9dg5CzQrf4lZ7l9jjNMWG15wFyt
	FthHAVwI9fq9Ttf4hR6VjQsP0MyR3r0LGjPoxiEjRG5WFO5NO7wOZh/ncwQtItr2+4aBYNlxQUztb
	c82gQ4zQBVe5sy3Ti1YomNOUa4fipNdNkdxb77v7Z2Q5iyanplwDf8wG8ytmyIG+qkETW5NNWeXhe
	NBZRK5xk9BNMtGW8gcUSnP/tAvIQbw0n4nI8JPQIFq8rZj62StsP5ah/cISECxIx10+bi2Cjn2pjY
	pU49riFnigOPoqLj2hTtCvo73TQerwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWjGb-0006V7-CS; Thu, 07 May 2020 16:20:57 +0000
Received: from rcdn-iport-8.cisco.com ([173.37.86.79])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWjGU-0006Uh-1H
 for linux-mtd@lists.infradead.org; Thu, 07 May 2020 16:20:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=2367; q=dns/txt; s=iport;
 t=1588868450; x=1590078050;
 h=from:to:cc:subject:date:message-id;
 bh=OV1yKebG18sSumlGTXlTtESd45PL10aWA2PsPs4tVwc=;
 b=jH6LNejzpnfuwgidJQ/9rnKlknLWPDo3NONIeikzBMNO+1XoBGVrrUQz
 yUxibpFVq2cL832ZbDEZG9gG3mfaEYbM5hq9DCuVd/VeT1y8wzEX6rqsk
 sVF3xvcjkgw5oj4HH89QAdGPHO0dHoPMjRLrt2VD5+RvdkLaRDUcJjaVz Y=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0CLBACRNLRe/51dJa1mHgEBCxIMgXw?=
 =?us-ascii?q?LgiqBQzIqrxCBewsBAQEOLwQBAYREggkkNgcOAgMBAQsBAQUBAQECAQUEbYV?=
 =?us-ascii?q?ihh9SgT4TgyaCfa94gXUziSGBQBSBJIddhGcagUE/gRGDToQVhisEmAOBUJh?=
 =?us-ascii?q?+glKBA5cHDB2dIK1bgVgBMoFWMxoIGxWDJFAYDZ8qIQMwNwIGCAEBAwmQAYJ?=
 =?us-ascii?q?FAQE?=
X-IronPort-AV: E=Sophos;i="5.73,364,1583193600"; d="scan'208";a="763140748"
Received: from rcdn-core-6.cisco.com ([173.37.93.157])
 by rcdn-iport-8.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 07 May 2020 16:20:48 +0000
Received: from zorba.cisco.com ([10.24.9.129])
 by rcdn-core-6.cisco.com (8.15.2/8.15.2) with ESMTP id 047GKmsX010956;
 Thu, 7 May 2020 16:20:48 GMT
From: Daniel Walker <danielwa@cisco.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: [RFC-PATCH] mtd: spi-nor: add conditional 4B opcodes
Date: Thu,  7 May 2020 09:20:47 -0700
Message-Id: <20200507162047.30788-1-danielwa@cisco.com>
X-Mailer: git-send-email 2.17.1
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-Outbound-SMTP-Client: 10.24.9.129, [10.24.9.129]
X-Outbound-Node: rcdn-core-6.cisco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_092050_152321_CB2A1EC8 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [173.37.86.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [173.37.86.79 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 xe-linux-external@cisco.com, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Some chips have 4B opcodes, but there is no way to know if they have
them. This device tree option allows platform owners to force enable 4b
opcodes when they know their chips support it even when it can be
automatically identified.

Cc: xe-linux-external@cisco.com
Signed-off-by: Daniel Walker <danielwa@cisco.com>
---
 drivers/mtd/spi-nor/core.c      | 5 +++++
 drivers/mtd/spi-nor/core.h      | 5 +++++
 drivers/mtd/spi-nor/micron-st.c | 2 +-
 3 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index cc68ea84318e..2bd130687f4b 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -3134,6 +3134,11 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	if (info->flags & SPI_NOR_HAS_LOCK)
 		nor->flags |= SNOR_F_HAS_LOCK;
 
+	/* Add SPI_NOR_4B_OPCODES if force in the device tree */
+	if (info->flags & SPI_NOR_COND_4B_OPCODES &&
+		of_property_read_bool(np, "force-4b-opcodes"))
+		info->flags |= SPI_NOR_4B_OPCODES;
+
 	mtd->_write = spi_nor_write;
 
 	/* Init flash parameters based on flash_info struct and SFDP */
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index 6f2f6b27173f..49e17415d834 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -312,6 +312,11 @@ struct flash_info {
 					 * Must be used with SPI_NOR_4BIT_BP.
 					 */
 
+#define SPI_NOR_COND_4B_OPCODES	BIT(19) /*
+					 * Same as SPI_NOR_4B_OPCODES, but
+					 * must also be force in the device
+					 * tree.
+					 */
 	/* Part specific fixup hooks. */
 	const struct spi_nor_fixups *fixups;
 };
diff --git a/drivers/mtd/spi-nor/micron-st.c b/drivers/mtd/spi-nor/micron-st.c
index 6c034b9718e2..f827454eaa5f 100644
--- a/drivers/mtd/spi-nor/micron-st.c
+++ b/drivers/mtd/spi-nor/micron-st.c
@@ -37,7 +37,7 @@ static const struct flash_info st_parts[] = {
 			       SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
 	{ "n25q256a",    INFO(0x20ba19, 0, 64 * 1024,  512, SECT_4K |
 			      USE_FSR | SPI_NOR_DUAL_READ |
-			      SPI_NOR_QUAD_READ) },
+			      SPI_NOR_QUAD_READ | SPI_NOR_COND_4B_OPCODES) },
 	{ "mt25qu256a",  INFO6(0x20bb19, 0x104400, 64 * 1024,  512,
 			       SECT_4K | USE_FSR | SPI_NOR_DUAL_READ |
 			       SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
