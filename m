Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7EF71E73AF
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 05:38:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Wu6Qhn020nWC2Bsm7nE/6Qd6X5M+cwI7GLGQqEfBNzk=; b=PNA/xEUnJsP9Dv
	UV3Lmcfe/Fjfmyo1JOGspbjnYroeYqTAM0gN3Ka+nZFnttfeVrDGRHZraXygERodbsyfzG+6e7/7t
	h7/RKiAyrKeXnQbyeKs372iMv7eXNk7advGuE5nV0x2qJHcqaKDEnjpfDA+Dhxkcmqb00hZtB8vt5
	UsaveVL8fjT0xLp7Ffd55G8JN1Ua/3oeOtwl3UdNgU3QnMpQdg3CjWwWI1fGmRp8kWm9u7ufMLrRr
	10w8FyAcwFW4PcQWDfTDKhq21BQokM1M7brtVCd9kusZ4+HktdRLlDWXG0Ip90DksiGOeoatYrpw0
	V3o99nQdzOuRKgNE0sRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeVqg-000770-Ez; Fri, 29 May 2020 03:38:22 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeVqZ-000763-Vd
 for linux-mtd@lists.infradead.org; Fri, 29 May 2020 03:38:17 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 63E0621DD35E910CA2B7;
 Fri, 29 May 2020 11:38:13 +0800 (CST)
Received: from DESKTOP-FKFNUOQ.china.huawei.com (10.67.101.2) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.487.0; Fri, 29 May 2020 11:38:11 +0800
From: Zhe Li <lizhe67@huawei.com>
To: <dwmw2@infradead.org>, <linux-mtd@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] jffs2: fix nothing output for "ls" command
Date: Fri, 29 May 2020 11:38:09 +0800
Message-ID: <20200529033809.113516-1-lizhe67@huawei.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.67.101.2]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_203816_180321_C2C25442 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Recently I find a bug that I get nothing with shell
command "ls". The test steps are listed below.
1. cd $JFFS2_MOUNT_DIR
2. touch file
3. ls

Finally I find that when command "ls" going into
function jffs2_readdir(), it get non-zero return
value from function dir_emit(). So I get nothing
from "ls", absolutely.

After checking my file system image, I find a raw
dirent node with nsize = 0. The full_scan mounting
process do not check nsize and the return value
of strnlen(rd->name, rd->nsize) carefully, which
causes function jffs2_readdir pass 0 to parameter
namelen of function dir_emit when we use command
"ls".

Of course it should never happened to find a raw
dirent with nsize = 0. In my opinion, this abnormal
phenomenon maybe cause by bad driver or bad medium.
But for rebustness reason, jffs2 should handle it.

This patch add codes to check the nsize and the
return value of strnlen(rd->name, rd->nsize). If
abnormal node is found, use function jffs2_scan_dirty_space
to deal with it.

Signed-off-by: Zhe Li <lizhe67@huawei.com>
---
 fs/jffs2/scan.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/fs/jffs2/scan.c b/fs/jffs2/scan.c
index 5f7e284..ff37d92 100644
--- a/fs/jffs2/scan.c
+++ b/fs/jffs2/scan.c
@@ -1065,8 +1065,21 @@ static int jffs2_scan_dirent_node(struct jffs2_sb_info *c, struct jffs2_eraseblo
 
 	pseudo_random += je32_to_cpu(rd->version);
 
+	if (rd->nsize == 0) {
+		pr_err("%s(): Node nsize is zero at 0x%08x\n", __func__, ofs);
+		if ((err = jffs2_scan_dirty_space(c, jeb, PAD(je32_to_cpu(rd->totlen)))))
+			return err;
+		return 0;
+	}
+
 	/* Should never happen. Did. (OLPC trac #4184)*/
 	checkedlen = strnlen(rd->name, rd->nsize);
+	if (checkedlen == 0) {
+		pr_err("Dirent at %08x get zero checkedlen\n", ofs);
+		if ((err = jffs2_scan_dirty_space(c, jeb, PAD(je32_to_cpu(rd->totlen)))))
+			return err;
+		return 0;
+	}
 	if (checkedlen < rd->nsize) {
 		pr_err("Dirent at %08x has zeroes in name. Truncating to %d chars\n",
 		       ofs, checkedlen);
-- 
2.7.4



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
