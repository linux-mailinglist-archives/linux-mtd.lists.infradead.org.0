Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 064D62AA7C
	for <lists+linux-mtd@lfdr.de>; Sun, 26 May 2019 17:40:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sxUwuu0Ey7IAIYUdnI4vPjRktvQhCbUFs93gsGFwCm0=; b=PNC8lbIsFDnWBEHAs4B6cMFJjF
	H5N88GjaYKCmlDWgfNUUbqxCbKwC3sghFam5Q0B/s454N+Dpg7LELj8JxDobJoYJgqYIipyj/61yr
	Rq9ZASwgaYRSWPevuM1AS+NFJgCk8RRxy9HSe9AMAuJ+KyvrUUOA3K06VtUYqKTak9/XLoycAbd7M
	/FEbpzqTi3spf+bt5Wp/Ww21dU7jQFj7BYlp0QgaVdq8iBLtGnackQPFuzAkbtWVh4GsbnU1InoOj
	OmxK6rHKzog9jz0Wh36ov/v+1A5uDTgajlhMCypBZCaZOae46Ert6SCe4lGE1+sNF/UJJtSpG72PE
	aVTaIZFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUvGY-0001wz-4L; Sun, 26 May 2019 15:40:54 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUvFH-0007oi-Mc
 for linux-mtd@lists.infradead.org; Sun, 26 May 2019 15:39:43 +0000
Received: by mail-pg1-x544.google.com with SMTP id w34so2992627pga.12
 for <linux-mtd@lists.infradead.org>; Sun, 26 May 2019 08:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=897Q6Eph5XeMoCZK49286pQ/b4j9jd3UvoSqF7VbKlo=;
 b=V9CR/Cw1S9SBZOsP0cNiLRSqL0zlouFJt4sHNC2qdsZuZ36E3708JwabAVrrte2duQ
 gITFWbgV3+cZd89w69BiA6GRLD6aWNDtPWkww4cNnMAXAsZsnY8rEwwdRDkBy9aYndQA
 Smypi51gp/cb1PHzX3JA27bUafY0RxYbIockSu8XBd3+TdWzmzd2bApqQzvv5zGSv8MA
 y+NA9eUEGQvZWTMyfPeMNhbjGyGObTI3ji+rjk/tOgXjbahrYBbJjmrZx+hXcyqkpKmx
 Xk0L7b+92lKkFpCUg0XA8h0MMCGHwKlkKc+hF1C/UItaetoy8T8shS/a1LCq64Gyh7fi
 eZuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=897Q6Eph5XeMoCZK49286pQ/b4j9jd3UvoSqF7VbKlo=;
 b=Muov3Y0zzAZpI9It7eusK+LYGVqjb7XaiBm7w7V6Gu6nt8caXXxdaNvBRNpmrSfB8x
 S3VEjtUHqyTYtFqNXmdyQNexviAh47FoXByuGqxiyKnnWQw32uoj7XgUcQLChLn50hnn
 vChtQld9uCEAiXqydHHkfMFc/ekxmllThDUkAi9MUVgUiOoeE8NF8SlNUDTCihpyMC3R
 o/Z1B5C0OQEp06GphYMA7XT6WNQ2tYPIBc+OOk9Mfz47f2DZGCR8d0HKWy4ZO5YSoaNv
 4kLSPk3rgZp851IXhrMqApm5iW8GlzYDcc22lfGV+Uues7SwZR7qXocDtizA/un3Em0L
 rUWQ==
X-Gm-Message-State: APjAAAWdkItJpmYcAaNpY7fWYLn6v8mWl8bkWrCC7+r3/70jXOmur/Xq
 IW9JaX3XcdlyId4941pPhRE=
X-Google-Smtp-Source: APXvYqxOsCh4OEqXbzmT3pCqs6qOCySFO5A638N98W/HAU0jjwBHr4WKD8styrOfm9UWXuo+VE9H2g==
X-Received: by 2002:a62:fb18:: with SMTP id x24mr64540869pfm.76.1558885174859; 
 Sun, 26 May 2019 08:39:34 -0700 (PDT)
Received: from localhost.localdomain (M106072039032.v4.enabler.ne.jp.
 [106.72.39.32])
 by smtp.gmail.com with ESMTPSA id o2sm863129pgm.51.2019.05.26.08.39.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 08:39:34 -0700 (PDT)
From: Tokunori Ikegami <ikegami.t@gmail.com>
To: Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v6 07/11] mtd: cfi_cmdset_0002: Remove retry goto statement
 from do_write_oneword()
Date: Mon, 27 May 2019 00:39:00 +0900
Message-Id: <20190526153904.28871-8-ikegami.t@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190526153904.28871-1-ikegami.t@gmail.com>
References: <20190526153904.28871-1-ikegami.t@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_083936_129017_32CDB35A 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ikegami.t[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.0 FREEMAIL_REPLY         From and body contain different freemails
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
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

This is just to refactor the function by removing the goto statement.
Change to use the for loop instead of the goto statement.

Signed-off-by: Tokunori Ikegami <ikegami.t@gmail.com>
Cc: Fabio Bettoni <fbettoni@gmail.com>
Co: Hauke Mehrtens <hauke@hauke-m.de>
Co: Koen Vandeputte <koen.vandeputte@ncentric.com>
Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
Cc: linux-mtd@lists.infradead.org
---
Changes since v5:
- Rebased on top of Liu Jian's fixes in master.
- Change the email address of Tokunori Ikegami to ikegami.t@gmail.com.

Changes since v4:
- None.

Changes since v3:
- Rebased.
- Change the email address of Tokunori Ikegami to ikegami_to@yahoo.co.jp.

Changes since v2:
- None.

Changes since v1:
- Add the patch.

 drivers/mtd/chips/cfi_cmdset_0002.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/mtd/chips/cfi_cmdset_0002.c b/drivers/mtd/chips/cfi_cmdset_0002.c
index 597b0f18269f..7784be8246cb 100755
--- a/drivers/mtd/chips/cfi_cmdset_0002.c
+++ b/drivers/mtd/chips/cfi_cmdset_0002.c
@@ -1684,17 +1684,15 @@ static int __xipram do_write_oneword(struct map_info *map, struct flchip *chip,
 	ENABLE_VPP(map);
 	xip_disable(map, chip, adr);
 
- retry:
-	ret = do_write_oneword_once(map, chip, adr, datum, mode, cfi);
-	if (ret) {
+	for (retry_cnt = 0; retry_cnt < MAX_RETRIES; retry_cnt++) {
+		ret = do_write_oneword_once(map, chip, adr, datum, mode, cfi);
+		if (!ret)
+			break;
+
 		/* reset on all failures. */
 		map_write(map, CMD(0xF0), chip->start);
-		/* FIXME - should have reset delay before continuing */
 
-		if (++retry_cnt <= MAX_RETRIES) {
-			ret = 0;
-			goto retry;
-		}
+		/* FIXME - should have reset delay before continuing */
 	}
 	xip_enable(map, chip, adr);
 
-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
