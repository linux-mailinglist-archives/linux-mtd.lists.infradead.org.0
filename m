Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A771335A2
	for <lists+linux-mtd@lfdr.de>; Tue,  7 Jan 2020 23:23:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hc4Zr839TEAbN/rnz4O8iWqDPXS/yq+f/Iwy2rg7o30=; b=IoYHFT72bTMjvf
	5EdPTDf6Yv5hnXoAVIVVrC8VxyqFY/hGvlLyPeP60PO5xRSxKvuesEJs1Qx7tcvN8BGt2KDcA3MNN
	BL8QGBhhohDkJOKvFFsr8cpwZA7+nfvX2tKz4ZzXKeN8oKH/adS7cGgT5Z3wXEmUsXCYf+3lxTogC
	t3AKELcMIUgcMmWEwwGSQiggxEvkIIVq51+rx14xqCDOuJ72w/sGYtHbnuB2HZvSGc6GHTly8BeC9
	SLdFVe8ouYHJ9YVsOmihsyFnn3UJ6eGY/cO6Ougi8bhPOkx9pH3Anx7YJUfyF1TP+lTBKFOvM3QbH
	8Xq8Zj1P2e9m0QNMEp5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioxGL-0003lM-Cu; Tue, 07 Jan 2020 22:23:45 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioxG8-0003jt-VW
 for linux-mtd@lists.infradead.org; Tue, 07 Jan 2020 22:23:35 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id B6FBF23E29;
 Tue,  7 Jan 2020 23:23:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1578435804;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ycC4l96HeCSX2Wgr4BM6xzAWC3OL6kgNnAF7SFpEJxI=;
 b=Bj4iEpxiffWzIm18jzTYuSKjpQYic1qaWT4ZnYIMM0Gau4xn8wCSzOEhW+puQza17FqiDI
 r/u/sbOYgjmX6cWNOH4nEez0f+uTK6pr0NsWNIFe7vS3QfteBHMtRZrByVyZ13Cno6x3D6
 VjKlplRBoOoDEQKENZO56y9+zBFijiE=
From: Michael Walle <michael@walle.cc>
To: linux-mtd@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] mtd: spi-nor: fix locking argument in spi_nor_is_locked()
Date: Tue,  7 Jan 2020 23:23:17 +0100
Message-Id: <20200107222317.3527-2-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200107222317.3527-1-michael@walle.cc>
References: <20200107222317.3527-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++
X-Spam-Level: ****
X-Rspamd-Server: web
X-Spam-Status: No, score=4.90
X-Spam-Score: 4.90
X-Rspamd-Queue-Id: B6FBF23E29
X-Spamd-Result: default: False [4.90 / 15.00]; ARC_NA(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 R_MISSING_CHARSET(2.50)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 MIME_GOOD(-0.10)[text/plain];
 FREEMAIL_ENVRCPT(0.00)[gmail.com]; BROKEN_CONTENT_TYPE(1.50)[];
 DKIM_SIGNED(0.00)[]; RCPT_COUNT_SEVEN(0.00)[8];
 MID_CONTAINS_FROM(1.00)[]; NEURAL_HAM(-0.00)[-0.120];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c::/31, country:DE];
 FREEMAIL_CC(0.00)[microchip.com, bootlin.com, nod.at, ti.com, gmail.com,
 walle.cc]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_142333_166074_3525DE4C 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Richard Weinberger <richard@nod.at>, Michael Walle <michael@walle.cc>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The second argument represents the operation which takes the lock. Add a
new SPI_NOR_OPS_IS_LOCKED and use it.

Fixes: 5bf0e69b67a5 ("mtd: spi-nor: add mtd_is_locked() support")
Signed-off-by: Michael Walle <michael@walle.cc>
---
 drivers/mtd/spi-nor/spi-nor.c | 4 ++--
 include/linux/mtd/spi-nor.h   | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 5cc4c0b331b3..d422aead9f36 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -2071,13 +2071,13 @@ static int spi_nor_is_locked(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 	struct spi_nor *nor = mtd_to_spi_nor(mtd);
 	int ret;
 
-	ret = spi_nor_lock_and_prep(nor, SPI_NOR_OPS_UNLOCK);
+	ret = spi_nor_lock_and_prep(nor, SPI_NOR_OPS_IS_LOCKED);
 	if (ret)
 		return ret;
 
 	ret = nor->params.locking_ops->is_locked(nor, ofs, len);
 
-	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_LOCK);
+	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_IS_LOCKED);
 	return ret;
 }
 
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index b661fd948a25..a8fcb1d70510 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -235,6 +235,7 @@ enum spi_nor_ops {
 	SPI_NOR_OPS_ERASE,
 	SPI_NOR_OPS_LOCK,
 	SPI_NOR_OPS_UNLOCK,
+	SPI_NOR_OPS_IS_LOCKED,
 };
 
 enum spi_nor_option_flags {
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
