Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 447E813DF0E
	for <lists+linux-mtd@lfdr.de>; Thu, 16 Jan 2020 16:42:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e7wCmZHl2v0Q840R9tcholZIgilJFa/lm84C8Ek+u6Q=; b=sb9ADj7Nz+6hiI
	D0nrCb9P0eoandXecTl2DZGQqYsLhRp76O2K9efufRgTmxZGMK+S+4ckVTR64YWYoR8rQ4C+TWtbe
	4EE9xxAfNouTXgZVxo8z5ZF/sI+V5pllZ2UMtfR3K3NYk4rOGeEhHmEaHYqYQVWUUK7Nvv5/a8aNi
	BptJgybAPkopJtmikQ4nDFNT+rTJrzvppTsgBfnDazWy1yqocDPAZQI+jX2SXCa24xmFIRgMOc/FN
	9KacuZReQ9QKWWach7fwQ/zMJidR3sZuKPVuBRCIvls11IhCF20XdKa5WTdeX6wQXnI8RhgUO6N5i
	mGva6XC+NwLiBf9pnv/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is7I3-0003Cc-Ac; Thu, 16 Jan 2020 15:42:35 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is7Hq-0003BM-Bk
 for linux-mtd@lists.infradead.org; Thu, 16 Jan 2020 15:42:27 +0000
Received: from mwalle01.sab.local. (unknown [213.135.10.150])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id BB25522F43;
 Thu, 16 Jan 2020 16:42:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1579189339;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=6xWghYAZKhcAI7d1RFIR0FqCFeiOMYTF1vtaWqHr7OU=;
 b=Vtzg/RqvODNIxXR+jKfmB1nHKCzSijZDkoDBb38G6I6J6EvJI7HoPnYrgvsblyE55lO8WK
 kfp6ldivNLeo0SNlkfYo6+cxNCkk3TgsNm5+mu6odXDlcV6zs2gTA7dJtyrJHQmd5/aOHZ
 dU6xM0tj2vNfe8ihy9yHZqYpBzDks30=
From: Michael Walle <michael@walle.cc>
To: linux-mtd@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] mtd: spi-nor: Add support for w25q32jwm
Date: Thu, 16 Jan 2020 16:42:09 +0100
Message-Id: <20200116154209.32654-1-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spamd-Bar: ++++
X-Spam-Level: ****
X-Rspamd-Server: web
X-Spam-Status: No, score=4.90
X-Spam-Score: 4.90
X-Rspamd-Queue-Id: BB25522F43
X-Spamd-Result: default: False [4.90 / 15.00]; ARC_NA(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 R_MISSING_CHARSET(2.50)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 DKIM_SIGNED(0.00)[]; RCPT_COUNT_SEVEN(0.00)[7];
 MID_CONTAINS_FROM(1.00)[]; NEURAL_HAM(-0.00)[-0.729];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:12941, ipnet:213.135.0.0/19, country:DE]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_074222_557215_BE547C39 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Richard Weinberger <richard@nod.at>, Michael Walle <michael@walle.cc>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Add support for the Winbond W25Q32JW-xM flashes. These have a
programmable QE bit. There is also the W25Q32JW-xQ variant which shares
the ID with the W25Q32DW and W25Q32FW parts. The W25Q32JW-xQ has the QE
bit hard strapped to 1, thus don't support the /HOLD and /WP pins.

This was tested in single, dual and quad mode on a custom board with the
NXP FlexSPI controller. Also the BP bits as well as the TB bit were
tested.

Signed-off-by: Michael Walle <michael@walle.cc>
---
This patch superseeds the following patch:
  https://lore.kernel.org/linux-mtd/20200103223423.14025-1-michael@walle.cc/

changes since v1:
 - renamed flash to w25q32jwm
 - removed untested flashes
 - reworded the commit message

 drivers/mtd/spi-nor/spi-nor.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index d09a9e38d0bc..8226d6450069 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -2651,6 +2651,11 @@ static const struct flash_info spi_nor_ids[] = {
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
 	},
+	{
+		"w25q32jwm", INFO(0xef8016, 0, 64 * 1024,  64,
+			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
+	},
 	{ "w25x64", INFO(0xef3017, 0, 64 * 1024, 128, SECT_4K) },
 	{ "w25q64", INFO(0xef4017, 0, 64 * 1024, 128, SECT_4K) },
 	{
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
