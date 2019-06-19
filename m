Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF434BF03
	for <lists+linux-mtd@lfdr.de>; Wed, 19 Jun 2019 18:52:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HfPNRB6FOMd3lhKbGmFNicad1Mrrh1G8X2Sh/qHmdaI=; b=q84z4iZhGymQUksY+APehhiYvZ
	KX7kBdh+3NJ/61yMLgsejLZylnMuoFvMDw+5HmhZZHMUqWiMdn4nwTfaRR1MLgdXlt5useOiCZcCt
	uD3m/V2p/o6c6jhssVGr/xGIz4cgkgR9krJz26cxVs9G4MHPbjqkewqCM3LeBARxiQq3GSf3Lh+46
	8+84UBmYKcRD92APnEzLmrdz97R6OLL4NHo9wjEXzJSCqR605dUGt65d+jrZ0rHzca7h59c32o1R1
	Fbk+x4e/ddHtEv8HNdNqq8MuXJmBlxXPkdcFyzSwyVCdgXuVtRoEQhRY54uSauwwrdW8a9wyXya58
	4OGJMVjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hddp1-000254-2f; Wed, 19 Jun 2019 16:52:31 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hddn6-0000On-MC
 for linux-mtd@lists.infradead.org; Wed, 19 Jun 2019 16:50:34 +0000
Received: by mail-pf1-x441.google.com with SMTP id 81so10088837pfy.13
 for <linux-mtd@lists.infradead.org>; Wed, 19 Jun 2019 09:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WBpPVMR3EMJFOYJB4efEtqMKJOvUZYRc0SaMNGF6JA4=;
 b=MpqpfqtkTaUOUI5x6XzjXFJnJ+ahboW+3NjUV+XL9RD39S8tt8dRPeykggFW6DttD/
 ajqiJxXzrXMQwhrCuRq+hX2DEbLCYazvP+AH9ohWS9AZ+w+qiLojNBk/9pZ02yal/duk
 3hzIbBY1C6tTP8Uaaj9bJaTNw4SuT4mSisRv8MLRbhjCfIYYG64XpeWOSO0uoGIlRwlt
 q6D3Zkqx3piYlEv3rnf5llFG7j9WnlGZLFJOj1c7R2BqI3OokKcY7LXnZGxvRcrvxzKW
 BdhlM16kXFSUnhoGFubLv/fT0yaW+SmjyZFT7aC2xSL5pCjzSI5+xWRGlq5FpXhLdqcW
 Ru+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WBpPVMR3EMJFOYJB4efEtqMKJOvUZYRc0SaMNGF6JA4=;
 b=OOAVTOb9Ob5adX5/HHFwpkDmW7o1Dk1Kmf+Rsscv62a4ww3b6JtIRPAaer6ea9l+DP
 LIKGSGyaT65QnNHQz/SGNfJvGbpC4wTmc2OGqa3lwSfjTqF9tlKSVkN883mzOuzS6e5y
 nCb5OyC224A87CL4gJxKMhIrmjg6Zm6LirhzCixOrNe/X578Wz8vOYzYWRz3GhII+uIl
 iipAbGL5u7j8MjUQGGdDVrTFh0MjFoRDjEMEpOG+v9bKcXuPLRxAHokIjOQFSY9Zr0Ju
 KELnq7e/8srKX31UP1xkfH1T3EwrqC8ONxtnq5iMsuZ/kNE10KGT8x9RNK/paZumEiLT
 mK/w==
X-Gm-Message-State: APjAAAUgIzo0SetdFZbBKubGzyeCUhvT7g1Al9SYjJ0KTFYs+ps9oRD8
 ZsvOqqdlQ2mIieNQfqodHbU=
X-Google-Smtp-Source: APXvYqxCPZ7QBTYeyI9kJp9EFuZ8moaAu8X/tOSuMncO1+ThX+23vjFanY40roOyR7zjurcLHELjQA==
X-Received: by 2002:a63:348b:: with SMTP id b133mr2309019pga.185.1560963031425; 
 Wed, 19 Jun 2019 09:50:31 -0700 (PDT)
Received: from localhost.localdomain (M106072039032.v4.enabler.ne.jp.
 [106.72.39.32])
 by smtp.gmail.com with ESMTPSA id j1sm21344894pfe.101.2019.06.19.09.50.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 09:50:31 -0700 (PDT)
From: Tokunori Ikegami <ikegami.t@gmail.com>
To: Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v7 7/9] mtd: cfi_cmdset_0002: Split to wait write buffer to
 check if completed
Date: Thu, 20 Jun 2019 01:49:59 +0900
Message-Id: <20190619165001.28410-8-ikegami.t@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190619165001.28410-1-ikegami.t@gmail.com>
References: <20190619165001.28410-1-ikegami.t@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_095032_785943_904E8236 
X-CRM114-Status: GOOD (  18.94  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ikegami.t[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FREEMAIL_REPLY         From and body contain different freemails
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
Cc: Tokunori Ikegami <ikegami.t@gmail.com>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-mtd@lists.infradead.org, Fabio Bettoni <fbettoni@gmail.com>,
 Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Just refactor to split the wait from do_write_buffer().

Signed-off-by: Tokunori Ikegami <ikegami.t@gmail.com>
Cc: Fabio Bettoni <fbettoni@gmail.com>
Co: Hauke Mehrtens <hauke@hauke-m.de>
Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
Cc: linux-mtd@lists.infradead.org
---
Changes since v6:
- Removed the tag of Koen Vandeputte as same with the v7 1/9 patch.
- Address the ./scripts/checkpatch.pl issues.

Changes since v5:
- Rebased on top of Liu Jian's fixes in master.
- Change the email address of Tokunori Ikegami to ikegami.t@gmail.com.

Changes since v4:
- None.

Changes since v3:
- Just change the email address of Tokunori Ikegami to ikegami_to@yahoo.co.jp.

Changes since v2:
- None.

Changes since v1:
- Add the patch.

 drivers/mtd/chips/cfi_cmdset_0002.c | 89 +++++++++++++++++++++----------------
 1 file changed, 50 insertions(+), 39 deletions(-)

diff --git a/drivers/mtd/chips/cfi_cmdset_0002.c b/drivers/mtd/chips/cfi_cmdset_0002.c
index 08b161ccb58c..50d9e2348845 100644
--- a/drivers/mtd/chips/cfi_cmdset_0002.c
+++ b/drivers/mtd/chips/cfi_cmdset_0002.c
@@ -1828,6 +1828,55 @@ static int cfi_amdstd_write_words(struct mtd_info *mtd, loff_t to, size_t len,
 	return 0;
 }
 
+static int __xipram do_write_buffer_wait(struct map_info *map,
+					 struct flchip *chip, unsigned long adr,
+					 map_word datum)
+{
+	unsigned long timeo;
+	unsigned long u_write_timeout;
+	int ret = 0;
+
+	/*
+	 * Timeout is calculated according to CFI data, if available.
+	 * See more comments in cfi_cmdset_0002().
+	 */
+	u_write_timeout = usecs_to_jiffies(chip->buffer_write_time_max);
+	timeo = jiffies + u_write_timeout;
+
+	for (;;) {
+		if (chip->state != FL_WRITING) {
+			/* Someone's suspended the write. Sleep */
+			DECLARE_WAITQUEUE(wait, current);
+
+			set_current_state(TASK_UNINTERRUPTIBLE);
+			add_wait_queue(&chip->wq, &wait);
+			mutex_unlock(&chip->mutex);
+			schedule();
+			remove_wait_queue(&chip->wq, &wait);
+			timeo = jiffies + (HZ / 2); /* FIXME */
+			mutex_lock(&chip->mutex);
+			continue;
+		}
+
+		/*
+		 * We check "time_after" and "!chip_good" before checking
+		 * "chip_good" to avoid the failure due to scheduling.
+		 */
+		if (time_after(jiffies, timeo) && !chip_good(map, adr, datum)) {
+			ret = -EIO;
+			break;
+		}
+
+		if (chip_good(map, adr, datum))
+			break;
+
+		/* Latency issues. Drop the lock, wait a while and retry */
+		UDELAY(map, chip, adr, 1);
+	}
+
+	return ret;
+}
+
 static void __xipram do_write_buffer_reset(struct map_info *map,
 					   struct flchip *chip,
 					   struct cfi_private *cfi)
@@ -1858,13 +1907,6 @@ static int __xipram do_write_buffer(struct map_info *map, struct flchip *chip,
 				    int len)
 {
 	struct cfi_private *cfi = map->fldrv_priv;
-	unsigned long timeo = jiffies + HZ;
-	/*
-	 * Timeout is calculated according to CFI data, if available.
-	 * See more comments in cfi_cmdset_0002().
-	 */
-	unsigned long uWriteTimeout =
-				usecs_to_jiffies(chip->buffer_write_time_max);
 	int ret = -EIO;
 	unsigned long cmd_adr;
 	int z, words;
@@ -1921,38 +1963,7 @@ static int __xipram do_write_buffer(struct map_info *map, struct flchip *chip,
 				adr, map_bankwidth(map),
 				chip->word_write_time);
 
-	timeo = jiffies + uWriteTimeout;
-
-	for (;;) {
-		if (chip->state != FL_WRITING) {
-			/* Someone's suspended the write. Sleep */
-			DECLARE_WAITQUEUE(wait, current);
-
-			set_current_state(TASK_UNINTERRUPTIBLE);
-			add_wait_queue(&chip->wq, &wait);
-			mutex_unlock(&chip->mutex);
-			schedule();
-			remove_wait_queue(&chip->wq, &wait);
-			timeo = jiffies + (HZ / 2); /* FIXME */
-			mutex_lock(&chip->mutex);
-			continue;
-		}
-
-		/*
-		 * We check "time_after" and "!chip_good" before checking "chip_good" to avoid
-		 * the failure due to scheduling.
-		 */
-		if (time_after(jiffies, timeo) && !chip_good(map, adr, datum)) {
-			ret = -EIO;
-			break;
-		}
-
-		if (chip_good(map, adr, datum))
-			break;
-
-		/* Latency issues. Drop the lock, wait a while and retry */
-		UDELAY(map, chip, adr, 1);
-	}
+	ret = do_write_buffer_wait(map, chip, adr, datum);
 
 	if (ret) {
 		do_write_buffer_reset(map, chip, cfi);
-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
