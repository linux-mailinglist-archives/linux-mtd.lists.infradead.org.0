Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 005BD16FADC
	for <lists+linux-mtd@lfdr.de>; Wed, 26 Feb 2020 10:37:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4JmvS0h1N/VrpNpfMeStaRDIjrPPbG6xgCg52oIx2UA=; b=E1g65LZnKdkpMu
	S1tx2mdfM33V4oXUuZ9Bmi7G7JzD3In7hTK2IvXoln2jnFVxGWDU0QEbKiXZ7gdzlPONNzsSIW3x4
	BFmenqC50HmloVxrikqzSi0HITt0/2vo7lh2zOCAS6Z+h74lqcyYHulmkh8aYF3CDhD/u5quJb3v9
	xZueF68HKnPWTBbJ0O5oijBz/6hhNN0f9ZWlF7VSsAmu9oRuvta2Yf84Wh1sNr9a3Y0i2+eoUg0xC
	Buvq7/ma+fEHphq54Gf9WlWgbiQHxzYhJXULhnP5FVT1TVMMdLQdqirCQRB438+eBOqvbhMlOcnQN
	48D3S68K2om2HHz2xA1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6t8I-00013P-6U; Wed, 26 Feb 2020 09:37:34 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6t86-00012H-9S
 for linux-mtd@lists.infradead.org; Wed, 26 Feb 2020 09:37:23 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01Q9bDZo019716;
 Wed, 26 Feb 2020 03:37:13 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582709833;
 bh=3zg6IMnhpry1kMZ9ELvtMgi825rhOhQg+hNu5ti2jCo=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=fxvgziQt5AQ+OrlY8ksVSMEIK6zpwuObRmhSuXV28jm7l7covCAlhgFasHjcxm9Ls
 1TtY91/TGYojl0dYZ3RmHX/zjE7FD0q2A02HSbmpP24FskJV1HdsN1hR9yx11mZNue
 LR6CSg0lSb9YsOeEAtRnhA8nIZCNMxaSW89WF1UU=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01Q9bDoE118597
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 26 Feb 2020 03:37:13 -0600
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 26
 Feb 2020 03:37:13 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 26 Feb 2020 03:37:13 -0600
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01Q9b4A6110613;
 Wed, 26 Feb 2020 03:37:09 -0600
From: Pratyush Yadav <p.yadav@ti.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, Vignesh
 Raghavendra <vigneshr@ti.com>, Mark Brown <broonie@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 01/11] dt-bindings: spi: allow expressing DTR capability
Date: Wed, 26 Feb 2020 15:06:53 +0530
Message-ID: <20200226093703.19765-2-p.yadav@ti.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226093703.19765-1-p.yadav@ti.com>
References: <20200226093703.19765-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_013722_409208_8124C429 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-mtd@lists.infradead.org, Pratyush Yadav <p.yadav@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Allow spi devices to express DTR receive and transmit capabilities via
the properties "spi-rx-dtr" and "spi-tx-dtr".

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
---
 .../devicetree/bindings/spi/spi-controller.yaml        | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-controller.yaml b/Documentation/devicetree/bindings/spi/spi-controller.yaml
index 1e0ca6ccf64b..7a84debed213 100644
--- a/Documentation/devicetree/bindings/spi/spi-controller.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-controller.yaml
@@ -120,6 +120,11 @@ patternProperties:
         description:
           Delay, in microseconds, after a read transfer.
 
+      spi-rx-dtr:
+        $ref: /schemas/types.yaml#/definitions/flag
+        description:
+          Device supports receiving in DTR mode.
+
       spi-tx-bus-width:
         allOf:
           - $ref: /schemas/types.yaml#/definitions/uint32
@@ -132,6 +137,11 @@ patternProperties:
         description:
           Delay, in microseconds, after a write transfer.
 
+      spi-tx-dtr:
+        $ref: /schemas/types.yaml#/definitions/flag
+        description:
+          Device supports transmitting in DTR mode.
+
     required:
       - compatible
       - reg
-- 
2.25.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
