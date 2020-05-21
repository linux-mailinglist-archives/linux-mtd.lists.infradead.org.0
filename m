Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D23D1DCC0E
	for <lists+linux-mtd@lfdr.de>; Thu, 21 May 2020 13:24:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=448jzB8vZ0VExs/7Q0EBQpMsTESM2sew8PGU2icfdCo=; b=IAlKo9nPrrPIl5
	EloMCS2OLE78PDWI1R2betI2+XiDT7kfs5AMF0fhWev1v6Q0szcdn1gUKAD1PdYNdU1begeU7U8YZ
	94XvSmDS29R6fLKgb5dJ7YUBqoxVjLHjzEu0A2PKurf3vrCS38uKljoGQ0xmmjM3qD+wgMtl//nxY
	TjiWxKm6t61kEx2UuZpUjPvsR8Ox9FXfES0C6uOFxKLojQTrOdv2ANlhgQQbft2Jo6O/SVv6BMVGN
	MFrPugb7d/UnHtl7/Icc/nzqdK2WnK0AkRqKSe2sQO8k8yc8Kq0qmi8A0IDAXt2C42tJKoT0f77mY
	8CRa6xLBXS3tPGi+wdfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbjJe-0003xC-9d; Thu, 21 May 2020 11:24:46 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbjJG-0003my-Oy
 for linux-mtd@lists.infradead.org; Thu, 21 May 2020 11:24:24 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 09BDBD8DE7A7168C8D15;
 Thu, 21 May 2020 19:24:18 +0800 (CST)
Received: from localhost.localdomain (10.67.165.24) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.487.0; Thu, 21 May 2020 19:24:08 +0800
From: Yicong Yang <yangyicong@hisilicon.com>
To: <broonie@kernel.org>, <tudor.ambarus@microchip.com>,
 <linux-spi@vger.kernel.org>, <linux-mtd@lists.infradead.org>
Subject: [RFC PATCH 3/3] spi: hisi-sfc-v3xx: Add prepare/unprepare methods to
 avoid race condition
Date: Thu, 21 May 2020 19:23:51 +0800
Message-ID: <1590060231-23242-4-git-send-email-yangyicong@hisilicon.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1590060231-23242-1-git-send-email-yangyicong@hisilicon.com>
References: <1590060231-23242-1-git-send-email-yangyicong@hisilicon.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.165.24]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_042422_976800_1894B243 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: richard@nod.at, john.garry@huawei.com, vigneshr@ti.com,
 miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The controller can be shared with the firmware, which may cause race
problems. As most read/write/erase/lock/unlock of spi-nor flash are
composed of a set of operations, while the firmware may use the controller
and start its own operation in the middle of the process started by the
kernel driver, which may lead to the kernel driver's function broken.

Bit[20] in HISI_SFC_V3XX_CMD_CFG register plays a role of a lock, to
protect the controller from firmware access, which means the firmware
cannot reach the controller if the driver set the bit. Add prepare/
unprepare methods for the controller, we'll hold the lock in prepare
method and release it in unprepare method, which will solve the race
issue.

Signed-off-by: Yicong Yang <yangyicong@hisilicon.com>
---
 drivers/spi/spi-hisi-sfc-v3xx.c | 41 ++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 40 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-hisi-sfc-v3xx.c b/drivers/spi/spi-hisi-sfc-v3xx.c
index e3b5725..13c161c 100644
--- a/drivers/spi/spi-hisi-sfc-v3xx.c
+++ b/drivers/spi/spi-hisi-sfc-v3xx.c
@@ -18,6 +18,7 @@
 #define HISI_SFC_V3XX_VERSION (0x1f8)
 
 #define HISI_SFC_V3XX_CMD_CFG (0x300)
+#define HISI_SFC_V3XX_CMD_CFG_LOCK BIT(20)
 #define HISI_SFC_V3XX_CMD_CFG_DUAL_IN_DUAL_OUT (1 << 17)
 #define HISI_SFC_V3XX_CMD_CFG_DUAL_IO (2 << 17)
 #define HISI_SFC_V3XX_CMD_CFG_FULL_DIO (3 << 17)
@@ -41,6 +42,34 @@ struct hisi_sfc_v3xx_host {
 	int max_cmd_dword;
 };
 
+int hisi_sfc_v3xx_op_prepare(struct spi_mem *mem)
+{
+	struct spi_device *spi = mem->spi;
+	struct hisi_sfc_v3xx_host *host;
+	u32 reg = HISI_SFC_V3XX_CMD_CFG_LOCK;
+
+	host = spi_controller_get_devdata(spi->master);
+
+	writel(reg, host->regbase + HISI_SFC_V3XX_CMD_CFG);
+
+	reg = readl(host->regbase + HISI_SFC_V3XX_CMD_CFG);
+	if (!(reg & HISI_SFC_V3XX_CMD_CFG_LOCK))
+		return -EIO;
+
+	return 0;
+}
+
+void hisi_sfc_v3xx_op_unprepare(struct spi_mem *mem)
+{
+	struct spi_device *spi = mem->spi;
+	struct hisi_sfc_v3xx_host *host;
+
+	host = spi_controller_get_devdata(spi->master);
+
+	/* Release the lock and clear the command register. */
+	writel(0, host->regbase + HISI_SFC_V3XX_CMD_CFG);
+}
+
 #define HISI_SFC_V3XX_WAIT_TIMEOUT_US		1000000
 #define HISI_SFC_V3XX_WAIT_POLL_INTERVAL_US	10
 
@@ -163,7 +192,15 @@ static int hisi_sfc_v3xx_generic_exec_op(struct hisi_sfc_v3xx_host *host,
 					 u8 chip_select)
 {
 	int ret, len = op->data.nbytes;
-	u32 config = 0;
+	u32 config;
+
+	/*
+	 * The lock bit is in the command register. Clear the command
+	 * field with lock bit held if it has been set in
+	 * .prepare().
+	 */
+	config = readl(host->regbase + HISI_SFC_V3XX_CMD_CFG);
+	config &= HISI_SFC_V3XX_CMD_CFG_LOCK;
 
 	if (op->addr.nbytes)
 		config |= HISI_SFC_V3XX_CMD_CFG_ADDR_EN_MSK;
@@ -248,6 +285,8 @@ static int hisi_sfc_v3xx_exec_op(struct spi_mem *mem,
 
 static const struct spi_controller_mem_ops hisi_sfc_v3xx_mem_ops = {
 	.adjust_op_size = hisi_sfc_v3xx_adjust_op_size,
+	.prepare	= hisi_sfc_v3xx_op_prepare,
+	.unprepare	= hisi_sfc_v3xx_op_unprepare,
 	.exec_op = hisi_sfc_v3xx_exec_op,
 };
 
-- 
2.8.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
