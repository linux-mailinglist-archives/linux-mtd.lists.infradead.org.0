Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 990DC82541
	for <lists+linux-mtd@lfdr.de>; Mon,  5 Aug 2019 21:04:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=k6F8FHmRmll8yYCvOjMzg8Aafmxkn5nICRGsKreT/xk=; b=WULejT6VWbesv6dZ07L3hUFOVA
	gBUCdHE3oKfgwx0Bv8H9xleWI/dVtVgB3Sr+tfQbVbmyVlVkzlYAYfhzFWfCHAZqmM4FR0gJLKQfx
	o+l7yBZm1toN0ffJ5uHfEPKc2rWPfM59kj/zV9/3PR+NBaPB0Yrw6zBHyCB6RxKe2JO3mZ4dgEDbA
	teYqLS3RkjhaOs8jUU53RBuOYFk1TZxfB7YhIy9L3bF0LPECPNj7P9Md8nC0xma6keZRMYPd8MitQ
	fgcDBbv9vw2/DA24/xJ1WWbOfjovPbomuM9BdvF3rehsBO5XoQMNlPpXFwLpLYrXqvax0QYrMj9Vk
	qB4eDZfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huiH4-0003S9-Pk; Mon, 05 Aug 2019 19:04:02 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huiGm-0003II-J3
 for linux-mtd@lists.infradead.org; Mon, 05 Aug 2019 19:03:46 +0000
Received: by mail-pf1-x442.google.com with SMTP id b13so40107202pfo.1
 for <linux-mtd@lists.infradead.org>; Mon, 05 Aug 2019 12:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=605yGL6yEzP68D5/hqewP5GiyzS32TYrjnFMz+/3b1w=;
 b=RiD6DLpbvqbzKrxrBEOt01/rqLUSu7Us6JaoEFVjMahW3OF7L59XC3wObVNUXnMavO
 FvXaGl0SNyGOV3RMA9llCf5b9xJccrsThQ/8kSQmcvxo+zaWBkkkvO7xkHQSTGxnujQw
 7ulO+0VWmTZ0vxGXtBUeYAdEtvGn7ONzTt70d09BqZDYagu7RSBcQBUx/608orVO2gTX
 o/6Kh0HbiFbB7B60IKxkMC5qShL7XSFwcYbUCU095AlCN405m8qSVW4HVDd/yyyEiedX
 aPX+aNKzW/byDqaG2UVm4Oic6NEw9NE6O3cF6FybCsA2qv0DPl8OqwRWYEVAaZOWfcRN
 WRSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=605yGL6yEzP68D5/hqewP5GiyzS32TYrjnFMz+/3b1w=;
 b=WjlD23229I9448xaEk7sNdNkfGnWjbiHOoWbXkGiXpSWbOAo67wJ2BILUNcrhbaeYd
 egXFlbHZF7w7R5LQf5KG97vtN7psggT7uCB7GNCyhFT84O/cfZHivwqhQ6mp5oxRY+4U
 sFJmfZSzN14CmeDfnvbnXRPmMs0h0R8HERcskDzrZxmBhzIBeW1o7Ovfc7RBOAuOOTBS
 nBkR3Z5P/xuT8FcMu8B4NE3J1Ks5p+EuWJ1hLBqnuoOQsMvrwdu3xAy31VPJcS65aCp0
 kqDs7/3OZb5kEhuY1AL7+9uOQuUkRNY7s54FYarCv3cVyWcjq9ax4rgekMEGahN8jUwb
 qICA==
X-Gm-Message-State: APjAAAXW22kYviLKA2u6mx/0RxMEWBtVVxP/IRMzUaNnAg7U5WOULKCc
 3XSfLocT1uW4ESsdDx9HbvE=
X-Google-Smtp-Source: APXvYqwrQIPe1BDuX4xFc0UMP7ax23aEKs97vQ7OOArKcHJ4q3GfCesHHCWpMlr5/29hcQIQkg4MZw==
X-Received: by 2002:a63:9d43:: with SMTP id i64mr21895683pgd.306.1565031823889; 
 Mon, 05 Aug 2019 12:03:43 -0700 (PDT)
Received: from localhost.localdomain (M106072039032.v4.enabler.ne.jp.
 [106.72.39.32])
 by smtp.gmail.com with ESMTPSA id q198sm88045579pfq.155.2019.08.05.12.03.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 12:03:43 -0700 (PDT)
From: Tokunori Ikegami <ikegami.t@gmail.com>
To: Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v8 1/9] mtd: cfi_cmdset_0002: Use chip_good() to retry in
 do_write_oneword()
Date: Tue,  6 Aug 2019 04:03:18 +0900
Message-Id: <20190805190326.28772-2-ikegami.t@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190805190326.28772-1-ikegami.t@gmail.com>
References: <20190805190326.28772-1-ikegami.t@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_120344_626972_AF10F613 
X-CRM114-Status: GOOD (  25.14  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: Tokunori Ikegami <ikegami.t@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
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

Signed-off-by: Tokunori Ikegami <ikegami.t@gmail.com>
Signed-off-by: Felix Fietkau <nbd@nbd.name>
Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
Reported-by: Fabio Bettoni <fbettoni@gmail.com>
Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
Cc: linux-mtd@lists.infradead.org
Cc: stable@vger.kernel.org
---
Changes since v7:
Rebased on top of polling status register support in master.

Changes since v6:
- Change the tag of Hauke Mehrtens to Signed-off-by as confirmed with him.
- Removed the tag of Koen Vandeputte as confirmed with him.
- Address the ./scripts/checkpatch.pl issues.
- Fix to remain the file type as 100644.

Changes since v5:
- Rebased on top of Liu Jian's fixes in master.
- Change to follow Liu Jian's fixes in master for the write buffer.
- Change the email address of Tokunori Ikegami to ikegami.t@gmail.com.

Changes since v4:
- None.

Changes since v3:
- Update the commit message for the comments.
- Drop the addition of blanks lines around xip_enable().
- Delete unnecessary setting the ret variable to -EIO.
- Change the email address of Tokunori Ikegami to ikegami_to@yahoo.co.jp.

Changes since v2:
- Just update the commit message for the comment.

Changes since v1:
- Just update the commit message.

Background:
This is required for OpenWrt Project to result the flash write issue as
below patche.
<https://git.openwrt.org/?p=openwrt/openwrt.git;a=commitdiff;h=ddc11c3932c7b7b7df7d5fbd48f207e77619eaa7>

Also the original patch in OpenWRT is below.
<https://github.com/openwrt/openwrt/blob/v18.06.0/target/linux/ar71xx/patches-4.9/403-mtd_fix_cfi_cmdset_0002_status_check.patch>

The reason to use chip_good() is that just actually fix the issue.
And also in the past I had fixed the erase function also as same way by the
patch below.
  <https://patchwork.ozlabs.org/patch/922656/>
    Note: The reason for the patch for erase is same.

In my understanding the chip_ready() is just checked the value twice from
flash.
So I think that sometimes incorrect value is read twice and it is depended
on the flash device behavior but not sure..

So change to use chip_good() instead of chip_ready().

 drivers/mtd/chips/cfi_cmdset_0002.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/chips/cfi_cmdset_0002.c b/drivers/mtd/chips/cfi_cmdset_0002.c
index f4da7bd552e9..19787a14350b 100644
--- a/drivers/mtd/chips/cfi_cmdset_0002.c
+++ b/drivers/mtd/chips/cfi_cmdset_0002.c
@@ -1717,31 +1717,36 @@ static int __xipram do_write_oneword(struct map_info *map, struct flchip *chip,
 			continue;
 		}
 
-		if (time_after(jiffies, timeo) &&
-		    !chip_ready(map, chip, adr)) {
+		/*
+		 * We check "time_after" and "!chip_good" before checking
+		 * "chip_good" to avoid the failure due to scheduling.
+		 */
+		if (time_after(jiffies, timeo) && !chip_good(map, chip, adr, datum)) {
 			xip_enable(map, chip, adr);
 			printk(KERN_WARNING "MTD %s(): software timeout\n", __func__);
 			xip_disable(map, chip, adr);
+			ret = -EIO;
 			break;
 		}
 
-		if (chip_ready(map, chip, adr))
+		if (chip_good(map, chip, adr, datum))
 			break;
 
 		/* Latency issues. Drop the lock, wait a while and retry */
 		UDELAY(map, chip, adr, 1);
 	}
+
 	/* Did we succeed? */
-	if (!chip_good(map, chip, adr, datum)) {
+	if (ret) {
 		/* reset on all failures. */
 		cfi_check_err_status(map, chip, adr);
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
