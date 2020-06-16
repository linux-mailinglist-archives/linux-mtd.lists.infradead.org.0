Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA61C1FA9C1
	for <lists+linux-mtd@lfdr.de>; Tue, 16 Jun 2020 09:11:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oWLkhhkOEvUFxekkh9QwQf9soji+5AVgfUqOW4+kNr8=; b=qY7uLQmVpc5EgL
	yebWeqelMJH9vd4NU+BQRWwwhr1PwFLQrsCIzCLVlH/Li1ItrszrXFXle7jOgeS9eQQXBOgJC0XHh
	UfoZYTQ6ebCm5IMY1ca8mA6DAdc0CAHg6J0kPWlV1qvXWr2kzYr3EoGezKKj5YCBctEyD6GY+Vp0g
	aghMmBwgM6e2j7cfSwLp8XKM0fpd0b+guAXdntKYZUzn/SqX4jWEi97thy1Hi5+K/ydVeR23HWNki
	qY+Iohf/8DVahHkN+j9jZrKH/YGuCcUl4WoKaLQL1mAXMtKJgRKv92euSf2FwO1tvAOHvpB3pLx5e
	xE6NXFZ2+8PwfkAVStag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl5kQ-0006dK-VC; Tue, 16 Jun 2020 07:11:06 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl5kB-0006bc-EM
 for linux-mtd@lists.infradead.org; Tue, 16 Jun 2020 07:10:53 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id BF4DC7B672CDA1EA1E02;
 Tue, 16 Jun 2020 15:10:43 +0800 (CST)
Received: from huawei.com (10.175.127.227) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.487.0; Tue, 16 Jun 2020
 15:10:32 +0800
From: Zhihao Cheng <chengzhihao1@huawei.com>
To: <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH RFC 2/5] Revert "ubifs: Fix out-of-bounds memory access caused
 by abnormal value of node_len"
Date: Tue, 16 Jun 2020 15:11:43 +0800
Message-ID: <20200616071146.2607061-3-chengzhihao1@huawei.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200616071146.2607061-1-chengzhihao1@huawei.com>
References: <20200616071146.2607061-1-chengzhihao1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.127.227]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_001052_059317_1406A8CF 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: richard@nod.at, liu.song11@zte.com.cn, yi.zhang@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This reverts commit acc5af3efa303d5f36cc8c0f61716161f6ca1384.

No need to avoid memory oob in dumping for data node alone. Later, node
length will be passed into function 'ubifs_dump_node()' which replaces
all node dumping places.

Signed-off-by: Zhihao Cheng <chengzhihao1@huawei.com>
---
 fs/ubifs/io.c | 16 ++--------------
 1 file changed, 2 insertions(+), 14 deletions(-)

diff --git a/fs/ubifs/io.c b/fs/ubifs/io.c
index 7e4bfaf2871f..8ceb51478800 100644
--- a/fs/ubifs/io.c
+++ b/fs/ubifs/io.c
@@ -225,7 +225,7 @@ int ubifs_is_mapped(const struct ubifs_info *c, int lnum)
 int ubifs_check_node(const struct ubifs_info *c, const void *buf, int lnum,
 		     int offs, int quiet, int must_chk_crc)
 {
-	int err = -EINVAL, type, node_len, dump_node = 1;
+	int err = -EINVAL, type, node_len;
 	uint32_t crc, node_crc, magic;
 	const struct ubifs_ch *ch = buf;
 
@@ -278,22 +278,10 @@ int ubifs_check_node(const struct ubifs_info *c, const void *buf, int lnum,
 out_len:
 	if (!quiet)
 		ubifs_err(c, "bad node length %d", node_len);
-	if (type == UBIFS_DATA_NODE && node_len > UBIFS_DATA_NODE_SZ)
-		dump_node = 0;
 out:
 	if (!quiet) {
 		ubifs_err(c, "bad node at LEB %d:%d", lnum, offs);
-		if (dump_node) {
-			ubifs_dump_node(c, buf);
-		} else {
-			int safe_len = min3(node_len, c->leb_size - offs,
-				(int)UBIFS_MAX_DATA_NODE_SZ);
-			pr_err("\tprevent out-of-bounds memory access\n");
-			pr_err("\ttruncated data node length      %d\n", safe_len);
-			pr_err("\tcorrupted data node:\n");
-			print_hex_dump(KERN_ERR, "\t", DUMP_PREFIX_OFFSET, 32, 1,
-					buf, safe_len, 0);
-		}
+		ubifs_dump_node(c, buf);
 		dump_stack();
 	}
 	return err;
-- 
2.25.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
