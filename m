Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B8C78DDE
	for <lists+linux-mtd@lfdr.de>; Mon, 29 Jul 2019 16:28:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LYIn0Ie7TVBYsehfB4YXJb9kX+gnjFZVKRGZspFieI0=; b=dW6QSbyrvZQkD9y+pGQfMJZ7Bp
	NCJsElKyD6Ek+hiS7ZiG4Gbk6WDtFRPzXYAsPkbpEUaU4oi20BtWvOsrOOLGDkdLwRdAuBYTzNAcm
	EgYzxV00T+vG3YNmu50HRVXTXNYDjmEqbd7KENAW96FXLyXb6EEJvI4gdcvRQOs3M7m4N75FifDYh
	89Vz0ua0lyex6ZCwmf8TwrJ/yCgZ3yqNCFN4VtfEyqT8gzM/QjG7johqn5KqgxNwxKbG5jpXLB1V9
	Z4wc6ezuHQG/wGQbGGO2ZZEkIOdlA26FZXjELYbF2IsRAkonWMQpDs5TcrQvoj8VCe3NKDNHvkhbL
	8UCzRuSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs6dc-0005yS-6a; Mon, 29 Jul 2019 14:28:32 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs6dQ-0005vw-4h
 for linux-mtd@bombadil.infradead.org; Mon, 29 Jul 2019 14:28:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=krke0A+jo5ssIUhr0CMLTWsEa4iscmy+QwdKSDgw1g0=; b=VxX0vdNTAgF3BfFA3hEumZCx5
 rrTQ8pOGXxg2iqVnqpDG2Lw6RlMgWtigvRSyulJn5gJxd2k4N/++mIbHP+Sa+xYJyMKFvom2N+/PX
 HF2wLqzVFeVR93E5JKx9cHs0wTIaDaL9XRUwBYIeUlZ5ISfJsPwCaSLT0XP1JOZl2vXfyD5KLEm1H
 nFSpIFWrhwQxwMwkvHtZg+iDNPFcVNALuAhLpVWdBTBYrexAx+hg0HbwQSSDvoBEWBXxm35XWO771
 phcnIUEl+M433WJd/+DcfxkzPVBpCJBM+2clWmUPjhJ305yr1PJ7LUKkAnNFqapsgsfPNODZmI7wD
 eiP9F6MiA==;
Received: from 212.199.177.27.static.012.net.il ([212.199.177.27]
 helo=herzl.nuvoton.co.il)
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs6dN-0002uV-4L
 for linux-mtd@lists.infradead.org; Mon, 29 Jul 2019 14:28:18 +0000
Received: from taln60.nuvoton.co.il (ntil-fw [212.199.177.25])
 by herzl.nuvoton.co.il (8.13.8/8.13.8) with ESMTP id x6TEP6AT025572;
 Mon, 29 Jul 2019 17:25:06 +0300
Received: by taln60.nuvoton.co.il (Postfix, from userid 10070)
 id 5665861FD4; Mon, 29 Jul 2019 17:25:06 +0300 (IDT)
From: Tomer Maimon <tmaimon77@gmail.com>
To: broonie@kernel.org, dwmw2@infradead.org, computersforpeace@gmail.com,
 marek.vasut@gmail.com, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com, bbrezillon@kernel.org, yogeshnarayan.gaur@nxp.com,
 tudor.ambarus@microchip.com, gregkh@linuxfoundation.org,
 frieder.schrempf@exceet.de, tglx@linutronix.de
Subject: [RFC v1 1/3] spi: spi-mem: add spi-mem setup function
Date: Mon, 29 Jul 2019 17:25:02 +0300
Message-Id: <20190729142504.188336-2-tmaimon77@gmail.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190729142504.188336-1-tmaimon77@gmail.com>
References: <20190729142504.188336-1-tmaimon77@gmail.com>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 2.7 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tmaimon77[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 Tomer Maimon <tmaimon77@gmail.com>, linux-spi@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Add spi-mem setup function support SPI memory
operations the spi-mem setup function running
after the spi-mem probe function if the spi-mem
setup function implemented.

Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
---
 drivers/spi/spi-mem.c       | 27 ++++++++++++++++++++++++++-
 include/linux/spi/spi-mem.h |  4 ++++
 2 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-mem.c b/drivers/spi/spi-mem.c
index 9f0fa9f3116d..21fe3a75d636 100644
--- a/drivers/spi/spi-mem.c
+++ b/drivers/spi/spi-mem.c
@@ -398,6 +398,26 @@ const char *spi_mem_get_name(struct spi_mem *mem)
 }
 EXPORT_SYMBOL_GPL(spi_mem_get_name);
 
+/**
+ * spi_mem_setup() - Execute spi memory setup
+ * @mem: the SPI memory
+ *
+ * This function allows SPI mem users to execute spi memory
+ * setup after the probe finished.
+ *
+ * Return: 0 in case of success, a negative error code otherwise.
+ */
+int spi_mem_setup(struct spi_mem *mem)
+{
+	struct spi_controller *ctlr = mem->spi->controller;
+
+	if (ctlr->mem_ops && ctlr->mem_ops->setup)
+		return ctlr->mem_ops->setup(mem);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(spi_mem_setup);
+
 /**
  * spi_mem_adjust_op_size() - Adjust the data size of a SPI mem operation to
  *			      match controller limitations
@@ -723,6 +743,7 @@ static int spi_mem_probe(struct spi_device *spi)
 	struct spi_mem_driver *memdrv = to_spi_mem_drv(spi->dev.driver);
 	struct spi_controller *ctlr = spi->controller;
 	struct spi_mem *mem;
+	int ret;
 
 	mem = devm_kzalloc(&spi->dev, sizeof(*mem), GFP_KERNEL);
 	if (!mem)
@@ -740,7 +761,11 @@ static int spi_mem_probe(struct spi_device *spi)
 
 	spi_set_drvdata(spi, mem);
 
-	return memdrv->probe(mem);
+	ret = memdrv->probe(mem);
+	if (ret)
+		return ret;
+
+	return spi_mem_setup(mem);
 }
 
 static int spi_mem_remove(struct spi_device *spi)
diff --git a/include/linux/spi/spi-mem.h b/include/linux/spi/spi-mem.h
index af9ff2f0f1b2..5f7d20bd2b09 100644
--- a/include/linux/spi/spi-mem.h
+++ b/include/linux/spi/spi-mem.h
@@ -222,6 +222,7 @@ static inline void *spi_mem_get_drvdata(struct spi_mem *mem)
  *	      Note that if the implementation of this function allocates memory
  *	      dynamically, then it should do so with devm_xxx(), as we don't
  *	      have a ->free_name() function.
+ * @setup: execute a SPI memory setup
  * @dirmap_create: create a direct mapping descriptor that can later be used to
  *		   access the memory device. This method is optional
  * @dirmap_destroy: destroy a memory descriptor previous created by
@@ -256,6 +257,7 @@ struct spi_controller_mem_ops {
 	int (*exec_op)(struct spi_mem *mem,
 		       const struct spi_mem_op *op);
 	const char *(*get_name)(struct spi_mem *mem);
+	int (*setup)(struct spi_mem *mem);
 	int (*dirmap_create)(struct spi_mem_dirmap_desc *desc);
 	void (*dirmap_destroy)(struct spi_mem_dirmap_desc *desc);
 	ssize_t (*dirmap_read)(struct spi_mem_dirmap_desc *desc,
@@ -334,6 +336,8 @@ int spi_mem_exec_op(struct spi_mem *mem,
 
 const char *spi_mem_get_name(struct spi_mem *mem);
 
+int spi_mem_setup(struct spi_mem *mem);
+
 struct spi_mem_dirmap_desc *
 spi_mem_dirmap_create(struct spi_mem *mem,
 		      const struct spi_mem_dirmap_info *info);
-- 
2.18.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
