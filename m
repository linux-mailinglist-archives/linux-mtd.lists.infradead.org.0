Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 303FE10D71C
	for <lists+linux-mtd@lfdr.de>; Fri, 29 Nov 2019 15:36:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cZ+SBRu4okxhGC272NXeFtkC2AF+IjBk/W/UIidF+mA=; b=eU4owhlEXIvl69
	Qtmw9fs4uKr9IyWjHxCT1bEW0f5zU/ogTEcXJpaU77samHKTPcfiM66ZdNV5v229TgpGcpOsCNUy8
	Jld5oHHQl4WZ9lerzxaXfoE3TDOZDQHh3RHvilMkRUkMnqD+B8D1e1IcJypTE5Tl6MhmgAUYUpPGC
	rW6QSBVc7m2i68dpMK6QeSg+3tms68v2DYdm7B0k8/JeEecYQr1eAjobl5m97mIMv5plJG0WA1+qJ
	ARWaaMc5f9+14zu8ldRxtA5QcgSuoU0D4lVA10wZj/S0+47bLyOIljTACpAC1CT3iYAr+XHtCyMpf
	GZGu1csZOfFnluPzoiaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iahNr-0008Fg-RY; Fri, 29 Nov 2019 14:36:35 +0000
Received: from out4436.biz.mail.alibaba.com ([47.88.44.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahNj-0008FD-UI
 for linux-mtd@lists.infradead.org; Fri, 29 Nov 2019 14:36:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aliyun.com; s=s1024;
 t=1575038046; h=From:To:Subject:Date:Message-Id:MIME-Version;
 bh=BSR5IeTrE390mKyDsz7lj/zI6XX15thYnrAD5gebT6U=;
 b=rVAuwHoSwlrZZa8/eAhK4yxj94wp3PyWx8o/Dk6EmtIBBo/swiY8UB7ACjrwhnkhHAtWzhWw7yELgFyce/YzUvj3DxjEiXt0mfljOZwTd/hQbjZWfDlHvXTJhgKtxc3TJEjHUOCPyXLVCIZ4FzKqSE1S6S4I6A/nJhLIt8fMbqU=
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.08358862|-1; CH=green;
 DM=CONTINUE|CONTINUE|true|0.358766-0.0133642-0.62787;
 DS=CONTINUE|ham_system_inform|0.0119226-0.00223792-0.985839;
 FP=0|0|0|0|0|-1|-1|-1; HT=e01e04426; MF=fishland@aliyun.com; NM=1; PH=DS;
 RN=10; RT=10; SR=0; TI=SMTPD_---0TjOvnZw_1575038036; 
Received: from localhost.localdomain(mailfrom:fishland@aliyun.com
 fp:SMTPD_---0TjOvnZw_1575038036) by smtp.aliyun-inc.com(127.0.0.1);
 Fri, 29 Nov 2019 22:34:05 +0800
From: Liu Song <fishland@aliyun.com>
To: joern@lazybastard.org, dwmw2@infradead.org, computersforpeace@gmail.com,
 marek.vasut@gmail.com, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com
Subject: [PATCH] mtd:block2mtd: page index should use pgoff_t
Date: Fri, 29 Nov 2019 22:33:52 +0800
Message-Id: <20191129143352.34965-1-fishland@aliyun.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_063628_133027_6EA9911A 
X-CRM114-Status: UNSURE (   5.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [47.88.44.36 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fishland[at]aliyun.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 liu.song11@zte.com.cn
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Liu Song <liu.song11@zte.com.cn>

Page index use pgoff_t to prevent risk of truncation.

Signed-off-by: Liu Song <liu.song11@zte.com.cn>
---
 drivers/mtd/devices/block2mtd.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/devices/block2mtd.c b/drivers/mtd/devices/block2mtd.c
index 410a321682e6..36aa082f6db0 100644
--- a/drivers/mtd/devices/block2mtd.c
+++ b/drivers/mtd/devices/block2mtd.c
@@ -44,7 +44,7 @@ struct block2mtd_dev {
 static LIST_HEAD(blkmtd_device_list);
 
 
-static struct page *page_read(struct address_space *mapping, int index)
+static struct page *page_read(struct address_space *mapping, pgoff_t index)
 {
 	return read_mapping_page(mapping, index, NULL);
 }
@@ -54,7 +54,7 @@ static int _block2mtd_erase(struct block2mtd_dev *dev, loff_t to, size_t len)
 {
 	struct address_space *mapping = dev->blkdev->bd_inode->i_mapping;
 	struct page *page;
-	int index = to >> PAGE_SHIFT;	// page index
+	pgoff_t index = to >> PAGE_SHIFT;	// page index
 	int pages = len >> PAGE_SHIFT;
 	u_long *p;
 	u_long *max;
@@ -103,7 +103,7 @@ static int block2mtd_read(struct mtd_info *mtd, loff_t from, size_t len,
 {
 	struct block2mtd_dev *dev = mtd->priv;
 	struct page *page;
-	int index = from >> PAGE_SHIFT;
+	pgoff_t index = from >> PAGE_SHIFT;
 	int offset = from & (PAGE_SIZE-1);
 	int cpylen;
 
@@ -137,7 +137,7 @@ static int _block2mtd_write(struct block2mtd_dev *dev, const u_char *buf,
 {
 	struct page *page;
 	struct address_space *mapping = dev->blkdev->bd_inode->i_mapping;
-	int index = to >> PAGE_SHIFT;	// page index
+	pgoff_t index = to >> PAGE_SHIFT;	// page index
 	int offset = to & ~PAGE_MASK;	// page offset
 	int cpylen;
 
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
