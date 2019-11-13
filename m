Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7068CFA113
	for <lists+linux-mtd@lfdr.de>; Wed, 13 Nov 2019 02:55:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DfpbtxwVB3EOlZVUffhFFX5/s/aYJp/CiRyuJbCDDX0=; b=t69vRsTKZGbfr2
	+mcz5WAskmiEHJUEOToDoKIo/uuJWOuUmwwWADsVxYPlNwEzvVtDCYz4/952/8BXs726n6UXeNTPj
	B66IgEewvJL0v8CayJFPCTqIrJxeMuUkOQ5m6KQhTjMNRc+z3p7wFSqGG4lfRmGkS4BspgzVQtqRg
	6yPWwuLGinRn2bJJSjQR8XNyxucb4lyL4/zDNcXsETRVQJ+xxWjJbrSEfDbdvP7tuHkoDMCZ5qKqt
	xfum5LZYg/QfLlDI6QgbG/S0eogTmxhkygbvFAMS8NOPWBjR0wAIAsTRBsyq8GDewK4rRvTebZ9Cl
	zkGD3Hpc/ku5CiZty1VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUhs4-0004zN-Lj; Wed, 13 Nov 2019 01:55:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUhrf-0004mn-Py
 for linux-mtd@lists.infradead.org; Wed, 13 Nov 2019 01:54:37 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD5D42245D;
 Wed, 13 Nov 2019 01:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573610075;
 bh=RCjXUI6866u57JwmTNcRqya4SFDlPhHwx59HYYacEfk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XTsqZs1jpKScPlveYOPeTltzaPtw6SWg0U/mF0c6CcpjEbEYkevF0lEAgmdmzXVmN
 MyXSPmU3nTqlrNIs4L8xe566g3bn2WICrpn5UopN78+e3j/THsYn/n4e0HmoSdmLmz
 3dQg/4NxXCDBls95925nr4Z43ZDkNYunGZpb/pyg=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 152/209] mtd: devices: m25p80: Make sure WRITE_EN
 is issued before each write
Date: Tue, 12 Nov 2019 20:49:28 -0500
Message-Id: <20191113015025.9685-152-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015025.9685-1-sashal@kernel.org>
References: <20191113015025.9685-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_175435_861428_8342191C 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>,
 Boris Brezillon <boris.brezillon@bootlin.com>,
 Yogesh Gaur <yogeshnarayan.gaur@nxp.com>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Yogesh Gaur <yogeshnarayan.gaur@nxp.com>

[ Upstream commit 3baa8ec88c2feb902328e59a4dcf0f0aaab7d2ff ]

Some SPI controllers can't write nor->page_size bytes in a single step
because their TX FIFO is too small, but when that happens we should
make sure a WRITE_EN command before each write access and READ_SR command
after each write access is issued.

The core is already taking care of that, so all we have to do here is
return the actual number of bytes that were written during the
spi_mem_exec_op() operation.

Signed-off-by: Yogesh Gaur <yogeshnarayan.gaur@nxp.com>
Signed-off-by: Boris Brezillon <boris.brezillon@bootlin.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/mtd/devices/m25p80.c | 23 ++++++++---------------
 1 file changed, 8 insertions(+), 15 deletions(-)

diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index 270d3c9580c51..c4a1d04b8c800 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -90,7 +90,6 @@ static ssize_t m25p80_write(struct spi_nor *nor, loff_t to, size_t len,
 				   SPI_MEM_OP_ADDR(nor->addr_width, to, 1),
 				   SPI_MEM_OP_NO_DUMMY,
 				   SPI_MEM_OP_DATA_OUT(len, buf, 1));
-	size_t remaining = len;
 	int ret;
 
 	/* get transfer protocols. */
@@ -101,22 +100,16 @@ static ssize_t m25p80_write(struct spi_nor *nor, loff_t to, size_t len,
 	if (nor->program_opcode == SPINOR_OP_AAI_WP && nor->sst_write_second)
 		op.addr.nbytes = 0;
 
-	while (remaining) {
-		op.data.nbytes = remaining < UINT_MAX ? remaining : UINT_MAX;
-		ret = spi_mem_adjust_op_size(flash->spimem, &op);
-		if (ret)
-			return ret;
-
-		ret = spi_mem_exec_op(flash->spimem, &op);
-		if (ret)
-			return ret;
+	ret = spi_mem_adjust_op_size(flash->spimem, &op);
+	if (ret)
+		return ret;
+	op.data.nbytes = len < op.data.nbytes ? len : op.data.nbytes;
 
-		op.addr.val += op.data.nbytes;
-		remaining -= op.data.nbytes;
-		op.data.buf.out += op.data.nbytes;
-	}
+	ret = spi_mem_exec_op(flash->spimem, &op);
+	if (ret)
+		return ret;
 
-	return len;
+	return op.data.nbytes;
 }
 
 /*
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
