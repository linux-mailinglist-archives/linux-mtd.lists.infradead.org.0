Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 198E482542
	for <lists+linux-mtd@lfdr.de>; Mon,  5 Aug 2019 21:04:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ianqbC1iAfNBh6ChuwHMWUTbkdixkV5yzecVASsibIA=; b=W74xMSgj6eeB2utR4qA4mGIADX
	9kRjNy3EZIcKKi+W6HdT/qnjavsH2FQveeE1MY2comTv4CElcDVi2iObffnSIRNUT4jjpqndg19YC
	YIo2Hiu46Ng0bIuMBxQUqbecrgAdRLstT3Axza80/SiqzuTKTUmDeZtAxS2wEHo9ZmU/Tx44IYYL8
	yu1diU9w9KMeh2BRNboAlE4k/fjptuKcI+ZPbGV6rLIquMWGep+hI6jywVCRXPcCK80RZ2Vs6Tq6I
	1idOA59Vz3BcAPgGKZ3pujYxx0ukO6/oRJwOvv0T940UgNveh5Yur5vv+Urvg8U0uC/YncY9ZZaPX
	1S2bW7wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huiHI-0003iK-7k; Mon, 05 Aug 2019 19:04:16 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huiGo-0003JK-Q1
 for linux-mtd@lists.infradead.org; Mon, 05 Aug 2019 19:03:48 +0000
Received: by mail-pg1-x544.google.com with SMTP id w10so40205736pgj.7
 for <linux-mtd@lists.infradead.org>; Mon, 05 Aug 2019 12:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OJ5qyB8S7nG671Zry9Jje5DCczep8or/ccbQwS2yG6M=;
 b=tEv6PozxfuhISKdpbRd33R7NDxB1bzOrc+BzJZOJnLNce6ayLl075lJPiMYWTWQKyC
 DehMGGqmcXzr0WYOibNhFzhrI8dAN+1hPzc8w6xPXP2bUhZYCfomD8cBck4A0Px/FldF
 q9AdnbRtjBYzKrqyL0Mar3kjQRNxiu/lFpJBXsgjzTWiGhzelMo7/EWT+jdHX/jzYXYX
 Yy7IyL9e6Bm03HgR8AJIcB8c7GHeFICBq1v2nbR5pSeDRbGRVp+NoSYAQLtfx2D5m7RQ
 yI3hVtLdsORJEBLCsgTaZDqhYgZBKJrRa88Ie5L2mC7LBSQ0E+gb/0M2eqLSjoLbXix4
 5hXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OJ5qyB8S7nG671Zry9Jje5DCczep8or/ccbQwS2yG6M=;
 b=HMW/Q5YqORgh8Udy0D3Shf/WGBLovyfUbszjBqi0xK9cyEIiAdyicwS2QCcJ2/SKRu
 RrwlElhiBFa179TeYn6V6SUKlAPQAv5hh4rrPWH/grLzGO7H6+JKMLslKrfYVyWynugG
 2d6wEcTfWP+ldttOfDpZEJbwfBySoWD9pC2iIDXA99yHNZpGHMLKPZnnOlSlHJPS0Bih
 AORcKE+lTX20PUMw7i8Nfjv2Yzofoc9/bXzto0Wb5vLnqOAO82/B6lnoKAoi0BWsgSxA
 AwonRBhlNimxDRDRLtARQNzudJ9UgNuCHIPqXTGZbMMDyJv4viculbCjSyaruYlQcQmV
 foBA==
X-Gm-Message-State: APjAAAXo2FYct/wPoOydzzxJglu6QmxZ2mcNG8c7YTX8x+esyu8ABeVU
 uIIBbpCQfx/lHt8DxiR6k10eGeS+
X-Google-Smtp-Source: APXvYqzWGKWDJ13d6SNJQlaGOlj3uQPjNKz+psUdoSt9FS8mTheWQgSkhMJYSdeq1VAtbfzqRtZYOQ==
X-Received: by 2002:a63:e44b:: with SMTP id i11mr88875466pgk.297.1565031826058; 
 Mon, 05 Aug 2019 12:03:46 -0700 (PDT)
Received: from localhost.localdomain (M106072039032.v4.enabler.ne.jp.
 [106.72.39.32])
 by smtp.gmail.com with ESMTPSA id q198sm88045579pfq.155.2019.08.05.12.03.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 12:03:45 -0700 (PDT)
From: Tokunori Ikegami <ikegami.t@gmail.com>
To: Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v8 2/9] mtd: cfi_cmdset_0002: Remove goto statement from
 do_write_buffer()
Date: Tue,  6 Aug 2019 04:03:19 +0900
Message-Id: <20190805190326.28772-3-ikegami.t@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190805190326.28772-1-ikegami.t@gmail.com>
References: <20190805190326.28772-1-ikegami.t@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_120346_878789_2DC7DC36 
X-CRM114-Status: GOOD (  18.28  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ikegami.t[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

For a maintainability by reducing the goto statement remove it from
do_write_buffer().

Signed-off-by: Tokunori Ikegami <ikegami.t@gmail.com>
Cc: Fabio Bettoni <fbettoni@gmail.com>
Co: Hauke Mehrtens <hauke@hauke-m.de>
Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
Cc: linux-mtd@lists.infradead.org
---
Changes since v7:
Rebased on top of polling status register support in master.

Changes since v6:
- Removed the tag of Koen Vandeputte as same with the v7 1/9 patch.
- Address the ./scripts/checkpatch.pl issue.
- Convert to use pr_err() instead of printk(KERN_WARNING).
- Squash the v6 03/11 patch into this patch.

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
- Split the patch v1 3/3.

 drivers/mtd/chips/cfi_cmdset_0002.c | 54 ++++++++++++++++++-------------------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/mtd/chips/cfi_cmdset_0002.c b/drivers/mtd/chips/cfi_cmdset_0002.c
index 19787a14350b..c9fd35d1f3fe 100644
--- a/drivers/mtd/chips/cfi_cmdset_0002.c
+++ b/drivers/mtd/chips/cfi_cmdset_0002.c
@@ -1977,42 +1977,42 @@ static int __xipram do_write_buffer(struct map_info *map, struct flchip *chip,
 		 * We check "time_after" and "!chip_good" before checking "chip_good" to avoid
 		 * the failure due to scheduling.
 		 */
-		if (time_after(jiffies, timeo) &&
-		    !chip_good(map, chip, adr, datum))
+		if (time_after(jiffies, timeo) && !chip_good(map, chip, adr, datum)) {
+			ret = -EIO;
 			break;
-
-		if (chip_good(map, chip, adr, datum)) {
-			xip_enable(map, chip, adr);
-			goto op_done;
 		}
 
+		if (chip_good(map, chip, adr, datum))
+			break;
+
 		/* Latency issues. Drop the lock, wait a while and retry */
 		UDELAY(map, chip, adr, 1);
 	}
 
-	/*
-	 * Recovery from write-buffer programming failures requires
-	 * the write-to-buffer-reset sequence.  Since the last part
-	 * of the sequence also works as a normal reset, we can run
-	 * the same commands regardless of why we are here.
-	 * See e.g.
-	 * http://www.spansion.com/Support/Application%20Notes/MirrorBit_Write_Buffer_Prog_Page_Buffer_Read_AN.pdf
-	 */
-	cfi_check_err_status(map, chip, adr);
-	cfi_send_gen_cmd(0xAA, cfi->addr_unlock1, chip->start, map, cfi,
-			 cfi->device_type, NULL);
-	cfi_send_gen_cmd(0x55, cfi->addr_unlock2, chip->start, map, cfi,
-			 cfi->device_type, NULL);
-	cfi_send_gen_cmd(0xF0, cfi->addr_unlock1, chip->start, map, cfi,
-			 cfi->device_type, NULL);
-	xip_enable(map, chip, adr);
-	/* FIXME - should have reset delay before continuing */
+	if (ret) {
+		/*
+		 * Recovery from write-buffer programming failures requires
+		 * the write-to-buffer-reset sequence.  Since the last part
+		 * of the sequence also works as a normal reset, we can run
+		 * the same commands regardless of why we are here.
+		 * See e.g.
+		 * http://www.spansion.com/Support/Application%20Notes/MirrorBit_Write_Buffer_Prog_Page_Buffer_Read_AN.pdf
+		 */
+		cfi_check_err_status(map, chip, adr);
+		cfi_send_gen_cmd(0xAA, cfi->addr_unlock1, chip->start, map, cfi,
+				 cfi->device_type, NULL);
+		cfi_send_gen_cmd(0x55, cfi->addr_unlock2, chip->start, map, cfi,
+				 cfi->device_type, NULL);
+		cfi_send_gen_cmd(0xF0, cfi->addr_unlock1, chip->start, map, cfi,
+				 cfi->device_type, NULL);
+		/* FIXME - should have reset delay before continuing */
+
+		pr_err("MTD %s(): software timeout, address:0x%.8lx.\n",
+		       __func__, adr);
+	}
 
-	printk(KERN_WARNING "MTD %s(): software timeout, address:0x%.8lx.\n",
-	       __func__, adr);
+	xip_enable(map, chip, adr);
 
-	ret = -EIO;
- op_done:
 	chip->state = FL_READY;
 	DISABLE_VPP(map);
 	put_chip(map, chip, adr);
-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
