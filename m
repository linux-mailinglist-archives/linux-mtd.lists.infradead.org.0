Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C89B54DB
	for <lists+linux-mtd@lfdr.de>; Tue, 17 Sep 2019 20:03:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ae+fNKc9jHt4XvDab6pdqFSNJFDXpcw7Lvc57ngYzmw=; b=pvU
	NCZ1fUeLyZVMUjynk89BwQCLTUX/9g0CUjqv3ClAqyFvMbDxeFgpQ6iDGIko0pePtK0Ns0xpb4JZw
	riKHR+jx3YsTMvYryQGSJu6IpV8Yycmg54nKGHuMUZJBkYas06Tn3BSNXUs+brk9vaZkohF4RPVUA
	ZVO056HJgEEUPfFMcgNLjufmExwLE5f9l+Dx9v/QzmAauyClLPodYsbBNwoohI6Qcr9ky6UXq4WR5
	XvAe8/6M4HliHIWX7fz6TJS/iMGrpS0UtDTJ+HLga12Bi85ezCGloRbwpfAlXMgSE+VPdZnf1yQj4
	OFXU2OeQTOhi0cGueDsDSkeLA8Hnprw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAHpS-000333-Nk; Tue, 17 Sep 2019 18:03:54 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAHp3-0002rQ-CD
 for linux-mtd@lists.infradead.org; Tue, 17 Sep 2019 18:03:31 +0000
Received: by mail-pf1-x444.google.com with SMTP id b128so2627487pfa.1
 for <linux-mtd@lists.infradead.org>; Tue, 17 Sep 2019 11:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=lck7mJNvhKtQlB0h0ewSM2EoFMfluPJ28+Anr3sILgs=;
 b=AXPOOXRiahRLh0n4wb+BMFwCNIu8a2q6yIEkwRKSlxWTJ/ipdJaGLAC/O9dbqLboLx
 rLeZrq4pbed/54OcZ2PU1K5Zo5H7RPgdt68jhVA7kjmfrP4A2662Uo7pGmXDsiERjegL
 a2EMqj0bmM5/Fa6ltItqE6VuijD4RoiXuyU1YNGwfhnCiVIlh82W/r//vZhXkhM5/bAN
 fKNnRcGimNdt6omp6PS8Pv8lXDHz0wGwwDB3qqhka5mYnFDrApxBZFsIiH+lp0XCOqPH
 t0bFUuX2SZpgdZfzeTw2fLhO8TmeP/hA/A9YL7a3I9FtDuZjYaEwWuzTui2rustwdaMB
 WZLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=lck7mJNvhKtQlB0h0ewSM2EoFMfluPJ28+Anr3sILgs=;
 b=UiBZmKC5JJjxZAdyqiVtS5w8DEjaFlJz71CE/mERPJ95c9vzhIhd4WzJmStu49Wfjr
 foNn885h7+dIob8Pe7nYBDvVl1zNjH6Zol2jNPwQkMEcXkbJnWYMD/tOOLoNFW3bKqig
 spZdnYMLKzJtMSjlsMyrDldRU5SAEEuGrGZZAUS4Tu66+hwLrsygv0Y90ySAgn9wgUyc
 hnZ31Ltbsl2+1TfcsptjFfOANk/cLiex8NF0yv7Nl8QCv79fbmsOT2K/p3tmlySId8US
 6tp4G10VKiHLnlUTy6RwV51xzxbL0jPSx0RCrvFE9L/AWfcnVL0ksbpGlQXnQyOyTqdb
 2ZmA==
X-Gm-Message-State: APjAAAXr0d/1ht5KQlA9W5PkLK4SZ0PnJCM1Oqa/Jbvxzf4gSsezkeVl
 yY4dzdIyWNc65O9zwAqsOog=
X-Google-Smtp-Source: APXvYqxRpV95thKlVBJdPEV34NQ17fE+SwXG9FMXOQQVSEzi3Cb6JKc8N7ErQlLnLae0y6mriszPWw==
X-Received: by 2002:a65:5188:: with SMTP id h8mr106707pgq.294.1568743408670;
 Tue, 17 Sep 2019 11:03:28 -0700 (PDT)
Received: from localhost.localdomain (M106072039032.v4.enabler.ne.jp.
 [106.72.39.32])
 by smtp.gmail.com with ESMTPSA id o9sm2505263pgv.19.2019.09.17.11.03.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Sep 2019 11:03:28 -0700 (PDT)
From: Tokunori Ikegami <ikegami.t@gmail.com>
To: Sasha Levin <sashal@kernel.org>
Subject: [PATCH for 4.4.y] mtd: cfi_cmdset_0002: Use chip_good() to retry in
 do_write_oneword()
Date: Wed, 18 Sep 2019 02:54:52 +0900
Message-Id: <20190917175452.20891-1-ikegami.t@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_110329_645992_0F4E9D32 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ikegami.t[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Vignesh Raghavendra <vigneshr@ti.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 stable@vger.kernel.org, Joakim Tjernlund <Joakim.Tjernlund@infinera.com>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-mtd@lists.infradead.org, Felix Fietkau <nbd@nbd.name>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

As reported by the OpenWRT team, write requests sometimes fail on some
platforms.
Currently to check the state chip_ready() is used correctly as described by
the flash memory S29GL256P11TFI01 datasheet.
Also chip_good() is used to check if the write is succeeded and it was
implemented by the commit fb4a90bfcd6d8 ("[MTD] CFI-0002 - Improve error
checking").
But actually the write failure is caused on some platforms and also it can
be fixed by using chip_good() to check the state and retry instead.
Also it seems that it is caused after repeated about 1,000 times to retry
the write one word with the reset command.
By using chip_good() to check the state to be done it can be reduced the
retry with reset.
It is depended on the actual flash chip behavior so the root cause is
unknown.

Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
Cc: linux-mtd@lists.infradead.org
Cc: stable@vger.kernel.org
Reported-by: Fabio Bettoni <fbettoni@gmail.com>
Signed-off-by: Felix Fietkau <nbd@nbd.name>
Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
Signed-off-by: Tokunori Ikegami <ikegami.t@gmail.com>
[vigneshr@ti.com: Fix a checkpatch warning]
Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
---
 drivers/mtd/chips/cfi_cmdset_0002.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)
 mode change 100644 => 100755 drivers/mtd/chips/cfi_cmdset_0002.c

diff --git a/drivers/mtd/chips/cfi_cmdset_0002.c b/drivers/mtd/chips/cfi_cmdset_0002.c
old mode 100644
new mode 100755
index fb5a3052f144..7589d891b311
--- a/drivers/mtd/chips/cfi_cmdset_0002.c
+++ b/drivers/mtd/chips/cfi_cmdset_0002.c
@@ -1626,29 +1626,35 @@ static int __xipram do_write_oneword(struct map_info *map, struct flchip *chip,
 			continue;
 		}
 
-		if (time_after(jiffies, timeo) && !chip_ready(map, adr)){
+		/*
+		 * We check "time_after" and "!chip_good" before checking
+		 * "chip_good" to avoid the failure due to scheduling.
+		 */
+		if (time_after(jiffies, timeo) && !chip_good(map, adr, datum)) {
 			xip_enable(map, chip, adr);
 			printk(KERN_WARNING "MTD %s(): software timeout\n", __func__);
 			xip_disable(map, chip, adr);
+			ret = -EIO;
 			break;
 		}
 
-		if (chip_ready(map, adr))
+		if (chip_good(map, adr, datum))
 			break;
 
 		/* Latency issues. Drop the lock, wait a while and retry */
 		UDELAY(map, chip, adr, 1);
 	}
+
 	/* Did we succeed? */
-	if (!chip_good(map, adr, datum)) {
+	if (ret) {
 		/* reset on all failures. */
 		map_write( map, CMD(0xF0), chip->start );
 		/* FIXME - should have reset delay before continuing */
 
-		if (++retry_cnt <= MAX_RETRIES)
+		if (++retry_cnt <= MAX_RETRIES) {
+			ret = 0;
 			goto retry;
-
-		ret = -EIO;
+		}
 	}
 	xip_enable(map, chip, adr);
  op_done:
-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
