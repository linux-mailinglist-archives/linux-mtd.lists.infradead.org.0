Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A7345C2E
	for <lists+linux-mtd@lfdr.de>; Fri, 14 Jun 2019 14:09:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f21H0lKj21AuDcZ378Y12H98J88Ck3TTtjhJYnNhehY=; b=ACJEpXZ8/vmhdx
	upCbXmUnnC+PhqLjs1C6mfiIVaU6Qgx0rMvAN9xxzcaVNUTrtqfw2h1c+os2mSlAz6dKlkRfgQGxr
	WwjcdujJizp8eUppEeYNPeE6kOJa8avZev6BXX3Zcm6txbAe+J7wb+ZWh7nzEe0NjER7VOWffNfq5
	pKnygyb6gJcoUyKyQOfBesdZIkUTzyrGuQM4x+2qisp1h3eEXp+8Ny9L2FZqsIGyjCN+h2yHoJSkn
	//KBq6JEJBwZJAyqoK3A/eg7wUmMPQCqr01VU9O4lGJgzclCZ8rXkvb1CQxHba3/wScjdbzLwELYJ
	BXZKtA8K4MIeoUtjctSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbl1P-0000sK-OZ; Fri, 14 Jun 2019 12:09:31 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbl1G-0000qx-NY
 for linux-mtd@lists.infradead.org; Fri, 14 Jun 2019 12:09:25 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 7F0193513AEB5FA10ADC;
 Fri, 14 Jun 2019 20:09:15 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Fri, 14 Jun 2019
 20:09:05 +0800
From: <chengzhihao1@huawei.com>
To: <david.oberhollenzer@sigma-star.at>, <richard@nod.at>,
 <boris.brezillon@bootlin.com>, <david@sigma-star.at>,
 <artem.bityutskiy@linux.intel.com>, <yi.zhang@huawei.com>
Subject: [PATCH mtd-utils] ubi-tests: ubi_mkvol_request: Fully initialize
 'struct ubi_mkvol_request req'
Date: Fri, 14 Jun 2019 20:14:38 +0800
Message-ID: <1560514478-54276-1-git-send-email-chengzhihao1@huawei.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_050923_247603_81AA370F 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: chengzhihao1@huawei.com, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Zhihao Cheng <chengzhihao1@huawei.com>

'struct ubi_mkvol_request req' is one parameter of the function 'ubi_mkvol'
, this parameter will be passed to kernel and then be checked. It acts as a
local variable in many ubi tests, such as io_basic, io_read, mkvol_bad,
mkvol_basic, etc.

After commit c355aa465fce ("ubi: expose the volume CRC check skip flag") in
linux-stable, 'struct ubi_mkvol_request' supports a new configuration named
'flags', and req.flags will be checked in kernel function
'verify_mkvol_req'. Currently, there is no initialization for req.flags
before 'ubi_mkvol' invoked. So, req.flags can be an arbitrary number passed
to kernel. When we run ubi tests in qemu (x86_64, kernel image: 5.2.0-rc4),
the following errors may occur:

  ======================================================================
  ======================================================================
  ======================================================================
  Test on mtdram, fastmap enabled, VID header offset factor 1
  ======================================================================
  ======================================================================
  ======================================================================
  mtdram: 16MiB, PEB size 16KiB, fastmap enabled
  Running mkvol_basic /dev/ubi0
  Running mkvol_bad /dev/ubi0
  [mkvol_bad] test_mkvol():105: ubi_mkvol failed with error 22
  (Invalid argument), expected 28 (No space left on device)
  [mkvol_bad] test_mkvol():105: bytes = 16060929
  Error: mkvol_bad failed
  FAILURE

This patch fully initializes every 'struct ubi_mkvol_request req' passed to
'ubi_mkvol', which can fix the bug that the ubi test failed caused by that
req.flags was not initialized. And it is still compatible with old kernel
before kernel commit c355aa465fce ("ubi: expose the volume CRC check skip
flag").

----------------------------------------

Signed-off-by: Zhihao Cheng <chengzhihao1@huawei.com>
---
 tests/ubi-tests/integ.c       | 1 +
 tests/ubi-tests/io_basic.c    | 2 ++
 tests/ubi-tests/io_paral.c    | 1 +
 tests/ubi-tests/io_read.c     | 2 ++
 tests/ubi-tests/io_update.c   | 1 +
 tests/ubi-tests/mkvol_bad.c   | 2 ++
 tests/ubi-tests/mkvol_basic.c | 3 +++
 tests/ubi-tests/mkvol_paral.c | 1 +
 tests/ubi-tests/rsvol.c       | 2 ++
 tests/ubi-tests/volrefcnt.c   | 1 +
 10 files changed, 16 insertions(+)

diff --git a/tests/ubi-tests/integ.c b/tests/ubi-tests/integ.c
index 1cd0649..fd38ef5 100644
--- a/tests/ubi-tests/integ.c
+++ b/tests/ubi-tests/integ.c
@@ -467,6 +467,7 @@ static void operate_on_ubi_device(struct ubi_device_info *ubi_device)
 		req.vol_id = UBI_VOL_NUM_AUTO;
 		req.alignment = 1; /* TODO: What is this? */
 		req.bytes = ubi_device->info.leb_size * max_ebs_per_vol;
+		req.flags = 0;
 		if (req.bytes == 0 || req.bytes > ubi_device->info.avail_bytes)
 			req.bytes = ubi_device->info.avail_bytes;
 		req.vol_type = UBI_DYNAMIC_VOLUME;
diff --git a/tests/ubi-tests/io_basic.c b/tests/ubi-tests/io_basic.c
index 3a296b4..288a351 100644
--- a/tests/ubi-tests/io_basic.c
+++ b/tests/ubi-tests/io_basic.c
@@ -55,6 +55,7 @@ static int test_basic(int type)
 	req.bytes = dev_info.avail_bytes;
 	req.vol_type = type;
 	req.name = name;
+	req.flags = 0;
 
 	if (ubi_mkvol(libubi, node, &req)) {
 		failed("ubi_mkvol");
@@ -102,6 +103,7 @@ static int test_aligned(int type)
 
 	req.vol_type = type;
 	req.name = name;
+	req.flags = 0;
 
 	for (i = 0; i < sizeof(alignments)/sizeof(int); i++) {
 		req.vol_id = UBI_VOL_NUM_AUTO;
diff --git a/tests/ubi-tests/io_paral.c b/tests/ubi-tests/io_paral.c
index 6c77ec1..4040b3e 100644
--- a/tests/ubi-tests/io_paral.c
+++ b/tests/ubi-tests/io_paral.c
@@ -266,6 +266,7 @@ int main(int argc, char * const argv[])
 		sprintf(vol_name[i], PROGRAM_NAME":%d", i);
 		reqests[i].name = vol_name[i];
 		reqests[i].vol_type = UBI_DYNAMIC_VOLUME;
+		reqests[i].flags = 0;
 		if (i == THREADS_NUM)
 			reqests[i].vol_type = UBI_STATIC_VOLUME;
 		sprintf(vol_nodes[i], UBI_VOLUME_PATTERN, dev_info.dev_num, i);
diff --git a/tests/ubi-tests/io_read.c b/tests/ubi-tests/io_read.c
index f48db67..3100ef1 100644
--- a/tests/ubi-tests/io_read.c
+++ b/tests/ubi-tests/io_read.c
@@ -74,6 +74,7 @@ static int test_static(void)
 	req.bytes = dev_info.avail_bytes;
 	req.vol_type = UBI_STATIC_VOLUME;
 	req.name = name;
+	req.flags = 0;
 
 	if (ubi_mkvol(libubi, node, &req)) {
 		failed("ubi_mkvol");
@@ -329,6 +330,7 @@ static int test_read(int type)
 		req.vol_id = UBI_VOL_NUM_AUTO;
 		req.vol_type = type;
 		req.name = name;
+		req.flags = 0;
 
 		req.alignment = alignments[i];
 		req.alignment -= req.alignment % dev_info.min_io_size;
diff --git a/tests/ubi-tests/io_update.c b/tests/ubi-tests/io_update.c
index fe3ad7b..f48df1d 100644
--- a/tests/ubi-tests/io_update.c
+++ b/tests/ubi-tests/io_update.c
@@ -233,6 +233,7 @@ static int test_update(int type)
 		req.vol_id = UBI_VOL_NUM_AUTO;
 		req.vol_type = type;
 		req.name = name;
+		req.flags = 0;
 
 		req.alignment = alignments[i];
 		req.alignment -= req.alignment % dev_info.min_io_size;
diff --git a/tests/ubi-tests/mkvol_bad.c b/tests/ubi-tests/mkvol_bad.c
index 486fbab..7e46726 100644
--- a/tests/ubi-tests/mkvol_bad.c
+++ b/tests/ubi-tests/mkvol_bad.c
@@ -48,6 +48,7 @@ static int test_mkvol(void)
 	req.bytes = dev_info.avail_bytes;
 	req.vol_type = UBI_DYNAMIC_VOLUME;
 	req.name = name;
+	req.flags = 0;
 
 	/* Bad volume ID */
 	req.vol_id = -2;
@@ -251,6 +252,7 @@ static int test_rmvol(void)
 	req.bytes = dev_info.avail_bytes;
 	req.vol_type = UBI_DYNAMIC_VOLUME;
 	req.name = name;
+	req.flags = 0;
 	if (ubi_mkvol(libubi, node, &req)) {
 		failed("ubi_mkvol");
 		return -1;
diff --git a/tests/ubi-tests/mkvol_basic.c b/tests/ubi-tests/mkvol_basic.c
index 88d115a..c7c6984 100644
--- a/tests/ubi-tests/mkvol_basic.c
+++ b/tests/ubi-tests/mkvol_basic.c
@@ -59,6 +59,7 @@ static int mkvol_alignment(void)
 
 		req.vol_type = UBI_DYNAMIC_VOLUME;
 		req.name = name;
+		req.flags = 0;
 
 		if (ubi_mkvol(libubi, node, &req)) {
 			failed("ubi_mkvol");
@@ -101,6 +102,7 @@ static int mkvol_basic(void)
 	req.bytes = dev_info.avail_bytes;
 	req.vol_type = UBI_DYNAMIC_VOLUME;
 	req.name = name;
+	req.flags = 0;
 
 	if (ubi_mkvol(libubi, node, &req)) {
 		failed("ubi_mkvol");
@@ -170,6 +172,7 @@ static int mkvol_multiple(void)
 		req.alignment = 1;
 		req.bytes = 1;
 		req.vol_type = UBI_STATIC_VOLUME;
+		req.flags = 0;
 
 		sprintf(nm, "%s:%d", name, i);
 		req.name = nm;
diff --git a/tests/ubi-tests/mkvol_paral.c b/tests/ubi-tests/mkvol_paral.c
index 95b5e10..41d5ae0 100644
--- a/tests/ubi-tests/mkvol_paral.c
+++ b/tests/ubi-tests/mkvol_paral.c
@@ -54,6 +54,7 @@ static void * the_thread(void *ptr)
 	req.vol_type = UBI_DYNAMIC_VOLUME;
 	sprintf(nm, "%s:%d", name, n);
 	req.name = nm;
+	req.flags = 0;
 
 	while (iter--) {
 		req.vol_id = UBI_VOL_NUM_AUTO;
diff --git a/tests/ubi-tests/rsvol.c b/tests/ubi-tests/rsvol.c
index 6bfade9..921b36f 100644
--- a/tests/ubi-tests/rsvol.c
+++ b/tests/ubi-tests/rsvol.c
@@ -54,6 +54,7 @@ static int test_basic(int type)
 	req.bytes = MIN_AVAIL_EBS * dev_info.leb_size;
 	req.vol_type = type;
 	req.name = name;
+	req.flags = 0;
 
 	if (ubi_mkvol(libubi, node, &req)) {
 		failed("ubi_mkvol");
@@ -237,6 +238,7 @@ static int test_rsvol(int type)
 		req.vol_id = UBI_VOL_NUM_AUTO;
 		req.vol_type = type;
 		req.name = name;
+		req.flags = 0;
 
 		req.alignment = alignments[i];
 		req.alignment -= req.alignment % dev_info.min_io_size;
diff --git a/tests/ubi-tests/volrefcnt.c b/tests/ubi-tests/volrefcnt.c
index 591a55a..328a8ad 100644
--- a/tests/ubi-tests/volrefcnt.c
+++ b/tests/ubi-tests/volrefcnt.c
@@ -67,6 +67,7 @@ int main(int argc, char * const argv[])
 	req.bytes = dev_info.leb_size;
 	req.vol_type = UBI_DYNAMIC_VOLUME;
 	req.name = "rmvol";
+	req.flags = 0;
 
 	if (ubi_mkvol(libubi, node, &req)) {
 		failed("ubi_mkvol");
-- 
2.7.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
