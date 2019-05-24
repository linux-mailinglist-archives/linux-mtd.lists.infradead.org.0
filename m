Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1805229A34
	for <lists+linux-mtd@lfdr.de>; Fri, 24 May 2019 16:46:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YGn4og6R5FH2AgPuWwR3ThuyGjOWAD1Y9Krn0neJYp4=; b=ViLLH0fb62lGk/
	N57kl/EHmNl5OqNK4HhYBBJOpDn+a5YrVH2zEXLyAX0Ox83XbuHkl/rNENvtc9U8Zo+4rcwG7RpWQ
	dr9U74l3os5TiTRQahe7V2Yct9dJ0r4NvZTzHkNequGXt7dR3x359U8OesF5+h7DVYb0VQhxAAx3D
	B05AXHi6Ktb58LZbVbQ41VRUFdgBN4mjb5M7DRAbGu2C0JWQ+SUjMblWpdpR333FZCJezfu3UCmV2
	yBtnIXXo7Se4Pjc8hTjeMYOHsp3u52OhtR6jLYlHs8YKJ83cK4qcPw9U86EE72wi+GgeeTMehgy+L
	/aoU3UscIB2De60HcTTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUBSN-0005QX-66; Fri, 24 May 2019 14:46:03 +0000
Received: from smtp.asem.it ([151.1.184.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUBSF-0005Pv-Lb
 for linux-mtd@lists.infradead.org; Fri, 24 May 2019 14:45:57 +0000
Received: from webmail.asem.it by asem.it (smtp.asem.it)
 (SecurityGateway 5.5.0) with ESMTP id SG003896145.MSG 
 for <linux-mtd@lists.infradead.org>; Fri, 24 May 2019 16:45:48 +0200S
Received: from ASAS044.asem.intra (172.16.16.44) by ASAS044.asem.intra
 (172.16.16.44) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1261.35; Fri, 24
 May 2019 16:45:47 +0200
Received: from flavio-x.asem.intra (172.16.17.208) by ASAS044.asem.intra
 (172.16.16.44) with Microsoft SMTP Server id 15.1.1261.35 via Frontend
 Transport; Fri, 24 May 2019 16:45:47 +0200
From: Flavio Suligoi <f.suligoi@asem.it>
To: Marek Vasut <marek.vasut@gmail.com>, Tudor Ambarus
 <tudor.ambarus@microchip.com>, David Woodhouse <dwmw2@infradead.org>, Brian
 Norris <computersforpeace@gmail.com>, Boris Brezillon
 <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>
Subject: [PATCH] mtd: spi-nor: change "error reading JEDEC id" from dbg to err
Date: Fri, 24 May 2019 16:45:45 +0200
Message-ID: <1558709145-12088-1-git-send-email-f.suligoi@asem.it>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-SGHeloLookup-Result: pass smtp.helo=webmail.asem.it (ip=172.16.16.44)
X-SGSPF-Result: none (smtp.asem.it)
X-SGOP-RefID: str=0001.0A090209.5CE8039C.0029, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0 (_st=1 _vt=0 _iwf=0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_074555_912925_03045E03 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [151.1.184.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Flavio Suligoi <f.suligoi@asem.it>, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

In case of SPI error during the reading of the nor Id,
the probe fails without any error message related to
the JEDEC Id reading procedure.

Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>
---
 drivers/mtd/spi-nor/spi-nor.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 73172d7..8719d45 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -2062,7 +2062,7 @@ static const struct flash_info *spi_nor_read_id(struct spi_nor *nor)
 
 	tmp = nor->read_reg(nor, SPINOR_OP_RDID, id, SPI_NOR_MAX_ID_LEN);
 	if (tmp < 0) {
-		dev_dbg(nor->dev, "error %d reading JEDEC ID\n", tmp);
+		dev_err(nor->dev, "error %d reading JEDEC ID\n", tmp);
 		return ERR_PTR(tmp);
 	}
 
-- 
2.7.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
