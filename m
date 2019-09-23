Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0608DBACA3
	for <lists+linux-mtd@lfdr.de>; Mon, 23 Sep 2019 04:33:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=c0PkwkjOPoGa+9NZaxeqaDmnNMRnTVDMekHx8n0GWTQ=; b=Xo1
	qQzKxpq3vHBzaYC+v+03eUbF1ujRaHzU98xKlWrttlB/nX+hVYaTzGDSKTY6OHc1cVX18pfUQlM5M
	dPrH+KCAErrisqH0NMsQS2Eea5ZaxCf6v1Z5+lch5WGsf0zgTrCBgXXQ/vwBoPf3gKjfh/nnIF7K/
	Vg2lhy4Zj7ZLCwoJeGU7nx0hLXuz2R7/vky1vzX+VchbudrfQTKZOs1khHkGOs0sIDB5u4FEkrjdF
	nG8XKI1M7ymf7KYZfACWMjf1CJdrAKV/T5cxvEgI/HfYPHLZSLJ+6l8O5tXTLQl2um4H+DHG+tuou
	64eo3wjYxtQQhNmG34vCV8J+KYAMdMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCEAH-0000ZT-J8; Mon, 23 Sep 2019 02:33:25 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCE9w-0000Yj-Gj
 for linux-mtd@lists.infradead.org; Mon, 23 Sep 2019 02:33:06 +0000
Received: by mail-pl1-x641.google.com with SMTP id s17so4378694plp.6
 for <linux-mtd@lists.infradead.org>; Sun, 22 Sep 2019 19:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=xoixj4WcbUR0QNe9dzuhd7SQ9clDGmTGtv+vABF9xr0=;
 b=RIPSxSGSGr8c2+Ai8oYcf6JV+2cV2Sba4bfL27UX/yYxkBma4CYhLdhEo8OgS3miLy
 OcKQzqumi8HPqvbe/rIZbshBtKk8chNvXrCUGDsv/X1xzi1LQZQY2eqmHxhN4hIi2o6j
 K64eB2+ALesrLwfUa3jB5Ew18maNMSo04BzvdEjc6wDlYrdpthFkqbTCejoPz2W2IxKp
 VaXeJRcVbsTjNsit+8AEvt1YJSQzE7tYWjKAt9F8bhmQ6I8PoMLj4ABar4Kt90CprtoV
 JUc6/+vtZ9eeytCYvJl5ZlTO817z/Xym8iBJUk8kL6/Qkmiav5naJwuWzFXtSt+s2o1X
 Am7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=xoixj4WcbUR0QNe9dzuhd7SQ9clDGmTGtv+vABF9xr0=;
 b=oK7/hxRiV9/R6hq6wZTfMPRzUjMMeE3GM8Q7hXu+mvzzBk6t/FVFaeQ9Bbwx5uaxkP
 056d3Yk0yE/67xE2Q8iEWjAnCpd2dBDuR0lzcn79xfKnx73275JTZ/IwmqNXqcgnH6L5
 TLNNgD6MYpMWRQpdWHj3eV4G4NKXvZWB9ZCwFeaQ6rbFFj0/SLUm36ONItbv2GkqzcGO
 0tT72LqAb1UNxKf/hyLYTTKUPghI94WPk8acr04fYdIROdkgZt02tNSjKKLnroslY57r
 29A9WCkTS5xoMTiFOli7EIWRPiVq+Pq04qkqM88rMsOb7i5aXFwxZIfaQMvir5EWVstm
 Fq2w==
X-Gm-Message-State: APjAAAUneaodRakJnN18iL90j7eWpBf9FTIKZ5WWVV7wY7AgsrjMu3Ou
 Vk4U86n5lonA6DYNKpEC2cQ=
X-Google-Smtp-Source: APXvYqwA99vWR8wgnVNyo/j9SHbrLddwoCS/EfgFAC/OkckQuCpN7vOzu9zoj5wCWsl9vKXz0OKKHQ==
X-Received: by 2002:a17:902:a615:: with SMTP id
 u21mr28547709plq.4.1569205983038; 
 Sun, 22 Sep 2019 19:33:03 -0700 (PDT)
Received: from localhost.localdomain (M106072039032.v4.enabler.ne.jp.
 [106.72.39.32])
 by smtp.gmail.com with ESMTPSA id o195sm13517299pfg.21.2019.09.22.19.33.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 22 Sep 2019 19:33:02 -0700 (PDT)
From: Tokunori Ikegami <ikegami.t@gmail.com>
To: Greg KH <greg@kroah.com>
Subject: [PATCH for 5.2.y] mtd: cfi_cmdset_0002: Use chip_good() to retry in
 do_write_oneword()
Date: Mon, 23 Sep 2019 11:32:51 +0900
Message-Id: <20190923023251.20180-1-ikegami.t@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_193304_585560_2DFA6FD0 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
index c8fa5906bdf9..ed3e640eb03a 100644
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
 		map_write(map, CMD(0xF0), chip->start);
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
