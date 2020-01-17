Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F04141343
	for <lists+linux-mtd@lfdr.de>; Fri, 17 Jan 2020 22:42:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lnJ9+KLapERsg587di82/rOFaGFOfUvabsDgDf2AB78=; b=LO2hCvEN9rUn6n
	DBFR0oxTSnhG2BMb1QO+OdQF07UKKkbEA/AzSIr5xvns5TlsxFmG46JAzO0A2lRfuQEO49QGmS9jj
	vJ+xHxju3lZYV23OcY3YuwXHMW3hN3a3+NF8FvvJKfOYiWajvOajIrWGc4IM7PNAeMrth7QCl0d7i
	sdWzNC+knduvVsfzXeBLA35SBB8YLrM5f33JnFoMGReEI0VyXsIJHBoNjU5xr0Qe8hHobN6YmIp5a
	HZnOlRmW0rdGYENJomq99J5m4E17ayzGqWtGp/DkfwlM3Fmvns/cPhVjm3BUaswX8n5jsWMwEWqd6
	ExlKGTnvic0+PBfRx9Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isZNx-0000kW-2v; Fri, 17 Jan 2020 21:42:33 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isZNe-0000iO-GY
 for linux-mtd@lists.infradead.org; Fri, 17 Jan 2020 21:42:16 +0000
Received: from xps13.lan (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 71CBD240008;
 Fri, 17 Jan 2020 21:42:11 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v4 04/21] dt-bindings: mtd: Deprecate OOB_FIRST mode
Date: Fri, 17 Jan 2020 22:41:34 +0100
Message-Id: <20200117214151.20767-5-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200117214151.20767-1-miquel.raynal@bootlin.com>
References: <20200117214151.20767-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_134214_689049_C2C2D737 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Julien Su <juliensu@mxic.com.tw>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Mason Yang <masonccyang@mxic.com.tw>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This mode has never actually been used, it was introduced for a single
driver and even this driver did not use it in the DT but only in the
code. Now that this mode has been removed, let's trim the bindings
definition to avoid carrying useless properties.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 Documentation/devicetree/bindings/mtd/atmel-nand.txt       | 3 +--
 Documentation/devicetree/bindings/mtd/nand-controller.yaml | 2 +-
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/atmel-nand.txt b/Documentation/devicetree/bindings/mtd/atmel-nand.txt
index 68b51dc58816..49e7660fc1f6 100644
--- a/Documentation/devicetree/bindings/mtd/atmel-nand.txt
+++ b/Documentation/devicetree/bindings/mtd/atmel-nand.txt
@@ -142,8 +142,7 @@ Required properties:
 Optional properties:
 - atmel,nand-has-dma : boolean to support dma transfer for nand read/write.
 - nand-ecc-mode : String, operation mode of the NAND ecc mode, soft by default.
-  Supported values are: "none", "soft", "hw", "hw_syndrome", "hw_oob_first",
-  "soft_bch".
+  Supported values are: "none", "soft", "hw", "hw_syndrome", "soft_bch".
 - atmel,has-pmecc : boolean to enable Programmable Multibit ECC hardware,
   capable of BCH encoding and decoding, on devices where it is present.
 - atmel,pmecc-cap : error correct capability for Programmable Multibit ECC
diff --git a/Documentation/devicetree/bindings/mtd/nand-controller.yaml b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
index d261b7096c69..d529f8587ba6 100644
--- a/Documentation/devicetree/bindings/mtd/nand-controller.yaml
+++ b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
@@ -49,7 +49,7 @@ patternProperties:
       nand-ecc-mode:
         allOf:
           - $ref: /schemas/types.yaml#/definitions/string
-          - enum: [ none, soft, hw, hw_syndrome, hw_oob_first, on-die ]
+          - enum: [ none, soft, hw, hw_syndrome, on-die ]
         description:
           Desired ECC engine, either hardware (most of the time
           embedded in the NAND controller) or software correction
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
