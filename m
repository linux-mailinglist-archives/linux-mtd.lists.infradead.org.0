Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CFAC1BE33C
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Apr 2020 17:58:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ETXXM18VI4qqXoUyxlKmobEjnSWVP6cgIfkMo5QVEcU=; b=hLIw5msueDow4n
	+PlxxmmvK3eTH0xMqZcS2lFiERKJLwwvlXEHAYcqBZE65y1qlSEJ3so0JvTUT6AAjisWKwBiG3Lp5
	DPdN+Qxum0Euisa9EsgGn3nvVSZm5ioBEWneDhXdBK7GI/JYzFzXzXv871zl8iukTRKKIeOQDX6gQ
	aywBkegAPhJAmsa6/w+CGKQq4bAyo+cHe6+rzWWu6qIEkw7F5x3+iV0jSf7K8LArFV/aR2jxUQRSv
	7rYUGunCCTHCsaiWrgua8MKU5WPQOxtIMH0hl9NSjcAHWPcOu9HflDtJhxLhva8ercibW8/9TNPbt
	6IdA2sKvSxBQfcQhmu1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTp6Y-00067P-6T; Wed, 29 Apr 2020 15:58:34 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTp42-000410-Qq
 for linux-mtd@lists.infradead.org; Wed, 29 Apr 2020 15:56:00 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 6D23D20007;
 Wed, 29 Apr 2020 15:55:56 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 11/11] mtd: rawnand: micron: Allow controllers to overload
 raw accessors
Date: Wed, 29 Apr 2020 17:55:40 +0200
Message-Id: <20200429155540.22048-12-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200429155540.22048-1-miquel.raynal@bootlin.com>
References: <20200429155540.22048-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_085559_005173_0DA16E00 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Michal Simek <monstr@monstr.eu>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Some controller drivers do not support executing regular
nand_read/write_page_raw() helpers. For that, we created
nand_monolithic_read/write_page_raw() alternatives. Let's now allow
the driver to overload the ECC ->read/write_page_raw() hooks when
these hooks are supported.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_micron.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_micron.c b/drivers/mtd/nand/raw/nand_micron.c
index 56654030ec7f..3f109ab31fa1 100644
--- a/drivers/mtd/nand/raw/nand_micron.c
+++ b/drivers/mtd/nand/raw/nand_micron.c
@@ -508,8 +508,10 @@ static int micron_nand_init(struct nand_chip *chip)
 			chip->ecc.read_page_raw = nand_read_page_raw_notsupp;
 			chip->ecc.write_page_raw = nand_write_page_raw_notsupp;
 		} else {
-			chip->ecc.read_page_raw = nand_read_page_raw;
-			chip->ecc.write_page_raw = nand_write_page_raw;
+			if (!chip->ecc.read_page_raw)
+				chip->ecc.read_page_raw = nand_read_page_raw;
+			if (!chip->ecc.write_page_raw)
+				chip->ecc.write_page_raw = nand_write_page_raw;
 		}
 	}
 
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
