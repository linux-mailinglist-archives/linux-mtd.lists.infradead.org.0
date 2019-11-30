Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E2210DD4E
	for <lists+linux-mtd@lfdr.de>; Sat, 30 Nov 2019 10:41:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1rR4dtvo/UM13QvY2X1SnNbQLorTcb192ZfLTObruCg=; b=XHKXmyPW6rjAxg
	kFdjSm7r/Rh4WSfG6veTeFbpPlRiijOppJunNpz8aiPcr7ppxUUVoNcIr5pJ/ffIU9/Sx54+48AFy
	RKVaPTlXRSVmLJZpj7Q1/bIBIIhWr01CIKOr6Fz5qWrLA4z2+OxFiiH8VG91/EhaeCZv20H8Mn4gp
	vl4NX7Xc+P4UGombx4+ZLPpyZRtmrtlTR7pFQRQE3VNKIfYUnYX19l8Qin8ZPrD4IxNgYFbeU1DhP
	xjjQNR0uQeVKH+gZDbwdO2KznAZIDypPfyVR1pZhRzjmtwrK4/JlgMs+FpUwwESO8EsreYIugqEy7
	N2Ch/sDfhM4L+9P6FGyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iazFN-0006Yl-5v; Sat, 30 Nov 2019 09:41:01 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iazFE-0006Xz-LV
 for linux-mtd@lists.infradead.org; Sat, 30 Nov 2019 09:40:54 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 14FBABE64853C1B64890;
 Sat, 30 Nov 2019 17:40:40 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Sat, 30 Nov 2019
 17:40:38 +0800
From: Hou Tao <houtao1@huawei.com>
To: <linux-mtd@lists.infradead.org>
Subject: [PATCH 1/2] ubi: check the presence of volume before call
 ubi_fastmap_destroy_checkmap()
Date: Sat, 30 Nov 2019 17:48:00 +0800
Message-ID: <20191130094800.141345-1-houtao1@huawei.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_014052_883429_4C0F78EE 
X-CRM114-Status: UNSURE (   6.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: vigneshr@ti.com, dedekind1@gmail.com, richard@nod.at, marek.vasut@gmail.com,
 miquel.raynal@bootlin.com, computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Else there may be oops when fastmap is enabled and init_volumes() fails.

Signed-off-by: Hou Tao <houtao1@huawei.com>
---
 drivers/mtd/ubi/vtbl.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mtd/ubi/vtbl.c b/drivers/mtd/ubi/vtbl.c
index 53d8ab54e181..8a2a0f091598 100644
--- a/drivers/mtd/ubi/vtbl.c
+++ b/drivers/mtd/ubi/vtbl.c
@@ -852,6 +852,8 @@ int ubi_read_volume_table(struct ubi_device *ubi, struct ubi_attach_info *ai)
 out_free:
 	vfree(ubi->vtbl);
 	for (i = 0; i < ubi->vtbl_slots + UBI_INT_VOL_COUNT; i++) {
+		if (!ubi->volumes[i])
+			continue;
 		ubi_fastmap_destroy_checkmap(ubi->volumes[i]);
 		kfree(ubi->volumes[i]);
 		ubi->volumes[i] = NULL;
-- 
2.22.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
