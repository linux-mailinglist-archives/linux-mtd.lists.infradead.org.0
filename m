Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 753C71CED68
	for <lists+linux-mtd@lfdr.de>; Tue, 12 May 2020 08:58:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mCs9tYjDSq/sEr/9BnrU3zFQ/GAzPX9fe/S3Sq6fBX4=; b=DUw
	+ewp2qEegTGL9vZVPDqcakJJcz3pcjdSfgKYTFvFol6jxgxoUWRgdrvwZtiaDIVNGh6+aEbNCLChb
	rE+VhCNjdM5FGJ0ThwqiHOPTNqY68YWIcRY/tdUXcPPeselPJM30RAQuDiQJ16WA701w0MF0OU6Pr
	DY5DQ13eWEDlACzjgQRW2HBFqSeTVZo9da1acZ/nSccq0n3WChDHm5hzGQNo2B34i/Bzg7RYLR+tg
	p++t0sl/ZQlUaXw1vFq2OUb36KUppAFhdaTny2w2aMnABEq9D24iVgM/p2fiPcaguauDbp841EM46
	gxrlLisBkaSlV7VvR2Kpm/xbB5F9Tbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYOsH-0004AL-Um; Tue, 12 May 2020 06:58:45 +0000
Received: from smtp2207-205.mail.aliyun.com ([121.197.207.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYOs8-00049O-SH
 for linux-mtd@lists.infradead.org; Tue, 12 May 2020 06:58:38 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.07436289|-1; CH=green;
 DM=|CONTINUE|false|;
 DS=CONTINUE|ham_system_inform|0.118451-0.00916542-0.872384;
 FP=0|0|0|0|0|-1|-1|-1; HT=e01a16378; MF=liaoweixiong@allwinnertech.com; NM=1;
 PH=DS; RN=10; RT=10; SR=0; TI=SMTPD_---.HXGIgNF_1589266705; 
Received: from
 PC-liaoweixiong.allwinnertech.com(mailfrom:liaoweixiong@allwinnertech.com
 fp:SMTPD_---.HXGIgNF_1589266705)
 by smtp.aliyun-inc.com(10.147.41.143);
 Tue, 12 May 2020 14:58:30 +0800
From: WeiXiong Liao <liaoweixiong@allwinnertech.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Kees Cook <keescook@chromium.org>, Anton Vorontsov <anton@enomsg.org>,
 Colin Cross <ccross@android.com>, Tony Luck <tony.luck@intel.com>
Subject: [PATCH] mtd: offset align to block size bofore block operation
Date: Tue, 12 May 2020 14:58:35 +0800
Message-Id: <1589266715-4168-1-git-send-email-liaoweixiong@allwinnertech.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_235837_094229_1C56F0B9 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [121.197.207.205 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: WeiXiong Liao <liaoweixiong@allwinnertech.com>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The off parameter on mtdpsore_block_*() does not align to block size,
which makes some bugs. For example, a block contains dmesg zones
with number 0 to 3. When user remove all these files, mapped to
these zones, mtdpstore is expected to check whether No.0 to No.3 is
unused then erase this block. However it check No.3 to No.6 because
it get wrongly beginning zonenum from misaligned off.

Signed-off-by: WeiXiong Liao <liaoweixiong@allwinnertech.com>
---

This patch bases on series v8 of pstore/blk.
Series Link: https://lore.kernel.org/lkml/20200511233229.27745-1-keescook@chromium.org/

 drivers/mtd/mtdpstore.c | 39 +++++++++++++++++++++++++++------------
 1 file changed, 27 insertions(+), 12 deletions(-)

diff --git a/drivers/mtd/mtdpstore.c b/drivers/mtd/mtdpstore.c
index 06084eff1004..a4fe6060b960 100644
--- a/drivers/mtd/mtdpstore.c
+++ b/drivers/mtd/mtdpstore.c
@@ -27,7 +27,10 @@ static int mtdpstore_block_isbad(struct mtdpstore_context *cxt, loff_t off)
 {
 	int ret;
 	struct mtd_info *mtd = cxt->mtd;
-	u64 blknum = div_u64(off, mtd->erasesize);
+	u64 blknum;
+
+	off = ALIGN_DOWN(off, mtd->erasesize);
+	blknum = div_u64(off, mtd->erasesize);
 
 	if (test_bit(blknum, cxt->badmap))
 		return true;
@@ -46,8 +49,10 @@ static inline int mtdpstore_panic_block_isbad(struct mtdpstore_context *cxt,
 		loff_t off)
 {
 	struct mtd_info *mtd = cxt->mtd;
-	u64 blknum = div_u64(off, mtd->erasesize);
+	u64 blknum;
 
+	off = ALIGN_DOWN(off, mtd->erasesize);
+	blknum = div_u64(off, mtd->erasesize);
 	return test_bit(blknum, cxt->badmap);
 }
 
@@ -75,9 +80,11 @@ static inline void mtdpstore_block_mark_unused(struct mtdpstore_context *cxt,
 		loff_t off)
 {
 	struct mtd_info *mtd = cxt->mtd;
-	u64 zonenum = div_u64(off, cxt->info.kmsg_size);
-	u32 zonecnt = cxt->mtd->erasesize / cxt->info.kmsg_size;
+	u32 zonecnt = mtd->erasesize / cxt->info.kmsg_size;
+	u64 zonenum;
 
+	off = ALIGN_DOWN(off, mtd->erasesize);
+	zonenum = div_u64(off, cxt->info.kmsg_size);
 	while (zonecnt > 0) {
 		dev_dbg(&mtd->dev, "mark zone %llu unused\n", zonenum);
 		clear_bit(zonenum, cxt->usedmap);
@@ -99,9 +106,12 @@ static inline int mtdpstore_is_used(struct mtdpstore_context *cxt, loff_t off)
 static int mtdpstore_block_is_used(struct mtdpstore_context *cxt,
 		loff_t off)
 {
-	u64 zonenum = div_u64(off, cxt->info.kmsg_size);
-	u32 zonecnt = cxt->mtd->erasesize / cxt->info.kmsg_size;
+	struct mtd_info *mtd = cxt->mtd;
+	u32 zonecnt = mtd->erasesize / cxt->info.kmsg_size;
+	u64 zonenum;
 
+	off = ALIGN_DOWN(off, mtd->erasesize);
+	zonenum = div_u64(off, cxt->info.kmsg_size);
 	while (zonecnt > 0) {
 		if (test_bit(zonenum, cxt->usedmap))
 			return true;
@@ -138,9 +148,12 @@ static void mtdpstore_mark_removed(struct mtdpstore_context *cxt, loff_t off)
 static void mtdpstore_block_clear_removed(struct mtdpstore_context *cxt,
 		loff_t off)
 {
-	u64 zonenum = div_u64(off, cxt->info.kmsg_size);
-	u32 zonecnt = cxt->mtd->erasesize / cxt->info.kmsg_size;
+	struct mtd_info *mtd = cxt->mtd;
+	u32 zonecnt = mtd->erasesize / cxt->info.kmsg_size;
+	u64 zonenum;
 
+	off = ALIGN_DOWN(off, mtd->erasesize);
+	zonenum = div_u64(off, cxt->info.kmsg_size);
 	while (zonecnt > 0) {
 		clear_bit(zonenum, cxt->rmmap);
 		zonenum++;
@@ -151,9 +164,12 @@ static void mtdpstore_block_clear_removed(struct mtdpstore_context *cxt,
 static int mtdpstore_block_is_removed(struct mtdpstore_context *cxt,
 		loff_t off)
 {
-	u64 zonenum = div_u64(off, cxt->info.kmsg_size);
-	u32 zonecnt = cxt->mtd->erasesize / cxt->info.kmsg_size;
+	struct mtd_info *mtd = cxt->mtd;
+	u32 zonecnt = mtd->erasesize / cxt->info.kmsg_size;
+	u64 zonenum;
 
+	off = ALIGN_DOWN(off, mtd->erasesize);
+	zonenum = div_u64(off, cxt->info.kmsg_size);
 	while (zonecnt > 0) {
 		if (test_bit(zonenum, cxt->rmmap))
 			return true;
@@ -169,6 +185,7 @@ static int mtdpstore_erase_do(struct mtdpstore_context *cxt, loff_t off)
 	struct erase_info erase;
 	int ret;
 
+	off = ALIGN_DOWN(off, cxt->mtd->erasesize);
 	dev_dbg(&mtd->dev, "try to erase off 0x%llx\n", off);
 	erase.len = cxt->mtd->erasesize;
 	erase.addr = off;
@@ -205,7 +222,6 @@ static ssize_t mtdpstore_erase(size_t size, loff_t off)
 	}
 
 	/* all zones are unused, erase it */
-	off = ALIGN_DOWN(off, cxt->mtd->erasesize);
 	return mtdpstore_erase_do(cxt, off);
 }
 
@@ -235,7 +251,6 @@ static int mtdpstore_security(struct mtdpstore_context *cxt, loff_t off)
 	}
 
 	/* If there is no any empty zone, we have no way but to do erase */
-	off = ALIGN_DOWN(off, erasesize);
 	while (blkcnt--) {
 		div64_u64_rem(off + erasesize, cxt->mtd->size, (u64 *)&off);
 
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
