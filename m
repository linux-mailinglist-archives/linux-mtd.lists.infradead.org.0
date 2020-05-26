Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 790E41DCC0D
	for <lists+linux-mtd@lfdr.de>; Thu, 21 May 2020 13:24:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wTh/dmczDWCmfDLOIz2EeHpF9/OKB7q8VftkHcExQ1Q=; b=WCEh8EGigsxiP3
	2qVSPsjm/uZjZzy5H7J0TSjX+K95SgkhGp3bBdG9tDP06289+7Fro+EC30J6jYWzGTEfbBmKbygnn
	X8V4khXGmZBdqU53wkYy0YKBt9JHB8XVd8tYD4EwMZdttbykx3xUSYIgNtuC524BTCgGqzD1ICmW7
	0vDJR34HWi0gCPMwQLjDnseUUdhrh2ATTC8YoE6a+FBuAhOsEJAH0QooGlxaScFG0+ml1PWmrPf6O
	YIWhMsgQjgU08QWHSCARpdAhGKyEd1kJGoyLTxn8jee3On2cfa38UCALX+l/s50fDbJ7cimupa+EP
	K63d7SomruBWIz7ZqGYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbjJS-0003o4-Kw; Thu, 21 May 2020 11:24:34 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbjJG-0003mx-OL
 for linux-mtd@lists.infradead.org; Thu, 21 May 2020 11:24:24 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id F079B301C4E315FE73B4;
 Thu, 21 May 2020 19:24:17 +0800 (CST)
Received: from localhost.localdomain (10.67.165.24) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.487.0; Thu, 21 May 2020 19:24:07 +0800
From: Yicong Yang <yangyicong@hisilicon.com>
To: <broonie@kernel.org>, <tudor.ambarus@microchip.com>,
 <linux-spi@vger.kernel.org>, <linux-mtd@lists.infradead.org>
Subject: [RFC PATCH 1/3] spi: spi-mem: add optional prepare/unprepare methods
 in spi_controller_mem_ops
Date: Thu, 21 May 2020 19:23:49 +0800
Message-ID: <1590060231-23242-2-git-send-email-yangyicong@hisilicon.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1590060231-23242-1-git-send-email-yangyicong@hisilicon.com>
References: <1590060231-23242-1-git-send-email-yangyicong@hisilicon.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.165.24]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_042422_961534_B56AE3E3 
X-CRM114-Status: GOOD (  12.37  )
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

Some prepare/unprepare works may be necessary before/after a set of
operations of the spimem device. For example, before/after spi-nor
flash's read/write/erase/lock/unlock.

Add optional prepare/unprepare methods in spi_controller_mem_ops to allow
the controller to do specific works after/before the operations. The upper
user can use spi_mem_{prepare, unprepare}() to call the methods of the
controller.

Signed-off-by: Yicong Yang <yangyicong@hisilicon.com>
---
 drivers/spi/spi-mem.c       | 20 ++++++++++++++++++++
 include/linux/spi/spi-mem.h | 11 +++++++++++
 2 files changed, 31 insertions(+)

diff --git a/drivers/spi/spi-mem.c b/drivers/spi/spi-mem.c
index adaa0c4..f09cef1 100644
--- a/drivers/spi/spi-mem.c
+++ b/drivers/spi/spi-mem.c
@@ -220,6 +220,26 @@ bool spi_mem_supports_op(struct spi_mem *mem, const struct spi_mem_op *op)
 }
 EXPORT_SYMBOL_GPL(spi_mem_supports_op);
 
+int spi_mem_prepare(struct spi_mem *mem)
+{
+	struct spi_controller *ctlr = mem->spi->controller;
+
+	if (ctlr->mem_ops && ctlr->mem_ops->prepare)
+		return ctlr->mem_ops->prepare(mem);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(spi_mem_prepare);
+
+void spi_mem_unprepare(struct spi_mem *mem)
+{
+	struct spi_controller *ctlr = mem->spi->controller;
+
+	if (ctlr->mem_ops && ctlr->mem_ops->unprepare)
+		ctlr->mem_ops->unprepare(mem);
+}
+EXPORT_SYMBOL_GPL(spi_mem_unprepare);
+
 static int spi_mem_access_start(struct spi_mem *mem)
 {
 	struct spi_controller *ctlr = mem->spi->controller;
diff --git a/include/linux/spi/spi-mem.h b/include/linux/spi/spi-mem.h
index af9ff2f..e40b5c3 100644
--- a/include/linux/spi/spi-mem.h
+++ b/include/linux/spi/spi-mem.h
@@ -215,6 +215,12 @@ static inline void *spi_mem_get_drvdata(struct spi_mem *mem)
  *		    limitations)
  * @supports_op: check if an operation is supported by the controller
  * @exec_op: execute a SPI memory operation
+ * @prepare: do some prepare works before a set of operations. for example,
+ *	     read/write/erase/lock/unlock operations of spi-nor flash. This
+ *	     method is optional.
+ * @unprepare: do some post works after a set of operations. for example,
+ *	       read/write/erase/lock/unlock operations of spi-nor flash. This
+ *	       method is optional.
  * @get_name: get a custom name for the SPI mem device from the controller.
  *	      This might be needed if the controller driver has been ported
  *	      to use the SPI mem layer and a custom name is used to keep
@@ -253,6 +259,8 @@ struct spi_controller_mem_ops {
 	int (*adjust_op_size)(struct spi_mem *mem, struct spi_mem_op *op);
 	bool (*supports_op)(struct spi_mem *mem,
 			    const struct spi_mem_op *op);
+	int (*prepare)(struct spi_mem *mem);
+	void (*unprepare)(struct spi_mem *mem);
 	int (*exec_op)(struct spi_mem *mem,
 		       const struct spi_mem_op *op);
 	const char *(*get_name)(struct spi_mem *mem);
@@ -329,6 +337,9 @@ int spi_mem_adjust_op_size(struct spi_mem *mem, struct spi_mem_op *op);
 bool spi_mem_supports_op(struct spi_mem *mem,
 			 const struct spi_mem_op *op);
 
+int spi_mem_prepare(struct spi_mem *mem);
+void spi_mem_unprepare(struct spi_mem *mem);
+
 int spi_mem_exec_op(struct spi_mem *mem,
 		    const struct spi_mem_op *op);
 
-- 
2.8.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
