Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B7D1557B6
	for <lists+linux-mtd@lfdr.de>; Fri,  7 Feb 2020 13:27:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gxAe2qTvxDmCMUhQNE4OwB/GXgthq65hHy7ps2JSTGM=; b=BZXPnKtk7gW4HfmeNR6gg7u84y
	d6sqUgLzmkkc0PInIYFWKkuvxDWOw4xuOP8NFNMJwo0ftZDlq7ah6cNGCO3/d0aw244euhzRryohB
	hDRftQf9Lx+EX4uVs92ArjRAKJ2cEmExbGgU7oXzTj0HHiVbZfEyZiH4uR2hgsm5mcWt/p6ZW/k5n
	WFmdF0lKQSq/WyEEfYziOXQKuqDJs8fy0ad3TXwYfhL8GxijbrFEmjoRx0fMTEg2rcMGL/WwenCiF
	9x+f43v6NucsNwTucVOldoueHWMpglwD+NQJX0CaRmMgnAHsm4AyQYQiihRBDDQ5d3qf3t/NIPZp3
	Vv3Rj80Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j02jH-0003ii-VT; Fri, 07 Feb 2020 12:27:27 +0000
Received: from smtp2207-205.mail.aliyun.com ([121.197.207.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j02i2-0002eb-Ha
 for linux-mtd@lists.infradead.org; Fri, 07 Feb 2020 12:26:12 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.06712966|-1; CH=green;
 DM=CONTINUE|CONTINUE|true|0.295461-0.0239955-0.680544;
 DS=CONTINUE|ham_system_inform|0.132419-0.000329682-0.867252;
 FP=0|0|0|0|0|-1|-1|-1; HT=e01l07447; MF=liaoweixiong@allwinnertech.com; NM=1;
 PH=DS; RN=17; RT=17; SR=0; TI=SMTPD_---.GlaQplc_1581078351; 
Received: from
 PC-liaoweixiong.allwinnertech.com(mailfrom:liaoweixiong@allwinnertech.com
 fp:SMTPD_---.GlaQplc_1581078351)
 by smtp.aliyun-inc.com(10.147.41.137);
 Fri, 07 Feb 2020 20:26:03 +0800
From: WeiXiong Liao <liaoweixiong@allwinnertech.com>
To: Kees Cook <keescook@chromium.org>, Anton Vorontsov <anton@enomsg.org>,
 Colin Cross <ccross@android.com>, Tony Luck <tony.luck@intel.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: [PATCH v2 05/11] pstore/blk: blkoops: support ftrace recorder
Date: Fri,  7 Feb 2020 20:25:49 +0800
Message-Id: <1581078355-19647-6-git-send-email-liaoweixiong@allwinnertech.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1581078355-19647-1-git-send-email-liaoweixiong@allwinnertech.com>
References: <1581078355-19647-1-git-send-email-liaoweixiong@allwinnertech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_042610_911672_E144B078 
X-CRM114-Status: GOOD (  17.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [121.197.207.205 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-doc@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Support recorder for ftrace. To enable ftrace recorder, just make
ftrace_size be greater than 0 and a multiple of 4096.

Signed-off-by: WeiXiong Liao <liaoweixiong@allwinnertech.com>
---
 fs/pstore/Kconfig          | 12 ++++++++
 fs/pstore/blkoops.c        | 11 +++++++
 fs/pstore/blkzone.c        | 75 ++++++++++++++++++++++++++++++++++++++++++++--
 include/linux/pstore_blk.h |  4 +++
 4 files changed, 99 insertions(+), 3 deletions(-)

diff --git a/fs/pstore/Kconfig b/fs/pstore/Kconfig
index 5f0a42823028..308a0a4c5ee5 100644
--- a/fs/pstore/Kconfig
+++ b/fs/pstore/Kconfig
@@ -210,6 +210,18 @@ config PSTORE_BLKOOPS_CONSOLE_SIZE
 	  NOTE that, both kconfig and module parameters can configure blkoops,
 	  but module parameters have priority over kconfig.
 
+config PSTORE_BLKOOPS_FTRACE_SIZE
+	int "ftrace size in kbytes for blkoops"
+	depends on PSTORE_BLKOOPS
+	depends on PSTORE_FTRACE
+	default 64
+	help
+	  This just sets size of ftrace (ftrace_size) for pstore/blk. The
+	  size is in KB and must be a multiple of 4.
+
+	  NOTE that, both kconfig and module parameters can configure blkoops,
+	  but module parameters have priority over kconfig.
+
 config PSTORE_BLKOOPS_BLKDEV
 	string "block device for blkoops"
 	depends on PSTORE_BLKOOPS
diff --git a/fs/pstore/blkoops.c b/fs/pstore/blkoops.c
index 05990bc3b168..c76bab671b0b 100644
--- a/fs/pstore/blkoops.c
+++ b/fs/pstore/blkoops.c
@@ -24,6 +24,10 @@
 module_param(console_size, long, 0400);
 MODULE_PARM_DESC(console_size, "console size in kbytes");
 
+static long ftrace_size = -1;
+module_param(ftrace_size, long, 0400);
+MODULE_PARM_DESC(ftrace_size, "ftrace size in kbytes");
+
 static int dump_oops = -1;
 module_param(dump_oops, int, 0400);
 MODULE_PARM_DESC(total_size, "whether dump oops");
@@ -80,6 +84,12 @@
 #define DEFAULT_CONSOLE_SIZE 0
 #endif
 
+#ifdef CONFIG_PSTORE_BLKOOPS_FTRACE_SIZE
+#define DEFAULT_FTRACE_SIZE CONFIG_PSTORE_BLKOOPS_FTRACE_SIZE
+#else
+#define DEFAULT_FTRACE_SIZE 0
+#endif
+
 #ifdef CONFIG_PSTORE_BLKOOPS_DUMP_OOPS
 #define DEFAULT_DUMP_OOPS CONFIG_PSTORE_BLKOOPS_DUMP_OOPS
 #else
@@ -135,6 +145,7 @@ int blkoops_register_device(struct blkoops_device *bo_dev)
 	verify_size(dmesg_size, DEFAULT_DMESG_SIZE, 4096);
 	verify_size(pmsg_size, DEFAULT_PMSG_SIZE, 4096);
 	verify_size(console_size, DEFAULT_CONSOLE_SIZE, 4096);
+	verify_size(ftrace_size, DEFAULT_FTRACE_SIZE, 4096);
 #undef verify_size
 	dump_oops = !!(dump_oops < 0 ? DEFAULT_DUMP_OOPS : dump_oops);
 
diff --git a/fs/pstore/blkzone.c b/fs/pstore/blkzone.c
index 9a7e9b06ccf7..442e5a5bbfda 100644
--- a/fs/pstore/blkzone.c
+++ b/fs/pstore/blkzone.c
@@ -89,10 +89,13 @@ struct blkz_context {
 	struct blkz_zone **dbzs;	/* dmesg block zones */
 	struct blkz_zone *pbz;		/* Pmsg block zone */
 	struct blkz_zone *cbz;		/* console block zone */
+	struct blkz_zone **fbzs;	/* Ftrace zones */
 	unsigned int dmesg_max_cnt;
 	unsigned int dmesg_read_cnt;
 	unsigned int pmsg_read_cnt;
 	unsigned int console_read_cnt;
+	unsigned int ftrace_max_cnt;
+	unsigned int ftrace_read_cnt;
 	unsigned int dmesg_write_cnt;
 	/*
 	 * the counter should be recovered when recover.
@@ -281,6 +284,7 @@ static void blkz_flush_all_dirty_zones(struct work_struct *work)
 	blkz_flush_dirty_zone(cxt->pbz);
 	blkz_flush_dirty_zone(cxt->cbz);
 	blkz_flush_dirty_zones(cxt->dbzs, cxt->dmesg_max_cnt);
+	blkz_flush_dirty_zones(cxt->fbzs, cxt->ftrace_max_cnt);
 }
 
 static int blkz_recover_dmesg_data(struct blkz_context *cxt)
@@ -497,6 +501,31 @@ static int blkz_recover_zone(struct blkz_context *cxt, struct blkz_zone *zone)
 	return ret;
 }
 
+static int blkz_recover_zones(struct blkz_context *cxt,
+		struct blkz_zone **zones, unsigned int cnt)
+{
+	int ret;
+	unsigned int i;
+	struct blkz_zone *zone;
+
+	if (!zones)
+		return 0;
+
+	for (i = 0; i < cnt; i++) {
+		zone = zones[i];
+		if (unlikely(!zone))
+			continue;
+		ret = blkz_recover_zone(cxt, zone);
+		if (ret)
+			goto recover_fail;
+	}
+
+	return 0;
+recover_fail:
+	pr_debug("recover %s[%u] failed\n", zone->name, i);
+	return ret;
+}
+
 static inline int blkz_recovery(struct blkz_context *cxt)
 {
 	int ret = -EBUSY;
@@ -516,6 +545,10 @@ static inline int blkz_recovery(struct blkz_context *cxt)
 	if (ret)
 		goto recover_fail;
 
+	ret = blkz_recover_zones(cxt, cxt->fbzs, cxt->ftrace_max_cnt);
+	if (ret)
+		goto recover_fail;
+
 	pr_debug("recover end!\n");
 	atomic_set(&cxt->recovered, 1);
 	return 0;
@@ -532,6 +565,7 @@ static int blkz_pstore_open(struct pstore_info *psi)
 	cxt->dmesg_read_cnt = 0;
 	cxt->pmsg_read_cnt = 0;
 	cxt->console_read_cnt = 0;
+	cxt->ftrace_read_cnt = 0;
 	return 0;
 }
 
@@ -589,6 +623,8 @@ static int blkz_pstore_erase(struct pstore_record *record)
 		return blkz_record_erase(cxt, cxt->pbz);
 	case PSTORE_TYPE_CONSOLE:
 		return blkz_record_erase(cxt, cxt->cbz);
+	case PSTORE_TYPE_FTRACE:
+		return blkz_record_erase(cxt, cxt->fbzs[record->id]);
 	default: return -EINVAL;
 	}
 }
@@ -743,6 +779,13 @@ static int notrace blkz_pstore_write(struct pstore_record *record)
 		return blkz_record_write(cxt, cxt->cbz, record);
 	case PSTORE_TYPE_PMSG:
 		return blkz_record_write(cxt, cxt->pbz, record);
+	case PSTORE_TYPE_FTRACE: {
+		int zonenum = smp_processor_id();
+
+		if (!cxt->fbzs)
+			return -ENOSPC;
+		return blkz_record_write(cxt, cxt->fbzs[zonenum], record);
+	}
 	default:
 		return -EINVAL;
 	}
@@ -759,6 +802,12 @@ static struct blkz_zone *blkz_read_next_zone(struct blkz_context *cxt)
 			return zone;
 	}
 
+	while (cxt->ftrace_read_cnt < cxt->ftrace_max_cnt) {
+		zone = cxt->fbzs[cxt->ftrace_read_cnt++];
+		if (blkz_old_ok(zone))
+			return zone;
+	}
+
 	if (cxt->pmsg_read_cnt == 0) {
 		cxt->pmsg_read_cnt++;
 		zone = cxt->pbz;
@@ -881,6 +930,9 @@ static ssize_t blkz_pstore_read(struct pstore_record *record)
 		readop = blkz_dmesg_read;
 		record->id = cxt->dmesg_read_cnt - 1;
 		break;
+	case PSTORE_TYPE_FTRACE:
+		record->id = cxt->ftrace_read_cnt - 1;
+		/* fallthrough */
 	case PSTORE_TYPE_CONSOLE:
 		/* fallthrough */
 	case PSTORE_TYPE_PMSG:
@@ -1046,15 +1098,27 @@ static int blkz_cut_zones(struct blkz_context *cxt)
 		goto free_pmsg;
 	}
 
+	off_size += info->ftrace_size;
+	cxt->fbzs = blkz_init_zones(PSTORE_TYPE_FTRACE, &off,
+			info->ftrace_size,
+			info->ftrace_size / nr_cpu_ids,
+			&cxt->ftrace_max_cnt);
+	if (IS_ERR(cxt->fbzs)) {
+		err = PTR_ERR(cxt->fbzs);
+		goto free_console;
+	}
+
 	cxt->dbzs = blkz_init_zones(PSTORE_TYPE_DMESG, &off,
 			info->total_size - off_size,
 			info->dmesg_size, &cxt->dmesg_max_cnt);
 	if (IS_ERR(cxt->dbzs)) {
 		err = PTR_ERR(cxt->dbzs);
-		goto free_console;
+		goto free_ftrace;
 	}
 
 	return 0;
+free_ftrace:
+	blkz_free_zones(&cxt->fbzs, &cxt->ftrace_max_cnt);
 free_console:
 	blkz_free_zone(&cxt->cbz);
 free_pmsg:
@@ -1103,6 +1167,7 @@ int blkz_register(struct blkz_info *info)
 	check_size(dmesg_size, SECTOR_SIZE);
 	check_size(pmsg_size, SECTOR_SIZE);
 	check_size(console_size, SECTOR_SIZE);
+	check_size(ftrace_size, SECTOR_SIZE);
 
 #undef check_size
 
@@ -1136,6 +1201,7 @@ int blkz_register(struct blkz_info *info)
 	pr_debug("\tdmesg size : %ld Bytes\n", info->dmesg_size);
 	pr_debug("\tpmsg size : %ld Bytes\n", info->pmsg_size);
 	pr_debug("\tconsole size : %ld Bytes\n", info->console_size);
+	pr_debug("\tftrace size : %ld Bytes\n", info->ftrace_size);
 
 	err = blkz_cut_zones(cxt);
 	if (err) {
@@ -1159,13 +1225,16 @@ int blkz_register(struct blkz_info *info)
 		cxt->pstore.flags |= PSTORE_FLAGS_PMSG;
 	if (info->console_size)
 		cxt->pstore.flags |= PSTORE_FLAGS_CONSOLE;
+	if (info->ftrace_size)
+		cxt->pstore.flags |= PSTORE_FLAGS_FTRACE;
 
-	pr_info("Registered %s as blkzone backend for %s%s%s%s\n",
+	pr_info("Registered %s as blkzone backend for %s%s%s%s%s\n",
 			info->name,
 			cxt->dbzs && cxt->bzinfo->dump_oops ? "Oops " : "",
 			cxt->dbzs && cxt->bzinfo->panic_write ? "Panic " : "",
 			cxt->pbz ? "Pmsg " : "",
-			cxt->cbz ? "Console" : "");
+			cxt->cbz ? "Console " : "",
+			cxt->fbzs ? "Ftrace" : "");
 
 	err = pstore_register(&cxt->pstore);
 	if (err) {
diff --git a/include/linux/pstore_blk.h b/include/linux/pstore_blk.h
index 546375e04419..77704c1b404a 100644
--- a/include/linux/pstore_blk.h
+++ b/include/linux/pstore_blk.h
@@ -25,6 +25,9 @@
  * @console_size:
  *	The size of zone for console. Zero means disabled, othewise, it must
  *	be multiple of SECTOR_SIZE(512).
+ * @ftrace_size:
+ *	The size of zone for ftrace. Zero means disabled, othewise, it must
+ *	be multiple of SECTOR_SIZE(512).
  * @dump_oops:
  *	Dump oops and panic log or only panic.
  * @read, @write:
@@ -60,6 +63,7 @@ struct blkz_info {
 	unsigned long dmesg_size;
 	unsigned long pmsg_size;
 	unsigned long console_size;
+	unsigned long ftrace_size;
 	int dump_oops;
 	blkz_read_op read;
 	blkz_write_op write;
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
