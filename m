Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A983B1ED5BA
	for <lists+linux-mtd@lfdr.de>; Wed,  3 Jun 2020 20:03:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EWABEUVOgHNmzQvGmlxv9PDXvaZfAP5e47rJd2neH4k=; b=qweuLD6kq+jn6d
	Xw1i4gIS7DiU+XmyBP8oenCxp1wtk+2fQSt+cwHX1KCnFUzG+srZwDdEiM+DIJL7JShbtOacWjh2I
	v339mutBpO8RjwCw4YF4AzpxVQmfQKCTeRPXcqe5Mg5c+m77ZqgqGEY8+6+pW8asfBfK8yvjRx/84
	X5SLVr7iKheJ5KWTDr8aucMiQ+Zd98mWDmv57tger7tyeVII4FgsPdSkH8+g/k08vkALBilD1EaLF
	R5BFT90XPllId8/r8N5B7XOXKqJBsEPHNbFOnra81QX/UmU+lZHYVCOYKV0TXcUF9Z+J+3/8pFu3O
	vwbPZ08TxIpwTKTXYmYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgXjr-0003d4-HN; Wed, 03 Jun 2020 18:03:43 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgXee-0005CH-Is; Wed, 03 Jun 2020 17:58:22 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 866EB24000B;
 Wed,  3 Jun 2020 17:58:17 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v10 07/20] dt-bindings: mtd: Document boolean NAND ECC
 properties
Date: Wed,  3 Jun 2020 19:57:46 +0200
Message-Id: <20200603175759.19948-8-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200603175759.19948-1-miquel.raynal@bootlin.com>
References: <20200603175759.19948-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_105820_776468_D93A0030 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Julien Su <juliensu@mxic.com.tw>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Document nand-use-soft-ecc-engine and nand-no-ecc-engine properties.
The former is here to force software correction, the latter prevents
any correction to happen.

These properties (along with nand-ecc-engine) are supposed to be more
accurate than the current nand-ecc-modes wich is very misleading and
very often people think it is mandatory while the core should be
relied upon to decide which correction to handle.

nand-ecc-mode was already inacurate, but it becomes totally
problematic with setups where there are several hardware engines.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 Documentation/devicetree/bindings/mtd/nand-controller.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/nand-controller.yaml b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
index 0969d2e6720b..a3750978ebb8 100644
--- a/Documentation/devicetree/bindings/mtd/nand-controller.yaml
+++ b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
@@ -68,6 +68,12 @@ patternProperties:
           3/ The ECC engine is external, in this case the phandle should
           reference the specific ECC engine node.
 
+      nand-use-soft-ecc-engine: true
+        description: Use a software ECC engine.
+
+      nand-no-ecc-engine: true
+        description: Do not use any ECC correction.
+
       nand-ecc-placement:
         allOf:
           - $ref: /schemas/types.yaml#/definitions/string
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
