Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5B4173B48
	for <lists+linux-mtd@lfdr.de>; Fri, 28 Feb 2020 16:23:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R+Q1dnZGK3GENvYPRLCUchHeZeDyAn7PJdsYxJ1rzAI=; b=YCta2nXiVNpMfH
	ZT6JZO1Fm0BPJ2mdpszr+gzPMtCoSzF+nPYjl1NyKgvh0xTEjLnhUg++r92/nok2A+LOzPxta2xmb
	vx4YeRVHjoPEuqS1FEnzaLezThZhU/GvSH8pUNdkMD3FONTVif8FRgYmlRp5shJE4VCshVnLYO/mk
	7kuGWsAcjfMQRFjnxe5eitgYuL876ph3c6itaPrKmVRi/BPwn4jIrG7sKdg6eNXJpooeRpH3gFIwr
	kOkZLazlyiDm4LC59SIzHyN7wMuxBfudkmrYB7RKlYm9dinnWxgVIQ3XlxaY+36KZAW9TziLcUxwc
	CgpCFBR/2BvMwfOUguQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hUD-0004wC-7M; Fri, 28 Feb 2020 15:23:33 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hTk-0004m9-Rz
 for linux-mtd@lists.infradead.org; Fri, 28 Feb 2020 15:23:06 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id DE65CFFEE367F48376C9;
 Fri, 28 Feb 2020 23:22:53 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.439.0; Fri, 28 Feb 2020 23:22:44 +0800
From: John Garry <john.garry@huawei.com>
To: <broonie@kernel.org>
Subject: [PATCH RFC 2/3] spi: HiSilicon v3xx: Properly set CMD_CONFIG for
 Dual/Quad modes
Date: Fri, 28 Feb 2020 23:18:50 +0800
Message-ID: <1582903131-160033-3-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1582903131-160033-1-git-send-email-john.garry@huawei.com>
References: <1582903131-160033-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_072305_074474_2FE94822 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: John Garry <john.garry@huawei.com>, linux-spi@vger.kernel.org,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, andriy.shevchenko@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The CMD_CONFIG register memory interface type field is not set configured
for Dual and Quad modes, so set appropriately.

This was not detected previously as we only ever operated in standard SPI
mode.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 drivers/spi/spi-hisi-sfc-v3xx.c | 43 +++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/drivers/spi/spi-hisi-sfc-v3xx.c b/drivers/spi/spi-hisi-sfc-v3xx.c
index 4cf8fc80a7b7..45d906110ed1 100644
--- a/drivers/spi/spi-hisi-sfc-v3xx.c
+++ b/drivers/spi/spi-hisi-sfc-v3xx.c
@@ -17,6 +17,12 @@
 #define HISI_SFC_V3XX_VERSION (0x1f8)
 
 #define HISI_SFC_V3XX_CMD_CFG (0x300)
+#define HISI_SFC_V3XX_CMD_CFG_DUAL_IN_DUAL_OUT (1 << 17)
+#define HISI_SFC_V3XX_CMD_CFG_DUAL_IO (2 << 17)
+#define HISI_SFC_V3XX_CMD_CFG_FULL_DIO (3 << 17)
+#define HISI_SFC_V3XX_CMD_CFG_QUAD_IN_QUAD_OUT (5 << 17)
+#define HISI_SFC_V3XX_CMD_CFG_QUAD_IO (6 << 17)
+#define HISI_SFC_V3XX_CMD_CFG_FULL_QIO (7 << 17)
 #define HISI_SFC_V3XX_CMD_CFG_DATA_CNT_OFF 9
 #define HISI_SFC_V3XX_CMD_CFG_RW_MSK BIT(8)
 #define HISI_SFC_V3XX_CMD_CFG_DATA_EN_MSK BIT(7)
@@ -161,6 +167,43 @@ static int hisi_sfc_v3xx_generic_exec_op(struct hisi_sfc_v3xx_host *host,
 	if (op->addr.nbytes)
 		config |= HISI_SFC_V3XX_CMD_CFG_ADDR_EN_MSK;
 
+	switch (op->data.buswidth) {
+	case 0 ... 1:
+		break;
+	case 2:
+		if (op->addr.buswidth <= 1) {
+			config |= HISI_SFC_V3XX_CMD_CFG_DUAL_IN_DUAL_OUT;
+		} else if (op->addr.buswidth == 2) {
+			if (op->cmd.buswidth <= 1) {
+				config |= HISI_SFC_V3XX_CMD_CFG_DUAL_IO;
+			} else if (op->cmd.buswidth == 2) {
+				config |= HISI_SFC_V3XX_CMD_CFG_FULL_DIO;
+			} else {
+				return -EIO;
+			}
+		} else {
+			return -EIO;
+		}
+		break;
+	case 4:
+		if (op->addr.buswidth <= 1) {
+			config |= HISI_SFC_V3XX_CMD_CFG_QUAD_IN_QUAD_OUT;
+		} else if (op->addr.buswidth == 4) {
+			if (op->cmd.buswidth <= 1) {
+				config |= HISI_SFC_V3XX_CMD_CFG_QUAD_IO;
+			} else if (op->cmd.buswidth == 4) {
+				config |= HISI_SFC_V3XX_CMD_CFG_FULL_QIO;
+			} else {
+				return -EIO;
+			}
+		} else {
+			return -EIO;
+		}
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
 	if (op->data.dir != SPI_MEM_NO_DATA) {
 		config |= (len - 1) << HISI_SFC_V3XX_CMD_CFG_DATA_CNT_OFF;
 		config |= HISI_SFC_V3XX_CMD_CFG_DATA_EN_MSK;
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
