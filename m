Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 027E0CA1EC
	for <lists+linux-mtd@lfdr.de>; Thu,  3 Oct 2019 18:02:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pHcM4d7A7s3gp6FEzNr7SUClax5WD2WiLFJxhVTd3hQ=; b=Xm6akk1aBVefLj
	nD1kby6fJoRRerf1fny8/JJ126E+k+nQKZtkYqxfot5fubktyRrS1Oea8m6t2/AqOHIeKePECKhIa
	890JDHT/IWCemiN64NyZ1yX/xsQhlQR/KeKqDLgCuKPoTkJ6AIspR3lA94ZuXgWL3XMTsrHUMBmPi
	NxMydjNq+BJaDWCp1qpUztFfFg3hs8ARr/9JLGlpop8a+1U7dCC2m9AoXWOfp2Mgtetb3zjU1DJE7
	8z6LVXutidDIagRoBK57QqsZt9U7ike+p4X9mEw2sS3jg0dE4jKN0klYNX7YGx6o1AoiezqgnPt0k
	FBHKVAUBmubHZSzWR7NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG3YD-0000UG-Jr; Thu, 03 Oct 2019 16:01:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG3Y5-0000TN-KL
 for linux-mtd@lists.infradead.org; Thu, 03 Oct 2019 16:01:51 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C36A6207FF;
 Thu,  3 Oct 2019 16:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570118509;
 bh=5u2zAl7BkqOE1FqzDrXTn5nzPaiQIpAI/eo9TlZSobQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kFg9TRgfC7s9jRlK4FhhmHCKqSZ430+FMUV+hUUl+rxZDx9z3yFFfHMaE/1ufC59P
 dxm91S12jidhUo/TP99sMBTtAdeIM3YjE/hmz/qEqZt7I9C1GJcXKVtZXnH6UVH4jk
 KS2zD0VRXqEfzOYOtwHiNytekRFukKnGORcC/FG4=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4.9 006/129] mtd: cfi_cmdset_0002: Use chip_good() to retry in
 do_write_oneword()
Date: Thu,  3 Oct 2019 17:52:09 +0200
Message-Id: <20191003154322.117166351@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191003154318.081116689@linuxfoundation.org>
References: <20191003154318.081116689@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_090149_711293_D93C8AE8 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Vignesh Raghavendra <vigneshr@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, stable@vger.kernel.org,
 Joakim Tjernlund <Joakim.Tjernlund@infinera.com>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-mtd@lists.infradead.org, Hauke Mehrtens <hauke@hauke-m.de>,
 Fabio Bettoni <fbettoni@gmail.com>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Tokunori Ikegami <ikegami.t@gmail.com>

commit 37c673ade35c707d50583b5b25091ff8ebdeafd7 upstream.

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
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>


---
 drivers/mtd/chips/cfi_cmdset_0002.c |   18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

--- a/drivers/mtd/chips/cfi_cmdset_0002.c
+++ b/drivers/mtd/chips/cfi_cmdset_0002.c
@@ -1624,29 +1624,35 @@ static int __xipram do_write_oneword(str
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



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
