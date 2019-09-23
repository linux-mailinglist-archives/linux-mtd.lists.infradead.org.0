Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C371BACB3
	for <lists+linux-mtd@lfdr.de>; Mon, 23 Sep 2019 04:34:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TBJd/Eoei/CUFwa2CtBgAIlvvHoLLwHWKNGm4vlu140=; b=LEP
	Dxya367MWQRQ7coipUvtqjfgu8BF3DjN9P4FzJ+4JJrPjJdYACPxb2H81WNzJloSeqzLiLX+JXxO3
	XIklLgQpr2HH3NuxUcZBY0BYphXR5qmBtwFp2cYZ4IeIZ3e1fSMwJkAACRa0bSh/HGtJIghj/AgPB
	Tw9lxCBosas8aWImJlt+Y8/MpFrF/cWR/t8MrihaztYEOYOPNy9N4/9AKS3p4TRppvgrpz4hRdMIu
	qVIwcl1iQ6vc/HNbBXM7aYJfBk+ZkVLZMgvB1ehZaQSefQr4TVabNMNMQMifHoWb60rNzGXae3wP/
	zBPCtDTPPjPMNLrnWYjQbA0w4poa5Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCEBk-0001je-Bx; Mon, 23 Sep 2019 02:34:56 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCEBI-0001XJ-Qj
 for linux-mtd@lists.infradead.org; Mon, 23 Sep 2019 02:34:30 +0000
Received: by mail-pf1-x443.google.com with SMTP id q5so8160757pfg.13
 for <linux-mtd@lists.infradead.org>; Sun, 22 Sep 2019 19:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=uUqRhL6WQ3qbg0PTyQYypbpaL7UfIqi63D3k5sB6pWs=;
 b=T1XA2rMEoe0wwjcs6Lw2R2slymbgzBQjfhy7tJ1/7KVjVWHsRmc0dZyzmXMlFesi2q
 5LM2BZMWphLKUzGlO6esTsOB0LUzCzFf61KGgWRleD/0Wnz39W0xgk3/LzV2na0By7EE
 q+hiWZ99QiGw1X2eauny+KIWg+wHmh6r1AD68xf1js8Oh/NcOr2qqoLdyqLDlGHFu1fp
 cnOeHl1UAFenGhUGvWrn2bknCE0Z6IrGzwggE45VY9umhK3egepZw/Ol3pehNUkwvgqd
 41yLNKQUTThLF9w6HkjQiI1xICUoefXTD5hLytPdNfRvA/7g2L2O/ggit4borgQjYJeX
 PeAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=uUqRhL6WQ3qbg0PTyQYypbpaL7UfIqi63D3k5sB6pWs=;
 b=UJV7u1RVM8OA7ATI2mVs1gf6yQjrf8C9t2HkTgQgnQD/Hxh1vVRAQ5rm1hyDqMtetb
 8kJNotW9A6BdR1b9tA/CleOgjjXAIdWZ5GVNa4vQgm92hdTpmQy+jRNo1hqqsdc3/HpC
 SLrLvm+BBu6ej3Zm7LoIx4KS8dE24DfTENaKXx+WrfxkN/vU6y7EMzOr3IQBZdFXKtxG
 LUrPyMfdxlAkbv+3u7xOfb6df5gIetuoHj7QCapHrFpgONgA4tcP0CyfKgGUSWE+dC+k
 e0qi3+ByAkmsjZJ1PDyNj+YO+7FPHTv0xIfpLFHgZ6AB7zUy4FEVGtT8BGDWKYnLtS8/
 Mp8A==
X-Gm-Message-State: APjAAAU1bIJHoyUr2O8eA6knOC/iW2Sz5iOSp5B9nhnkjKMJTkAQ5SsA
 M3+z9EBUHLwhul/tY5124fQ=
X-Google-Smtp-Source: APXvYqyT/C0ctGi44KRmNkrmYomsRYIuCcnaN9cQV4PewxSqAc/1BJv5NbBpjjcbXBkWtVYWoDORaA==
X-Received: by 2002:a63:e812:: with SMTP id s18mr26164581pgh.291.1569206067886; 
 Sun, 22 Sep 2019 19:34:27 -0700 (PDT)
Received: from localhost.localdomain (M106072039032.v4.enabler.ne.jp.
 [106.72.39.32])
 by smtp.gmail.com with ESMTPSA id t12sm7596766pjq.18.2019.09.22.19.34.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 22 Sep 2019 19:34:27 -0700 (PDT)
From: Tokunori Ikegami <ikegami.t@gmail.com>
To: Greg KH <greg@kroah.com>
Subject: [PATCH for 4.9.y] mtd: cfi_cmdset_0002: Use chip_good() to retry in
 do_write_oneword()
Date: Mon, 23 Sep 2019 11:34:21 +0900
Message-Id: <20190923023421.20328-1-ikegami.t@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_193429_177307_76B6787D 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
index de35a2a362f9..8725e406a9eb 100644
--- a/drivers/mtd/chips/cfi_cmdset_0002.c
+++ b/drivers/mtd/chips/cfi_cmdset_0002.c
@@ -1624,29 +1624,35 @@ static int __xipram do_write_oneword(struct map_info *map, struct flchip *chip,
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
