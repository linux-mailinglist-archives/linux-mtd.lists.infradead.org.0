Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3805BACB4
	for <lists+linux-mtd@lfdr.de>; Mon, 23 Sep 2019 04:35:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pEvp7TxvGbqFQ21N0QcqdkQlpNh7/Y6oFJ7UNqmHMkA=; b=qdQ
	uLLhlg3FQ2dZvzp/5HKDq8291GM3CpHc03oXFLlrMHnPebxhKowcTnBcUO/2EfhvcSq/USprIPW7c
	LSsNwt3DXeZZgUxs5taoSw/lfipI7sY8imx3Nw6ywLGsybeeAvr4zMrVPEFYMpnAnhhvWqawQ4cFY
	mFLeH3NTiHbFseeCttIXDc/DS7ydLDtb7QpTc8iFlL0LbKguxQY7KEIWH8sk/QZC7e91+7Oyn1Tlx
	HxaFHTaH9uJ919gNle7QX/i31L8QJGd/AhGdQXavr2+kQGnLzBYwNpMighzn34xnXTeRbNbTQDThO
	O1/KQh0Yjy5HrT+ZvHmCn2O1pfQ/xoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCEC2-0001xU-Hy; Mon, 23 Sep 2019 02:35:14 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCEBX-0001ho-5x
 for linux-mtd@lists.infradead.org; Mon, 23 Sep 2019 02:34:45 +0000
Received: by mail-pf1-x442.google.com with SMTP id q21so8170498pfn.11
 for <linux-mtd@lists.infradead.org>; Sun, 22 Sep 2019 19:34:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=mrHC8QGuZxOCxpQ1rrDbH0NR2xsFdEhMXsSzfS9GAKA=;
 b=dG5oRwwXRBLWqHzJYLw/IcltvwouTaQ9ymgAujUjvvWz7ciDj1Xpk1daQMRDANeguI
 K7fzzgOqi1aZUq8i2HiJFWUDejp3yRUX6pRYoqpECK9PLdFUUuxmowhsSEnTXN1Ahrpg
 j4O0ZKYdrNK0EeEW4Rn4eNjgwRGamruYqKNUrM/RHTwfn0bwpOyj2AlhiMsqxMi/9jAL
 CMT9+Dbp7eqHY9ePNs5B8pRdv0KXXHM7W7nbvOKIB1bosptGc4dUzxIkvu6DqnAywQuA
 dPJbBm/gnZTRNokHUfH+Nc/6i1DyA2/PTLYu7LvP3gKmEwTsraFt4axmEaYCwzWmnRQx
 +2RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=mrHC8QGuZxOCxpQ1rrDbH0NR2xsFdEhMXsSzfS9GAKA=;
 b=cAI9ZUnbPu/hpfMFCVw0Xv2iMNHk0nHon1DVGG9Y1788NJvs7gqxWgy9ELYo7iXelv
 1YvrlvDIdVnNUdvncVSr69CZtiXMNhBrYMC7NrMvb0mFl1v2m+kbfpayS4G4x0zaQ9+8
 DhMYJ1bO6CW8TaSGFT8e8ZrdVQmt5v/b0nVb+gKh77ml4BwpMFgiJldixV4wl8KhdfEH
 iqHriO2XuuZL2tS7E5mew7Vw6DG8R73MRzq76tEX3vj9O+8sRKAn1GfHtWJQEDNGuYrm
 wuYgFy/uoo0oMu4p+SYewxwHZ95ZM/0S0VfLP8Oq/YHmwMWvLrPQ3oqWFc6O+5dQrP89
 6uWg==
X-Gm-Message-State: APjAAAUdNkg4jzhTPwpl6JxAQAZmGuOX8rN9/xsip2McqsppO9+2ZdQ3
 xUZYDZznQAWsnXPiSlWC7UA=
X-Google-Smtp-Source: APXvYqxTZfAhwf4Q/RvnFB3AfyFyk+Cy+6CCxJQPFBca8QHR3mOSLz8FMHjJfH5WUfo1Rdbz/vQt5Q==
X-Received: by 2002:a17:90a:220e:: with SMTP id
 c14mr17764702pje.6.1569206082602; 
 Sun, 22 Sep 2019 19:34:42 -0700 (PDT)
Received: from localhost.localdomain (M106072039032.v4.enabler.ne.jp.
 [106.72.39.32])
 by smtp.gmail.com with ESMTPSA id f62sm10519515pfg.74.2019.09.22.19.34.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 22 Sep 2019 19:34:42 -0700 (PDT)
From: Tokunori Ikegami <ikegami.t@gmail.com>
To: Greg KH <greg@kroah.com>
Subject: [PATCH for 4.4.y] mtd: cfi_cmdset_0002: Use chip_good() to retry in
 do_write_oneword()
Date: Mon, 23 Sep 2019 11:34:35 +0900
Message-Id: <20190923023435.20377-1-ikegami.t@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_193443_323862_F6346C4D 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ikegami.t[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

diff --git a/drivers/mtd/chips/cfi_cmdset_0002.c b/drivers/mtd/chips/cfi_cmdset_0002.c
index fb5a3052f144..7589d891b311 100644
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
