Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8231AFA2C
	for <lists+linux-mtd@lfdr.de>; Sun, 19 Apr 2020 14:52:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tX8Mno1GQon+wW1kZTcoyG9Yxdbkjgn4uSGiuDa8HWY=; b=T4jluyoqJDufx/
	VGm3/G15phiMe9yoAVxnEUxgdYLxYmco2vHaAee2OhdxC8HHlGUlYaB/kqNNPdSQn6K8pdVvu6EK2
	4TqNei2Hb5Rnf5//N0jMLQXcx55DDt4Iq8PtRnBVFneX785s1Tdt4e+VZ+KZdfbPmBZf9wJWM+xya
	wFtHCvIBizsRTrWMIhr2wvwsFjKoCdtgaaYPoVpOn+MPMjj5lNjJCG3yuo872MGsk0bxw9Y0n9PzH
	74HtFC6hpo8vXFxnGpQ0okwEqh+HJO7Vu27jl3JBCeUIH8XW8kPZMtN7pcRBkhKtWAXgl4V9aql+Y
	h1zR23lQLcJf1N1I90AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ9R1-0006Nx-6G; Sun, 19 Apr 2020 12:52:31 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ9QI-0005sb-E3
 for linux-mtd@lists.infradead.org; Sun, 19 Apr 2020 12:51:49 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id BC23F2A0072;
 Sun, 19 Apr 2020 13:51:44 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/9] mtd: rawnand: Add an is_last flag to nand_subop
Date: Sun, 19 Apr 2020 14:51:32 +0200
Message-Id: <20200419125140.1307309-2-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200419125140.1307309-1-boris.brezillon@collabora.com>
References: <20200419125140.1307309-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_055146_604936_CE5C55E0 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Boris Brezillon <bbrezillon@kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 bcm-kernel-feedback-list@broadcom.com, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Some controllers need to know when they're passed the last subop so
they can de-assert the CE pin.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/nand_base.c | 2 ++
 include/linux/mtd/rawnand.h      | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index fa9ac18e97a1..f81b54634061 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -2101,6 +2101,8 @@ nand_op_parser_match_pat(const struct nand_op_parser_pattern *pat,
 	 */
 	ctx->subop.ninstrs = ninstrs;
 	ctx->subop.last_instr_end_off = instr_offset;
+	if (ctx->subop.instrs + ninstrs == end && !instr_offset)
+		ctx->subop.is_last = true;
 
 	return true;
 }
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 8e8d1a61e2fb..99f4ac47c8d3 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -701,6 +701,7 @@ struct nand_op_instr {
  *			   of the sub-operation
  * @last_instr_end_off: offset to end at (excluded) for the last instruction
  *			of the sub-operation
+ * @is_last: this sub-operation is the last one
  *
  * Both @first_instr_start_off and @last_instr_end_off only apply to data or
  * address instructions.
@@ -715,6 +716,7 @@ struct nand_subop {
 	unsigned int ninstrs;
 	unsigned int first_instr_start_off;
 	unsigned int last_instr_end_off;
+	bool is_last;
 };
 
 unsigned int nand_subop_get_addr_start_off(const struct nand_subop *subop,
-- 
2.25.2


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
