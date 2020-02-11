Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B08159631
	for <lists+linux-mtd@lfdr.de>; Tue, 11 Feb 2020 18:32:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OM+Ba3xwy09nVr9+W0gQUbj+AwhX6BzAxmlERp5oOCc=; b=KXDHZyVnfB3kfl
	t4hPL1ZovecNtvE08l8tIWhJnOIRTvwBOTqOqxnziwj9jkAURs/MTj3gsSi87m6joa6VdJklG/pZD
	6nkjuxvPE0XJW0j1hG9/W/yg0UIEqp5CF+LKzTHFG69DKl4VpfxHCUtpRtAHZlJ/6tJ3bT/3YwVPE
	97N35CWljsUpcWl6DjUYKyHCy8Qrt5BUiLF4O56xyJhCnpJdhoczL+6mk1mqYQfUbHeRdTKOu26lD
	o9DrN8SZIeT6LdD1SQlgFhXwgJR4h2UN0z4Gs/QzxPL6qSqH1WOh1UbKp0PaVz4NIhISFZRyXB5lE
	IRMuzvyKqi+LyJJT+Jbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1ZOP-0001iV-9m; Tue, 11 Feb 2020 17:32:13 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ZOI-0001hj-E1
 for linux-mtd@lists.infradead.org; Tue, 11 Feb 2020 17:32:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1581442322; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-transfer-encoding:content-transfer-encoding:
 in-reply-to:references; bh=repdNbTnvNyihZR5giRVucEDG3b0naplUOtLwuModh0=;
 b=yRb8+/31bMmrAPPCBKhT/7KIotyo4Yux58c2CBcNkxcaluCL9F4YJy5Ge1EiwRKpF7HpGf
 +gNsrIMrii+X2GYnJ1jDSgfIksGrHRQJ4cM8/hmDg1oJYOuCBsJLMUqA6ej+C8SnR/mWCb
 vZy37oEaIjmi7JkA94PxjWimZx8/6Lc=
From: Paul Cercueil <paul@crapouillou.net>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>,
 Harvey Hunt <harveyhuntnexus@gmail.com>
Subject: [PATCH] mtd: rawnand: ingenic: Use devm_platform_ioremap_resource()
Date: Tue, 11 Feb 2020 14:31:51 -0300
Message-Id: <20200211173151.27587-1-paul@crapouillou.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_093206_654740_0C502542 
X-CRM114-Status: UNSURE (   6.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Paul Cercueil <paul@crapouillou.net>, od@zcrc.me,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() instead of platform_get_resource()
+ devm_ioremap_resource().

Signed-off-by: Paul Cercueil <paul@crapouillou.net>
---
 drivers/mtd/nand/raw/ingenic/ingenic_ecc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/raw/ingenic/ingenic_ecc.c b/drivers/mtd/nand/raw/ingenic/ingenic_ecc.c
index c954189606f6..8e22cd6ec71f 100644
--- a/drivers/mtd/nand/raw/ingenic/ingenic_ecc.c
+++ b/drivers/mtd/nand/raw/ingenic/ingenic_ecc.c
@@ -124,7 +124,6 @@ int ingenic_ecc_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct ingenic_ecc *ecc;
-	struct resource *res;
 
 	ecc = devm_kzalloc(dev, sizeof(*ecc), GFP_KERNEL);
 	if (!ecc)
@@ -134,8 +133,7 @@ int ingenic_ecc_probe(struct platform_device *pdev)
 	if (!ecc->ops)
 		return -EINVAL;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	ecc->base = devm_ioremap_resource(dev, res);
+	ecc->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(ecc->base))
 		return PTR_ERR(ecc->base);
 
-- 
2.25.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
