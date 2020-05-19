Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7DC1D99A7
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 16:29:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q1pkPw2OOGXhkywzBUA2C8nvq4AybEnQZ/soHwH08Nc=; b=QBQUrauqLDlme6
	T8I6xM7OEGheXkzYbEj4GTWN+r2IRbwYSpDbJasNUJ38QcuCTjt6WA1BUP70awDc8FVsvvhBk0sgw
	JcMCgNvifZxLRPfPBkjtO8tx/vUTu6Gsh52zpFBYJ88DZOSWAkW/LoUPN3pEWiRmuObXCKsM5qIk1
	ajUNhKqjRbwX87UlLlHfO51LmNmRf4M20YbKFIckjXENb5rJRJF0N8T/ihEQe1nkeP643OayoZn/y
	aSx2HvwKxllXMpJMvCiXH9pmQTpzf1bs4okqtVH8hdvCRCv6saSwgplbZPVKmzoxhiIcixrtr3gly
	nVmVgmQa11BR/r3EHU3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb3Ek-0001EK-2x; Tue, 19 May 2020 14:28:54 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb3Cx-0008Uv-Tl; Tue, 19 May 2020 14:27:05 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04JEQwxs062575;
 Tue, 19 May 2020 09:26:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589898418;
 bh=sf1taodJLPAeYagyTVLo7kxF1+8mkUMEfQy4tR56ABs=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=Ay6Nbi33dRGG8IIuloKIhy/aazVG9751/m7j6KV7D26uLV/xjJGtqbgdy0gJmEnLU
 fD0wd1Z/54QFPAae8mJIhaNRLihwZvAqog8xc0ubK0gBAMmdhIB0k4iXQ/zuSmsIHK
 QZa1ukKKiu8Tp3aOrza1qAx83wBUhsUK5bhnPY2M=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04JEQwXG037487;
 Tue, 19 May 2020 09:26:58 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 19
 May 2020 09:26:57 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 19 May 2020 09:26:58 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04JEQgjK008313;
 Tue, 19 May 2020 09:26:53 -0500
From: Pratyush Yadav <p.yadav@ti.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, Vignesh
 Raghavendra <vigneshr@ti.com>, Mark Brown <broonie@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Ludovic Desroches
 <ludovic.desroches@microchip.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-spi@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>
Subject: [PATCH v5 02/19] spi: atmel-quadspi: reject DTR ops
Date: Tue, 19 May 2020 19:56:24 +0530
Message-ID: <20200519142642.24131-3-p.yadav@ti.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200519142642.24131-1-p.yadav@ti.com>
References: <20200519142642.24131-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_072704_047009_2CE5EFAE 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mason Yang <masonccyang@mxic.com.tw>,
 Boris Brezillon <boris.brezillon@collabora.com>, Sekhar Nori <nsekhar@ti.com>,
 Pratyush Yadav <p.yadav@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Double Transfer Rate (DTR) ops are added in spi-mem. But this controller
doesn't support DTR transactions. Since we don't use the default
supports_op(), which rejects all DTR ops, do that explicitly in our
supports_op().

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
---
 drivers/spi/atmel-quadspi.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/spi/atmel-quadspi.c b/drivers/spi/atmel-quadspi.c
index cb44d1e169aa..4a29fa7ebdac 100644
--- a/drivers/spi/atmel-quadspi.c
+++ b/drivers/spi/atmel-quadspi.c
@@ -285,6 +285,10 @@ static bool atmel_qspi_supports_op(struct spi_mem *mem,
 		op->dummy.nbytes == 0)
 		return false;
 
+	/* DTR ops not supported. */
+	if (op->cmd.dtr || op->addr.dtr || op->dummy.dtr || op->data.dtr)
+		return false;
+
 	return true;
 }
 
-- 
2.26.2


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
