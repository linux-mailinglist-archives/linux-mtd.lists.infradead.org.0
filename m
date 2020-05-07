Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3FD21C8779
	for <lists+linux-mtd@lfdr.de>; Thu,  7 May 2020 13:02:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zP77F3nllt+rLzdIlw5+zBJgX5uBhz4Vqm+7Vjeinvk=; b=sMSMPJQ0jM9eZ0
	Wbf/PhD7tAtgeaY1QOBeVrS8k5J0B/psa1vd0xutOy5mTuRHDrI4w8fIiOqwFUOWvMlz+9nGPla3q
	hey4a6l/2pEzUrRirBINARpmwEZ9csOPNEBZ/WLvH9J8ufJetClGYS/3L2jkuNSWlnsK/PHjeJWWs
	xONvt9BwIRovBpEJNj5kegKImZpIurqkadY/x5r3FSN9y1StCkBUqXML1j915wwFAtROtknwvya/N
	jJSiHDvP575wY3zifbzm0ZRHpGQ2Tqj5gM18z+BDqAYj4K2JUkyERlCC4BoMIVFx92PdKUdlpgHfk
	LF+g3SNhAOQnxWL+Itmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWeIE-0005xp-VT; Thu, 07 May 2020 11:02:19 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWeHK-0005IA-Vt
 for linux-mtd@lists.infradead.org; Thu, 07 May 2020 11:01:28 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 115A22000B;
 Thu,  7 May 2020 11:01:17 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 <devicetree@vger.kernel.org>, Richard Weinberger <richard@nod.at>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v3 4/8] mtd: rawnand: Add nand_extract_bits()
Date: Thu,  7 May 2020 13:00:30 +0200
Message-Id: <20200507110034.14736-5-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200507110034.14736-1-miquel.raynal@bootlin.com>
References: <20200507110034.14736-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_040123_185821_4920C278 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [217.70.183.200 listed in bl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
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

There are cases where ECC bytes are not byte-aligned. Indeed, BCH
implies using a number of ECC bits, which are not always a multiple of
8. We then need a helper like nand_extract_bits() to extract these
syndromes from a buffer.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_base.c | 31 +++++++++++++++++++++++++++++++
 include/linux/mtd/rawnand.h      |  4 ++++
 2 files changed, 35 insertions(+)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 25d298938aa9..b236e1bdddaf 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -224,6 +224,37 @@ static int check_offs_len(struct nand_chip *chip, loff_t ofs, uint64_t len)
 	return ret;
 }
 
+/* Copy unaligned bits from one buffer to another one (no overlap) */
+void nand_extract_bits(u8 *dst, const u8 *src, unsigned int src_off,
+		       unsigned int nbits)
+{
+	unsigned int dst_off = 0, tmp, n;
+
+	src += src_off / 8;
+	src_off %= 8;
+
+	while (nbits) {
+		n = min3(8 - dst_off, 8 - src_off, nbits);
+
+		tmp = (*src >> src_off) & GENMASK(n - 1, 0);
+		*dst |= tmp << dst_off;
+
+		dst_off += n;
+		if (dst_off >= 8) {
+			dst++;
+			dst_off -= 8;
+		}
+
+		src_off += n;
+		if (src_off >= 8) {
+			src++;
+			src_off -= 8;
+		}
+
+		nbits -= n;
+	}
+}
+
 /**
  * nand_select_target() - Select a NAND target (A.K.A. die)
  * @chip: NAND chip object
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 406e9ff0f45c..734564232545 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1404,6 +1404,10 @@ int nand_gpio_waitrdy(struct nand_chip *chip, struct gpio_desc *gpiod,
 void nand_select_target(struct nand_chip *chip, unsigned int cs);
 void nand_deselect_target(struct nand_chip *chip);
 
+/* Bitops */
+void nand_extract_bits(u8 *dst, const u8 *src, unsigned int src_off,
+		       unsigned int nbits);
+
 /**
  * nand_get_data_buf() - Get the internal page buffer
  * @chip: NAND chip object
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
