Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B97EB54A4
	for <lists+linux-mtd@lfdr.de>; Tue, 17 Sep 2019 19:54:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SoNsonijAQtdOGRMpQrF9R8PAoO33QWUsZlTrKkyLEE=; b=d40
	34koEIRbZ58xYETBPdbrcFcRRdG4CmhiUudbrH3cpaFb/4LVZGVMUZiw0jmZhr9iy4ucoPh98qQa+
	jTaUuOBdr/AkKgmk7NTdLore4e5/K5U/Y+PrZCs9+MsattzEvLRBVgr6b7BkFo/TOdou3fqo5rpUr
	ts3X5pWG7A8k9nDK86GNYBVDiMFcTtAUVqCUXxt2JErLTvjk6bIQrEtsEfl9r3rEsRCiJP2Mz/8k8
	d0Sv0YtOZJa5a5G64kHKDlSve5VNw1pZExVppCdFtvuBc5z0pAjuIc2HjZWcxbRKpYCPZsV4zTWBa
	3d0sbxLXVeHv65k3vlNKdh7IOsa1eCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAHgK-0006j2-BH; Tue, 17 Sep 2019 17:54:28 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAHg9-0006ij-T5
 for linux-mtd@lists.infradead.org; Tue, 17 Sep 2019 17:54:19 +0000
Received: by mail-pf1-x443.google.com with SMTP id i1so2590218pfa.6
 for <linux-mtd@lists.infradead.org>; Tue, 17 Sep 2019 10:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=WPG/wS1hlThmAskZmosz1ji9mhqI+gG9h0TvZkbfmio=;
 b=RL5AWXGfndm1ddkzAoWs/c1AXuEXvSX6MbZjn4WhZrA1v/2dGI0oSqIsDA0jpoI99y
 dxfvZ0galgUbfWSTUCpbtnGt19kp7n22ynEZPZmn03fKWBYApRIH+B8xHg/H+Qh26nzC
 MQstXH5rq3IPE3CAd/KvZVYi3EVmYJArg9SHOA+JNqRCLJYfVp3jImjxdO/9enT4kr/X
 7QpavGrNvyx0r5yx3KtQTX5ZfAEleMg4TBi1l4n9gRe3fDEt5LE8X0oMavJOi2mQwOFh
 PWY9eM0mRPRE5+vAGISRgf7yglheYpUnRRjm3nBvQOjpYkYWRpZq9r2leP/2InU0xG3Q
 tk3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=WPG/wS1hlThmAskZmosz1ji9mhqI+gG9h0TvZkbfmio=;
 b=fMywXftM8/xhvCwZuOW08Z2FDcDy60BHJYcszM5I8VfBcFXEcLphZwc/QzT7d38X/Z
 hwp1+YeBebVasEJJzCKZXmNvp6bNwZ5nSe/BUF1ovltshqk3LEfTbJuHufk78kNylm2L
 t2GTy854ZWTueJN03wU83nQ8GwbtRMYRhuUd+sJt5j9uOs1/uV0ADZPETq/P4uh/OpGs
 TowyPqZUO/NcDVgsk2jWjwX82+olscOWzQ8mrzkfRDz/1RLLPwAGXdQpF4oHaQUwFgmX
 YWrVJzXvvN2wbmOL2TAYzwsYcdnUHCrTryECUAybMMJzKCyZo2hQ4UJicnPJfyCwdBkT
 ZiqA==
X-Gm-Message-State: APjAAAXb55K1tXBKGgGEVLh0NPMTQ8/Deg2hWXVVsf+T7vgckMsW05Nt
 zZHWGNm9gKWbm6zdthD2o1g=
X-Google-Smtp-Source: APXvYqxqSxM+3xex9bcZPVFmep7rU9hsR1I9Kl5QR0ZoZg0XATeUEci0PksW/ZI/hn435InVGabuLA==
X-Received: by 2002:a63:5549:: with SMTP id f9mr72061pgm.346.1568742856933;
 Tue, 17 Sep 2019 10:54:16 -0700 (PDT)
Received: from localhost.localdomain (M106072039032.v4.enabler.ne.jp.
 [106.72.39.32])
 by smtp.gmail.com with ESMTPSA id 37sm5512357pgv.32.2019.09.17.10.54.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Sep 2019 10:54:16 -0700 (PDT)
From: Tokunori Ikegami <ikegami.t@gmail.com>
To: Sasha Levin <sashal@kernel.org>
Subject: [PATCH for 4.14.y] mtd: cfi_cmdset_0002: Use chip_good() to retry in
 do_write_oneword()
Date: Wed, 18 Sep 2019 02:54:10 +0900
Message-Id: <20190917175410.19564-1-ikegami.t@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_105417_943382_AF129C58 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
index af3d207c9cc4..e773dc6fdd3c
--- a/drivers/mtd/chips/cfi_cmdset_0002.c
+++ b/drivers/mtd/chips/cfi_cmdset_0002.c
@@ -1628,29 +1628,35 @@ static int __xipram do_write_oneword(struct map_info *map, struct flchip *chip,
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
