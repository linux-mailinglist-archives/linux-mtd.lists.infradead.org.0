Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFBC14214D
	for <lists+linux-mtd@lfdr.de>; Mon, 20 Jan 2020 02:06:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mPnPCbiwMhahvj04jUlNPTI33RGO/Gg6zpLou7Nzihw=; b=k0eksubKc4aqX/xrmoCl7X7LeM
	iqCnSObjT96D8UZkB1ZopcnGWPbr+05fyFhz+LOWC7n6VXiMVCIn9PJ67rPRWb4C0duIRJGa/JGGS
	HNhLDZh55uX7cZ4OnqJHat3vinuniDkjgPj5rcppC5g4r5YSBkTIepBgnKUBz1pHCWQHIaqDQbUsX
	9b4Zsmzhhpn1htE/r946ds6xAHNcR+8mPN8jkgzBH3JEMXP7K1vKo6rvgd0ss9RL8mJQa2LPPM44S
	zuLA6er3gi+uppaoCetLRLFm6Pmi4KfYfDKyf1h5qdHtC1EVI86KYHmTaPvJmG5AhYV122mU5ov/p
	CKczYhsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itLWS-0004cp-Bj; Mon, 20 Jan 2020 01:06:32 +0000
Received: from smtp2207-205.mail.aliyun.com ([121.197.207.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itLUD-0001hH-Og
 for linux-mtd@lists.infradead.org; Mon, 20 Jan 2020 01:04:17 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.06717829|-1; CH=green;
 DM=CONTINUE|CONTINUE|true|0.275125-0.0157719-0.709104;
 DS=CONTINUE|ham_system_inform|0.0526277-0.000678506-0.946694;
 FP=0|0|0|0|0|-1|-1|-1; HT=e02c03294; MF=liaoweixiong@allwinnertech.com; NM=1;
 PH=DS; RN=17; RT=17; SR=0; TI=SMTPD_---.Gf.OYKf_1579482234; 
Received: from
 PC-liaoweixiong.allwinnertech.com(mailfrom:liaoweixiong@allwinnertech.com
 fp:SMTPD_---.Gf.OYKf_1579482234)
 by smtp.aliyun-inc.com(10.147.42.16); Mon, 20 Jan 2020 09:04:09 +0800
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
Subject: [PATCH v1 10/11] blkoops: add interface for dirver to get information
 of blkoops
Date: Mon, 20 Jan 2020 09:03:52 +0800
Message-Id: <1579482233-2672-11-git-send-email-liaoweixiong@allwinnertech.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1579482233-2672-1-git-send-email-liaoweixiong@allwinnertech.com>
References: <1579482233-2672-1-git-send-email-liaoweixiong@allwinnertech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_170413_999746_C19D75E7 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

It's one of a series of patches for adaptive to MTD device.

MTD device need to check size of recorder and get mtddev index to verify
which mtd device to use. All it needs is defined in blkoops. So, there
should be a interface for MTD driver to get all information it need.

Signed-off-by: WeiXiong Liao <liaoweixiong@allwinnertech.com>
---
 fs/pstore/blkoops.c     | 47 ++++++++++++++++++++++++++++++++++++-----------
 include/linux/blkoops.h | 10 ++++++++++
 2 files changed, 46 insertions(+), 11 deletions(-)

diff --git a/fs/pstore/blkoops.c b/fs/pstore/blkoops.c
index 6b74189e5820..a2f1e31488bb 100644
--- a/fs/pstore/blkoops.c
+++ b/fs/pstore/blkoops.c
@@ -117,6 +117,20 @@
 #define DEFAULT_BLKDEV ""
 #endif
 
+#define check_size(name, defsize, alignsize) ({			\
+	long _##name_ = (name);					\
+	if ((name) < 0)						\
+		_##name_ = (defsize);				\
+	_##name_ = _##name_ <= 0 ? 0 : (_##name_ * 1024);	\
+	if (_##name_ & (alignsize - 1)) {			\
+		pr_info(#name " must align to %d\n",		\
+				(alignsize));			\
+		_##name_ = ALIGN(name, alignsize);		\
+	}							\
+	_##name_;						\
+})
+
+
 /**
  * register device to blkoops
  *
@@ -148,18 +162,10 @@ int blkoops_register_device(struct blkoops_device *bo_dev)
 		bo_dev->flags = BLKOOPS_DEV_SUPPORT_ALL;
 #define verify_size(name, defsize, alignsize, enable) {			\
 		long _##name_;						\
-		if (!(enable))						\
-			_##name_ = 0;					\
-		else if ((name) >= 0)					\
-			_##name_ = (name);				\
+		if (enable)						\
+			_##name_ = check_size(name, defsize, alignsize);\
 		else							\
-			_##name_ = (defsize);				\
-		_##name_ = _##name_ <= 0 ? 0 : (_##name_ * 1024);	\
-		if (_##name_ & (alignsize - 1)) {			\
-			pr_info(#name " must align to %d\n",		\
-					(alignsize));			\
-			_##name_ = ALIGN(name, alignsize);		\
-		}							\
+			_##name_ = 0;					\
 		name = _##name_ / 1024;					\
 		bzinfo->name = _##name_;				\
 	}
@@ -460,6 +466,25 @@ int blkoops_blkdev_info(dev_t *devt, sector_t *nr_sects, sector_t *start_sect)
 }
 EXPORT_SYMBOL_GPL(blkoops_blkdev_info);
 
+/* get information of blkoops */
+int  blkoops_info(struct blkoops_info *info)
+{
+	if (!blkdev[0] && strlen(DEFAULT_BLKDEV))
+		snprintf(blkdev, 80, "%s", DEFAULT_BLKDEV);
+
+	memcpy(info->device, blkdev, 80);
+	info->dump_oops = !!(dump_oops < 0 ? DEFAULT_DUMP_OOPS : dump_oops);
+
+	info->dmesg_size = check_size(dmesg_size, DEFAULT_DMESG_SIZE, 4096);
+	info->pmsg_size = check_size(pmsg_size, DEFAULT_PMSG_SIZE, 4096);
+	info->ftrace_size = check_size(ftrace_size, DEFAULT_FTRACE_SIZE, 4096);
+	info->console_size = check_size(console_size, DEFAULT_CONSOLE_SIZE,
+			4096);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(blkoops_info);
+
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("WeiXiong Liao <liaoweixiong@allwinnertech.com>");
 MODULE_DESCRIPTION("Wrapper for Pstore BLK with Oops logger");
diff --git a/include/linux/blkoops.h b/include/linux/blkoops.h
index 11cb3036ad5f..ea56f3f92360 100644
--- a/include/linux/blkoops.h
+++ b/include/linux/blkoops.h
@@ -81,4 +81,14 @@ int  blkoops_register_blkdev(unsigned int major, unsigned int flags,
 void blkoops_unregister_blkdev(unsigned int major);
 int  blkoops_blkdev_info(dev_t *devt, sector_t *nr_sects, sector_t *start_sect);
 
+struct blkoops_info {
+	int dump_oops;
+	char device[80];
+	unsigned long dmesg_size;
+	unsigned long pmsg_size;
+	unsigned long console_size;
+	unsigned long ftrace_size;
+};
+int  blkoops_info(struct blkoops_info *info);
+
 #endif
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
