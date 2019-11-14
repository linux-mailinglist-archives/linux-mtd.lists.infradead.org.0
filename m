Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02904FC0B1
	for <lists+linux-mtd@lfdr.de>; Thu, 14 Nov 2019 08:23:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ifqByzqT1/NeFLkdcBOOQEaaKbVgwcX/YdtI/pRkrs4=; b=HjjI8mFDLqvoi0
	1OF322DEJYybkNcj48W1Y64PdCJqy5Koe52f3V3DvvLa+uim8n1IH6+/BX+O7N1Dhc37EDhGsXhkt
	1+hu03C94Jhac5k339Q35E6IMVQpGnnL5s7AILGWs8gFyqXncAYXNL1C/xTau4Uh7UWxqSHbf203Z
	YHHX8SgAdBVRGar6ezJJoaqfBTst/JXXRIW1NFE4XZsDcKbkfKAQ/vTjKOEhyic+mHgV54arvg4ol
	1CZN+P7qv+0aPQ79PY0npNdOHJyrKNFoml/5NDR+YWNOehQit6FCtbLricclBZKUCBkzPkPQzWmUY
	ielAQhmNq42qBbwaQ2Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV9Tf-0005Y8-Te; Thu, 14 Nov 2019 07:23:39 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV9TJ-0005Lb-1d
 for linux-mtd@lists.infradead.org; Thu, 14 Nov 2019 07:23:18 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id C91C8E836E6A38782C59;
 Thu, 14 Nov 2019 15:23:07 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Thu, 14 Nov 2019
 15:22:58 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <richard@nod.at>, <miquel.raynal@bootlin.com>, <vigneshr@ti.com>,
 <gregkh@linuxfoundation.org>
Subject: [PATCH -next] ubi: remove unused variable 'err'
Date: Thu, 14 Nov 2019 15:22:36 +0800
Message-ID: <20191114072236.15104-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_232317_262660_39C1AA72 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: YueHaibing <yuehaibing@huawei.com>, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

drivers/mtd/ubi/debug.c:512:6: warning: unused variable 'err' [-Wunused-variable]

commit 3427dd213259 ("mtd: no need to check return value
of debugfs_create functions") leave this variable not used.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/mtd/ubi/debug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/debug.c b/drivers/mtd/ubi/debug.c
index f8d3752..8dba1b5 100644
--- a/drivers/mtd/ubi/debug.c
+++ b/drivers/mtd/ubi/debug.c
@@ -509,7 +509,7 @@ static const struct file_operations eraseblk_count_fops = {
  */
 int ubi_debugfs_init_dev(struct ubi_device *ubi)
 {
-	int err, n;
+	int n;
 	unsigned long ubi_num = ubi->ubi_num;
 	struct ubi_debug_info *d = &ubi->dbg;
 
-- 
2.7.4



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
