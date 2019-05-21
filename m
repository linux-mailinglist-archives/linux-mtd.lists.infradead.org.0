Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD60C248BF
	for <lists+linux-mtd@lfdr.de>; Tue, 21 May 2019 09:09:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WlD/nfjpMKwFu24Wws7C0tjyEFui0/O4qSHTWKCgYrA=; b=kTD9druE5Hf/Tz
	1N6NESWrLumeZMUNlIe6sP1k6XZkqDsuWNjKC9vsqfP8AXALEk8E264ytmONL4AwW8jlLUM8F1giE
	9oPyMqZWeZDF6u96hezh4XHqDv2omF1rP8c2qEHRFRNfoHpXij5tCCf7A/pzwINyX37oiUiCPQNld
	q3JqZoidKNV//d1/a4z1+Uv1WxpyZa1CMVuTyG3DKNVpQhRtLmrrsU2m44JqPJdvt+pxx7QaMPLsn
	nSTZcJ0rf8iQqiNLj3Vi6cTIlm2An9RKjpmvyRKNnLzakZ2ay2s2wVzzYZXwjGBX9p0GMt8gQAA2D
	b5nAykl3OG5c+knill/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSytN-00056D-Fd; Tue, 21 May 2019 07:08:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSyrh-00034h-Do
 for linux-mtd@lists.infradead.org; Tue, 21 May 2019 07:07:24 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1hSyrH-0006ce-Hn; Tue, 21 May 2019 09:06:47 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hSyrG-0001bT-9k; Tue, 21 May 2019 09:06:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 05/14] mtd: rawnand: gpmi: Remove unnecessary variables
Date: Tue, 21 May 2019 09:06:34 +0200
Message-Id: <20190521070643.6244-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190521070643.6244-1-s.hauer@pengutronix.de>
References: <20190521070643.6244-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_000714_284742_A2079637 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: kernel@pengutronix.de, Richard Weinberger <richard@nod.at>,
 Sascha Hauer <s.hauer@pengutronix.de>, Vinod Koul <vkoul@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Han Xu <han.xu@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

this->page_buffer_virt and this->payload_virt are always set to the same
value, so drop the former and just use the latter. Same for
this->page_buffer_virt and this->payload_virt.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c | 15 ++++++---------
 drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.h |  2 --
 2 files changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
index 53e63eeafcf4..8a3fe04c58b6 100644
--- a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
+++ b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
@@ -1637,10 +1637,10 @@ static void gpmi_free_dma_buffer(struct gpmi_nand_data *this)
 {
 	struct device *dev = this->dev;
 
-	if (this->page_buffer_virt && virt_addr_valid(this->page_buffer_virt))
+	if (this->payload_virt && virt_addr_valid(this->payload_virt))
 		dma_free_coherent(dev, this->page_buffer_size,
-					this->page_buffer_virt,
-					this->page_buffer_phys);
+					this->payload_virt,
+					this->payload_phys);
 	kfree(this->cmd_buffer);
 	kfree(this->data_buffer_dma);
 	kfree(this->raw_buffer);
@@ -1648,7 +1648,6 @@ static void gpmi_free_dma_buffer(struct gpmi_nand_data *this)
 	this->cmd_buffer	= NULL;
 	this->data_buffer_dma	= NULL;
 	this->raw_buffer	= NULL;
-	this->page_buffer_virt	= NULL;
 	this->page_buffer_size	=  0;
 }
 
@@ -1686,9 +1685,9 @@ static int gpmi_alloc_dma_buffer(struct gpmi_nand_data *this)
 	 * auxiliary buffer will appear on a 32-bit boundary.
 	 */
 	this->page_buffer_size = geo->payload_size + geo->auxiliary_size;
-	this->page_buffer_virt = dma_alloc_coherent(dev, this->page_buffer_size,
-					&this->page_buffer_phys, GFP_DMA);
-	if (!this->page_buffer_virt)
+	this->payload_virt = dma_alloc_coherent(dev, this->page_buffer_size,
+					&this->payload_phys, GFP_DMA);
+	if (!this->payload_virt)
 		goto error_alloc;
 
 	this->raw_buffer = kzalloc(mtd->writesize + mtd->oobsize, GFP_KERNEL);
@@ -1696,8 +1695,6 @@ static int gpmi_alloc_dma_buffer(struct gpmi_nand_data *this)
 		goto error_alloc;
 
 	/* Slice up the page buffer. */
-	this->payload_virt = this->page_buffer_virt;
-	this->payload_phys = this->page_buffer_phys;
 	this->auxiliary_virt = this->payload_virt + geo->payload_size;
 	this->auxiliary_phys = this->payload_phys + geo->payload_size;
 	return 0;
diff --git a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.h b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.h
index ba074a35ff01..51a070da84ed 100644
--- a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.h
+++ b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.h
@@ -138,8 +138,6 @@ struct gpmi_nand_data {
 	struct scatterlist	data_sgl;
 	char			*data_buffer_dma;
 
-	void			*page_buffer_virt;
-	dma_addr_t		page_buffer_phys;
 	unsigned int		page_buffer_size;
 
 	void			*payload_virt;
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
