Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8504D1B7BE3
	for <lists+linux-mtd@lfdr.de>; Fri, 24 Apr 2020 18:43:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hkRuxsO2CtqT5rGd458PC1kDNZrzIZb+PggljfJ9WcU=; b=jQS1NJodR1WPYn
	pHz1MfLyCCjrmRGWf3VPqojBgXGlZ9USML5ZtBEbyVYAH7gtMCM2o3LFq5UqpO9E9gLD8Ywmf/EHY
	D/aswXkWimYkefarEaIBmVQF+EOFycReDP/JZBLpEk1jmfbvdGHPtUT3MnjwQDY3sxn7rM3LDMFX8
	MxROmbUWDzAf6n7RkleJef6Ug5tYOyrqgRKlKlllAfMtpWSGGcVkF/7dsG8SdmEotHmn21vvP2Ji8
	W+dCxC8N/7SHpukRforDXU+WjMjcxrA8X/c/LQZ3z1IfDmybZLtjSbZFqlweuvlpQlaFP9oNMyJEW
	wdMJaWXX9H43/GE3hTkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS1Pk-0005WV-3Q; Fri, 24 Apr 2020 16:42:56 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS1Ni-0003uO-5N
 for linux-mtd@lists.infradead.org; Fri, 24 Apr 2020 16:40:53 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id BAD4920008;
 Fri, 24 Apr 2020 16:40:47 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 3/9] mtd: rawnand: onfi: Fix redundancy detection check
Date: Fri, 24 Apr 2020 18:40:36 +0200
Message-Id: <20200424164042.26572-4-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424164042.26572-1-miquel.raynal@bootlin.com>
References: <20200424164042.26572-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_094050_335845_36030F29 
X-CRM114-Status: GOOD (  12.25  )
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
Cc: Boris Brezillon <boris.brezillon@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

During ONFI detection, the CRC derived from the parameter page and the
CRC supposed to be at the end of the parameter page are compared. If
they do not match, the second then the third copies of the page are
tried.

The current implementation compares the newly derived CRC with the CRC
contained in the first page only. So if this particular CRC area has
been corrupted, then the detection will fail for a wrong reason.

Fix this issue by checking the derived CRC against the right one.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/nand_onfi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/nand_onfi.c b/drivers/mtd/nand/raw/nand_onfi.c
index 0b879bd0a68c..8fe8d7bdd203 100644
--- a/drivers/mtd/nand/raw/nand_onfi.c
+++ b/drivers/mtd/nand/raw/nand_onfi.c
@@ -173,7 +173,7 @@ int nand_onfi_detect(struct nand_chip *chip)
 		}
 
 		if (onfi_crc16(ONFI_CRC_BASE, (u8 *)&p[i], 254) ==
-				le16_to_cpu(p->crc)) {
+		    le16_to_cpu(p[i].crc)) {
 			if (i)
 				memcpy(p, &p[i], sizeof(*p));
 			break;
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
