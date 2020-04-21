Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF461B1EE6
	for <lists+linux-mtd@lfdr.de>; Tue, 21 Apr 2020 08:40:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LGqvei5gyYWgE2NnA7LJsRb3gKDWJUSO0WJSBzWSLfQ=; b=C8gigG+iIP430g8O3pvsdOGFzQ
	TYpIhTnHvLih0L7bscn9xAWR1nenbYUdlTuBqhq8uwK3EkP0Jp5BwKzTZG+TpTHBGabBw59Qh7y/R
	LOY1Emvpq0698BEkp+m/Mnn+U6474cop+RIXpUc8sqV2A7cqbuEgR47ejFA6MwPMLlWTQhHjFmSmm
	LJHHltJT1ACfqd/DRV0Ldu40977btKq1YoZliwq+kXGKtKuVbhO7B6YV4Bd8uDUOlFV4RUBAlzmrk
	n9Rqytfh0IIlv1RKWn2OoiR2+PQ46nN/YN/81+loJlOgxCUVTcy4VuuTyt9yjUT1aGP9xd1DfNNYK
	AN22nWuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQma6-0004iA-3z; Tue, 21 Apr 2020 06:40:30 +0000
Received: from twhmllg3.macronix.com ([122.147.135.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQmZt-0004gx-1t
 for linux-mtd@lists.infradead.org; Tue, 21 Apr 2020 06:40:18 +0000
Received: from localhost.localdomain ([172.17.195.96])
 by TWHMLLG3.macronix.com with ESMTP id 03L6dnMX045498;
 Tue, 21 Apr 2020 14:39:50 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
From: Mason Yang <masonccyang@mxic.com.tw>
To: broonie@kernel.org, tudor.ambarus@microchip.com, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, boris.brezillon@collabora.com
Subject: [PATCH v2 1/5] mtd: spi-nor: Add support for Octal 8D-8D-8D mode
Date: Tue, 21 Apr 2020 14:39:43 +0800
Message-Id: <1587451187-6889-2-git-send-email-masonccyang@mxic.com.tw>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1587451187-6889-1-git-send-email-masonccyang@mxic.com.tw>
References: <1587451187-6889-1-git-send-email-masonccyang@mxic.com.tw>
X-MAIL: TWHMLLG3.macronix.com 03L6dnMX045498
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_234017_373069_CB968F13 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [122.147.135.201 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: juliensu@mxic.com.tw, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Boris Brezillon <boris.brezillon@bootlin.com>,
 linux-mtd@lists.infradead.org, Mason Yang <masonccyang@mxic.com.tw>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

According to JEDEC216C SPI NORs are using 2 bytes opcodes
when operated in OPI (Octal Peripheral Interface).

Add extension command, command bytes number and dtr fields to
the spi_mem_op struct and make sure all DTR operations are
rejected for now.

Signed-off-by: Boris Brezillon <boris.brezillon@bootlin.com>
Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
---
 drivers/spi/spi-mem.c       |  8 +++++++-
 include/linux/spi/spi-mem.h | 13 +++++++++++++
 2 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-mem.c b/drivers/spi/spi-mem.c
index adaa0c4..de682c5 100644
--- a/drivers/spi/spi-mem.c
+++ b/drivers/spi/spi-mem.c
@@ -154,6 +154,12 @@ bool spi_mem_default_supports_op(struct spi_mem *mem,
 				   op->data.dir == SPI_MEM_DATA_OUT))
 		return false;
 
+	if (op->cmd.dtr || op->addr.dtr || op->dummy.dtr || op->data.dtr)
+		return false;
+
+	if (op->cmd.nbytes != 1)
+		return false;
+
 	return true;
 }
 EXPORT_SYMBOL_GPL(spi_mem_default_supports_op);
@@ -168,7 +174,7 @@ static bool spi_mem_buswidth_is_valid(u8 buswidth)
 
 static int spi_mem_check_op(const struct spi_mem_op *op)
 {
-	if (!op->cmd.buswidth)
+	if (!op->cmd.buswidth || op->cmd.nbytes < 1 || op->cmd.nbytes > 2)
 		return -EINVAL;
 
 	if ((op->addr.nbytes && !op->addr.buswidth) ||
diff --git a/include/linux/spi/spi-mem.h b/include/linux/spi/spi-mem.h
index af9ff2f..bf54079 100644
--- a/include/linux/spi/spi-mem.h
+++ b/include/linux/spi/spi-mem.h
@@ -17,6 +17,7 @@
 	{							\
 		.buswidth = __buswidth,				\
 		.opcode = __opcode,				\
+		.nbytes = 1,					\
 	}
 
 #define SPI_MEM_OP_ADDR(__nbytes, __val, __buswidth)		\
@@ -69,11 +70,15 @@ enum spi_mem_data_dir {
 
 /**
  * struct spi_mem_op - describes a SPI memory operation
+ * @cmd.nbytes: number of opcode bytes (only 1 or 2 are valid)
  * @cmd.buswidth: number of IO lines used to transmit the command
+ * @cmd.dtr: set true to transfer opcode in double transfer rate mode
  * @cmd.opcode: operation opcode
+ * @cmd.ext_opcode: extension operation opcode
  * @addr.nbytes: number of address bytes to send. Can be zero if the operation
  *		 does not need to send an address
  * @addr.buswidth: number of IO lines used to transmit the address cycles
+ * @addr.dtr: set true to transfer address bytes in double transfer rate mode
  * @addr.val: address value. This value is always sent MSB first on the bus.
  *	      Note that only @addr.nbytes are taken into account in this
  *	      address value, so users should make sure the value fits in the
@@ -81,34 +86,42 @@ enum spi_mem_data_dir {
  * @dummy.nbytes: number of dummy bytes to send after an opcode or address. Can
  *		  be zero if the operation does not require dummy bytes
  * @dummy.buswidth: number of IO lanes used to transmit the dummy bytes
+ * @dummy.dtr: set true to transfer dummy bytes in double transfer rate mode
  * @data.buswidth: number of IO lanes used to send/receive the data
  * @data.dir: direction of the transfer
  * @data.nbytes: number of data bytes to send/receive. Can be zero if the
  *		 operation does not involve transferring data
+ * @data.dtr: set true to transfer data bytes in double transfer rate mode
  * @data.buf.in: input buffer (must be DMA-able)
  * @data.buf.out: output buffer (must be DMA-able)
  */
 struct spi_mem_op {
 	struct {
+		u8 nbytes;
 		u8 buswidth;
+		bool dtr;
 		u8 opcode;
+		u8 ext_opcode;
 	} cmd;
 
 	struct {
 		u8 nbytes;
 		u8 buswidth;
+		bool dtr;
 		u64 val;
 	} addr;
 
 	struct {
 		u8 nbytes;
 		u8 buswidth;
+		bool dtr;
 	} dummy;
 
 	struct {
 		u8 buswidth;
 		enum spi_mem_data_dir dir;
 		unsigned int nbytes;
+		bool dtr;
 		union {
 			void *in;
 			const void *out;
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
