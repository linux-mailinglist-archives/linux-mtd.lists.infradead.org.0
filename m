Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0551B7D24
	for <lists+linux-mtd@lfdr.de>; Fri, 24 Apr 2020 19:41:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=480EHcGDWvHPoW0O1sQh89wBnVx18vddBOVywlyevkc=; b=nLHISCkkyMaKhb
	gzA7xEOxlqddmkrQbtxmMutS2wwppbZ7sz+ZUZeLCNwdnmZ+jscLqvmVHea7Eww4rtw3chCUJR8cI
	ztShZb5Hh9TYyBZtvZ4W03X1T8Lw4FUTeI7Y/w+8c3T/A0/RLU3yp+FZ9JfzhuvO83KvIzvlmxENn
	CcIY45XglQH3if7NUY59Ew+iDjyUiYVNMxMCi3bcI7psk/01+q2NGOMJjjbwNzX/2X/W6gWlGg2D3
	CGTipxma54tn8Z7DvJUZh9iUiQyPbB4NOgbmxQFlf9hX2eHjjf0anLptjpum7u9SrwmHl81Ac/wYE
	jg85jnR02p+nUwn35Y6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS2Jt-0003m4-RN; Fri, 24 Apr 2020 17:40:57 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS2Fp-00068i-CN
 for linux-mtd@lists.infradead.org; Fri, 24 Apr 2020 17:36:47 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 97FBE20002;
 Fri, 24 Apr 2020 17:36:42 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 08/10] mtd: rawnand: onfi: Add an alternative parameter page
 read
Date: Fri, 24 Apr 2020 19:36:29 +0200
Message-Id: <20200424173631.14311-9-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424173631.14311-1-miquel.raynal@bootlin.com>
References: <20200424173631.14311-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_103645_584674_0E98F360 
X-CRM114-Status: GOOD (  12.66  )
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

Some controllers are not able to read the parameter page in separate chunks.

As there is no need for separate parameter page reads (the delay penalty
for reading the three copies in one go being negligible), the
temptation to just do a monolithic read is high.

But we are afraid of controllers not supporting reading a parameter
page of 768 bytes neither.

So, despite darkening a little bit this portion, the final solution to
support as many controllers as possible is to check if there is an
actual need for such monolithic read, otherwise we keep the current
behavior.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_onfi.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_onfi.c b/drivers/mtd/nand/raw/nand_onfi.c
index 2fc71b7c361f..e6be19e1afde 100644
--- a/drivers/mtd/nand/raw/nand_onfi.c
+++ b/drivers/mtd/nand/raw/nand_onfi.c
@@ -160,17 +160,24 @@ int nand_onfi_detect(struct nand_chip *chip)
 	if (!pbuf)
 		return -ENOMEM;
 
-	ret = nand_read_param_page_op(chip, 0, NULL, 0);
+	if (nand_pack_ops(chip))
+		ret = nand_read_param_page_op(chip, 0, pbuf,
+					      sizeof(*pbuf) * ONFI_PARAM_PAGES);
+	else
+		ret = nand_read_param_page_op(chip, 0, NULL, 0);
 	if (ret) {
 		ret = 0;
 		goto free_onfi_param_page;
 	}
 
 	for (i = 0; i < ONFI_PARAM_PAGES; i++) {
-		ret = nand_read_data_op(chip, &pbuf[i], sizeof(*pbuf), true);
-		if (ret) {
-			ret = 0;
-			goto free_onfi_param_page;
+		if (!nand_pack_ops(chip)) {
+			ret = nand_read_data_op(chip, &pbuf[i], sizeof(*pbuf),
+						true);
+			if (ret) {
+				ret = 0;
+				goto free_onfi_param_page;
+			}
 		}
 
 		crc = onfi_crc16(ONFI_CRC_BASE, (u8 *)&pbuf[i], 254);
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
