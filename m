Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CE7D2239
	for <lists+linux-mtd@lfdr.de>; Thu, 10 Oct 2019 10:02:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=eEBmYtjaOx9iwvFLfqOjb7PaNNBBcEiB6tSUMfhAtyk=; b=Txy
	B4xNigkjY2PPtgmLtzUiLEIaKL62AgynDgPf2dn/t7/Khqk1ydZ7y+Iwbfitv5FbFvKGTrXn9isM+
	0caH49/N+v2kGFAssF2ZWUFByQizHuI4PDLIQ/IjUOnVNCO4eAPOym2i/AEXgaj8QAjihAbRWpdEF
	78Hzt8KaQmx4u8ktDgktX9VCTVPSncJbO3o8ZNlzEeRdU5fhWE0xo9n9MA2WZSgVPjpIijdu1MsKw
	yrnn/8mJeDq+9/V/y6MlCSNgqnx/N86AzeZ6eUQ7fOJs89sTK+9kPHEXrx9kxD5aQGPDX94jUBYtH
	qGmQj/AIEFGCL20aF08mIAGmGjUGX5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iITOa-0006Eg-VF; Thu, 10 Oct 2019 08:02:00 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iITOT-0006EM-J8
 for linux-mtd@lists.infradead.org; Thu, 10 Oct 2019 08:01:54 +0000
Received: by mail-pf1-x441.google.com with SMTP id q12so3362878pff.9
 for <linux-mtd@lists.infradead.org>; Thu, 10 Oct 2019 01:01:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=yRXE4lgk6VKA0SzChNSURLfGUKIVW/iDRtWVwE8XS0I=;
 b=NopcsrkwHtz44y+FYo1Jk24rTELMBAhpD7oSUVmNudaJ+4CODqzIz+B+ZU+sH3CKMU
 aWo4quo2GWPvJ1IzP475StNoOf38jVCayq9Rzld/TiwstDbeeBKvDBgHM4F+cneoUsuq
 Jvw0AeJwOE2TjJeiojzh/sPaqtoz1zS4nNws+q8tfGwNUQFq1OFtJ5TJxGgdA+LiBA/q
 2LDL5X9h2dnvQdiIcvJY3F65jIZN8YpWoy4tS+h8SZ3FzRwkwXNpaxDNNkztjoFCAXGE
 z4UxpDNqiW5dgqf5h/YY9qqAhpVP122dI7ncioXBC9gw5rLmjoScvMNBKiY0XmvDAgnd
 7Jng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=yRXE4lgk6VKA0SzChNSURLfGUKIVW/iDRtWVwE8XS0I=;
 b=CYQ3EGCHrn2pVnB+iMnUpVy/bRT2/PhwZ+qYZoIUpLKKeG6MJLD8Xey+kJz+G8BwsQ
 ns3buUjVUGIj4iPj8KROgz2M07O3OZcgNe9KSGsLeVOnKmWsTxd5KKgZoLoIvqYslrek
 6+lmu1yMvzJiLyWrpELZRrp0lf+0D33STc4TjUv3KNTlkSlbmF5jduLudsX2ihvH4quC
 avI9x093GiSN81WkDMvATFJ3gElu1EdHs6nYlrs2nINqcrM9CuhXd7HxXjTaKK2gCN78
 V03KcvUxFdj0SrmasWoKo/GVl30CseoS+rYqdvLVYda8N0CG87LYpkLE/kMgXs0/dMDi
 RRYg==
X-Gm-Message-State: APjAAAUJ8NTScQ2mvSpDqfvVQRFg30KL+79/ABVzjh4dQBG5wGtyDe5N
 BXSMqd44JQOesOCj6qG4kUE=
X-Google-Smtp-Source: APXvYqycvb2atxrRD8WJF8cZ15pQBiu+eEti0S/n3JRj4sNhaTbtEl33EEpHOKISfg4OovEYWoccAg==
X-Received: by 2002:a17:90a:a604:: with SMTP id
 c4mr9885538pjq.48.1570694512313; 
 Thu, 10 Oct 2019 01:01:52 -0700 (PDT)
Received: from hfq-skylake.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.googlemail.com with ESMTPSA id ep10sm10628639pjb.2.2019.10.10.01.01.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Oct 2019 01:01:51 -0700 (PDT)
From: Fuqian Huang <huangfq.daxian@gmail.com>
To: 
Subject: [PATCH] mtd: maps: l440gx: Avoid print address to dmesg
Date: Thu, 10 Oct 2019 16:01:30 +0800
Message-Id: <20191010080130.25402-1-huangfq.daxian@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_010153_628919_4FA258BD 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (huangfq.daxian[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Fuqian Huang <huangfq.daxian@gmail.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Avoid print the address of l440gx_map.virt every time l440gx init.

Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
---
 drivers/mtd/maps/l440gx.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/mtd/maps/l440gx.c b/drivers/mtd/maps/l440gx.c
index 876f12f40018..e7e40bca82d1 100644
--- a/drivers/mtd/maps/l440gx.c
+++ b/drivers/mtd/maps/l440gx.c
@@ -86,7 +86,6 @@ static int __init init_l440gx(void)
 		return -ENOMEM;
 	}
 	simple_map_init(&l440gx_map);
-	printk(KERN_NOTICE "window_addr = 0x%08lx\n", (unsigned long)l440gx_map.virt);
 
 	/* Setup the pm iobase resource
 	 * This code should move into some kind of generic bridge
-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
